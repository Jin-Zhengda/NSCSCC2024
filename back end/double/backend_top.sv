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
    output cache_inst_t cache_inst,

    // ctrl
    output logic [PIPE_WIDTH - 1:0] flush,
    output logic [PIPE_WIDTH - 1:0] pause,

    // debug
    output logic [31:0] debug_wb_pc[2],
    output logic [31:0] debug_wb_inst[2],
    output logic [ 3:0] debug_wb_rf_wen[2],
    output logic [ 4:0] debug_wb_rf_wnum[2],
    output logic [31:0] debug_wb_rf_wdata[2],
    
    output logic inst_valid_diff[2],
    output logic cnt_inst_diff[2],
    output logic csr_rstat_en_diff[2],
    output logic [31:0] csr_data_diff[2],
    output logic [63:0] timer_64_diff[2],

    output logic excp_flush[2],
    output logic ertn_flush[2],
    output logic [5:0] ecode[2],

    output logic [ 7:0] inst_st_en_diff[2],
    output logic [31:0] st_paddr_diff[2],
    output logic [31:0] st_vaddr_diff[2],
    output logic [31:0] st_data_diff[2],

    output logic [ 7:0] inst_ld_en_diff[2],
    output logic [31:0] ld_paddr_diff[2],
    output logic [31:0] ld_vaddr_diff[2],

    output logic [31:0] regs_diff[31:0],

    output logic [31:0] csr_crmd_diff,
    output logic [31:0] csr_prmd_diff,
    output logic [31:0] csr_ectl_diff,
    output logic [31:0] csr_estat_diff,
    output logic [31:0] csr_era_diff,
    output logic [31:0] csr_badv_diff,
    output logic [31:0] csr_eentry_diff,
    output logic [31:0] csr_tlbidx_diff,
    output logic [31:0] csr_tlbehi_diff,
    output logic [31:0] csr_tlbelo0_diff,
    output logic [31:0] csr_tlbelo1_diff,
    output logic [31:0] csr_asid_diff,
    output logic [31:0] csr_save0_diff,
    output logic [31:0] csr_save1_diff,
    output logic [31:0] csr_save2_diff,
    output logic [31:0] csr_save3_diff,
    output logic [31:0] csr_tid_diff,
    output logic [31:0] csr_tcfg_diff,
    output logic [31:0] csr_tval_diff,
    output logic [31:0] csr_ticlr_diff,
    output logic [31:0] csr_llbctl_diff,
    output logic [31:0] csr_tlbrentry_diff,
    output logic [31:0] csr_dmw0_diff,
    output logic [31:0] csr_dmw1_diff,
    output logic [31:0] csr_pgdl_diff,
    output logic [31:0] csr_pgdh_diff
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
    pause_t pause_request;
    
    logic branch_flush;
    bus32_t branch_target;

    // decoder
    id_dispatch_t dispatch_i[DECODER_WIDTH];

    // dispatch
    pipeline_push_forward_t ex_reg_pf[ISSUE_WIDTH];
    pipeline_push_forward_t mem_reg_pf[ISSUE_WIDTH];
    pipeline_push_forward_t wb_reg_pf[ISSUE_WIDTH];
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

    // diff
    diff_t wb_diff_i[ISSUE_WIDTH];
    diff_t wb_diff_o[ISSUE_WIDTH];
    diff_t diff[ISSUE_WIDTH];

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
        .wb_reg_pf,

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
        .wb_i,

        .diff_o(wb_diff_i)
    );

    wb u_wb (
        .clk,
        .rst,

        .wb_i,
        .commit_ctrl_i,

        .flush(flush[6]),
        .pause(pause[6]),

        .wb_reg_pf,

        .wb_o,
        .commit_ctrl_o,

        .wb_diff_i,
        .wb_diff_o
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
        .csr_write_data,

        .ctrl_diff_i(wb_diff_i),
        .ctrl_diff_o(diff)
    );

    // regfile
    regfile u_regfile (
        .clk,
        .rst,

        .reg_write_en,
        .reg_write_addr,
        .reg_write_data,

        .slave(dispatch_regfile_io.slave),

        .regs_diff
    );

    //csr
    csr u_csr (
        .clk,
        .rst,

        .dispatch_slave(dispatch_csr_io.slave),

        .is_llw_scw,
        .csr_write_en,
        .csr_write_addr,
        .csr_write_data,

        .ctrl_slave(ctrl_csr_io.slave),

        // diff
        .csr_crmd_diff,
        .csr_prmd_diff,
        .csr_ectl_diff,
        .csr_estat_diff,
        .csr_era_diff,
        .csr_badv_diff,
        .csr_eentry_diff,
        .csr_tlbidx_diff,
        .csr_tlbehi_diff,
        .csr_tlbelo0_diff,
        .csr_tlbelo1_diff,
        .csr_asid_diff,
        .csr_save0_diff,
        .csr_save1_diff,
        .csr_save2_diff,
        .csr_save3_diff,
        .csr_tid_diff,
        .csr_tcfg_diff,
        .csr_tval_diff,
        .csr_ticlr_diff,
        .csr_llbctl_diff,
        .csr_tlbrentry_diff,
        .csr_dmw0_diff,
        .csr_dmw1_diff,
        .csr_pgdl_diff,
        .csr_pgdh_diff
    );

    stable_counter u_counter (
        .clk,
        .rst,

        .cnt
    );  

    // diff
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign debug_wb_pc[i] = diff[i].debug_wb_pc;
            assign debug_wb_inst[i] = diff[i].debug_wb_inst;
            assign debug_wb_rf_wen[i] = diff[i].debug_wb_rf_wen;
            assign debug_wb_rf_wnum[i] = diff[i].debug_wb_rf_wnum;
            assign debug_wb_rf_wdata[i] = diff[i].debug_wb_rf_wdata;

            assign inst_valid_diff[i] = diff[i].inst_valid;
            assign cnt_inst_diff[i] = diff[i].cnt_inst;
            assign csr_rstat_en_diff[i] = diff[i].csr_rstat_en;
            assign csr_data_diff[i] = diff[i].csr_data;
            assign timer_64_diff[i] = cnt;

            assign excp_flush[i] = diff[i].excp_flush;
            assign ertn_flush[i] = diff[i].ertn_flush;
            assign ecode[i] = diff[i].ecode;

            assign inst_st_en_diff[i] = diff[i].inst_st_en;
            assign st_paddr_diff[i] = diff[i].st_paddr;
            assign st_vaddr_diff[i] = diff[i].st_vaddr;
            assign st_data_diff[i] = (i == 0)? dcache_master.wdata: 32'b0;

            assign inst_ld_en_diff[i] = diff[i].inst_ld_en;
            assign ld_paddr_diff[i] = diff[i].ld_paddr;
            assign ld_vaddr_diff[i] = diff[i].ld_vaddr;
        end
    endgenerate
endmodule
