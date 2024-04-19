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

    //bpu传来的信号
    input [`InstBus] inst_1_i,
    input [`InstBus] inst_2_i,
    input [`InstBus] pc_1_i,
    input [`InstBus] pc_2_i,

    input is_inst1_valid,
    input is_inst2_valid,

    //发射指令的使能信号
    input send_inst_1_en,
    input send_inst_2_en,

    //从bpu取指令的使能信号
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
            if(fetch_inst_1_en&&fetch_inst_2_en) begin
                FIFO_inst[tail] <= inst_1_i;
                FIFO_pc[tail] <= pc_1_i;
                FIFO_valid[tail] <= 1'b1;
                FIFO_inst[tail+1] <= inst_2_i;
                FIFO_pc[tail+1] <= pc_2_i;
                FIFO_valid[tail+1] <= 1'b1;
                tail <= tail + 2;
            end else begin
                if(fetch_inst_1_en) begin
                    FIFO_inst[tail] <= inst_1_i;
                    FIFO_pc[tail] <= pc_1_i;
                    FIFO_valid[tail] <= 1'b1;
                    tail <= tail + 1;
                end else if(fetch_inst_2_en) begin
                    FIFO_inst[tail] <= inst_2_i;
                    FIFO_pc[tail] <= pc_2_i;
                    FIFO_valid[tail] <= 1'b1;
                    tail <= tail + 1;
                end else begin
                    FIFO_inst[tail] <= FIFO_inst[tail];
                    FIFO_pc[tail] <= FIFO_pc[tail];
                    FIFO_valid[tail] <= FIFO_valid[tail];
                    tail <= tail;
                end
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
            if(send_inst_1_en && send_inst_2_en) begin
                instbuffer_1_o <= FIFO_inst[head];
                pc_1_o <= FIFO_pc[head];
                instbuffer_2_o <= FIFO_inst[head+1];
                pc_2_o <= FIFO_pc[head+1];
                head <= head + 2;
            end else if(send_inst_1_en|send_inst_2_en) begin
                instbuffer_1_o <= FIFO_inst[head];
                pc_1_o <= FIFO_pc[head];
                instbuffer_2_o <= 0;
                pc_2_o <= 0;
                head <= head + 1;
            end else begin
                instbuffer_1_o <= 0;
                instbuffer_2_o <= 0;
                pc_1_o <= 0;
                pc_2_o <= 0;
            end
        end
    end

endmodule