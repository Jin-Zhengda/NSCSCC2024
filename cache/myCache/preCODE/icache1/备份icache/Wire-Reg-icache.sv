`include "icache_types.sv"

`define ADDR_SIZE 32
`define DATA_SIZE 32


`define TAG_SIZE 20
`define INDEX_SIZE 8
`define OFFSET_SIZE 4
`define TAG_LOC 31:12
`define INDEX_LOC 11:4
`define OFFSET_LOC 3:0

`define BANK_NUM 8 
`define BANK_SIZE 32
`define SET_SIZE 256

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
    output logic[127:0]wr_data,//写数据。
    input  logic wr_rdy //写请求能否被接收的握手信号。高电平有效。此处要求wr_rdy要先于wr_req置起，wr_req看到wr_rdy后才可能置上。所以wr_rdy的生成不要组合逻辑依赖wr_req，它应该是当AXI总线接口内部的16字节写缓存为空时就置上。

);

wire hit_success,hit_fail;//是否hit的wire信号
reg hit_result;//记录是否hit

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

//记录信号信息
reg record_read_valid;
reg [`ADDR_SIZE-1:0]record_virtual_addr;
always_ff @( posedge clk ) begin
    if(front_icache_signals.valid)begin
        record_read_valid<=front_icache_signals.valid;
        record_virtual_addr<=front_icache_signals.virtual_addr;
    end
    else begin
        record_read_valid<=front_icache_signals.valid;
    end
end
//TLB转换(暂未实现)
wire[`ADDR_SIZE-1:0] physical_addr;
wire[`TAG_SIZE-1:0]tag;
wire[`INDEX_SIZE-1:0]index;
wire[`OFFSET_SIZE-1:0]offset;
assign physical_addr=record_virtual_addr;
assign tag=physical_addr[`TAG_LOC];
assign index=physical_addr[`INDEX_LOC];
assign offset=physical_addr[`OFFSET_LOC];


//声明ram存储cache数据
//使能信号
wire way0_read_en,way1_read_en,way0_write_en,way1_write_en;
assign way0_read_en=front_icache_signals.valid?1'b1:1'b0;
assign way1_read_en=front_icache_signals.valid?1'b1:1'b0;
assign way0_write_en=(current_state==ICacheRefresh&&axi_icache_signals.ret_last)?1'b1:1'b0;
assign way0_write_en=(current_state==ICacheRefresh&&axi_icache_signals.ret_last)?1'b1:1'b0;
//将mem返回的数据转换成数组格式，便于读取赋值
reg [`DATA_SIZE-1:0]data_record_from_mem[`BANK_NUM-1:0];
integer mycounter;
always_ff @( posedge clk ) begin
    if(reset)mycounter<=-1;
    else if(axi_icache_signals.ret_valid)mycounter<=mycounter+1;
    else mycounter<=-1;
end
always_ff @( posedge clk ) begin
    if(mycounter>=0&&mycounter<=7)data_record_from_mem[mycounter]<=axi_icache_signals.ret_data;
