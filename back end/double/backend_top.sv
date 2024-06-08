`timescale 1ns / 1ps
`include "pipeline_types.sv"

module backend_top
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from instbuffer
    input bus32_t pc[DECODER_WIDTH],
    input bus32_t inst[DECODER_WIDTH],
    input logic pre_is_branch[DECODER_WIDTH],
    input logic pre_is_branch_taken[DECODER_WIDTH],
    input bus32_t pre_branch_addr[DECODER_WIDTH],
    input logic [5:0] is_exception[DECODER_WIDTH],
    input logic [5:0][6:0] exception_cause[DECODER_WIDTH],

    // to pc
    output logic   is_interrupt,
    output bus32_t new_pc,

    // to bpu
    output branch_update update_info[ISSUE_WIDTH],

    // with cache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst
);

    // regfile
    dispatch_regfile dispatch_regfile_io ();
    logic [ISSUE_WIDTH - 1:0] reg_write_en;
    logic [ISSUE_WIDTH - 1:0][REG_ADDR_WIDTH - 1:0] reg_write_addr;
    logic [ISSUE_WIDTH - 1:0][REG_WIDTH - 1:0] reg_write_data;

    // csr
    dispatch_csr dispatch_csr_io ();
    ctrl_csr ctrl_csr_io ();
    logic is_llw_scw;
    logic csr_write_en;
    csr_addr_t csr_write_addr;
    bus32_t csr_write_data;

    // ctrl
    pause_request_t pause_request;
    logic [PIPE_WIDTH - 1:0] flush;
    logic [PIPE_WIDTH - 1:0] pause;
    logic branch_flush;
    bus32_t branch_target;

    // decoder
    id_dispatch_t dispatch_i[DECODER_WIDTH];

    // dispatch
    pipeline_push_forward_t ex_reg_pf[ISSUE_WIDTH];
    pipeline_push_forward_t mem_reg_pf[ISSUE_WIDTH];
    alu_op_t pre_ex_aluop;
    dispatch_ex_t ex_i[ISSUE_WIDTH];

    // execute
    ex_mem_t mem_i[ISSUE_WIDTH];

    // mem
    commit_ctrl_t commit_ctrl_i[ISSUE_WIDTH];
    mem_wb_t wb_i[ISSUE_WIDTH];

    // wb
    commit_ctrl_t commit_ctrl_o[ISSUE_WIDTH];
    mem_wb_t wb_o[ISSUE_WIDTH];

    // counter
    bus64_t cnt;


    decoder u_decoder (
        .clk,
        .rst,

        .flush(flush[3]),
        .pause(pause[3]),

        .pc,
        .inst,
        .pre_is_branch,
        .pre_is_branch_taken,
        .pre_branch_addr,
        .is_exception,
        .exception_cause,

        .pause_decoder(pause_request.pause_decoder),
        .dispatch_i
    );

    // dispatch
    dispatch u_dispatch (
        .clk,
        .rst,

        .pause(pause[4]),
        .flush(flush[4]),

        .dispatch_i,

        .ex_reg_pf,
        .mem_reg_pf,

        .pre_ex_aluop,

        .regfile_master(dispatch_regfile_io.master),
        .csr_master(dispatch_csr_io.master),

        .pause_dispatch(pause_request.pause_dispatch),
        .ex_i
    );

    // execute
    execute u_execute (
        .clk,
        .rst,

        .flush(flush[5]),
        .pause(pause[5]),

        .ex_i,
        .cnt,

        .dcache_master,
        .cache_inst,

        .update_info,

        .pre_ex_aluop,
        .ex_reg_pf,

        .pause_ex(pause_request.pause_execute),
        .branch_flush,
        .branch_target,

        .mem_i
    );

    mem u_mem (
        .mem_i,

        .dcache_master,

        .mem_reg_pf,

        .pause_mem(pause_request.pause_mem),

        .commit_ctrl_i,
        .wb_i
    );

    wb u_wb (
        .clk,
        .rst,

        .wb_i,
        .commit_ctrl,

        .flush(flush[6]),
        .pause(pause[6]),

        .wb_o,
        .commit_ctrl_o
    );

    // ctrl
    ctrl u_ctrl (
        .pause_request,
        .branch_flush,
        .branch_target,

        .wb_o,
        .commit_ctrl_o,

        .csr_master(ctrl_csr_io.master),

        .flush,
        .pause,
        .new_pc,
        .is_interrupt,

        .reg_write_en,
        .reg_write_addr,
        .reg_write_data,

        .is_llw_scw,
        .csr_write_en,
        .csr_write_addr,
        .csr_write_data
    );

    // regfile
    regfile u_regfile (
        .clk,
        .rst,

        .reg_write_en,
        .reg_write_addr,
        .reg_write_data,

        .slave(dispatch_regfile_io.slave)
    );

    //csr
    crs u_csr (
        .clk,
        .rst,

        .dispatch_slave(dispatch_csr_io.slave),

        .is_llw_scw,
        .csr_write_en,
        .csr_write_addr,
        .csr_write_data,

        .ctrl_slave(ctrl_csr_io.slave)
    );

    stable_counter u_counter (
        .clk,
        .rst,

        .cnt
    );  

endmodule
