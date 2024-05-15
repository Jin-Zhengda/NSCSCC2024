`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 21:12:50
// Design Name: 
// Module Name: pc_reg
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
`define InstAddrWidth 31:0
`include "csr_define.sv"

module pc_reg
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic stall,

    input logic is_branch_i_1,
    input logic is_branch_i_2,
    input logic pre_taken_or_not,
    input logic [`InstAddrWidth] pre_branch_addr,
    input logic btb_valid,

    //后端给的分支真实情况
    input logic [`InstAddrWidth] branch_actual_addr,
    input logic branch_flush,

    input ctrl_t ctrl,
    input ctrl_pc_t ctrl_pc,

    output pc_out_t pc,
    output logic inst_en_1,
    output logic inst_en_2
);


    always_ff @(posedge clk) begin
        if (rst) begin
            inst_en_1 <= 1'b0;
            inst_en_2 <= 1'b0;
        end else begin
            inst_en_1 <= 1'b1;
            inst_en_2 <= 1'b0;
        end
    end


    // always_ff @(posedge clk) begin
    //     if (rst) begin
    //         pc_1_o <= 32'h0;
    //         pc_2_o <= 32'h4;
    //     end
    //     else if (pause[0]) begin
    //         pc_1_o <= pc_1_o;
    //         pc_2_o <= pc_2_o;
    //     end
    //     else begin
    //         if ((is_branch_i_1|is_branch_i_2)&&pre_taken_or_not) begin
    //             pc_1_o <= pre_branch_addr;
    //             pc_2_o <= pre_branch_addr+4;
    //         end
    //         else begin
    //         pc_1_o <= pc_1_o + 4'h8;
    //         pc_2_o <= pc_2_o + 4'h8;
    //         end
    //     end
    // end
    always_ff @(posedge clk) begin
        pc.is_exception <= {ctrl_pc.is_interrupt, {(pc.pc_o_1[1: 0] == 2'b00) ? 1'b0 : 1'b1}, 4'b0};
        pc.exception_cause <= {{ctrl_pc.is_interrupt ? `EXCEPTION_INT: `EXCEPTION_NOP}, 
                                {(pc.pc_o_1[1: 0] == 2'b00) ?  `EXCEPTION_NOP: `EXCEPTION_ADEF},
                                {4{`EXCEPTION_NOP}}};

        if(rst) begin
            // pc.pc_o_1 <= 32'h1bfffffc;
            pc.pc_o_1 <= 32'hfc;
            pc.pc_o_2 <= 32'h104;
        end
        else if(ctrl.exception_flush) begin
            pc.pc_o_1 <= ctrl_pc.exception_new_pc;
        end
        else if(ctrl.pause[0]) begin
            pc.pc_o_1 <= pc.pc_o_1;
        end
        else begin
            if(branch_flush) begin
                pc.pc_o_1 <= branch_actual_addr;
            end
            else if (stall) begin
                pc.pc_o_1 <= pc.pc_o_1;
            end
            else if(is_branch_i_1&&pre_taken_or_not&&btb_valid) begin
                pc.pc_o_1 <= pre_branch_addr;
            end
            else begin
                pc.pc_o_1 <= pc.pc_o_1 + 4'h4;
            end
        end
    end


endmodule
