`include "icache_types.sv"

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

module icache 
    import icache_types::*;
(
    input logic clk,
    input logic reset,
    //front
    input FRONT_ICACHE_SIGNALS front_icache_signals,
    output ICACHE_FRONT_SIGNALS icache_front_signals,
    //axi
    input AXI_ICACHE_SIGNALS axi_icache_signals,
    output ICACHE_AXI_SIGNALS icache_axi_signals,
    //EXE
    input EXE_ICACHE_SIGNALS exe_icache_signals,
    //ICACHE_STATES
    output ICACHE_STATES icache_states,

    //在icache中无用的信号
    //front
    input logic op,//操作，0表示读，1表示写
    input logic[3:0]wstrb,//写字节使能信号
    input logic[31:0]wdata,//待写数据
    //axi
    output logic wr_req,//写请求有效信号。高电平有效。
    output logic[2:0]wr_typ,//写请求类型。3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
    output logic[31:0]wr_addr,//写请求起始地址。
    output logic[3:0]wr_wstrb,//写操作的字节掩码。仅在写请求类型为3’b000、3’b001、3’b010情况下才有意义。
    output logic[256:0]wr_data,//写数据。
    input  logic wr_rdy //写请求能否被接收的握手信号。高电平有效。此处要求wr_rdy要先于wr_req置起，wr_req看到wr_rdy后才可能置上。所以wr_rdy的生成不要组合逻辑依赖wr_req，它应该是当AXI总线接口内部的16字节写缓存为空时就置上。

);

logic hit_success,hit_fail;//是否hit的wire信号
logic hit_result;//记录是否hit

//状态机
enum int { 
    ICacheIDLE, 
    ICacheAskMem,
    ICacheRefresh
    } 
    current_state,next_state;

//current_state赋值
always_ff @( posedge clk ) begin
    if(reset)current_state<=ICacheIDLE;
    else current_state<=next_state;
end

//next_state赋值
always_comb begin
    case (current_state)
        ICacheIDLE:begin
            if(front_icache_signals.valid==1)begin
                if(hit_success)next_state=ICacheIDLE;
                else if(hit_fail)next_state=ICacheAskMem;
                else next_state=ICacheIDLE;
            end
            else next_state=ICacheIDLE;
        end 
        ICacheAskMem:begin
            if(axi_icache_signals.rd_rdy)next_state=ICacheRefresh;
            else next_state=ICacheAskMem;
        end
        ICacheRefresh:begin
            if(axi_icache_signals.ret_last)next_state=ICacheIDLE;
            else next_state=ICacheRefresh;
        end
        default: next_state=ICacheIDLE;
    endcase
end

//分状态解决
/*====================================ICacheIDLE=========================================*/
//ICacheIDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中，
//              若命中则向CPU返回数据，下一状态为ICacheIDLE;
//              否则进入下一状态ICacheAskMem


//TLB转换(暂未实现)
logic[`ADDR_SIZE-1:0] cur_physical_addr;
logic[`TAG_SIZE-1:0]cur_tag;
logic[`INDEX_SIZE-1:0]cur_index;
logic[`OFFSET_SIZE-1:0]cur_offset;
assign cur_physical_addr=front_icache_signals.virtual_addr;
assign cur_tag=cur_physical_addr[`TAG_LOC];
assign cur_index=cur_physical_addr[`INDEX_LOC];
assign cur_offset=cur_physical_addr[`OFFSET_LOC];

