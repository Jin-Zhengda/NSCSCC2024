`timescale 1ns / 1ps

//interface define
`define ADDR_SIZE 32
`define DATA_SIZE 32
`define PACKED_DATA_SIZE 256

//dcache define
//size define
`define TAG_SIZE 20
`define INDEX_SIZE 8
`define OFFSET_SIZE 4
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:4
`define OFFSET_LOCATION 3:0

`define BANK_NUM 8
`define BANK_SIZE 32
`define SET_SIZE 256
`define DIRTY_SIZE 256*2

//state define
`define DCache_IDLE 5'b00001
`define ReadDCache 5'b00010
`define WriteDCache 5'b00100
`define DCacheAskMem 5'b01000
`define RefreshDCache 5'b10000


module dcache (
    input wire clk,
    input wire reset,
    //cpu
    input wire [`ADDR_SIZE-1:0] cpu_dcache_virtual_addr,//cpu传的虚拟地址
    input wire [`ADDR_SIZE-1:0] cpu_dcache_physical_addr,//cpu传的物理地址
    output wire cpu_command_dcache_ok,//cpu向dcache的命令成功接收

    //cpu读数据
    input wire cpu_read_dcache_en,//cpu读数据命令使能信号
    input wire cpu_receive_dcache_data_ok,//cpu成功接收dcache的数据
    output wire dcache_cpu_return_data_en,//dcache正在向cpu返回数据
    output reg [`DATA_SIZE-1:0] dcache_cpu_return_data,//dcache向cpu返回的数据
    //cpu写数据
    input wire cpu_write_dcache_en,//cpu写数据命令使能信号
    input wire [`DATA_SIZE-1:0] cpu_write_dcache_data,//cpu需要写的数据
    output wire cpu_write_dcache_ok,//dcache写入完成

    //axi读数据
    output wire dcache_read_mem_en,//dcache读数据命令信号
    output wire [`ADDR_SIZE-1:0] dcache_read_mem_addr,//dcache读数据的地址(物理地址)
    output wire dcache_receive_mem_data_ok,//dcache成功接收来自mem的data
    input wire mem_ready_for_dcache_read,//mem空闲可读
    input wire mem_dcache_return_data_en,//mem正在向dcache返回数据
    input wire [`PACKED_DATA_SIZE-1:0] mem_dcache_return_data,//mem向cache返回的数据
    input wire mem_receive_dcache_read_ok,//mem成功接收dcache的读取命令
    //通过write_buffer向mem写数据
    output wire dcache_write_buffer_en,//dcache写数据命令信号
    output wire [`ADDR_SIZE-1:0]dcache_write_buffer_physical_addr,//dcache向mem写数据的物理地址
    output wire [`ADDR_SIZE-1:0]dcache_write_buffer_virtual_addr,//dcache向mem写数据的虚拟地址
    output wire [`PACKED_DATA_SIZE-1:0]dcache_write_buffer_data,//dcache向mem写的数据
    input wire buffer_ready_for_dcache_write,//buffer可接收写命令
    input wire buffer_receive_dcache_write_ok,//buffer成功接收写命令
    //writebuffer命中情况
    input wire buffer_hit_success,//write_buffer成功命中
    
    //其他信号
    output wire dcache_hit_success,//dcache成功命中
    output wire dcache_hit_fail,//dcache未命中
    output reg dcache_hit_result//dcache的命中结果
);

//复位信号反向
wire rst_n;
assign rst_n=~reset;

/*状态机定义
- DCache_IDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中。根据是否命中，读还是写决定进入下一个状态(命中读——ReadDCache;命中写——WriteDCache;未命中读或写——AskMem)若dcache未命中但writebuffer命中，则下一状态返回IDLE;
- ReadDCache:向cpu输出数据，下一状态进入IDLE;
- WriteDCache:改写DCache中的数据，下一状态进入IDLE;
- DCacheAskMem:向mem查找数据，处理LRU_pick所指向的数据，若为脏则传给WriteBuffer，若writebuffer还在阻塞则进行阻塞,然后进入RefreshDCache;
- RefreshDCache:等到总线数据返回时，根据命令要求，若读则返回对应数据；若写则改写数据。然后进入IDLE;
*/

