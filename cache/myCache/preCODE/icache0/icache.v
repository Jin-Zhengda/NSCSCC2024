`timescale 1ns / 1ps

// interface define
`define INSTRUCTION_DATA_SIZE 32
`define INSTRUCTION_ADDR_SIZE 32
`define PACKED_DATA_SIZE 256

//icache define
`define INDEX_SIZE 8
`define TAG_SIZE 20
`define OFFSET_SIZE 4
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:4
`define OFFSET_LOCATION 3:0

`define SETSIZE 256
`define BANK_NUM 8
`define BANK_SIZE 32
`define TAGV_SIZE 32

//state define
`define ICACHEIDLE 4'b0001//空闲等待状态，接收到使能则保存命令信息，判断是否命中，若命中则进入下一状态ReturnInstruction;否则进入下一状态AskMem
`define ICACHEReturnInstruction 4'b0010//向cpu输出数据，下一状态进入IDLE
`define ICACHEAskMem 4'b0100//向mem查找数据，然后进入RefreshCache
`define RefreshICache 4'b1000//当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。


module icache
(
    input               clk                     ,//时钟信号
    input               reset                   ,//复位信号
    //to from cpu
    input               cpu_icache_read_en      ,//请求有效(即表示有真实数据传来了)
    input               cpu_receive_data_ok     ,//cpu成功接收到信号
    input [`INSTRUCTION_ADDR_SIZE-1:0] virtual_addr,
    input [`INSTRUCTION_ADDR_SIZE-1:0] physical_addr,
    output              cpu_icache_addr_request_ok,//该次请求的地址传输OK，读：地址被接收；
    output              icache_cpu_return_data_en ,//该次请求的数据传输OK，读：数据返回;
    output reg[31:0]       icache_cpu_return_data    ,//读Cache的结果
/*
    input               uncache_en              ,//是否使能非缓存模式
    input               icacop_op_en            ,//是否使能非cacop操作
    input  [ 1:0]       cacop_op_mode           ,//缓存操作的模式
    input  [ 7:0]       cacop_op_addr_index     , //this signal from mem stage's va（来自流水线中内存阶段的虚拟地址）
    input  [19:0]       cacop_op_addr_tag       , 
    input  [ 3:0]       cacop_op_addr_offset    ,
    output              icache_unbusy           ,//缓存是否属于忙状态
    input               tlb_excp_cancel_req     ,//TLB异常取消请求
*/
    //to from axi
    output reg           icache_mem_read_request            ,//读请求有效信号,高电平有效。
    output wire           read_data_from_mem_ok              ,//成功从mem读到信号
    //output [ 2:0]       read_type               ,//读请求类型。3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
    output reg[31:0]       icache_mem_read_addr               ,//读请求起始地址(最后两位为00)
    input               mem_ready_to_read              ,//读请求能否被axi接收的握手信号。高电平有效。
    input               mem_read_addr_ok              ,//mem成功读取addr
    input               mem_return_en            ,//返回数据有效的信号。高电平有效。
    //input               return_last             ,//返回数据是一次读请求对应的最后一个返回数据。(感觉是若返回整个cache行则需要)
    input  [`PACKED_DATA_SIZE-1:0]       mem_return_data             ,//读返回数据。
    //to perf_counter
    output              cache_hit_fail_output//未命中信号  
); 

//将reset反相
wire rst_n;
assign rst_n=~reset;

reg [3:0] current_state,next_state;
//current_state赋值
always @(posedge clk or negedge rst_n) begin
    if(reset)begin
        current_state<=`ICACHEIDLE;
    end
    else begin
        current_state<=next_state;
    end
end

wire hit_success,hit_fail;//是否hit的wire信号
reg hit_result;//记录是否hit

//next_state赋值
always @(*) begin
    if(reset) next_state=`ICACHEIDLE;
    else if(current_state==`ICACHEIDLE)begin
        if(cpu_icache_read_en)begin
            if(hit_success)next_state=`ICACHEReturnInstruction;
            else if(hit_fail) next_state=`ICACHEAskMem;
        end
        else next_state=`ICACHEIDLE;
    end
    else if(current_state==`ICACHEReturnInstruction) next_state=`ICACHEIDLE;
    else if(current_state==`ICACHEAskMem)begin
        if(mem_ready_to_read)next_state=`RefreshICache;
    end 
    else if(current_state==`RefreshICache)begin
        if(mem_return_en)next_state=`ICACHEIDLE;
        else current_state=`RefreshICache;
    end
end

//分状态解决

/*------------------------------------------IDLE状态--------------------------------------------*/
//ICACHEIDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中，
//若命中则进入下一状态ReturnInstruction;否则进入下一状态AskMem

