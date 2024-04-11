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
`define IDLE 4'b0001//空闲等待状态，接收到使能则保存命令信息，判断是否命中，若命中则进入下一状态ReturnInstruction;否则进入下一状态AskMem
`define ReturnInstruction 4'b0010//向cpu输出数据，下一状态进入IDLE
`define AskMem 4'b0100//向mem查找数据，然后进入RefreshCache
`define RefreshCache 4'b1000//当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。




module simple_dual_ram (
    input wire reset,
    input wire clk_read,
    input wire read_en,
    input wire[`INSTRUCTION_ADDR_SIZE-1:0] read_addr,
    output reg [`INSTRUCTION_DATA_SIZE-1:0] read_data,
    input wire clk_write,
    input wire write_en,
    input wire[`INSTRUCTION_ADDR_SIZE-1:0] write_addr,
    input wire[`INSTRUCTION_DATA_SIZE-1:0] write_data
);

reg [`INSTRUCTION_DATA_SIZE-1:0] mem[0:`SETSIZE-1];


integer i;
always @(posedge clk_write) begin
    if(reset)begin
        for(i=0;i<`SETSIZE;i=i+1)begin
            mem[i]<=`INSTRUCTION_DATA_SIZE'b0;
        end
    end
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