`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/07 11:11:56
// Design Name: 
// Module Name: icache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`include"cache_defines.v"
`include "defines.v"

//interficate_define
`define PHYSICAL_ADDR_SIZE 32//物理地址的位数
`define VIRTUAL_ADDR_SIZE 32//虚拟地址的位数
`define INSTRUCTION_DATA_SIZE 32//所取指令的位数
`define PACKED_DATA_SIZE `BANK_SIZE*`BANK_NUM-1//总线传回数据位宽

//cache_define

//num define
`define BANK_NUM 8//每个路中bank的个数数

//size define
`define TAG_SIZE 20//tag的位数
`define INDEX_SIZE 8//index的位数
`define OFFSET_SIZE 4//offset的位数
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:4
`define OFFSET_LOCATION 3:0

`define BANK_SIZE 32//每个bank的位数
`define TAGV_SIZE 32//tag+valid存储时的size
`define SETSIZE 256

//state define
`define IDLE         5'b00001
`define LOOKUP       5'b00010
`define JUDGEHIT     5'b00100
`define HITFAIL      5'b01000
`define REFRESHCACHE 5'b10000

//True-False define
`define HIT_RESULT_SUCCESS 1'b1
`define HIT_RESULT_FAIL 1'b0
`define VALID 1'b1


module icache (
    //cpu
    input clk,
    input reset,
    input cpu_icache_en,
    input [`VIRTUAL_ADDR_SIZE-1:0] virtual_addr,//虚拟地址
    input [`PHYSICAL_ADDR_SIZE-1:0] physical_addr,
    output icache_free,
    output icache_hit,
    output [`INSTRUCTION_DATA_SIZE-1:0] icache_cpu_data,
    output icache_cpu_data_en,
    //AXI
    input mem_icache_return_en,
    input [`PACKED_DATA_SIZE-1:0]mem_icache_return_data,
    output cache_mem_read_en,
    output [`PHYSICAL_ADDR_SIZE-1:0]cache_mem_read_addr
);
//将reset反相
wire rst_n;
assign rst_n=~reset;

//cpu给虚拟地址还是物理地址？？？？？？？？？？？？？？？？？？？？我先按物理地址写了！！！！！！！！！！！！！


reg [4:0]current_state,next_state;


//or negedge res_n这样写合适不？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
//为current_state赋值
always @(posedge clk or negedge rst_n) begin
    if(rst_n==0)begin
        current_state<=`IDLE;
    end
    else current_state<=next_state;
end

wire hit_result;//记录是否hit,1表示成功hit，0表示hit fail

//为next_state赋值
always @(*) begin
    case (current_state)
        `IDLE: begin
            if(cpu_icache_en)next_state=`LOOKUP;
            else next_state=`IDLE;
        end
        `LOOKUP:begin
            next_state=`JUDGEHIT;
        end
        `JUDGEHIT:begin
            if(hit_result==1)next_state=`IDLE;
            else next_state=`HITFAIL;
        end
        `HITFAIL:begin
            next_state=`REFRESHCACHE;
        end
        `REFRESHCACHE:begin
            if(mem_icache_return_en)next_state=`IDLE;//等到总线返回数据才进入下一状态
            else next_state=`REFRESHCACHE;
        end
        default: next_state=`IDLE;
    endcase
end

//IDLE状态
//为icache_free赋值
assign icache_free=current_state==`IDLE?1'b1:1'b0;

