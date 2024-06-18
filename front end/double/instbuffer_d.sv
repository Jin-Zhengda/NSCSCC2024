`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 23:26:42
// Design Name: 
// Module Name: instbuffer_d
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
`define InstBufferSize 128
`define InstBufferAddrSize 5
`define ZeroInstBufferAddr 5'd0

module instbuffer_d
import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic flush,
    input logic stall,
    input logic pause,

    //icache传来的信号
    input logic [1:0][31:0] inst,
    input logic [1:0][31:0] pc,
    input logic [1:0][5: 0] is_exception,
    input logic [5:0][6: 0] exception_cause,

    //bpu传来的信号
    input logic [1:0] is_branch,
    input logic [1:0] pre_taken_or_not,
    input logic [31:0] pre_branch_addr,


    //发射指令的使能信号
    input logic [1:0] send_inst_en,

    //从bpu取指令的使能信号
    input logic [1:0] icache_fetch_inst_en,

    //输出给if_id的
    output inst_and_pc_t inst_and_pc_o,
    output branch_info_t [1:0] branch_info
    );

    always_ff @(posedge clk) begin
        inst_and_pc_o.is_exception[0] <= is_exception[0];
        inst_and_pc_o.is_exception[1] <= is_exception[1];
        inst_and_pc_o.exception_cause <= exception_cause;
    end

    logic [1:0] fetch_en;
    assign fetch_en[0] = stall ? 1'b0: icache_fetch_inst_en[0];
    assign fetch_en[1] = stall ? 1'b0: icache_fetch_inst_en[1];

    logic [1:0] push_en;
    logic [1:0][98:0] push_data;
    logic [1:0] pop_en;
    logic [1:0][98:0] pop_data;
    logic [1:0] full;
    logic [1:0] empty;

    always_ff @(posedge clk) begin
        for (integer i = 0; i < 2; ++i) begin : gen_write_queue
            if(pause | full[i]) begin
                push_en[i] <= 0;
            end else if(icache_fetch_inst_en[i]) begin
                push_en[i] <= 1;
                push_data[i][31:0] <= pc[i];
                push_data[i][63:32] <= inst[i];
                push_data[i][64] <= is_branch[i];
                push_data[i][65] <= pre_taken_or_not[i];
                push_data[i][97:66] <= pre_branch_addr;
                // valid标志位
                push_data[i][98] <= 1'b1;
            end else begin
                push_en[i] <= 0;
            end
        end
    end

    always_comb begin
        inst_and_pc_o.is_exception = is_exception;
        inst_and_pc_o.exception_cause = exception_cause;
        for (integer i = 0; i < 2; ++i) begin : gen_read_queue
            if(pause | stall | empty[i]) begin
                pop_en[i] = 0;
                inst_and_pc_o.inst_o[i] = 0;
                inst_and_pc_o.pc_o[i] = 0;
                branch_info[i] = 0;
            end else if(send_inst_en[i]) begin
                pop_en[i] = 1;
                inst_and_pc_o.pc_o[i] = pop_data[31:0];
                inst_and_pc_o.inst_o[i] = pop_data[63:32];
                branch_info[i].is_branch = pop_data[64];
                inst_and_pc_o.valid[i] = pop_data[98];
                branch_info[i].pre_taken_or_not = pop_data[65];
                branch_info[i].pre_branch_addr = pop_data[97:66];
            end else begin
                pop_en[i] = 0;
                inst_and_pc_o.inst_o[i] = 0;
                inst_and_pc_o.pc_o[i] = 0;
                branch_info[i] = 0;
            end
        end
    end

    
    for (genvar i = 0; i < 2; ++i) begin : gen_fifo_bank
        fifo #(
            .DEPTH     (`InstBufferSize),
            .DATA_WIDTH(99)
        ) fifo_bank (
            .clk      (clk),
            .rst      (rst),
            // Push
            .push     (push_en[i]),
            .push_data(push_data[i]),
            // Pop
            .pop      (pop_en[i]),
            .pop_data (pop_data[i]),
            // Control
            .reset    (flush),
            .full     (full[i]),
            .empty    (empty[i])
        );
    end



    

endmodule