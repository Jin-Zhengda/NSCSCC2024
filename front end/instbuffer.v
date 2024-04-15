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

    //if_unit给的
    input [`InstBus] inst_1_i,
    input [`InstBus] inst_2_i,
    input [`InstBus] pc_1_i,
    input [`InstBus] pc_2_i,
    input is_inst1_valid,
    input is_inst2_valid,

    //发射指令的使能信号
    input send_inst_1_en,
    input send_inst_2_en,

    //从if_unit取指令的使能信号
    input fetch_inst_1_en,
    input fetch_inst_2_en,

    //输出给if_id的
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
    //表征FIFO中的指令是否有效,暂时没有使用
    reg [`InstBufferSize-1:0]FIFO_valid;

    always @(posedge clk) begin
        if(rst|flush) begin
            head <= `ZeroInstBufferAddr;
            tail <= `ZeroInstBufferAddr;
            FIFO_valid <= `InstBufferSize'd0;
        end
        else begin
            if(fetch_inst_1_en) begin
                FIFO_inst[tail] <= inst_1_i;
                FIFO_pc[tail] <= pc_1_i;
                FIFO_valid[tail] <= 1'b1;
                tail <= tail + 1;
            end else begin
                FIFO_inst[tail] <= FIFO_inst[tail];
                FIFO_pc[tail] <= FIFO_pc[tail];
                tail <= tail;
            end
            if(fetch_inst_2_en) begin
                FIFO_inst[tail] <= inst_2_i;
                FIFO_pc[tail] <= pc_2_i;
                FIFO_valid[tail] <= 1'b1;
                tail <= tail +1;
            end else begin
                FIFO_inst[tail] <= FIFO_inst[tail];
                FIFO_pc[tail] <= FIFO_pc[tail];
                tail <= tail;
            end
        end
    end

    always @(posedge clk) begin
        if(rst|flush) begin
            instbuffer_1_o <= 0;
            instbuffer_2_o <= 0;
            pc_1_o <= 0;
            pc_2_o <= 0;
        end
        else begin
            if(send_inst_1_en && FIFO_valid[head]) begin
                instbuffer_1_o <= FIFO_inst[head];
                pc_1_o <= FIFO_pc[head];
                head <= head + 1;
            end else begin
                instbuffer_1_o <= instbuffer_1_o;
                pc_1_o <= pc_1_o;
                head <= head;
            end
            if(send_inst_2_en && FIFO_valid[head]) begin
                instbuffer_2_o <= FIFO_inst[head];
                pc_2_o <= FIFO_pc[head];
                head <= head + 1;
            end else begin
                instbuffer_2_o <= instbuffer_2_o;
                pc_2_o <= pc_2_o;
                head <= head;
            end
        end
    end

endmodule