//状态机
reg [4:0]dcache_current_state,dcache_next_state;

//为dcache_current_state赋值
always @(posedge clk or negedge rst_n) begin
    if(reset)dcache_current_state<=`DCache_IDLE;
    else dcache_current_state<=dcache_next_state;
end

//为dcache_next_state赋值
always @(*) begin
    if(dcache_current_state==`DCache_IDLE)begin
        if(dcache_hit_success)begin
            if(cpu_read_dcache_en)dcache_next_state=`ReadDCache;
            else if(cpu_write_dcache_en)dcache_next_state=`WriteDCache;
        end
        else if(dcache_hit_fail) begin
            if(buffer_hit_success)dcache_next_state=`DCache_IDLE;
            else dcache_next_state=`DCacheAskMem;
        end
        else dcache_next_state=`DCache_IDLE;
    end
    else if(dcache_current_state==`ReadDCache)begin
        dcache_next_state=`DCache_IDLE;
    end
    else if(dcache_current_state==`WriteDCache)begin
        dcache_next_state=`DCache_IDLE;
    end
    else if(dcache_current_state==`DCacheAskMem)begin
        if(mem_ready_for_dcache_read&&buffer_ready_for_dcache_write)dcache_next_state=`RefreshDCache;//优先把脏数据写入mem，再从mem读数据
    end
    else if(dcache_current_state==`RefreshDCache)begin
        if(mem_dcache_return_data_en)dcache_next_state=`DCache_IDLE;
    end
end

//各个状态下的操作

/*--------------------------------------DCache_IDLE---------------------------------------------*/
//DCache_IDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中。
//根据是否命中，读还是写决定进入下一个状态(命中读——ReadDCache;命中写——WriteDCache;未命中读或写——AskMem)
//若dcache未命中但writebuffer命中，则下一状态返回IDLE;

//保存命令信息
reg record_read_en,record_write_en;
reg [`ADDR_SIZE-1:0]record_virtual_addr,record_physical_addr;//记录传来的地址信息
reg [`DATA_SIZE-1:0]record_cpu_write_dcache_data;
always @(*) begin
    if(reset)record_read_en=1'b0;
    else if(cpu_read_dcache_en)record_read_en=1'b1;
    else if(dcache_cpu_return_data_en)record_read_en=1'b0;
end
always @(*) begin
    if(reset)record_write_en=1'b0;
    else if(cpu_write_dcache_en)record_write_en=1'b1;
    else if(cpu_write_dcache_ok)record_write_en=1'b0;
end
always @(*) begin
    if(cpu_read_dcache_en||cpu_write_dcache_en)begin
        record_physical_addr=cpu_dcache_physical_addr;
        record_virtual_addr=cpu_dcache_virtual_addr;
    end
end
always @(*) begin
    if(cpu_write_dcache_en)record_cpu_write_dcache_data=cpu_write_dcache_data;
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
    else if(cpu_read_dcache_en||cpu_write_dcache_en)begin
        tag=cpu_dcache_virtual_addr[`TAG_LOCATION];
        index=cpu_dcache_virtual_addr[`INDEX_LOCATION];
        offset=cpu_dcache_virtual_addr[`OFFSET_LOCATION];
    end
end

//声明ram存储dcache数据
//使能信号
wire way0_read_en,way1_read_en;
/*原先设计，改成一直使能
assign way0_read_en=cpu_read_dcache_en?1'b1:1'b0;
assign way1_read_en=cpu_read_dcache_en?1'b1:1'b0;
*/
assign way0_read_en=1'b1;
assign way1_read_en=1'b1;
wire way0_write_en;
wire way1_write_en;
//dcache_hit_result赋值！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
assign way0_write_en=((dcache_hit_result&&record_write_en)||mem_dcache_return_data_en)?1'b1:1'b0;
assign way1_write_en=((dcache_hit_result&&record_write_en)||mem_dcache_return_data_en)?1'b1:1'b0;

//将mem返回的数据转换成数组格式，便于读取赋值
wire [`DATA_SIZE-1:0]data_to_write_to_dcache0[`BANK_NUM-1:0];
wire [`DATA_SIZE-1:0]data_to_write_to_dcache1[`BANK_NUM-1:0];
wire [`DATA_SIZE-1:0]data_record_from_mem[`BANK_NUM-1:0];

