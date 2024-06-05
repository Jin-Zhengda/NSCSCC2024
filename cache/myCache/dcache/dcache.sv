typedef logic[31:0] bus32_t;
typedef logic[255:0] bus256_t;

typedef struct packed {
    logic is_cacop;
    logic[4:0]cacop_code;
    logic is_preld;
    logic hint;
    bus32_t addr;
}cache_inst_t;

    interface mem_dcache;
        logic valid;                // 请求有效
        logic op;                   // 操作类型，读-0，写-1
        logic[2:0] size;           // 数据大小，3'b000--字节，3'b001--半字，3'b010--字
        logic[31:0] virtual_addr;   // 虚拟地址
        logic tlb_excp_cancel_req;
        logic[3:0]  wstrb;          //写使能，1表示对应的8位数据需要写
        logic[31:0] wdata;          //需要写的数据
        
        logic addr_ok;              //该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
        logic data_ok;              //该次请求的数据传输OK，读：数据返回；写：数据写入完成
        logic[31:0] rdata;          //读DCache的结果
        logic cache_miss;           //cache未命中

        modport master (
            input addr_ok, data_ok, rdata, cache_miss,
            output valid, op, size, virtual_addr, tlb_excp_cancel_req, wstrb, wdata
        );

        modport slave (
            output addr_ok, data_ok, rdata, cache_miss,
            input valid, op, size, virtual_addr, tlb_excp_cancel_req, wstrb, wdata
        );
    endinterface: mem_dcache



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