//LOOKUP状态
//为tag,index,offset信息赋值
reg[`TAG_SIZE-1:0]tag;
reg[`INDEX_SIZE-1:0]index;
reg[`OFFSET_SIZE-1:0]offset;
always @(*) begin
    if(reset)begin
        tag=`TAG_SIZE'b0;
        index=`INDEX_SIZE'b0;
        offset=`OFFSET_SIZE'b0;
    end
    else if (current_state==`LOOKUP) begin
        tag=physical_addr[`TAG_LOCATION];
        index=physical_addr[`INDEX_LOCATION];
        offset=physical_addr[`OFFSET_LOCATION];
    end
end

//JUDGEHIT状态
//声明ram
//使能信号
wire way0_read_en,way1_read_en,way0_write_en,way1_write_en;
//!!!!!!!!!!!!!!!!!!!!初始化way0_write_en,way1_write_en;！！！！！！！！！!!!!!!!!
//一直使能可读
assign way0_read_en=1'b1;
assign way1_read_en=1'b1;

//从mem中读回的数据
wire [`INSTRUCTION_DATA_SIZE-1:0]data_record_from_mem[`BANK_NUM-1:0];
//读中的cache数据
wire [`BANK_SIZE-1:0]way0_cache[`BANK_NUM-1:0];
//这个地方给read_addr是不是应该是虚拟地址的index位？？？？？？？？？？？？？？？？？
simple_dual_ram WAY0BANK0 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[0]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[0]));
simple_dual_ram WAY0BANK1 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[1]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[1]));
simple_dual_ram WAY0BANK2 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[2]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[2]));
simple_dual_ram WAY0BANK3 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[3]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[3]));
simple_dual_ram WAY0BANK4 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[4]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[4]));
simple_dual_ram WAY0BANK5 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[5]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[5]));
simple_dual_ram WAY0BANK6 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[6]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[6]));
simple_dual_ram WAY0BANK7 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data(data_record_from_mem[7]),.read_en(way0_read_en),.read_addr(index),.read_data(way0_cache[7]));
wire [`BANK_SIZE-1:0]way1_cache[`BANK_NUM-1:0];
simple_dual_ram WAY1BANK0 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[0]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[0]));
simple_dual_ram WAY1BANK1 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[1]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[1]));
simple_dual_ram WAY1BANK2 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[2]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[2]));
simple_dual_ram WAY1BANK3 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[3]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[3]));
simple_dual_ram WAY1BANK4 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[4]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[4]));
simple_dual_ram WAY1BANK5 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[5]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[5]));
simple_dual_ram WAY1BANK6 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[6]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[6]));
simple_dual_ram WAY1BANK7 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data(data_record_from_mem[7]),.read_en(way1_read_en),.read_addr(index),.read_data(way1_cache[7]));
//Tag+Valid
wire [`TAGV_SIZE-1:0]tagv_cache_way0;
wire [`TAGV_SIZE-1:0]tagv_cache_way1;
simple_dual_ram tagv0 (.clk_read(clk),.write_en(way0_write_en),.write_addr(index),.write_data({1'b1,tag}),.read_en(1'b1),.read_addr(index),.read_data(tagv_cache_way0));
simple_dual_ram tagv1 (.clk_read(clk),.write_en(way1_write_en),.write_addr(index),.write_data({1'b1,tag}),.read_en(1'b1),.read_addr(index),.read_data(tagv_cache_way1));

 //Tag Hit
wire hit_way0 = (tagv_cache_way0[19:0]==tag && tagv_cache_way0[20]==`VALID)? `HIT_RESULT_SUCCESS : `HIT_RESULT_FAIL;
wire hit_way1 = (tagv_cache_way1[19:0]==tag && tagv_cache_way1[20]==`VALID)? `HIT_RESULT_SUCCESS : `HIT_RESULT_FAIL;
assign hit_result = (hit_way0 | hit_way1);


//HitFail状态
assign cache_mem_read_en=current_state==`HITFAIL?1'b1:1'b0;
assign cache_mem_read_addr=current_state==`HITFAIL?physical_addr:`PHYSICAL_ADDR_SIZE'b0;


//RefreshCache状态

//从mem接收并保存数据
reg[`INSTRUCTION_DATA_SIZE-1:0] data_need_from_mem;
reg data_need_from_mem_ok;
always @(*) begin
    if(reset)begin
        data_need_from_mem=32'b0;
        data_need_from_mem_ok=1'b0;
    end
    else if(mem_icache_return_en)begin
        data_need_from_mem=mem_icache_return_data[offset];
        data_need_from_mem_ok=1'b1;
    end
    else if(current_state==`IDLE)data_need_from_mem_ok=1'b0;
end


//给icache_cpu_data_en和icache_cpu_data赋值

assign icache_cpu_data_en=hit_result?1'b1:(data_need_from_mem_ok?1'b1:1'b0);
assign icache_cpu_data=hit_result?(hit_way0?way0_cache[index]:way1_cache[index]):(data_need_from_mem_ok?data_need_from_mem:`INSTRUCTION_DATA_SIZE'b0);



//更新cache
//LRU
reg [`SETSIZE-1:0]LRU;
wire LRU_pick = LRU[index];
always@(posedge clk)begin
    if(reset)
        LRU <= 0;
    else if(hit_result == `HIT_RESULT_SUCCESS)
        LRU[index] <= hit_way0;
    else if(data_need_from_mem_ok)
        LRU[index] <= way0_write_en;
    else
        LRU <= LRU;
end

//write signal
assign way0_write_en = (data_need_from_mem_ok && LRU_pick == 1'b0)? 4'b1111 : 4'h0;
assign way1_write_en = (data_need_from_mem_ok && LRU_pick == 1'b1)? 4'b1111 : 4'h0;


for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign data_record_from_mem[i] = mem_icache_return_data[32*(i+1)-1:32*i];
end

endmodule



module simple_dual_ram (
    input wire clk_write,
    input wire write_en,
    input wire[`PHYSICAL_ADDR_SIZE-1:0] write_addr,
    input wire[`INSTRUCTION_DATA_SIZE-1:0] write_data,
    input wire clk_read,
    input wire read_en,
    input wire[`PHYSICAL_ADDR_SIZE-1:0] read_addr,
    output reg [`INSTRUCTION_DATA_SIZE-1:0] read_data
);

reg [`INSTRUCTION_DATA_SIZE-1:0] mem[0:`SETSIZE-1];

always @(posedge clk_write) begin
    if(write_en) begin
        mem[write_addr] <= write_data;
    end
end

always @(posedge clk_read) begin
    if(read_en) begin
        read_data <= mem[read_addr];
    end
end
    
endmodule