//记录上一个请求的地址信息
logic[`ADDR_SIZE-1:0] pre_physical_addr;
logic[`TAG_SIZE-1:0]pre_tag;
logic[`INDEX_SIZE-1:0]pre_index;
logic[`OFFSET_SIZE-1:0]pre_offset;
assign pre_tag=pre_physical_addr[`TAG_LOC];
assign pre_index=pre_physical_addr[`INDEX_LOC];
assign pre_offset=pre_physical_addr[`OFFSET_LOC];
always_ff @( posedge clk ) begin
    if(icache_front_signals.addr_ok)pre_physical_addr<=cur_physical_addr;
    else pre_physical_addr<=pre_physical_addr;
end


//声明ram存储cache数据
//使能信号
logic way0_read_en,way1_read_en,way0_write_en,way1_write_en;
assign way0_read_en=front_icache_signals.valid?1'b1:1'b0;
assign way1_read_en=front_icache_signals.valid?1'b1:1'b0;
//assign way0_write_en=(current_state==ICacheRefresh&&axi_icache_signals.ret_last)?1'b1:1'b0;
//assign way0_write_en=(current_state==ICacheRefresh&&axi_icache_signals.ret_last)?1'b1:1'b0;
//将mem返回的数据转换成数组格式，便于读取赋值
logic [`DATA_SIZE-1:0]data_record_from_mem[`BANK_NUM-1:0];
integer mycounter;
/*
always_ff @( posedge clk ) begin
    if(reset)mycounter<=-1;
    else if(axi_icache_signals.ret_valid)mycounter<=mycounter+1;
    else mycounter<=-1;
end
*/
/*
always_ff @( posedge clk ) begin
    if(mycounter>=0&&mycounter<=7)data_record_from_mem[mycounter]<=axi_icache_signals.ret_data;
end
*/

always_ff @( posedge clk ) begin
    if(reset)mycounter<=0;
    else if(axi_icache_signals.ret_valid)begin
        mycounter<=mycounter+1;
        data_record_from_mem[mycounter]<=axi_icache_signals.ret_data;
    end
    else mycounter<=0;
end

/*
always_comb begin
    if(mycounter!=-1)data_record_from_mem[mycounter]=axi_icache_signals.ret_data;
    else data_record_from_mem[mycounter]=`ADDR_SIZE'hffffffff;
end
*/
logic [`BANK_SIZE-1:0]way0_cache[`BANK_NUM-1:0];//读中的那一组第0路数据的数组
simple_dual_ram WAY0_BANK0(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[0]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[0]));
simple_dual_ram WAY0_BANK1(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[1]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[1]));
simple_dual_ram WAY0_BANK2(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[2]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[2]));
simple_dual_ram WAY0_BANK3(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[3]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[3]));
simple_dual_ram WAY0_BANK4(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[4]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[4]));
simple_dual_ram WAY0_BANK5(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[5]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[5]));
simple_dual_ram WAY0_BANK6(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[6]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[6]));
simple_dual_ram WAY0_BANK7(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(pre_index),.read_data(way0_cache[7]),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[7]));
logic [`BANK_SIZE-1:0]way1_cache[`BANK_NUM-1:0];//读中的那一组第1路数据的数组
simple_dual_ram WAY1_BANK0(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[0]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[0]));
simple_dual_ram WAY1_BANK1(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[1]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[1]));
simple_dual_ram WAY1_BANK2(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[2]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[2]));
simple_dual_ram WAY1_BANK3(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[3]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[3]));
simple_dual_ram WAY1_BANK4(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[4]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[4]));
simple_dual_ram WAY1_BANK5(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[5]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[5]));
simple_dual_ram WAY1_BANK6(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[6]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[6]));
simple_dual_ram WAY1_BANK7(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(pre_index),.read_data(way1_cache[7]),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data(data_record_from_mem[7]));
//tag_valid
logic [31:0] tagv_way0_cache,tagv_way1_cache;
simple_dual_ram WAY0_TAGV (.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(tagv_way0_cache),.clk_write(clk),.write_en(way0_write_en),.write_addr(cur_index),.write_data({12'b1,cur_tag}));
simple_dual_ram WAY1_TAGV (.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(tagv_way1_cache),.clk_write(clk),.write_en(way1_write_en),.write_addr(cur_index),.write_data({12'b1,cur_tag}));


//判断命中
logic hit_way0;
logic hit_way1;
assign hit_way0=((tagv_way0_cache[19:0]==cur_tag)&&(tagv_way0_cache[20]==1'b1))?1'b1:1'b0;
assign hit_way1=(tagv_way1_cache[19:0]==cur_tag&&tagv_way1_cache[20]==1'b1)?1'b1:1'b0;
assign hit_success=(hit_way0|hit_way1)&front_icache_signals.valid;
assign hit_fail=~(hit_success)&front_icache_signals.valid;
//hit_result赋值 这么@可不可以？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
always @(posedge clk) begin
    if(reset)hit_result<=1'b0;
    else if(hit_success)hit_result<=1'b1;
    else if(hit_fail)hit_result<=1'b0;
end

reg test;
//若命中则向cpu返回数据
integer trans_cur_offset;
always_comb begin
    case (cur_offset[4:2])
        3'h0:trans_cur_offset=0; 
        3'h1:trans_cur_offset=1; 
        3'h2:trans_cur_offset=2; 
        3'h3:trans_cur_offset=3; 
        3'h4:trans_cur_offset=4; 
        3'h5:trans_cur_offset=5; 
        3'h6:trans_cur_offset=6; 
        3'h7:trans_cur_offset=7; 
        default: trans_cur_offset=-1;
    endcase
end
integer trans_pre_offset;
always_comb begin
    case (pre_offset[4:2])
        3'h0:trans_pre_offset=0; 
        3'h1:trans_pre_offset=1; 
        3'h2:trans_pre_offset=2; 
        3'h3:trans_pre_offset=3; 
        3'h4:trans_pre_offset=4; 
        3'h5:trans_pre_offset=5; 
        3'h6:trans_pre_offset=6; 
        3'h7:trans_pre_offset=7; 
        default: trans_pre_offset=-1;
    endcase
end

always_ff @( posedge clk ) begin
    if(hit_success)begin
        test<=1'b0;
        icache_front_signals.data_ok<=1'b1;
        icache_front_signals.rdata<=hit_way0?way0_cache[trans_cur_offset]:way1_cache[trans_cur_offset];
    end
    else if(!hit_result&&mycounter==7)begin
        icache_front_signals.data_ok<=1'b1;
        test<=1'b1;
        icache_front_signals.rdata<=data_record_from_mem[trans_pre_offset];
    end 
    else begin
        icache_front_signals.data_ok<=1'b0;
        icache_front_signals.rdata<=`ADDR_SIZE'hffffffff;
    end
end

//assign icache_front_signals.rdata=hit_success?(hit_way0?way0_cache[trans_cur_offset]:way1_cache[trans_cur_offset]):((!hit_result&&mycounter==7)?data_record_from_mem[trans_cur_offset]:`ADDR_SIZE'hffffffff);


/*
always_comb begin
    if(hit_result)begin
        icache_front_signals.data_ok=1'b1;
        icache_front_signals.rdata=hit_way0?way0_cache[pre_offset[4:2]]:way1_cache[pre_offset[4:2]];
    end
    else if(!hit_result&&mycounter)begin
        icache_front_signals.data_ok=1'b1;
        icache_front_signals.rdata=data_record_from_mem[pre_offset[4:2]];
    end
    else begin
        icache_front_signals.data_ok=1'b0;
        icache_front_signals.rdata=`ADDR_SIZE'hffffffff;
    end
end
*/


/*===================================ICacheAskMem==========================================*/
always_ff @( posedge clk ) begin
    if(reset)begin
        icache_axi_signals.rd_req<=1'b0;
        icache_axi_signals.rd_addr<=`ADDR_SIZE'b0;
    end
    else if(axi_icache_signals.ret_valid)begin
        icache_axi_signals.rd_req<=1'b0;
    end
    else if(current_state==ICacheAskMem)begin
        icache_axi_signals.rd_req<=1'b1;
        icache_axi_signals.rd_addr<=cur_physical_addr;
    end
end


/*====================================ICacheRefresh===================================*/
//ICacheRefresh:当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。
//向cpu输出数据在IDLE状态实现
//更新cache数据
logic[`SET_SIZE-1:0]LRU;
logic LRU_pick;
assign LRU_pick=LRU[cur_index];
always @(posedge clk) begin
    if(reset)LRU<=`SET_SIZE'b0;
    else if(hit_success)LRU[cur_index]<=hit_way0;
    else if(axi_icache_signals.ret_last)LRU[cur_index]<=way0_write_en;
    else LRU<=LRU;
end
//write signal
/*
assign way0_write_en = (mycounter==7 && LRU_pick == 1'b0)? 1'b1 : 1'b0;
assign way1_write_en = (mycounter==7 && LRU_pick == 1'b1)? 1'b1 : 1'b0;
*/
always_ff @( posedge clk ) begin
    if(reset) way0_write_en<=1'b0;
    else if(mycounter==7&&LRU_pick==1'b0)way0_write_en<=1'b1;
    else way0_write_en<=1'b0;
end
always_ff @( posedge clk ) begin
    if(reset) way1_write_en<=1'b0;
    else if(mycounter==7&&LRU_pick==1'b1)way1_write_en<=1'b1;
    else way1_write_en<=1'b0;
end

/*=======================================其他信号===================================================*/
assign icache_front_signals.addr_ok=front_icache_signals.valid&&(current_state==ICacheIDLE);
assign icache_front_signals.cache_miss=hit_fail;
assign icache_axi_signals.rd_type=3'b100;//考虑指令后，assign rd_type = request_buffer_uncache_en ? 3'b10 : 3'b100;
assign icache_states.icache_unbusy=current_state==ICacheIDLE;
assign icache_states.icache_hit=hit_result;

    
endmodule