`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/27 18:33:44
// Design Name: 
// Module Name: frontend_top
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


module frontend_top
import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input ctrl_t ctrl,
    input ctrl_pc_t ctrl_pc,
    input logic branch_flush,
    input logic [31:0] branch_actual_addr,

    //icache
    input logic[31: 0] inst_1_i,
    input logic[31: 0] inst_2_i,
    output logic inst_en_1_o,
    output logic inst_en_2_o,
    output logic [31:0] pc1,
    output logic [31:0] pc2,

    //id_if给的发射使能信号
    input logic send_inst_1_en,
    input logic send_inst_2_en,

    output branch_info branch_info1,
    output branch_info branch_info2,
    output inst_and_pc_t inst_and_pc_o

    );

    //pc
    logic is_branch_i_1;
    logic is_branch_i_2;
    logic pre_taken_or_not;
    logic [31:0] pre_branch_addr;
    pc_out pc;
    logic inst_en_1;
    logic inst_en_2;

    //bpu
    inst_and_pc_t inst_and_pc;
    logic fetch_inst_1_en;
    logic fetch_inst_2_en;

    assign pc1 = pc.pc_o_1;
    assign pc2 = pc.pc_o_2;
    assign inst_en_1_o = inst_en_1;
    assign inst_en_2_o = inst_en_2;
  
    pc_reg u_pc_reg(
        .clk,
        .rst,
        
        .is_branch_i_1,
        .is_branch_i_2,
        .pre_taken_or_not,
        .pre_branch_addr,
        .branch_actual_addr,
        .branch_flush,

        .ctrl,
        .ctrl_pc,

        .pc,
        .inst_en_1,
        .inst_en_2
    );

    bpu u_bpu(
        .clk,
        .rst,
        .branch_flush,

        .pc_i(pc),
        .inst_1_i,
        .inst_2_i,
        .inst_en_1,
        .inst_en_2,
        .ctrl,

        .inst_and_pc,
        .is_branch_1(is_branch_i_1),
        .is_branch_2(is_branch_i_2),
        .pre_taken_or_not,

        .pre_branch_addr,
        .fetch_inst_1_en,
        .fetch_inst_2_en
    );

    instbuffer u_instbuffer(
        .clk,
        .rst,
        .branch_flush,
        .ctrl,

        .inst_and_pc_i(inst_and_pc),
        .is_branch_1(is_branch_i_1),
        .is_branch_2(is_branch_i_2),
        .pre_taken_or_not,
        .pre_branch_addr,

        .send_inst_1_en,
        .send_inst_2_en,

        .fetch_inst_1_en,
        .fetch_inst_2_en,

        .inst_and_pc_o,
        .branch_info1,
        .branch_info2
    );
endmodule