//记录信号
reg [`INSTRUCTION_ADDR_SIZE-1:0] record_virtual_addr,record_physical_addr;
always @(*) begin
    if(reset)record_virtual_addr=`INSTRUCTION_ADDR_SIZE'b0;
    else if(cpu_icache_read_en)record_virtual_addr=virtual_addr;
end
always @(*) begin
    if(reset)record_physical_addr=`INSTRUCTION_ADDR_SIZE'b0;
    else if(cpu_icache_read_en)record_physical_addr=physical_addr;
end

//获取tag,index,offset
reg [`TAG_SIZE-1:0]tag;
reg [`INDEX_SIZE-1:0]index;
reg [`OFFSET_SIZE-1:0]offset;

always @(*) begin
    if(reset)begin
        tag=`TAG_SIZE'b0;
        index=`INDEX_SIZE'b0;
        offset=`OFFSET_SIZE'b0;
    end
    else if(cpu_icache_read_en)begin
        tag=virtual_addr[`TAG_LOCATION];
        index=virtual_addr[`INDEX_LOCATION];
        offset=virtual_addr[`OFFSET_LOCATION];
    end
end

//声明ram存储cache数据
//使能信号
wire way0_read_en,way1_read_en,way0_write_en,way1_write_en;
assign way0_read_en=cpu_icache_read_en?1'b1:1'b0;
assign way1_read_en=cpu_icache_read_en?1'b1:1'b0;
//写使能在后面再次进行了赋值！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
//assign way0_write_en=hit_result?1'b0:1'b1;
//assign way1_write_en=hit_result?1'b0:1'b1;

//这个地方应该同时考虑mem返回数据，才在更准确的时间进行写？？？？？？？？？？？？？？？？

//将mem返回的数据转换成数组格式，便于读取赋值
wire [`INSTRUCTION_DATA_SIZE-1:0]data_record_from_mem[`BANK_NUM-1:0];
for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign data_record_from_mem[i] = mem_return_data[32*(i+1)-1:32*i];
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
assign hit_success=(hit_way0|hit_way1)&cpu_icache_read_en;
assign hit_fail=~(hit_success)&cpu_icache_read_en;
//hit_result赋值 这么@可不可以？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
always @(posedge clk or posedge hit_success or posedge hit_fail) begin
    if(reset)hit_result<=1'b0;
    else if(hit_success)hit_result<=1'b1;
    else if(hit_fail)hit_result<=1'b0;
end


/*------------------------------------ReturnInstruction状态-------------------------------------*/
//ICACHEReturnInstruction:向cpu输出数据，下一状态进入IDLE


//icache_cpu_return_data赋值
always @(*) begin
    if(reset)begin
        icache_cpu_return_data=`INSTRUCTION_DATA_SIZE'b0;
    end
    else if(hit_success)begin
        icache_cpu_return_data=hit_way0?way0_cache[offset]:way1_cache[offset];
    end
    else if(mem_return_en)begin
        icache_cpu_return_data=data_record_from_mem[offset];
    end
    else icache_cpu_return_data=`INSTRUCTION_DATA_SIZE'b0;
end
//icache_cpu_return_data_en赋值
assign icache_cpu_return_data_en=cpu_receive_data_ok?1'b0:(hit_success?1'b1:(mem_return_en?1'b1:1'b0));



/*----------------------------------------ICACHEAskMem状态-----------------------------------------*/
//ICACHEAskMem:向mem查找数据，然后进入RefreshCache
always @(*) begin
    if(reset)begin
        icache_mem_read_request=1'b0;
        icache_mem_read_addr<=`INSTRUCTION_ADDR_SIZE'b0;
    end
    else if(mem_ready_to_read)begin
        if(mem_read_addr_ok)begin
            icache_mem_read_request=1'b0;
        end
        else if(current_state==`ICACHEAskMem||current_state==`RefreshICache) begin
            icache_mem_read_addr=physical_addr;
            icache_mem_read_request=1'b1;
        end
    end
end

/*---------------------------------------RefreshCache状态----------------------------------------*/
//RefreshICache:当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。
//向cpu输出数据在ReturnInstruction状态实现
//更新cache数据
reg[`SETSIZE-1:0]LRU;
wire LRU_pick;
assign LRU_pick=LRU[index];
always @(posedge clk) begin
    if(reset)LRU<=`SETSIZE'b0;
    else if(hit_success)LRU[index]<=hit_way0;
    else if(mem_return_en)LRU[index]<=way0_write_en;
    else LRU<=LRU;
end
//write signal
assign way0_write_en = (mem_return_en && LRU_pick == 1'b0)? 1'b1 : 1'b0;
assign way1_write_en = (mem_return_en && LRU_pick == 1'b1)? 1'b1 : 1'b0;


/*----------------------------------------其他信号----------------------------------------------*/
assign cpu_icache_addr_request_ok=(current_state==`ICACHEIDLE)?1'b0:1'b1;
assign read_data_from_mem_ok=(current_state==`ICACHEIDLE)?1'b1:1'b0;
assign cache_hit_fail_output=hit_fail;

endmodule