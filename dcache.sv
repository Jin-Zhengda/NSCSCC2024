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
`define RETURN 5'b00100
`define UNCACHE_RETURN 5'b01000




module dcache 
    import pipeline_types::*;
(
    input logic clk,
    input logic reset,
    //to cpu
    mem_dcache mem2dcache,//读写数据的信号
    input logic dcache_uncache,//uncache使能信号
    input cache_inst_t dcache_inst,//dcache指令信号

    //to transaddr
    dcache_transaddr dcache2transaddr,//TLB地址转换

    //to axi
    output logic rd_req,//读请求有效
    output logic[2:0] rd_type,//3'b000--字节，3'b001--半字，3'b010--字，3'b100--Cache行。
    output bus32_t rd_addr,//要读的数据所在的物理地址
    output logic       wr_req,//写请求有效
    output logic[31:0] wr_addr,//要写的数据所在的物理地址
    output logic[3:0]  wr_wstrb,//4位的写使能信号，决定4个8位中，每个8位是否要写入
    output bus256_t wr_data,//8个32位的数据为1路

    input logic       wr_rdy,//能接收写操作
    input logic       rd_rdy,//能接收读操作
    input logic       ret_valid,//返回数据信号有效
    input bus256_t ret_data,//返回的数据
    //uncache
    output logic ducache_ren_i,
    output bus32_t ducache_araddr_i,
    input logic ducache_rvalid_o,
    input bus32_t ducache_rdata_o,

    output logic ducache_wen_i,
    output bus32_t ducache_wdata_i,
    output bus32_t ducache_awaddr_i,
    output wire[3:0]ducache_strb,//改了个名
    input logic ducache_bvalid_o

);

logic read_success;
always_ff @( posedge clk ) begin
    if(ret_valid)read_success<=1'b1;
    else read_success<=1'b0;
end

logic[4:0]current_state,next_state;

