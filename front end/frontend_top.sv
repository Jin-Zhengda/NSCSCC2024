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

    //icache
    pc_icache pi_master,
    
    //这些先不用
    input logic[31: 0] inst_2_i,
    output logic inst_en_2_o,
    output logic [31:0] pc2,

    //和后端的交互
    frontend_backend fb_master,


    //不用
    input logic send_inst_2_en,
    output branch_info branch_info2

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
    logic is_exception;
    logic exception_cause;

    assign pi_master.pc = pc.pc_o_1;
    assign pi_master.inst_en = inst_en_1;

    //没用
    assign pc2 = pc.pc_o_2;
    assign inst_en_2_o = inst_en_2;
  
    pc_reg u_pc_reg(
        .clk,
        .rst,
        .stall(pi_master.stall),
        
        .is_branch_i_1,
        .is_branch_i_2,
        .pre_taken_or_not,
        .pre_branch_addr,
        .branch_actual_addr(fb_master.update_info.branch_actual_addr),
        .branch_flush(fb_master.update_info.branch_flush),

        .ctrl(fb_master.ctrl),
        .ctrl_pc(fb_master.ctrl_pc),

        .pc,
        .inst_en_1,
        .inst_en_2
    );

    bpu u_bpu(
        .clk,
        .rst,
        .update_info(fb_master.update_info),
        .stall(pi_master.stall),

        .pc_i(pc),
        .inst_1_i(pi_master.inst),
        .inst_2_i,
        .inst_en_1,
        .inst_en_2,
        .ctrl(fb_master.ctrl),

        .is_valid_in(pi_master.is_valid_in),

        .is_branch_1(is_branch_i_1),
        .is_branch_2(is_branch_i_2),
        .pre_taken_or_not,

        .pre_branch_addr,

        .fetch_inst_1_en,
        .fetch_inst_2_en,
        .is_exception,
        .exception_cause
    );

    instbuffer u_instbuffer(
        .clk,
        .rst,
        .branch_flush(fb_master.update_info.branch_flush),
        .ctrl(fb_master.ctrl),
        .stall(pi_master.stall),

        .inst(pi_master.inst),
        .pc(pi_master.pc_out),
        .is_valid_out(pi_master.is_valid_out),

        .is_branch_1(is_branch_i_1),
        .is_branch_2(is_branch_i_2),
        .pre_taken_or_not,
        .pre_branch_addr,
        .is_exception,
        .exception_cause,

        .send_inst_1_en(fb_master.send_inst_en),
        .send_inst_2_en,

        .fetch_inst_1_en,
        .fetch_inst_2_en,

        .inst_and_pc_o(fb_master.inst_and_pc_o),
        .branch_info1(fb_master.branch_info),
        .branch_info2
    );
endmodule