wire [`BANK_SIZE-1:0]way0_cache[`BANK_NUM-1:0];//读中的那一组第0路数据的数组
wire [`BANK_SIZE-1:0]way1_cache[`BANK_NUM-1:0];//读中的那一组第1路数据的数组

for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
    assign data_to_write_to_dcache0[i] = (record_write_en&&dcache_hit_result&&i==offset)?record_cpu_write_dcache_data:(mem_dcache_return_data_en?mem_dcache_return_data[32*(i+1)-1:32*i]:way0_cache[i]);
    assign data_to_write_to_dcache1[i] = (record_write_en&&dcache_hit_result&&i==offset)?record_cpu_write_dcache_data:(mem_dcache_return_data_en?mem_dcache_return_data[32*(i+1)-1:32*i]:way1_cache[i]);
    assign data_record_from_mem[i]=mem_dcache_return_data_en?mem_dcache_return_data[32*(i+1)-1:32*i]:`DATA_SIZE'b0;
    //assign way0_write_en[i]=mem_dcache_return_data_en?1'b1:((record_write_en&&dcache_hit_result&&i==offset)?1'b1:1'b0);
    //assign way1_write_en[i]=mem_dcache_return_data_en?1'b1:((record_write_en&&dcache_hit_result&&i==offset)?1'b1:1'b0);
end


simple_dual_ram WAY0_BANK0(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[0]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[0]));
simple_dual_ram WAY0_BANK1(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[1]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[1]));
simple_dual_ram WAY0_BANK2(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[2]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[2]));
simple_dual_ram WAY0_BANK3(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[3]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[3]));
simple_dual_ram WAY0_BANK4(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[4]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[4]));
simple_dual_ram WAY0_BANK5(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[5]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[5]));
simple_dual_ram WAY0_BANK6(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[6]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[6]));
simple_dual_ram WAY0_BANK7(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[7]),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_to_write_to_dcache0[7]));

simple_dual_ram WAY1_BANK0(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[0]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[0]));
simple_dual_ram WAY1_BANK1(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[1]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[1]));
simple_dual_ram WAY1_BANK2(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[2]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[2]));
simple_dual_ram WAY1_BANK3(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[3]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[3]));
simple_dual_ram WAY1_BANK4(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[4]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[4]));
simple_dual_ram WAY1_BANK5(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[5]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[5]));
simple_dual_ram WAY1_BANK6(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[6]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[6]));
simple_dual_ram WAY1_BANK7(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[7]),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_to_write_to_dcache1[7]));

//tag_valid
wire [31:0] tagv_way0_cache,tagv_way1_cache;
simple_dual_ram WAY0_TAGV (.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(index),.read_data(tagv_way0_cache),.clk_write(clk),.write_en(way0_write_en),.write_addr(index),.write_data({12'b1,tag}));
simple_dual_ram WAY1_TAGV (.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(index),.read_data(tagv_way1_cache),.clk_write(clk),.write_en(way1_write_en),.write_addr(index),.write_data({12'b1,tag}));

//判断命中
wire hit_way0;
wire hit_way1;
assign hit_way0=((tagv_way0_cache[19:0]==tag)&&(tagv_way0_cache[20]==1'b1))?1'b1:1'b0;
assign hit_way1=(tagv_way1_cache[19:0]==tag&&tagv_way1_cache[20]==1'b1)?1'b1:1'b0;
assign dcache_hit_success=(hit_way0||hit_way1)&&(cpu_read_dcache_en||cpu_write_dcache_en);
assign dcache_hit_fail=~(dcache_hit_success)&&(cpu_read_dcache_en||cpu_write_dcache_en);
//hit_result赋值 这么@可不可以？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
always @(posedge clk or posedge dcache_hit_success or posedge dcache_hit_fail) begin
    if(reset)dcache_hit_result<=1'b0;
    else if(dcache_hit_success)dcache_hit_result<=1'b1;
    else if(dcache_hit_fail)dcache_hit_result<=1'b0;
end


/*--------------------------------------ReadDCache---------------------------------------------*/
//ReadDCache:向cpu输出数据，下一状态进入IDLE;

//dcache_cpu_return_data赋值
always @(*) begin
    if(reset)begin
        dcache_cpu_return_data=`DATA_SIZE'b0;
    end
    else if(dcache_hit_success)begin
        dcache_cpu_return_data=hit_way0?way0_cache[offset]:way1_cache[offset];
    end
    else if(mem_dcache_return_data_en)begin
        dcache_cpu_return_data=data_record_from_mem[offset];
    end
    else dcache_cpu_return_data=`DATA_SIZE'b0;
end
//dcache_cpu_return_data_en赋值
//assign dcache_cpu_return_data_en=cpu_receive_dcache_data_ok?1'b0:(dcache_hit_success?1'b1:(mem_dcache_return_data_en?1'b1:1'b0));
assign dcache_cpu_return_data_en=(record_read_en&&(!cpu_receive_dcache_data_ok)&&(dcache_hit_success||mem_dcache_return_data_en))?1'b1:1'b0;

/*--------------------------------------WriteDCache---------------------------------------------*/
//WriteDCache:改写DCache中的数据，下一状态进入IDLE;


//标记为脏
//LRU
reg [`SET_SIZE-1:0]LRU;
wire LRU_pick;
assign LRU_pick=LRU[index];
always @(posedge clk) begin
    if(reset)LRU<=`SET_SIZE'b0;
    else if(dcache_hit_success)LRU[index]<=hit_way0;
    else if(mem_dcache_return_data_en)LRU[index]<=way0_write_en;//不知道会不会出问题！！！！！
    else LRU<=LRU;
end
//Dirty
reg [`DIRTY_SIZE-1:0] dirty;//1表示Dirty
wire write_dirty=dirty[{index,LRU_pick}];
always @(posedge clk) begin
    if(reset)dirty<=`DIRTY_SIZE'b0;
    else if(dcache_current_state==`WriteDCache)dirty[{index,hit_way1}]<=1'b1;
    else if(dcache_current_state==`RefreshDCache)begin
        if(record_read_en)dirty[{index,LRU_pick}]<=1'b0;
        else if(record_write_en)dirty[{index,LRU_pick}]<=1'b1;
    end
    else dirty<=dirty;
end






/*--------------------------------------DCacheAskMem---------------------------------------------*/
//DCacheAskMem:向mem查找数据，
//处理LRU_pick所指向的数据，若为脏则传给WriteBuffer，若writebuffer还在阻塞则进行阻塞,
//然后进入RefreshDCache;

//向mem查找数据
assign dcache_read_mem_en=dcache_current_state==`DCacheAskMem?1'b1:1'b0;
assign dcache_read_mem_addr=record_physical_addr;

//向writebuffer传写命令
assign dcache_write_buffer_en=(dcache_current_state==`DCacheAskMem&&dirty[{index,LRU_pick}])?1'b1:1'b0;
assign dcache_write_buffer_physical_addr=record_physical_addr;
assign dcache_write_buffer_virtual_addr=record_virtual_addr;
assign dcache_write_buffer_data=LRU_pick?{way1_cache[7],way1_cache[6],way1_cache[5],way1_cache[4],way1_cache[3],way1_cache[2],way1_cache[1],way1_cache[0]}:{way0_cache[7],way0_cache[6],way0_cache[5],way0_cache[4],way0_cache[3],way0_cache[2],way0_cache[1],way0_cache[0]};




/*--------------------------------------RefreshDCache--------------------------------------------*/
//RefreshDCache:等到总线数据返回时，根据命令要求，若读则返回对应数据；若写则改写数据。然后进入IDLE;
//已在其他部分实现



/*-----------------------------------------其他信号-----------------------------------------------*/
assign cpu_command_dcache_ok=dcache_current_state==`DCache_IDLE?(buffer_hit_success?1'b1:1'b0):1'b1;
assign cpu_write_dcache_ok=dcache_current_state==`WriteDCache?1'b1:
                            ((dcache_current_state==`RefreshDCache&&record_write_en==1'b1)?1'b1:1'b0);


assign dcache_receive_mem_data_ok=dcache_current_state==`DCache_IDLE?1'b1:1'b0;//不够精确，但够用了吧




endmodule