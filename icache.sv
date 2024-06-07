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



module icache 
    import pipeline_types::*;
(
    input logic clk,
    input logic reset,
    input ctrl_t ctrl,
    input logic branch_flush,
    //front-icache
    pc_icache pc2icache,
    input logic icache_uncache,
    //icache-axi
    output logic rd_req,
    output bus32_t rd_addr,
    input logic ret_valid,
    input bus256_t ret_data,

    input  logic             icacop_op_en   ,//使能信号
    input  logic[ 1:0]       icacop_op_mode  ,//缓存操作的模 ?
    input bus32_t icacop_addr,

    output logic iucache_ren_i,
    output bus32_t iucache_addr_i,
    input logic iucache_rvalid_o,
    input bus32_t iucache_rdata_o
);
logic hit_success,hit_fail,hit_way0,hit_way1;

logic ignore_one_ret;
logic real_iucache_rvalid_o;
assign real_iucache_rvalid_o=ignore_one_ret?1'b0:iucache_rvalid_o;


logic uncache_stall;
//ucache
logic pre_uncache_en;
assign uncache_stall=pre_uncache_en&&!real_iucache_rvalid_o;
always_ff @( posedge clk ) begin
    if(reset)pre_uncache_en<=1'b0;
    else if(uncache_stall)pre_uncache_en<=pre_uncache_en;
    else pre_uncache_en<=icache_uncache;
end


logic[`TAG_SIZE-1:0] cacop_op_addr_tag;
logic [`INDEX_SIZE-1:0]cacop_op_addr_index;
logic [`OFFSET_SIZE-1:0]cacop_op_addr_offset;
assign cacop_op_addr_tag=icacop_addr[`TAG_LOC];
assign cacop_op_addr_index=icacop_addr[`INDEX_LOC];
assign cacop_op_addr_offset=icacop_addr[`OFFSET_LOC];

logic cacop_op_0,cacop_op_1,cacop_op_2;
assign cacop_op_0=icacop_op_en&&icacop_op_mode==2'd0;
assign cacop_op_1=icacop_op_en&&icacop_op_mode==2'd1;
assign cacop_op_2=icacop_op_en&&icacop_op_mode==2'd2;

logic pre_cacop_en;
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_cacop_en<=1'b0;
    end
    else begin
        pre_cacop_en<=icacop_op_en;
    end
end


logic branch_flush_delay;
always_ff @( posedge clk ) begin
    branch_flush_delay<=branch_flush;
end

logic flush;//我理解的flush???????????????
logic flush_delay;//将所有的flush信号delay一拍
//assign flush=branch_flush || branch_flush_delay || ctrl.exception_flush | (ctrl.pause[1] && !ctrl.pause[2]);
assign flush=branch_flush || ctrl.exception_flush | (ctrl.pause[1] && !ctrl.pause[2]);
always_ff @( posedge clk ) begin
    flush_delay<=flush;
end

//flush会有多久，会持续到主存返回数据吗？1-给pc  2-读出hit_fail，给rd_req  3-ignore_one_ret=1  4及以后主存ret_valid

always_ff @( posedge clk ) begin
    if(reset)ignore_one_ret<=1'b0;
    else if(flush&&(hit_fail||pre_uncache_en))ignore_one_ret<=1'b1;//flush_delay与hit_fail同拍
    else if(ret_valid||iucache_rvalid_o)ignore_one_ret<=1'b0;
    else ignore_one_ret<=ignore_one_ret;
end
logic real_ret_valid;
assign real_ret_valid=ignore_one_ret?1'b0:ret_valid;

//TLB转换(未实现?)
bus32_t physical_addr;
assign physical_addr=branch_flush? 32'b0:pc2icache.pc;

logic pre_inst_en;
bus32_t pre_physical_addr,pre_virtual_addr;

//记录地址
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_inst_en<=1'b0;
        pre_physical_addr<=32'b0;
        pre_virtual_addr<=32'b0;
    end
    else if(pc2icache.stall)begin
        pre_physical_addr<=pre_physical_addr;
        pre_inst_en<=pre_inst_en;
        pre_virtual_addr<=pre_virtual_addr;
    end
    else begin
        pre_inst_en<=pc2icache.inst_en;
        pre_physical_addr<=physical_addr;
        pre_virtual_addr<=pc2icache.pc;
    end
