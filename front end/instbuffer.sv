`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 21:15:41
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


module instbuffer
import pipeline_type::*;
(
    input logic clk,
    input logic rst,
    input logic branch_flush,
    input ctrl_t ctrl,

    //bpu传来的信号
    input inst_and_pc_t inst_and_pc_i,
    input logic is_branch_1,
    input logic is_branch_2,
    input logic pre_taken_or_not,
    input logic pre_branch_addr,

    // input logic is_inst1_valid,
    // input logic is_inst2_valid,

    //发射指令的使能信号
    input logic send_inst_1_en,
    input logic send_inst_2_en,

    //从bpu取指令的使能信号
    input logic fetch_inst_1_en,
    input logic fetch_inst_2_en,

    //输出给if_id的
    output inst_and_pc_t inst_and_pc_o,
    output branch_info branch_info1,
    output branch_info branch_info2
    );

    //FIFO for inst
    logic [`InstBus]FIFO_inst[`InstBufferSize-1:0];
    //FIFO for pc
    logic [`InstBus]FIFO_pc[`InstBufferSize-1:0];

    branch_info FIFO_branch_info[`InstBufferSize-1:0];

    //头尾指针
    logic [`InstBufferAddrSize-1:0]tail;
    logic [`InstBufferAddrSize-1:0]head;
    //表征FIFO中的指令是否有效,暂时没有使用
    logic [`InstBufferSize-1:0]FIFO_valid;

    assign inst_and_pc_o.is_exception = inst_and_pc_i.is_exception;
    assign inst_and_pc_o.exception_cause = inst_and_pc_i.exception_cause;

    always_ff @(posedge clk) begin
        if(rst|branch_flush|ctrl.exception_flush) begin
            head <= `ZeroInstBufferAddr;
            tail <= `ZeroInstBufferAddr;
            FIFO_valid <= `InstBufferSize'd0;
        end
        else begin
            if(fetch_inst_1_en&&fetch_inst_2_en) begin
                FIFO_inst[tail] <= inst_and_pc_i.inst_o_1;
                FIFO_pc[tail] <= inst_and_pc_i.pc_o_1;

                FIFO_branch_info[tail].is_branch <= is_branch_1;
                FIFO_branch_info[tail].pre_taken_or_not <= 0;
                FIFO_branch_info[tail].pre_branch_addr <= 0;

                FIFO_valid[tail] <= 1'b1;
                FIFO_inst[tail+1] <= inst_and_pc_i.inst_o_2;
                FIFO_pc[tail+1] <= inst_and_pc_i.pc_o_2;

                FIFO_branch_info[tail+1].is_branch <= is_branch_2;
                FIFO_branch_info[tail+1].pre_taken_or_not <= pre_taken_or_not;
                FIFO_branch_info[tail+1].pre_branch_addr <= pre_branch_addr;

                FIFO_valid[tail+1] <= 1'b1;
                tail <= tail + 2;
            end else begin
                if(fetch_inst_1_en) begin
                    FIFO_inst[tail] <= inst_and_pc_i.inst_o_1;
                    FIFO_pc[tail] <= inst_and_pc_i.pc_o_1;
                    FIFO_valid[tail] <= 1'b1;
                    
                    FIFO_branch_info[tail].is_branch <= is_branch_1;
                    FIFO_branch_info[tail].pre_taken_or_not <= pre_taken_or_not;
                    FIFO_branch_info[tail].pre_branch_addr <= pre_branch_addr;

                    tail <= tail + 1;
                end else if(fetch_inst_2_en) begin
                    FIFO_inst[tail] <= inst_and_pc_i.inst_o_2;
                    FIFO_pc[tail] <= inst_and_pc_i.pc_o_2;
                    FIFO_valid[tail] <= 1'b1;

                    FIFO_branch_info[tail].is_branch <= is_branch_2;
                    FIFO_branch_info[tail].pre_taken_or_not <= pre_taken_or_not;
                    FIFO_branch_info[tail].pre_branch_addr <= pre_branch_addr;

                    tail <= tail + 1;
                end else begin
                    FIFO_inst[tail] <= FIFO_inst[tail];
                    FIFO_pc[tail] <= FIFO_pc[tail];
                    FIFO_valid[tail] <= FIFO_valid[tail];
                    FIFO_branch_info[tail] <= FIFO_branch_info[tail];
                    tail <= tail;
                end
            end
        end
    end
        

    always_ff @(posedge clk) begin
        if(rst|branch_flush|ctrl.exception_flush) begin
            inst_and_pc_o.inst_o_1 <= 0;
            inst_and_pc_o.inst_o_2 <= 0;
            inst_and_pc_o.pc_o_1 <= 0;
            inst_and_pc_o.pc_o_2 <= 0;
            branch_info1 <= 0;
            branch_info2 <= 0;
        end
        else begin
            if(send_inst_1_en && send_inst_2_en) begin
                inst_and_pc_o.inst_o_1 <= FIFO_inst[head];
                inst_and_pc_o.pc_o_1 <= FIFO_pc[head];
                inst_and_pc_o.inst_o_2 <= FIFO_inst[head+1];
                inst_and_pc_o.pc_o_2 <= FIFO_pc[head+1];

                branch_info1 <= FIFO_branch_info[head];
                branch_info2 <= FIFO_branch_info[head+1];

                head <= head + 2;
            end else if(send_inst_1_en|send_inst_2_en) begin
                inst_and_pc_o.inst_o_1 <= FIFO_inst[head];
                inst_and_pc_o.pc_o_1 <= FIFO_pc[head];
                inst_and_pc_o.inst_o_2 <= 0;
                inst_and_pc_o.pc_o_2 <= 0;

                branch_info1 <= FIFO_branch_info[head];
                branch_info2 <= 0;

                head <= head + 1;
            end else begin
                inst_and_pc_o.inst_o_1 <= 0;
                inst_and_pc_o.inst_o_2 <= 0;
                inst_and_pc_o.pc_o_1 <= 0;
                inst_and_pc_o.pc_o_2 <= 0;
            end
        end
    end

endmodule