logic pre_valid,pre_op;
logic[3:0]pre_wstrb;
logic[`DATA_SIZE-1:0]pre_wdata;
logic[`ADDR_SIZE-1:0]pre_vaddr;
always_ff @( posedge clk ) begin
    if(current_state==`IDLE&&next_state==`UNCACHE_RETURN)begin
        pre_valid<=mem2dcache.valid;
        pre_op<=mem2dcache.op;
        pre_wstrb<=mem2dcache.wstrb;
        pre_wdata<=mem2dcache.wdata;
        pre_vaddr<=mem2dcache.virtual_addr;
    end
    else if(next_state==`IDLE)begin
        pre_valid<=mem2dcache.valid;
        pre_op<=mem2dcache.op;
        pre_wstrb<=mem2dcache.wstrb;
        pre_wdata<=mem2dcache.wdata;
        pre_vaddr<=mem2dcache.virtual_addr;
    end
    else begin
        pre_valid<=pre_valid;
        pre_op<=pre_op;
        pre_wstrb<=pre_wstrb;
        pre_wdata<=pre_wdata;
        pre_vaddr<=pre_vaddr;
    end
end


logic hit_success,hit_fail;



always_ff @( posedge clk ) begin
    if(reset)current_state<=`IDLE;
    else current_state<=next_state;
end
always_comb begin
    if(reset)next_state=`IDLE;
    else if(current_state==`IDLE)begin
        if(!pre_valid)next_state=`IDLE;
        else if(dcache_uncache)next_state=`UNCACHE_RETURN;
        else if(hit_fail)next_state=`ASKMEM;
        else next_state=`IDLE;
    end
    else if(current_state==`ASKMEM)begin
        if(ret_valid)next_state=`RETURN;
        else next_state=`ASKMEM;
    end
    else if(current_state==`RETURN)begin
        next_state=`IDLE;
    end
    else if(current_state==`UNCACHE_RETURN)begin
        if(pre_op==1'b1&&wr_rdy)next_state=`IDLE;
        else if(pre_op==1'b0&&ducache_rvalid_o)next_state=`IDLE;
        else next_state=`UNCACHE_RETURN;
    end
end

assign dcache2transaddr.data_fetch=mem2dcache.valid;
assign dcache2transaddr.data_vaddr=mem2dcache.virtual_addr;
logic[`ADDR_SIZE-1:0] p_addr,pre_physical_addr,target_physical_addr;
assign p_addr=dcache2transaddr.ret_data_paddr;
always_ff @( posedge clk ) begin
    if(current_state==`IDLE)pre_physical_addr<=p_addr;
    else pre_physical_addr<=pre_physical_addr;
end
assign target_physical_addr=current_state==`IDLE?p_addr:pre_physical_addr;















logic [`DATA_SIZE-1:0]read_from_mem[`BANK_NUM-1:0];
for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign read_from_mem[i] = ret_data[32*(i+1)-1:32*i];
end
logic hit_way0,hit_way1;

reg [`DATA_SIZE-1:0]cache_wdata[`BANK_NUM-1:0];


logic [3:0]wea_way0;
logic [3:0]wea_way1;
logic [3:0]wea_way0_single[7:0];
logic [3:0]wea_way1_single[7:0];

for(genvar i=0;i<8;i=i+1)begin
    assign wea_way0_single[i]=(pre_valid&&hit_way0&&pre_op==1'b1&&i!=pre_vaddr[4:2])?4'b0000:wea_way0;
    assign wea_way1_single[i]=(pre_valid&&hit_way1&&pre_op==1'b1&&i!=pre_vaddr[4:2])?4'b0000:wea_way1;
end


logic [`DATA_SIZE-1:0]way0_cache[`BANK_NUM-1:0];
logic [6:0] read_index_addr,write_index_addr;
assign read_index_addr = next_state==`IDLE?mem2dcache.virtual_addr[`INDEX_LOC]:pre_vaddr[`INDEX_LOC];
assign write_index_addr=pre_vaddr[`INDEX_LOC];

logic [6:0] way0_index_addr;
logic [6:0] way1_index_addr;
assign way0_index_addr=|wea_way0?write_index_addr:read_index_addr;
assign way1_index_addr=|wea_way1?write_index_addr:read_index_addr;

BRAM Bank0_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[0]),.dina(cache_wdata[0]),.addra(way0_index_addr),.douta(way0_cache[0]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank1_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[1]),.dina(cache_wdata[1]),.addra(way0_index_addr),.douta(way0_cache[1]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank2_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[2]),.dina(cache_wdata[2]),.addra(way0_index_addr),.douta(way0_cache[2]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank3_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[3]),.dina(cache_wdata[3]),.addra(way0_index_addr),.douta(way0_cache[3]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank4_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[4]),.dina(cache_wdata[4]),.addra(way0_index_addr),.douta(way0_cache[4]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank5_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[5]),.dina(cache_wdata[5]),.addra(way0_index_addr),.douta(way0_cache[5]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank6_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[6]),.dina(cache_wdata[6]),.addra(way0_index_addr),.douta(way0_cache[6]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank7_way0(.clk(clk),.ena(1'b1),.wea(wea_way0_single[7]),.dina(cache_wdata[7]),.addra(way0_index_addr),.douta(way0_cache[7]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));

 
logic [`DATA_SIZE-1:0]way1_cache[`BANK_NUM-1:0];     

BRAM Bank0_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[0]),.dina(cache_wdata[0]),.addra(way1_index_addr),.douta(way1_cache[0]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank1_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[1]),.dina(cache_wdata[1]),.addra(way1_index_addr),.douta(way1_cache[1]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank2_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[2]),.dina(cache_wdata[2]),.addra(way1_index_addr),.douta(way1_cache[2]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank3_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[3]),.dina(cache_wdata[3]),.addra(way1_index_addr),.douta(way1_cache[3]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank4_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[4]),.dina(cache_wdata[4]),.addra(way1_index_addr),.douta(way1_cache[4]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank5_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[5]),.dina(cache_wdata[5]),.addra(way1_index_addr),.douta(way1_cache[5]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank6_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[6]),.dina(cache_wdata[6]),.addra(way1_index_addr),.douta(way1_cache[6]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM Bank7_way1(.clk(clk),.ena(1'b1),.wea(wea_way1_single[7]),.dina(cache_wdata[7]),.addra(way1_index_addr),.douta(way1_cache[7]),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));


//Tag1'b1
logic [`TAGV_SIZE-1:0]tagv_cache_w0;
logic [`TAGV_SIZE-1:0]tagv_cache_w1;

logic[`INDEX_SIZE-1:0] tagv_addr_write;
assign tagv_addr_write=pre_vaddr[`INDEX_LOC];
logic[`TAGV_SIZE-1:0]tagv_data_tagv;
assign tagv_data_tagv={1'b1,pre_physical_addr[`TAG_LOC]};

logic[`INDEX_SIZE-1:0]tagv0_addr,tagv1_addr;
assign tagv0_addr=|wea_way0?tagv_addr_write:read_index_addr;
assign tagv1_addr=|wea_way1?tagv_addr_write:read_index_addr;

BRAM TagV0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(tagv_data_tagv),.addra(tagv0_addr),.douta(tagv_cache_w0),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));
BRAM TagV1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(tagv_data_tagv),.addra(tagv1_addr),.douta(tagv_cache_w1),.enb(1'b0),.web(4'b0),.dinb(32'b0),.addrb(7'b0));


logic[31:0] write_mask;
assign write_mask={{8{pre_wstrb[3]}},{8{pre_wstrb[2]}},{8{pre_wstrb[1]}},{8{pre_wstrb[0]}}};

integer x;
always_comb begin 
	if(hit_fail&&ret_valid)begin
		cache_wdata[0] = read_from_mem[0];
		cache_wdata[1] = read_from_mem[1];
		cache_wdata[2] = read_from_mem[2];
		cache_wdata[3] = read_from_mem[3];
		cache_wdata[4] = read_from_mem[4];
		cache_wdata[5] = read_from_mem[5];
		cache_wdata[6] = read_from_mem[6];
		cache_wdata[7] = read_from_mem[7];
	end
	else if(hit_success&&pre_op==1'b1)begin
        for(x=0;x<=7;x=x+1)begin
            if(x==pre_vaddr[4:2])cache_wdata[x]=(pre_wdata & write_mask)|(((hit_way0)?way0_cache[x]:way1_cache[x]) & ~write_mask);
            else if(hit_way0)cache_wdata[x]=way0_cache[x];
            else if(hit_way1)cache_wdata[x]=way1_cache[x];
            else cache_wdata[x]=32'hffffffff;
        end
	end
    else begin
        cache_wdata[0] = `DATA_SIZE'b0;
        cache_wdata[1] = `DATA_SIZE'b0;
        cache_wdata[2] = `DATA_SIZE'b0;
        cache_wdata[3] = `DATA_SIZE'b0;
        cache_wdata[4] = `DATA_SIZE'b0;
        cache_wdata[5] = `DATA_SIZE'b0;
        cache_wdata[6] = `DATA_SIZE'b0;
        cache_wdata[7] = `DATA_SIZE'b0;
    end
end



//LRU
logic [`SET_SIZE-1:0]LRU;
logic LRU_pick;
assign LRU_pick = LRU[pre_vaddr[`INDEX_LOC]];
always_ff @( posedge clk ) begin
    if(reset)LRU<=0;
    else if(pre_valid&&hit_success)LRU[pre_vaddr[`INDEX_LOC]] <= hit_way0;
    else if(pre_valid&&hit_fail&&read_success)LRU[pre_vaddr[`INDEX_LOC]] <= wea_way0;
    else LRU<=LRU;
end


//判断命中
assign hit_way0 = (tagv_cache_w0[19:0]==target_physical_addr[`TAG_LOC] && tagv_cache_w0[20]==1'b1)? 1'b1 : 1'b0;
assign hit_way1 = (tagv_cache_w1[19:0]==target_physical_addr[`TAG_LOC] && tagv_cache_w1[20]==1'b1)? 1'b1 : 1'b0;
assign hit_success = (hit_way0 | hit_way1) & pre_valid;
assign hit_fail = ~(hit_success) & pre_valid;


assign wea_way0=(pre_valid&&hit_way0&&pre_op==1'b1)?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b0)?4'b1111:4'b0000);
assign wea_way1=(pre_valid&&hit_way1&&pre_op==1'b1)?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b1)?4'b1111:4'b0000);




//Dirty
    reg [`SET_SIZE*2-1:0] dirty;
	wire write_dirty = dirty[{pre_vaddr[`INDEX_LOC],LRU_pick}]; 
    always@(posedge clk)begin
        if(reset)
            dirty<=0;
		else if(ret_valid == 1'b1 && pre_op == 1'b0)//Read not hit
            dirty[{pre_vaddr[`INDEX_LOC],LRU_pick}] <= 1'b0;
		else if(ret_valid == 1'b1 && pre_op == 1'b1)//write not hit
            dirty[{pre_vaddr[`INDEX_LOC],LRU_pick}] <= 1'b1;
		else if((hit_way0|hit_way1) == 1'b1 && pre_op == 1'b1)//write hit but not FIFO
            dirty[{pre_vaddr[`INDEX_LOC],hit_way1}] <= 1'b1;
        else
            dirty <= dirty;
    end





assign mem2dcache.addr_ok=mem2dcache.valid&&(next_state==`IDLE||(current_state==`IDLE&&next_state==`UNCACHE_RETURN));
assign mem2dcache.data_ok=(next_state==`IDLE||current_state==`IDLE&&next_state==`UNCACHE_RETURN)&&pre_valid&&pre_op==1'b0;
assign mem2dcache.rdata=current_state==`UNCACHE_RETURN?ducache_rdata_o:
                                            (hit_success?(hit_way0?way0_cache[pre_vaddr[4:2]]:way1_cache[pre_vaddr[4:2]]):
                                                read_from_mem[pre_vaddr[4:2]]);
assign mem2dcache.cache_miss=hit_fail;



assign rd_req=next_state==`ASKMEM||current_state==`ASKMEM;
assign rd_type=3'b100;
assign rd_addr=target_physical_addr;

logic record_dirty;//表明脏数据写回是否完成
always_ff @( posedge clk ) begin
    if(reset)record_dirty<=1'b0;
    else if(wr_rdy)record_dirty<=1'b0;
    else if(current_state==`IDLE&&next_state==`ASKMEM)record_dirty<=write_dirty;
    else record_dirty<=record_dirty;
end
assign wr_req=record_dirty;
assign wr_addr={tagv_cache_w0[19:0],pre_vaddr[11:0]};
assign wr_data=LRU_pick?{way1_cache[7],way1_cache[6],way1_cache[5],way1_cache[4],way1_cache[3],way1_cache[2],way1_cache[1],way1_cache[0]}:{way0_cache[7],way0_cache[6],way0_cache[5],way0_cache[4],way0_cache[3],way0_cache[2],way0_cache[1],way0_cache[0]};
assign wr_wstrb=4'b1111;





assign ducache_ren_i=current_state==`UNCACHE_RETURN&&pre_op==1'b0;
assign ducache_wen_i=current_state==`UNCACHE_RETURN&&pre_op==1'b1;
assign ducache_araddr_i=ducache_ren_i?pre_vaddr:32'b0;
assign ducache_awaddr_i=ducache_wen_i?pre_vaddr:32'b0;
assign ducache_wdata_i=ducache_wen_i?pre_wdata:32'b0;
assign ducache_strb=ducache_wen_i?pre_wstrb:4'b0;





endmodule