end



logic [`DATA_SIZE-1:0]read_from_mem[`BANK_NUM-1:0];
for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign read_from_mem[i] = ret_data[32*(i+1)-1:32*i];
end


//BANK 0~7 WAY 0~1
logic [3:0]wea_way0;
logic [3:0]wea_way1;
    
//port a:write  port b:read
logic [`DATA_SIZE-1:0]way0_cache[`BANK_NUM-1:0];
logic [`INDEX_SIZE-1:0] read_addr_index;
assign read_addr_index = pc2icache.stall? pre_physical_addr[`INDEX_LOC] : physical_addr[`INDEX_LOC];//When pc2icache.stall, maintain the addr of ram 


logic [`INDEX_SIZE-1:0] addra_way0_index;
assign addra_way0_index=|wea_way0?pre_physical_addr[`INDEX_LOC]:read_addr_index;

BRAM Bank0_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[0]),.douta(way0_cache[0]),.enb(1'b0));
BRAM Bank1_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[1]),.douta(way0_cache[1]),.enb(1'b0));
BRAM Bank2_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[2]),.douta(way0_cache[2]),.enb(1'b0));
BRAM Bank3_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[3]),.douta(way0_cache[3]),.enb(1'b0));
BRAM Bank4_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[4]),.douta(way0_cache[4]),.enb(1'b0));
BRAM Bank5_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[5]),.douta(way0_cache[5]),.enb(1'b0));
BRAM Bank6_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[6]),.douta(way0_cache[6]),.enb(1'b0));
BRAM Bank7_way0 (.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(addra_way0_index),.dina(read_from_mem[7]),.douta(way0_cache[7]),.enb(1'b0));


logic [`DATA_SIZE-1:0]way1_cache[`BANK_NUM-1:0]; 
logic [`INDEX_SIZE-1:0] addra_way1_index;
assign addra_way1_index=|wea_way1?pre_physical_addr[`INDEX_LOC]:read_addr_index;
BRAM Bank0_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[0]),.douta(way1_cache[0]),.enb(1'b0));
BRAM Bank1_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[1]),.douta(way1_cache[1]),.enb(1'b0));
BRAM Bank2_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[2]),.douta(way1_cache[2]),.enb(1'b0));
BRAM Bank3_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[3]),.douta(way1_cache[3]),.enb(1'b0));
BRAM Bank4_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[4]),.douta(way1_cache[4]),.enb(1'b0));
BRAM Bank5_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[5]),.douta(way1_cache[5]),.enb(1'b0));
BRAM Bank6_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[6]),.douta(way1_cache[6]),.enb(1'b0));
BRAM Bank7_way1 (.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(addra_way1_index),.dina(read_from_mem[7]),.douta(way1_cache[7]),.enb(1'b0));

//Tag+Valid
logic [`TAGV_SIZE-1:0]tagv_cache_w0;
logic [`TAGV_SIZE-1:0]tagv_cache_w1;

logic[`INDEX_SIZE-1:0] tagv_write_addr;
assign tagv_write_addr=icacop_op_en?cacop_op_addr_index:pre_physical_addr[`INDEX_LOC];
logic[`TAGV_SIZE-1:0]tagv_data_tagv;
assign tagv_data_tagv=icacop_op_en?`TAGV_SIZE'b0:{1'b1,pre_physical_addr[`TAG_LOC]};

logic[`INDEX_SIZE-1:0] tagv0_addr;
assign tagv0_addr=|wea_way0?tagv_write_addr:read_addr_index;
logic[`INDEX_SIZE-1:0] tagv1_addr;
assign tagv1_addr=|wea_way1?tagv_write_addr:read_addr_index;



BRAM TagV0(.clk(clk),.ena(1'b1),.wea(wea_way0),.addra(tagv0_addr),.dina(tagv_data_tagv),.douta(tagv_cache_w0),.enb(1'b0));
BRAM TagV1(.clk(clk),.ena(1'b1),.wea(wea_way1),.addra(tagv1_addr),.dina(tagv_data_tagv),.douta(tagv_cache_w1),.enb(1'b0));


logic read_success;
always_ff @( posedge clk ) begin
    if(real_ret_valid)read_success<=1'b1;
    else read_success<=1'b0;
