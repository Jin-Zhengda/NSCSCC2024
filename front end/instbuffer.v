`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/09 20:09:09
// Design Name: 
// Module Name: instbuffer
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
`define InstBus 31:0
`define InstBufferSize 32
`define InstBufferAddrSize 5
`define ZeroInstBufferAddr 5'd0

module instbuffer(
    input clk,
    input rst,
    input flush,

    input [`InstBus] inst_1_i,
    input [`InstBus] inst_2_i,
    input [`InstBus] pc_1_i,
    input [`InstBus] pc_2_i,

    input send_inst_1_en,
    input send_inst_2_en,

    output reg [`InstBus] instbuffer_1_o,
    output reg [`InstBus] instbuffer_2_o,
    output reg [`InstBus] pc_1_o,
    output reg [`InstBus] pc_2_o
    );

    //FIFO for inst
    reg [`InstBus]FIFO_inst[`InstBufferSize-1:0];
    //FIFO for pc
    reg [`InstBus]FIFO_pc[`InstBufferSize-1:0];

    //头尾指针
    reg [`InstBufferAddrSize-1:0]tail;
    reg [`InstBufferAddrSize-1:0]head;
    //表征FIFO中的指令是否有效
    reg [`InstBufferSize-1:0]FIFO_valid;

    always @(posedge clk) begin
        if(rst|flush) begin
            head <= `ZeroInstBufferAddr;
            tail <= `ZeroInstBufferAddr;
            FIFO_valid <= `InstBufferSize'd0;
        end
    end


//还没想好怎么处理head和tail的增减问题

    always @(posedge clk) begin
        FIFO_inst[tail] <= inst_1_i;
        FIFO_inst[tail+`InstBufferAddrSize'h1] <=inst_2_i;
        FIFO_pc[tail] <= pc_1_i;
        FIFO_pc[tail+`InstBufferAddrSize'h1] <= pc_2_i;
    end

    always @(posedge clk) begin
        if(rst|flush) begin
            instbuffer_1_o <= 0;
            instbuffer_2_o <= 0;
            pc_1_o <= 0;
            pc_2_o <= 0;
        end
        else begin
            if(send_inst_1_en) begin
                instbuffer_1_o <= FIFO_inst[head];
                pc_1_o <= FIFO_pc[head];
            end
            if(send_inst_2_en) begin
                instbuffer_2_o <= FIFO_inst[head+`InstBufferAddrSize'h1];
                pc_2_o <= FIFO_pc[head+`InstBufferAddrSize'h1];
            end
        end
    end



endmodule
