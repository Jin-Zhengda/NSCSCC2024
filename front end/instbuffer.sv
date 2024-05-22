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
import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic branch_flush,
    input ctrl_t ctrl,
    input logic stall,

    //icache传来的信号
    input logic [31:0] inst,
    input logic [31:0] pc,
    input logic is_valid_out,
    input logic is_exception,
    input logic exception_cause,

    //bpu传来的信号
    input logic is_branch_1,
    input logic is_branch_2,
    input logic pre_taken_or_not,
    input logic [31:0] pre_branch_addr,


    //发射指令的使能信号
    input logic send_inst_1_en,
    input logic send_inst_2_en,

    //从bpu取指令的使能信号
    input logic icache_fetch_inst_1_en,
    input logic fetch_inst_2_en,

    //输出给if_id的
    output inst_and_pc_t inst_and_pc_o,
    output branch_info_t branch_info1,
    output branch_info_t branch_info2
    );

    //FIFO for inst
    logic [`InstBus]FIFO_inst[`InstBufferSize-1:0];
    //FIFO for pc
    logic [`InstBus]FIFO_pc[`InstBufferSize-1:0];

    branch_info_t FIFO_branch_info[`InstBufferSize-1:0];

    //头尾指针
    logic [`InstBufferAddrSize-1:0]tail;
    logic [`InstBufferAddrSize-1:0]head;
    logic [`InstBufferSize-1:0]FIFO_valid;

    always_ff @(posedge clk) begin
        inst_and_pc_o.is_exception <= is_exception;
        inst_and_pc_o.exception_cause <= exception_cause;
    end

    logic[6: 0] pause;
    always_ff @( posedge clk ) begin
        pause <= ctrl.pause;
    end

    logic fetch_inst_1_en;
    assign fetch_inst_1_en = stall ? 1'b0: icache_fetch_inst_1_en;

    // logic last_is_branch;
    // logic last_taken_or_not;

    // always_ff @( posedge clk ) begin
    //     last_is_branch <= is_branch_1;
    //     last_taken_or_not <= pre_taken_or_not;
    // end

    // logic is_valid_out;
    // assign is_valid_out = ((last_is_branch & last_taken_or_not) || stall || branch_flush) ? 1'b0 : 1'b1;
        

    always_ff @(posedge clk) begin
        if(rst|branch_flush|ctrl.exception_flush) begin
            head <= 5'b11111;
            tail <= `ZeroInstBufferAddr;
            FIFO_valid <= `InstBufferSize'd0;
            // FIFO_inst <= '{32'b0};
        end
        else if(pause[2]&&!pause[3])begin
            head <= 5'b11111;
            tail <= `ZeroInstBufferAddr;
            FIFO_valid <= `InstBufferSize'd0;
        end
        else if (!pause[2]) begin
            if(fetch_inst_1_en&&fetch_inst_2_en) begin
                FIFO_inst[tail] <= inst;
                FIFO_pc[tail] <= pc;

                FIFO_branch_info[tail].is_branch <= is_branch_1;
                FIFO_branch_info[tail].pre_taken_or_not <= 0;
                FIFO_branch_info[tail].pre_branch_addr <= 0;

                FIFO_valid[tail] <= 1'b1;

                // FIFO_inst[tail+1] <= inst_and_pc_i.inst_o_2;
                // FIFO_pc[tail+1] <= inst_and_pc_i.pc_o_2;

                // FIFO_branch_info[tail+1].is_branch <= is_branch_2;
                // FIFO_branch_info[tail+1].pre_taken_or_not <= pre_taken_or_not;
                // FIFO_branch_info[tail+1].pre_branch_addr <= pre_branch_addr;

                // FIFO_valid[tail+1] <= 1'b1;
                tail <= tail + 2;
            end else begin
                if(fetch_inst_1_en) begin
                    FIFO_inst[tail] <= inst;
                    FIFO_pc[tail] <= pc;
                    FIFO_valid[tail] <= is_valid_out;
                    
                    FIFO_branch_info[tail].is_branch <= is_branch_1;
                    FIFO_branch_info[tail].pre_taken_or_not <= pre_taken_or_not;
                    FIFO_branch_info[tail].pre_branch_addr <= pre_branch_addr;

                    tail <= tail + 1;
                end else if(fetch_inst_2_en) begin
                    // FIFO_inst[tail] <= inst_and_pc_i.inst_o_2;
                    // FIFO_pc[tail] <= inst_and_pc_i.pc_o_2;
                    // FIFO_valid[tail] <= 1'b1;

                    // FIFO_branch_info[tail].is_branch <= is_branch_2;
                    // FIFO_branch_info[tail].pre_taken_or_not <= pre_taken_or_not;
                    // FIFO_branch_info[tail].pre_branch_addr <= pre_branch_addr;

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
        else begin
            FIFO_inst[tail] <= FIFO_inst[tail];
            FIFO_pc[tail] <= FIFO_pc[tail];
            FIFO_valid[tail] <= FIFO_valid[tail];
            FIFO_branch_info[tail] <= FIFO_branch_info[tail];
            tail <= tail;   
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
        else if (ctrl.pause[2] && !ctrl.pause[3]) begin
                inst_and_pc_o.inst_o_1 <= 0;
                inst_and_pc_o.inst_o_2 <= 0;
                inst_and_pc_o.pc_o_1 <= 0;
                inst_and_pc_o.pc_o_2 <= 0;
        end else if (!ctrl.pause[2]) begin
            if (stall) begin
                inst_and_pc_o.inst_o_1 <= 0;
                inst_and_pc_o.inst_o_2 <= 0;
                inst_and_pc_o.pc_o_1 <= 0;
                inst_and_pc_o.pc_o_2 <= 0;
            end else if(send_inst_1_en && send_inst_2_en) begin
                if(FIFO_valid[head]&&FIFO_valid[head+1]) begin
                    inst_and_pc_o.inst_o_1 <= FIFO_inst[head];
                    inst_and_pc_o.pc_o_1 <= FIFO_pc[head];
                    inst_and_pc_o.inst_o_2 <= FIFO_inst[head+1];
                    inst_and_pc_o.pc_o_2 <= FIFO_pc[head+1];

                    branch_info1 <= FIFO_branch_info[head];
                    branch_info2 <= FIFO_branch_info[head+1];
                end else if(FIFO_valid[head]) begin
                    inst_and_pc_o.inst_o_1 <= FIFO_inst[head];
                    inst_and_pc_o.pc_o_1 <= FIFO_pc[head];
                    inst_and_pc_o.inst_o_2 <= 0;
                    inst_and_pc_o.pc_o_2 <= 0;

                    branch_info1 <= FIFO_branch_info[head];
                    branch_info2 <= 0;
                end else if(FIFO_valid[head+1]) begin
                    inst_and_pc_o.inst_o_1 <= FIFO_inst[head+1];
                    inst_and_pc_o.pc_o_1 <= FIFO_pc[head+1];
                    inst_and_pc_o.inst_o_2 <= 0;
                    inst_and_pc_o.pc_o_2 <= 0;

                    branch_info1 <= FIFO_branch_info[head+1];
                    branch_info2 <= 0;
                end else begin
                    inst_and_pc_o.inst_o_1 <= 0;
                    inst_and_pc_o.pc_o_1 <= 0;
                    inst_and_pc_o.inst_o_2 <= 0;
                    inst_and_pc_o.pc_o_2 <= 0;

                    branch_info1 <= 0;
                    branch_info2 <= 0;
                end

                head <= head + 2;
            end else if(send_inst_1_en || send_inst_2_en) begin
                if(FIFO_valid[head]) begin
                    inst_and_pc_o.inst_o_1 <= FIFO_inst[head];
                    inst_and_pc_o.pc_o_1 <= FIFO_pc[head];
                    inst_and_pc_o.inst_o_2 <= 0;
                    inst_and_pc_o.pc_o_2 <= 0;

                    branch_info1 <= FIFO_branch_info[head];
                    branch_info2 <= 0;
                end else if(FIFO_valid[head+1]) begin
                    inst_and_pc_o.inst_o_1 <= FIFO_inst[head+1];
                    inst_and_pc_o.pc_o_1 <= FIFO_pc[head+1];
                    inst_and_pc_o.inst_o_2 <= 0;
                    inst_and_pc_o.pc_o_2 <= 0;

                    branch_info1 <= FIFO_branch_info[head+1];
                    branch_info2 <= 0;
                end else begin
                    inst_and_pc_o.inst_o_1 <= 0;
                    inst_and_pc_o.pc_o_1 <= 0;
                    inst_and_pc_o.inst_o_2 <= 0;
                    inst_and_pc_o.pc_o_2 <= 0;
                    branch_info1 <= 0;
                    branch_info2 <= 0;
                end

                head <= head + 1;
            end 
        end else begin
            inst_and_pc_o.inst_o_1 <= inst_and_pc_o.inst_o_1;
            inst_and_pc_o.inst_o_2 <= inst_and_pc_o.inst_o_2;
            inst_and_pc_o.pc_o_1 <= inst_and_pc_o.pc_o_1;
            inst_and_pc_o.pc_o_2 <= inst_and_pc_o.pc_o_2;
        end
    end

endmodule