end


//LRU
logic [`SET_SIZE-1:0]LRU;
logic LRU_pick;
assign LRU_pick = LRU[pre_physical_addr[`INDEX_LOC]];
always_ff @( posedge clk ) begin
    if(reset)LRU<=0;
    else if(pc2icache.inst_en&&hit_success)LRU[pre_physical_addr[`INDEX_LOC]] <= hit_way0;
    else if(pc2icache.inst_en&&hit_fail&&read_success)LRU[pre_physical_addr[`INDEX_LOC]] <= wea_way0;
    else LRU<=LRU;
end


//判断命中
assign hit_way0 = (tagv_cache_w0[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w0[20]==1'b1)? 1'b1 : 1'b0;
assign hit_way1 = (tagv_cache_w1[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w1[20]==1'b1)? 1'b1 : 1'b0;
assign hit_success = (hit_way0 | hit_way1) & pre_inst_en;
assign hit_fail = ~(hit_success) & pre_inst_en;


assign pc2icache.stall=reset?1'b1:(flush?1'b0:((icacop_op_en||pre_cacop_en||uncache_stall)?1'b1:((hit_fail||read_success)?1'b1:1'b0)));
//assign inst=branch_flush_delay? 32'b0:(hit_way0?way0_cache[pre_physical_addr[4:2]]:(hit_way1?way1_cache[pre_physical_addr[4:2]]:(hit_fail&&real_ret_valid?read_from_mem[pre_physical_addr[4:2]]:32'h0)));
//这个inst该我代码了不知道我现在写的对不对！！！！！！！！！！！！！！！！！！！！！！！
assign pc2icache.inst=branch_flush? 32'b0:((pre_uncache_en&&iucache_rvalid_o)?iucache_rdata_o:(hit_way0?way0_cache[pre_physical_addr[4:2]]:(hit_way1?way1_cache[pre_physical_addr[4:2]]:(hit_fail&&real_ret_valid?read_from_mem[pre_physical_addr[4:2]]:32'h0))));

assign wea_way0=(cacop_op_0||cacop_op_1||cacop_op_2)?4'b1111:(pre_inst_en&&real_ret_valid&&LRU_pick==1'b0)?4'b1111:4'b0000;
assign wea_way1=(cacop_op_0||cacop_op_1||cacop_op_2)?4'b1111:(pre_inst_en&&real_ret_valid&&LRU_pick==1'b1)?4'b1111:4'b0000;


assign rd_req=!flush&&!icacop_op_en&&!read_success&&hit_fail&&!real_ret_valid;
assign rd_addr=pre_physical_addr;


assign iucache_ren_i=pre_uncache_en;
assign iucache_addr_i=iucache_ren_i?pre_physical_addr:32'b0;

assign pc2icache.pc_for_bpu = flush? 32'b0:pre_physical_addr;

always_ff @( posedge clk ) begin
    if (reset || flush) begin
        pc2icache.pc_for_buffer <= 32'b0;
        pc2icache.icache_is_exception <= 6'b0;
        pc2icache.icache_exception_cause <= 42'b0;
        pc2icache.inst_for_buffer <= 32'b0;
        pc2icache.stall_for_buffer <= 1'b1;
        pc2icache.icache_fetch_inst_1_en <= 1'b0;

        pc2icache.icache_is_branch_i_1 <= 1'b0;
        pc2icache.icache_pre_taken_or_not <= 1'b0;
        pc2icache.icache_pre_branch_addr <= 32'b0;
    end
    else begin
        pc2icache.pc_for_buffer <= pre_physical_addr;
        pc2icache.icache_is_exception <= pc2icache.front_is_exception;
        pc2icache.icache_exception_cause <= pc2icache.front_exception_cause;
        pc2icache.inst_for_buffer <= pc2icache.inst;
        pc2icache.stall_for_buffer <= pc2icache.stall;
        pc2icache.icache_fetch_inst_1_en <= pc2icache.front_fetch_inst_1_en;
        pc2icache.icache_is_branch_i_1 <= pc2icache.front_is_branch_i_1;
        pc2icache.icache_pre_taken_or_not <= pc2icache.front_pre_taken_or_not;
        pc2icache.icache_pre_branch_addr <= pc2icache.front_pre_branch_addr;
    end
end


endmodule