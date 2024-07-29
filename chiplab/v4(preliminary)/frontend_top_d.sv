`timescale 1ns / 1ps

module frontend_top_d
import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic iuncache,

    //icache
    pc_icache pi_master,

    input logic pause_decoder,
    
    //和后端的交互
    frontend_backend fb_master,
    output logic buffer_full,
    output logic bpu_flush
    );

    //pc
    logic [1:0] is_branch;
    logic [31:0] pre_branch_addr;
    pc_out_t pc;
    logic inst_en_1;
    logic inst_en_2;
    logic [1:0] taken_sure;

    assign pi_master.pc = pc.pc_o;
    assign pi_master.inst_en[0] = inst_en_1;
    assign pi_master.inst_en[1] = inst_en_2;
    assign pi_master.front_is_exception = pc.is_exception;
    assign pi_master.front_exception_cause = pc.exception_cause;
  
    pc_reg_d_copy u_pc_reg(
        .clk,
        .rst,
        .stall(pi_master.stall),
        .iuncache(iuncache),
        
        .pre_branch_addr,
        .taken_sure,

        .flush(fb_master.flush[0]),

        .pause(fb_master.pause[0]),
        .new_pc(fb_master.new_pc),

        .pc,
        .inst_en_1,
        .inst_en_2
    );

    bpu_d u_bpu(
        .clk,
        .rst,
        .update_info(fb_master.update_info),
        .stall(pi_master.stall_for_buffer),

        .pc(pi_master.pc_for_buffer),
        .inst(pi_master.inst_for_buffer),
        .inst_en_1,
        .inst_en_2,

        .is_branch,
        .pre_branch_addr,
        .taken_sure,
        .bpu_flush,

        .fetch_inst_en(pi_master.front_fetch_inst_en)
    );

    instbuffer_d u_instbuffer(
        .clk,
        .rst,
        .flush(fb_master.flush[1]),
        .stall(pi_master.stall_for_buffer),
        .pause(fb_master.pause[1]),
        .pause_decoder,

        .inst(pi_master.inst_for_buffer),
        .pc(pi_master.pc_for_buffer),
        .is_exception(pi_master.icache_is_exception),
        .exception_cause(pi_master.icache_exception_cause),

        .is_branch,
        .pre_taken_or_not(taken_sure),
        .pre_branch_addr,

        .send_inst_en(fb_master.send_inst_en),

        .icache_fetch_inst_en(pi_master.icache_fetch_inst_en),

        .inst_and_pc_o(fb_master.inst_and_pc_o),
        .branch_info(fb_master.branch_info),
        .buffer_full(buffer_full)
    );
endmodule
