
`timescale 1ns / 1ps

`define ADDR_SIZE 32
`define DATA_SIZE 32


`define TAG_SIZE 20
`define INDEX_SIZE 7
`define OFFSET_SIZE 5
`define TAG_LOC 31:12
`define INDEX_LOC 11:5
`define OFFSET_LOC 4:0

`define BANK_NUM 8 
`define BANK_SIZE 32
`define SET_SIZE 128
`define TAGV_SIZE 21

`define IDLE 5'b00001
`define ASKMEM 5'b00010
`define WRITE_DIRTY 5'b00100
`define RETURN 5'b01000
`define REFILL 5'b00000
`define UNCACHE_RETURN 5'b10000





module dcache
    import pipeline_types::*;
(
    input logic clk,
    input logic reset,
    //to cpu
    mem_dcache mem2dcache,  //读写数据的信号
    input cache_inst_t dcache_inst,  //dcache指令信号



    //to transaddr
    dcache_transaddr dcache2transaddr,  //TLB地址转换

    //to axi
    output logic rd_req,  //读请求有效
    output logic[2:0] rd_type,//3'b000--字节，3'b001--半字，3'b010--字，3'b100--Cache行。
    output bus32_t rd_addr,  //要读的数据所在的物理地址
    output logic wr_req,  //写请求有效
    output logic [31:0] wr_addr,  //要写的数据所在的物理地址
    output logic[3:0]  wr_wstrb,//4位的写使能信号，决定4个8位中，每个8位是否要写入
    output bus256_t wr_data,  //8个32位的数据为1路

    input  logic    wr_rdy,            //能接收写操作
    input  logic    rd_rdy,            //能接收读操作
    input  logic    ret_valid,         //返回数据信号有效
    input  bus256_t ret_data,          //返回的数据
    input  logic    data_bvalid_o,
    //uncache
    output logic    ducache_ren_i,
    output bus32_t  ducache_araddr_i,
    input  logic    ducache_rvalid_o,
    input  bus32_t  ducache_rdata_o,

    output logic ducache_wen_i,
    output bus32_t ducache_wdata_i,
    output bus32_t ducache_awaddr_i,
    output wire [3:0] ducache_strb,  //改了个名
    input logic ducache_bvalid_o,

    input logic tlb_stall_mem

);

    logic [4:0] current_state, next_state;
    logic next_is_idle;

    logic pre_valid, pre_op;
    logic [3:0] pre_wstrb;
    logic [`DATA_SIZE-1:0] pre_wdata;
    logic [`ADDR_SIZE-1:0] pre_vaddr;
    always_ff @(posedge clk) begin
        if (reset) begin
            pre_valid <= 0;
        end else if (next_is_idle) begin
            pre_valid <= mem2dcache.valid;
            pre_op <= mem2dcache.op;
            pre_wstrb <= mem2dcache.wstrb;
            pre_wdata <= mem2dcache.wdata;
            pre_vaddr <= mem2dcache.virtual_addr;
        end
    end


    logic hit_success, hit_fail;
    logic write_dirty;
    logic record_dirty;  //表明脏数据写回是否完成


    always_ff @(posedge clk) begin
        if (reset) current_state <= `IDLE;
        else current_state <= next_state;
    end

    always_comb begin
        case (current_state)
            `IDLE: begin
                if (!pre_valid||tlb_stall_mem) next_state = `IDLE;
                else if (dcache2transaddr.uncache) next_state = `UNCACHE_RETURN;
                else if (hit_fail) begin
                    if (write_dirty && record_dirty) next_state = `WRITE_DIRTY;
                    else next_state = `ASKMEM;
                end else if (pre_op) next_state = `RETURN;
                else next_state = `IDLE;
            end
            `WRITE_DIRTY: begin
                if (!record_dirty) next_state = `ASKMEM;
                else next_state = `WRITE_DIRTY;
            end
            `ASKMEM: begin
                if (ret_valid) next_state = `REFILL;
                else next_state = `ASKMEM;
            end
            `REFILL: begin
                next_state = `RETURN;
            end
            `RETURN: begin
                next_state = `IDLE;
            end
            `UNCACHE_RETURN: begin
                if (pre_op & ducache_bvalid_o) next_state = `IDLE;
                else if (!pre_op & ducache_rvalid_o) next_state = `IDLE;
                else next_state = `UNCACHE_RETURN;
            end
            default: next_state = `IDLE;
        endcase
    end

    assign next_is_idle=(current_state==`IDLE&&(!pre_valid||(!dcache2transaddr.uncache&&hit_success&&pre_op==1'b0)))
                    ||(current_state==`RETURN)||((current_state==`UNCACHE_RETURN)&&(ducache_rvalid_o||ducache_bvalid_o));

    assign dcache2transaddr.store = pre_op;
    assign dcache2transaddr.cacop_op_mode_di = 1'b0;
    assign dcache2transaddr.data_fetch = mem2dcache.valid;
    assign dcache2transaddr.data_vaddr = mem2dcache.virtual_addr;
    logic [`ADDR_SIZE-1:0] p_addr, pre_physical_addr, target_physical_addr;
    assign p_addr = dcache2transaddr.ret_data_paddr;
    always_ff @(posedge clk) begin
        if (current_state == `IDLE) pre_physical_addr <= p_addr;
        else pre_physical_addr <= pre_physical_addr;
    end
    assign target_physical_addr = (current_state == `IDLE) ? p_addr : pre_physical_addr;



    logic [`BANK_NUM-1:0][`DATA_SIZE-1:0] read_from_mem;
    for (genvar i = 0; i < `BANK_NUM; i = i + 1) begin
        assign read_from_mem[i] = ret_data[32*(i+1)-1:32*i];
    end
    logic hit_way0, hit_way1;

    reg [`BANK_NUM-1:0][`DATA_SIZE-1:0] cache_wdata;


    logic [3:0] wea_way0;
    logic [3:0] wea_way1;
    logic [7:0][3:0] wea_way0_single;
    logic [7:0][3:0] wea_way1_single;


    logic [`BANK_NUM-1:0][`DATA_SIZE-1:0] way0_cache;
    logic [6:0] read_index_addr, write_index_addr;
    assign read_index_addr = (next_is_idle)?mem2dcache.virtual_addr[`INDEX_LOC]:pre_vaddr[`INDEX_LOC];
    assign write_index_addr = pre_vaddr[`INDEX_LOC];


    dBRAM Bank0_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[0]),
        .dina (cache_wdata[0]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[0])
    );
    dBRAM Bank1_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[1]),
        .dina (cache_wdata[1]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[1])
    );
    dBRAM Bank2_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[2]),
        .dina (cache_wdata[2]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[2])
    );
    dBRAM Bank3_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[3]),
        .dina (cache_wdata[3]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[3])
    );
    dBRAM Bank4_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[4]),
        .dina (cache_wdata[4]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[4])
    );
    dBRAM Bank5_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[5]),
        .dina (cache_wdata[5]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[5])
    );
    dBRAM Bank6_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[6]),
        .dina (cache_wdata[6]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[6])
    );
    dBRAM Bank7_way0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0_single[7]),
        .dina (cache_wdata[7]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way0_cache[7])
    );


    logic [`BANK_NUM-1:0][`DATA_SIZE-1:0] way1_cache;

    dBRAM Bank0_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[0]),
        .dina (cache_wdata[0]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[0])
    );
    dBRAM Bank1_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[1]),
        .dina (cache_wdata[1]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[1])
    );
    dBRAM Bank2_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[2]),
        .dina (cache_wdata[2]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[2])
    );
    dBRAM Bank3_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[3]),
        .dina (cache_wdata[3]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[3])
    );
    dBRAM Bank4_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[4]),
        .dina (cache_wdata[4]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[4])
    );
    dBRAM Bank5_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[5]),
        .dina (cache_wdata[5]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[5])
    );
    dBRAM Bank6_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[6]),
        .dina (cache_wdata[6]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[6])
    );
    dBRAM Bank7_way1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1_single[7]),
        .dina (cache_wdata[7]),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(way1_cache[7])
    );


    //Tag1'b1
    logic [ `DATA_SIZE-1:0] tagv_cache_w0;
    logic [ `DATA_SIZE-1:0] tagv_cache_w1;

    logic [`INDEX_SIZE-1:0] tagv_addr_write;
    assign tagv_addr_write = pre_vaddr[`INDEX_LOC];
    logic [`DATA_SIZE-1:0] tagv_data_tagv;
    assign tagv_data_tagv = {11'b0, 1'b1, target_physical_addr[`TAG_LOC]};

    dBRAM TagV0 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way0),
        .dina (tagv_data_tagv),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(tagv_cache_w0)
    );
    dBRAM TagV1 (
        .clka (clk),
        .clkb (clk),
        .ena  (1'b1),
        .wea  (wea_way1),
        .dina (tagv_data_tagv),
        .addra(write_index_addr),
        .enb  (1'b1),
        .addrb(read_index_addr),
        .doutb(tagv_cache_w1)
    );


    logic [31:0] write_mask;
    assign write_mask = {
        {8{pre_wstrb[3]}}, {8{pre_wstrb[2]}}, {8{pre_wstrb[1]}}, {8{pre_wstrb[0]}}
    };


    always_comb begin
        if (hit_fail && ret_valid) begin
            if (pre_op) begin
                cache_wdata = read_from_mem;
                cache_wdata[pre_vaddr[4:2]]=(pre_wdata & write_mask)|(read_from_mem[pre_vaddr[4:2]] & ~write_mask);
            end else begin
                cache_wdata = read_from_mem;
            end
        end else if (hit_success && pre_op == 1'b1) begin
            case ({
                hit_way1, hit_way0
            })
                2'b01:   cache_wdata = way0_cache;
                2'b10:   cache_wdata = way1_cache;
                default: cache_wdata = '{default: 0};
            endcase
            cache_wdata[pre_vaddr[4:2]]=(pre_wdata & write_mask)|(((hit_way0)?way0_cache[pre_vaddr[4:2]]:way1_cache[pre_vaddr[4:2]]) & ~write_mask);
        end else begin
            cache_wdata = '{default: 0};
        end
    end



    //LRU
    logic [`SET_SIZE-1:0] LRU;
    logic LRU_pick;
    assign LRU_pick = LRU[pre_vaddr[`INDEX_LOC]];
    always_ff @(posedge clk) begin
        if (reset) LRU <= 0;
        else if (pre_valid & hit_success) LRU[pre_vaddr[`INDEX_LOC]] <= hit_way0;
        else if (current_state == `REFILL) LRU[pre_vaddr[`INDEX_LOC]] <= |wea_way0;
        else LRU <= LRU;
    end


    //判断命中
    assign hit_way0 = (tagv_cache_w0[19:0]==target_physical_addr[`TAG_LOC] & tagv_cache_w0[20])? 1'b1 : 1'b0;
    assign hit_way1 = (tagv_cache_w1[19:0]==target_physical_addr[`TAG_LOC] & tagv_cache_w1[20])? 1'b1 : 1'b0;
    assign hit_success = (hit_way0 | hit_way1) & pre_valid;
    assign hit_fail = ~(hit_success) & pre_valid;


    // assign wea_way0=((!dcache2transaddr.uncache)&&((pre_valid&&hit_way0&&pre_op==1'b1))?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b0)?4'hf:4'h0));
    // assign wea_way1=((!dcache2transaddr.uncache)&&((pre_valid&&hit_way1&&pre_op==1'b1))?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b1)?4'hf:4'h0));
    assign wea_way0 = |wea_way0_single ? 4'hf : 4'h0;
    assign wea_way1 = |wea_way1_single ? 4'hf : 4'h0;

    generate
        always_comb begin
            for (integer i = 0; i < 8; i = i + 1) begin
                wea_way0_single[i] = (pre_valid && ret_valid && LRU_pick == 1'b0)? 4'b1111: 4'b0000;
                wea_way1_single[i] = (pre_valid && ret_valid && LRU_pick == 1'b1)? 4'b1111: 4'b0000;
            end
            if ((current_state==`IDLE) && pre_valid && hit_way0 && pre_op && !dcache2transaddr.uncache)
                wea_way0_single[pre_vaddr[4:2]] = pre_wstrb;
            if ((current_state==`IDLE) && pre_valid && hit_way1 && pre_op && !dcache2transaddr.uncache)
                wea_way1_single[pre_vaddr[4:2]] = pre_wstrb;
        end
    endgenerate


    //Dirty
    reg [`SET_SIZE*2-1:0] dirty;
    assign write_dirty = dirty[{pre_vaddr[`INDEX_LOC], LRU_pick}];
    always @(posedge clk) begin
        if (reset) dirty <= 0;
        else if (ret_valid == 1'b1 && pre_op == 1'b0)  //Read not hit
            dirty[{pre_vaddr[`INDEX_LOC], LRU_pick}] <= 1'b0;
        else if (ret_valid == 1'b1 && pre_op == 1'b1)  //write not hit
            dirty[{pre_vaddr[`INDEX_LOC], LRU_pick}] <= 1'b1;
        else if ((hit_way0 | hit_way1) == 1'b1 && pre_op == 1'b1)  //write hit but not FIFO
            dirty[{pre_vaddr[`INDEX_LOC], hit_way1}] <= 1'b1;
        else dirty <= dirty;
    end



    assign mem2dcache.addr_ok = next_is_idle&&!tlb_stall_mem;
    always_ff @(posedge clk) begin
        mem2dcache.data_ok<=((next_is_idle)||(current_state==`UNCACHE_RETURN)&&(next_is_idle))&&pre_valid&&pre_op==1'b0;
        mem2dcache.rdata<=(current_state==`UNCACHE_RETURN)?ducache_rdata_o:
                                (hit_success?
                                        (hit_way0?way0_cache[pre_vaddr[4:2]]:way1_cache[pre_vaddr[4:2]]):
                                                read_from_mem[pre_vaddr[4:2]]);
    end

    // assign mem2dcache.addr_ok=mem2dcache.valid&&next_is_idle;
    // assign mem2dcache.data_ok=((next_is_idle)||(current_state==`UNCACHE_RETURN)&&(next_is_idle))&&pre_valid&&pre_op==1'b0;
    // assign mem2dcache.rdata=(current_state==`UNCACHE_RETURN)?ducache_rdata_o:
    //                         (hit_success?
    //                             (hit_way0?way0_cache[pre_vaddr[4:2]]:way1_cache[pre_vaddr[4:2]]):
    //                                     read_from_mem[pre_vaddr[4:2]]);




    assign rd_req  = (current_state == `ASKMEM) && !ret_valid;
    assign rd_type = 3'b100;
    assign rd_addr = target_physical_addr;


    logic [ 31:0] record_write_mem_addr;
    logic [255:0] record_write_mem_data;
    always_ff @(posedge clk) begin
        if (reset || data_bvalid_o) record_dirty <= 1'b0;
        else if((current_state==`IDLE)&&hit_fail&&!dcache2transaddr.uncache&&write_dirty)begin
            record_dirty <= write_dirty;
            record_write_mem_addr <= {
                (LRU_pick ? tagv_cache_w1[19:0] : tagv_cache_w0[19:0]), target_physical_addr[11:0]
            };
            record_write_mem_data <= LRU_pick ? way1_cache : way0_cache;
        end else begin
            record_dirty <= record_dirty;
            record_write_mem_addr <= record_write_mem_addr;
            record_write_mem_data <= record_write_mem_data;
        end
    end
    assign wr_req = record_dirty && !data_bvalid_o;
    assign wr_addr = record_write_mem_addr;
    assign wr_data = record_write_mem_data;
    assign wr_wstrb = 4'b1111;





    assign ducache_ren_i=((current_state==`UNCACHE_RETURN)&&pre_op==1'b0)&&!ducache_rvalid_o;
    assign ducache_wen_i=((current_state==`UNCACHE_RETURN)&&pre_op==1'b1)&&!ducache_bvalid_o;
    assign ducache_araddr_i = target_physical_addr;
    assign ducache_awaddr_i = target_physical_addr;
    assign ducache_wdata_i = pre_wdata;
    assign ducache_strb = pre_wstrb;



    assign mem2dcache.physical_addr = target_physical_addr;


endmodule