end
wire [`BANK_SIZE-1:0]way0_cache[`BANK_NUM-1:0];//读中的那一组第0路数据的数组
simple_dual_ram WAY0_BANK0(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[0]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[0]));
simple_dual_ram WAY0_BANK1(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[1]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[1]));
simple_dual_ram WAY0_BANK2(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[2]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[2]));
simple_dual_ram WAY0_BANK3(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[3]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[3]));
simple_dual_ram WAY0_BANK4(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[4]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[4]));
simple_dual_ram WAY0_BANK5(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[5]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[5]));
simple_dual_ram WAY0_BANK6(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[6]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[6]));
simple_dual_ram WAY0_BANK7(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[7]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[7]));
wire [`BANK_SIZE-1:0]way1_cache[`BANK_NUM-1:0];//读中的那一组第1路数据的数组
simple_dual_ram WAY1_BANK0(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[0]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[0]));
simple_dual_ram WAY1_BANK1(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[1]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[1]));
simple_dual_ram WAY1_BANK2(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[2]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[2]));
simple_dual_ram WAY1_BANK3(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[3]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[3]));
simple_dual_ram WAY1_BANK4(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[4]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[4]));
simple_dual_ram WAY1_BANK5(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[5]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[5]));
simple_dual_ram WAY1_BANK6(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[6]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[6]));
simple_dual_ram WAY1_BANK7(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[7]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[7]));
//tag_valid
wire [31:0] tagv_way0_cache,tagv_way1_cache;
simple_dual_ram WAY0_TAGV (.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(tagv_way0_cache),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data({12'b1,tag}));
simple_dual_ram WAY1_TAGV (.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(tagv_way1_cache),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data({12'b1,tag}));


//判断命中
wire hit_way0;
wire hit_way1;
assign hit_way0=((tagv_way0_cache[19:0]==tag)&&(tagv_way0_cache[20]==1'b1))?1'b1:1'b0;
assign hit_way1=(tagv_way1_cache[19:0]==tag&&tagv_way1_cache[20]==1'b1)?1'b1:1'b0;
assign hit_success=(hit_way0|hit_way1)&front_icache_signals.valid;
assign hit_fail=~(hit_success)&front_icache_signals.valid;
//hit_result赋值 这么@可不可以？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
always @(posedge clk or posedge hit_success or posedge hit_fail) begin
    if(reset)hit_result<=1'b0;
    else if(hit_success)hit_result<=1'b1;
    else if(hit_fail)hit_result<=1'b0;
end

//若命中则向cpu返回数据
always_ff @( posedge clk ) begin
    if(hit_success)begin
        icache_front_signals.data_ok<=1'b1;
        icache_front_signals.rdata<=hit_way0?way0_cache[offset]:way1_cache[offset];
    end
    else if(hit_fail&&axi_icache_signals.ret_last)begin
        icache_front_signals.data_ok<=1'b1;
        icache_front_signals.rdata<=data_record_from_mem[offset];
    end 
    else begin
        icache_front_signals.data_ok<=1'b0;
        icache_front_signals.rdata<=`ADDR_SIZE'hffffffff;
    end
end


/*===================================ICacheAskMem==========================================*/
always_ff @( posedge clk ) begin
    if(reset)begin
        icache_axi_signals.rd_req<=1'b0;
        icache_axi_signals.rd_addr<=`ADDR_SIZE'b0;
    end
    else if(current_state==ICacheAskMem)begin
        icache_axi_signals.rd_req<=1'b1;
        icache_axi_signals.rd_addr<=physical_addr;
    end
end


/*====================================ICacheRefresh===================================*/
//ICacheRefresh:当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。
//向cpu输出数据在IDLE状态实现
//更新cache数据
reg[`SET_SIZE-1:0]LRU;
wire LRU_pick;
assign LRU_pick=LRU[index];
always @(posedge clk) begin
    if(reset)LRU<=`SET_SIZE'b0;
    else if(hit_success)LRU[index]<=hit_way0;
    else if(axi_icache_signals.ret_last)LRU[index]<=way0_write_en;
    else LRU<=LRU;
end
//write signal
assign way0_write_en = (axi_icache_signals.ret_last && LRU_pick == 1'b0)? 1'b1 : 1'b0;
assign way1_write_en = (axi_icache_signals.ret_last && LRU_pick == 1'b1)? 1'b1 : 1'b0;

/*=======================================其他信号===================================================*/
assign icache_front_signals.addr_ok=front_icache_signals.valid&&(current_state==ICacheIDLE);
assign icache_front_signals.cache_miss=hit_fail;
assign icache_axi_signals.rd_type=3'b100;//考虑指令后，assign rd_type = request_buffer_uncache_en ? 3'b10 : 3'b100;
assign icache_states.icache_unbusy=current_state==ICacheIDLE;
assign icache_states.icache_hit=hit_result;

    
endmodule