module dcache (
    input logic clk,
    input logic reset,
    //to cpu
    mem_dcache mem2dcache,
    input logic dcache_uncache,
    input cache_inst_t dcache_inst,

    output logic stall,//比interface.sv里面的多了这个信号，你可以不接

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


logic uncache_stall;
//ucache
logic pre_uncache_en;
assign uncache_stall=pre_uncache_en&&!ducache_rvalid_o;
always_ff @( posedge clk ) begin
    if(reset)pre_uncache_en<=1'b0;
    else if(uncache_stall)pre_uncache_en<=pre_uncache_en;
    else pre_uncache_en<=dcache_uncache;
end

logic pre_duncache_ren,pre_duncache_wen;
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_duncache_ren<=1'b0;
        pre_duncache_wen<=1'b0;
    end
    else if(uncache_stall)begin
        pre_duncache_ren<=pre_duncache_ren;
        pre_duncache_wen<=pre_duncache_wen;
    end
    else begin
        pre_duncache_ren<=dcache_uncache&&mem2dcache.op==1'b0;
        pre_duncache_wen<=dcache_uncache&&mem2dcache.op==1'b1;
    end
end



//logic stall;

logic[`TAG_SIZE-1:0] cacop_op_addr_tag;
logic [`INDEX_SIZE-1:0]cacop_op_addr_index;
logic [`OFFSET_SIZE-1:0]cacop_op_addr_offset;
assign cacop_op_addr_tag=dcache_inst.addr[`TAG_LOC];
assign cacop_op_addr_index=dcache_inst.addr[`INDEX_LOC];
assign cacop_op_addr_offset=dcache_inst.addr[`OFFSET_LOC];

logic cacop_op_0,cacop_op_1,cacop_op_2;
assign cacop_op_0=dcache_inst.is_cacop&&dcache_inst.cacop_code[2:0]==3'b001&&dcache_inst.cacop_code[4:3]==2'd0;
assign cacop_op_1=dcache_inst.is_cacop&&dcache_inst.cacop_code[2:0]==3'b001&&dcache_inst.cacop_code[4:3]==2'd1;
assign cacop_op_2=dcache_inst.is_cacop&&dcache_inst.cacop_code[2:0]==3'b001&&dcache_inst.cacop_code[4:3]==2'd2;

logic pre_cacop_en;
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_cacop_en<=1'b0;
    end
    else begin
        pre_cacop_en<=dcache_inst.is_cacop;
    end
end

logic pre_preld;
logic preld_stall;
assign preld_stall=pre_preld&&!read_success;
always_ff @( posedge clk ) begin
    if(reset)pre_preld<=1'b0;
    else if(preld_stall)pre_preld<=pre_preld;
    else pre_preld<=dcache_inst.is_preld;
end

bus32_t pre_preld_addr;
always_ff @( posedge clk ) begin
    if(reset)pre_preld_addr<=32'b0;
    else if(preld_stall)pre_preld_addr<=pre_preld_addr;
    else pre_preld_addr<=dcache_inst.addr;//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end




//TLB转换(未实现)
bus32_t physical_addr;
assign physical_addr=mem2dcache.valid||dcache_uncache?mem2dcache.virtual_addr:(dcache_inst.is_preld?dcache_inst.addr:32'b0);

logic pre_valid,pre_op;
logic[3:0]pre_wstrb;
// logic[2:0]pre_size;
bus32_t pre_physical_addr,pre_wdata;

//记录地址
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_valid<=1'b0;
        pre_op<=1'b0;
        pre_wstrb<=4'b0;
        // pre_size<=3'b0;
        pre_physical_addr<=32'b0;
        pre_wdata<=32'b0;
    end
    else if(stall)begin
        pre_valid<=pre_valid;
        pre_op<=pre_op;
        pre_wstrb<=pre_wstrb;
        // pre_size<=pre_size;
        pre_physical_addr<=pre_physical_addr;
        pre_wdata<=pre_wdata;
    end
    else begin
        pre_valid<=mem2dcache.valid;
        pre_op<=mem2dcache.op;
        pre_wstrb<=mem2dcache.wstrb;
        // pre_size<=mem2dcache.size;
        pre_physical_addr<=physical_addr;
        pre_wdata<=mem2dcache.wdata;
    end
end




logic [`DATA_SIZE-1:0]read_from_mem[`BANK_NUM-1:0];
for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign read_from_mem[i] = ret_data[32*(i+1)-1:32*i];
end
logic hit_success,hit_fail,hit_way0,hit_way1;


reg [`DATA_SIZE-1:0]cache_wdata[`BANK_NUM-1:0];


//BANK 0~7 WAY 0~1
logic [3:0]wea_way0;
logic [3:0]wea_way1;
    
//port a:write  port b:read
logic [`DATA_SIZE-1:0]way0_cache[`BANK_NUM-1:0];
logic [6:0] read_index_addr,write_index_addr;
assign read_index_addr = stall? pre_physical_addr[`INDEX_LOC] : physical_addr[`INDEX_LOC];//When stall, maintain the addr of ram 
assign write_index_addr=pre_preld&&read_success?pre_preld_addr[`INDEX_LOC]:pre_physical_addr[`INDEX_LOC];

logic [6:0] way0_index_addr;
assign way0_index_addr=|wea_way0?write_index_addr:read_index_addr;
assign way1_index_addr=|wea_way1?write_index_addr:read_index_addr;

BRAM Bank0_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[0]),.addra(way0_index_addr),.douta(way0_cache[0]),.enb(1'b0));
BRAM Bank1_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[1]),.addra(way0_index_addr),.douta(way0_cache[1]),.enb(1'b0));
BRAM Bank2_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[2]),.addra(way0_index_addr),.douta(way0_cache[2]),.enb(1'b0));
BRAM Bank3_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[3]),.addra(way0_index_addr),.douta(way0_cache[3]),.enb(1'b0));
BRAM Bank4_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[4]),.addra(way0_index_addr),.douta(way0_cache[4]),.enb(1'b0));
BRAM Bank5_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[5]),.addra(way0_index_addr),.douta(way0_cache[5]),.enb(1'b0));
BRAM Bank6_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[6]),.addra(way0_index_addr),.douta(way0_cache[6]),.enb(1'b0));
BRAM Bank7_way0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(cache_wdata[7]),.addra(way0_index_addr),.douta(way0_cache[7]),.enb(1'b0));

 
logic [`DATA_SIZE-1:0]way1_cache[`BANK_NUM-1:0];     

BRAM Bank0_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[0]),.addra(way1_index_addr),.douta(way1_cache[0]),.enb(1'b0));
BRAM Bank1_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[1]),.addra(way1_index_addr),.douta(way1_cache[1]),.enb(1'b0));
BRAM Bank2_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[2]),.addra(way1_index_addr),.douta(way1_cache[2]),.enb(1'b0));
BRAM Bank3_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[3]),.addra(way1_index_addr),.douta(way1_cache[3]),.enb(1'b0));
BRAM Bank4_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[4]),.addra(way1_index_addr),.douta(way1_cache[4]),.enb(1'b0));
BRAM Bank5_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[5]),.addra(way1_index_addr),.douta(way1_cache[5]),.enb(1'b0));
BRAM Bank6_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[6]),.addra(way1_index_addr),.douta(way1_cache[6]),.enb(1'b0));
BRAM Bank7_way1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(cache_wdata[7]),.addra(way1_index_addr),.douta(way1_cache[7]),.enb(1'b0));


//Tag1'b1
logic [`TAGV_SIZE-1:0]tagv_cache_w0;
logic [`TAGV_SIZE-1:0]tagv_cache_w1;

logic[`INDEX_SIZE-1:0] tagv_addr_write;
assign tagv_addr_write=(cacop_op_0||cacop_op_1||cacop_op_2)?cacop_op_addr_index:(pre_preld&&read_success?pre_preld_addr[`INDEX_LOC]:pre_physical_addr[`INDEX_LOC]);
logic[`TAGV_SIZE-1:0]tagv_data_tagv;
assign tagv_data_tagv=(cacop_op_0||cacop_op_1||cacop_op_2)?`TAGV_SIZE'b0:(pre_preld&&read_success?{1'b1,pre_preld_addr[`TAG_LOC]}:{1'b1,pre_physical_addr[`TAG_LOC]});

logic[`INDEX_SIZE-1:0]tagv0_addr,tagv1_addr;
assign tagv0_addr=|wea_way0?tagv_addr_write:read_index_addr;
assign tagv1_addr=|wea_way1?tagv_addr_write:read_index_addr;

BRAM TagV0(.clk(clk),.ena(1'b1),.wea(wea_way0),.dina(tagv_data_tagv),.addra(tagv0_addr),.douta(tagv_cache_w0),.enb(1'b0));
BRAM TagV1(.clk(clk),.ena(1'b1),.wea(wea_way1),.dina(tagv_data_tagv),.addra(tagv1_addr),.douta(tagv_cache_w1),.enb(1'b0));

logic[31:0] write_mask;
assign write_mask={{8{pre_wstrb[3]}},{8{pre_wstrb[2]}},{8{pre_wstrb[1]}},{8{pre_wstrb[0]}}};

integer x;
always_comb begin 
	if((pre_preld||hit_fail)&&ret_valid)begin//hit fail
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
            if(x==pre_physical_addr[4:2])cache_wdata[x]=(pre_wdata & write_mask)|(((hit_way0)?way0_cache[x]:way1_cache[x]) & ~write_mask);
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
assign LRU_pick = LRU[pre_physical_addr[`INDEX_LOC]];
always_ff @( posedge clk ) begin
    if(reset)LRU<=0;
    else if(mem2dcache.valid&&hit_success)LRU[pre_physical_addr[`INDEX_LOC]] <= hit_way0;
    else if(mem2dcache.valid&&hit_fail&&read_success)LRU[pre_physical_addr[`INDEX_LOC]] <= wea_way0;
    else LRU<=LRU;
end


//判断命中
assign hit_way0 = (tagv_cache_w0[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w0[20]==1'b1)? 1'b1 : 1'b0;
assign hit_way1 = (tagv_cache_w1[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w1[20]==1'b1)? 1'b1 : 1'b0;
assign hit_success = (hit_way0 | hit_way1) & pre_valid;
assign hit_fail = ~(hit_success) & pre_valid;

logic write_delay;
always_ff @( posedge clk ) begin
    if(reset)write_delay<=1'b0;
    else if(read_success)write_delay<=1'b0;
    else if(pre_valid&&pre_op==1'b1&&mem2dcache.valid&&mem2dcache.op==1'b0)write_delay<=1'b1;
    else write_delay<=1'b0;
end


assign stall=(reset||pre_cacop_en||dcache_inst.is_cacop||dcache_inst.is_preld||preld_stall||uncache_stall)?1'b1:
            (pre_valid&&(hit_fail)?1'b1:(write_delay?1'b1:1'b0));
assign mem2dcache.rdata=ducache_rvalid_o?ducache_rdata_o:(hit_way0?way0_cache[pre_physical_addr[4:2]]:(hit_way1?way1_cache[pre_physical_addr[4:2]]:(hit_fail&&ret_valid?read_from_mem[pre_physical_addr[4:2]]:32'hffffffff)));


assign wea_way0=((pre_preld&&ret_valid)&&LRU_pick==1'b0)||((cacop_op_0||cacop_op_1||cacop_op_2)&&hit_way0)?4'b1111:((pre_valid&&hit_way0&&pre_op==1'b1)?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b0)?4'b1111:4'b0000));
assign wea_way1=((pre_preld&&ret_valid)&&LRU_pick==1'b1)||((cacop_op_0||cacop_op_1||cacop_op_2)&&hit_way1)?4'b1111:((pre_valid&&hit_way1&&pre_op==1'b1)?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b1)?4'b1111:4'b0000));


assign rd_req=(!dcache_inst.is_cacop&&!read_success&&hit_fail&&!ret_valid)||(pre_preld&&!ret_valid&&!read_success);
assign rd_addr=pre_preld?pre_preld_addr:pre_physical_addr;

assign rd_type=3'b100;






//Dirty
    reg [`SET_SIZE*2-1:0] dirty;
	wire write_dirty = dirty[{pre_physical_addr[`INDEX_LOC],LRU_pick}]; 
    always@(posedge clk)begin
        if(reset)
            dirty<=0;
		else if(ret_valid == 1'b1 && pre_op == 1'b0)//Read not hit
            dirty[{pre_physical_addr[`INDEX_LOC],LRU_pick}] <= 1'b0;
		else if(ret_valid == 1'b1 && pre_op == 1'b1)//write not hit
            dirty[{pre_physical_addr[`INDEX_LOC],LRU_pick}] <= 1'b1;
		else if((hit_way0|hit_way1) == 1'b1 && pre_op == 1'b1)//write hit but not FIFO
            dirty[{pre_physical_addr[`INDEX_LOC],hit_way1}] <= 1'b1;
        else
            dirty <= dirty;
    end



always_ff @( posedge clk ) begin
    if(reset)begin
        wr_req<=1'b0;
        wr_addr<=32'b0;
        wr_wstrb<=4'b0;
        wr_data<=256'b0;
    end
    else if((pre_valid&&pre_cacop_en)&&write_dirty&&wr_rdy)begin//!!!!!!!!!!!!!!!!!!!!!!!!
        wr_req<=1'b1;
        wr_addr<=pre_physical_addr;
        wr_wstrb<=4'b1111;
        wr_data<=LRU_pick?{way1_cache[7],way1_cache[6],way1_cache[5],way1_cache[4],way1_cache[3],way1_cache[2],way1_cache[1],way1_cache[0]}:{way0_cache[7],way0_cache[6],way0_cache[5],way0_cache[4],way0_cache[3],way0_cache[2],way0_cache[1],way0_cache[0]};
    end
    else begin
        wr_req<=1'b0;
        wr_addr<=32'b0;
        wr_wstrb<=4'd0;
        wr_data<=256'b0;
    end
end


assign mem2dcache.addr_ok=((mem2dcache.valid||dcache_uncache)&&!stall);

assign mem2dcache.data_ok=(pre_valid&&!stall&&pre_op==1'b0)||ducache_rvalid_o;
assign mem2dcache.cache_miss=hit_fail;




assign ducache_ren_i=pre_uncache_en&&pre_op==1'b0;
assign ducache_wen_i=pre_uncache_en&&pre_op==1'b1;
assign ducache_araddr_i=ducache_ren_i?pre_physical_addr:32'b0;
assign ducache_awaddr_i=ducache_wen_i?pre_physical_addr:32'b0;
assign ducache_wdata_i=ducache_wen_i?pre_wdata:32'b0;
assign ducache_strb=ducache_wen_i?pre_wstrb:4'b0;



endmodule
