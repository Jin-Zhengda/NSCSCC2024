`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 23:25:22
// Design Name: 
// Module Name: frontend_end_d
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

module frontend_top_d
import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    //icache
    pc_icache pi_master,
    
    //和后端的交互
    frontend_backend fb_master
    );

    //pc
    logic [1:0] is_branch;
    logic [1:0] pre_taken_or_not;
    logic [31:0] pre_branch_addr;
    pc_out_t pc;
    logic inst_en_1;
    logic inst_en_2;
    logic taken_sure;

    //bpu
    inst_and_pc_t inst_and_pc;
    logic is_exception;
    logic exception_cause;

    assign pi_master.pc = pc.pc_o;
    assign pi_master.inst_en[0] = inst_en_1;
    assign pi_master.inst_en[1] = inst_en_2;
    assign pi_master.front_is_exception = pc.is_exception;
    assign pi_master.front_exception_cause = pc.exception_cause;
  
    pc_reg_d u_pc_reg(
        .clk,
        .rst,
        .stall(pi_master.stall),
        
        .pre_branch_addr,
        .taken_sure,

        .branch_actual_addr(fb_master.update_info.branch_actual_addr),
        .flush(fb_master.flush[0]),

        .pause(fb_master.pause),
        .is_interrupt(fb_master.is_interrupt),
        .new_pc(fb_master.new_pc),

        .pc,
        .inst_en_1,
        .inst_en_2,

        .uncache_en(pi_master.uncache_en)
    );

    bpu_d u_bpu(
        .clk,
        .rst,
        .update_info(fb_master.update_info),
        .stall(pi_master.stall),

        .pc(pi_master.pc_for_bpu),
        .inst(pi_master.inst),
        .inst_en_1,
        .inst_en_2,

        .is_branch,
        .pre_taken_or_not,
        .pre_branch_addr,
        .taken_sure,

        .fetch_inst_en(pi_master.front_fetch_inst_en)
    );

    instbuffer_d u_instbuffer(
        .clk,
        .rst,
        .flush(fb_master.flush[1]),
        .stall(pi_master.stall_for_buffer),
        .pause(fb_master.pause),

        .inst(pi_master.inst_for_buffer),
        .pc(pi_master.pc_for_buffer),
        .is_exception(pi_master.icache_is_exception),
        .exception_cause(pi_master.icache_exception_cause),

        .is_branch,
        .pre_taken_or_not,
        .pre_branch_addr,

        .send_inst_en(fb_master.send_inst_en),

        .icache_fetch_inst_en(pi_master.icache_fetch_inst_en),

        .inst_and_pc_o(fb_master.inst_and_pc_o),
        .branch_info(fb_master.branch_info)
    );
endmodule
