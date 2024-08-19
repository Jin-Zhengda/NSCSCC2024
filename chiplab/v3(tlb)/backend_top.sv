`timescale 1ns / 1ps
`include "pipeline_types.sv"
`include "interface.sv"
`include "core_defines.sv"
`include "csr_defines.sv"

module backend_top
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from outer
    logic [7:0] is_hwi,

    // from instbuffer
    input bus32_t [DECODER_WIDTH - 1:0] pc,
    input bus32_t [DECODER_WIDTH - 1:0] inst,
    input logic [DECODER_WIDTH - 1:0] valid,
    input logic [DECODER_WIDTH - 1:0] pre_is_branch_taken,
    input bus32_t [DECODER_WIDTH - 1:0] pre_branch_addr,
    input logic [DECODER_WIDTH - 1:0][1:0] is_exception,
    input logic [DECODER_WIDTH - 1:0][1:0][6:0] exception_cause,

    input logic pause_buffer,
    input logic bpu_flush,

    // to pc
    output logic   is_interrupt,
    output bus32_t new_pc,

    // to bpu
    output branch_update update_info,

    // to instbuffer
    // output logic [1:0] send_inst_en,
    output logic pause_decoder,

    // with tlb
    ex_tlb ex_tlb_master,
    csr_tlb csr_tlb_master,

    // with cache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    // ctrl
    output logic [PIPE_WIDTH - 1:0] flush,
    output logic [PIPE_WIDTH - 1:0] pause

    `ifdef DIFF
    ,
    // debug
    output bus64_t cnt,
    output diff_t [1:0] diff,

    output bus32_t regs_diff[0:31],

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
    `endif
);

    assign pause_request.pause_buffer = pause_buffer;
    assign pause_decoder = pause_request.pause_decoder;
    assign pause_request.pause_icache = 1'b0;
    assign pause_request.pause_if = 1'b0;

    // assign send_inst_en = rst ? 2'b00 : 2'b11;

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
    tlb_inst_t tlb_inst;

    // ctrl
    pause_t pause_request;
    logic branch_flush;
    bus32_t branch_target;
    logic ex_excp_flush;

    // decoder
    id_dispatch_t [DECODER_WIDTH - 1 : 0] dispatch_i;

    // dispatch
    pipeline_push_forward_t [ISSUE_WIDTH - 1:0] ex_reg_pf;
    pipeline_push_forward_t [ISSUE_WIDTH - 1:0] mem_reg_pf;
    pipeline_push_forward_t [ISSUE_WIDTH - 1:0] wb_reg_pf;
    alu_op_t [ISSUE_WIDTH - 1:0] pre_ex_aluop;
    dispatch_ex_t [ISSUE_WIDTH - 1:0] ex_i;
    logic [DECODER_WIDTH - 1:0] invalid_en;

    // execute
    ex_mem_t [ISSUE_WIDTH - 1:0] mem_i;

    // mem
    commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_i;
    mem_wb_t [ISSUE_WIDTH - 1:0] wb_i;
    tlb_inst_t tlb_inst_i;

    // wb
    commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_o;
    mem_wb_t [ISSUE_WIDTH - 1:0] wb_o;
    tlb_inst_t tlb_inst_o;

    `ifdef DIFF
    // diff
    diff_t [ISSUE_WIDTH - 1:0] wb_diff_i;
    diff_t [ISSUE_WIDTH - 1:0] wb_diff_o;
    `endif

    decoder u_decoder (
        .clk,
        .rst,

        .flush(flush[3]),
        // .pause(pause[3]),

        .pc,
        .inst,
        .valid,
        .pre_is_branch_taken,
        .pre_branch_addr,
        .is_exception,
        .exception_cause,

        // .dqueue_en,
        .invalid_en,

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
        .pause_ex(pause[5]),

        .regfile_master(dispatch_regfile_io.master),
        .csr_master(dispatch_csr_io.master),

        .pause_dispatch(pause_request.pause_dispatch),

        // .dqueue_en,
        .invalid_en,
        .ex_i
    );

    // execute
    execute u_execute (
        .clk,
        .rst,

        .flush(flush[5]),
        .pause(pause[5]),

        .pause_mem(pause_request.pause_mem),

        .ex_i,
        .cnt(cnt),

        .tlb_master(ex_tlb_master),

        .dcache_master,
        .cache_inst,

        .update_info,

        .pre_ex_aluop,
        .ex_reg_pf,

        .pause_ex(pause_request.pause_execute),
        .branch_flush,
        .branch_target,
        .ex_excp_flush,

        .mem_i
    );

    mem u_mem (
        .clk,
        .rst,

        .mem_i,

        .dcache_master,
        .tlb_master(ex_tlb_master),

        .mem_reg_pf,

        .pause_mem(pause_request.pause_mem),

        .commit_ctrl_i,
        .wb_i,
        .tlb_inst_i
        
        `ifdef DIFF
        ,

        .diff_o(wb_diff_i)
        `endif
    );

    wb u_wb (
        .clk,
        .rst,

        .pause_mem(pause_request.pause_mem),

        .wb_i,
        .commit_ctrl_i,
        .tlb_inst_i,

        .wb_reg_pf,

        .wb_o,
        .commit_ctrl_o,
        .tlb_inst_o
        
        `ifdef DIFF
        ,

        .wb_diff_i,
        .wb_diff_o
        `endif
    );

    // ctrl
    ctrl u_ctrl (
        .rst,

        .pause_request,
        .branch_flush,
        .branch_target,
        .ex_excp_flush,
        .bpu_flush,

        .wb_o,
        .commit_ctrl_o,
        .tlb_inst_o,

        .csr_master(ctrl_csr_io.master),

        .flush,
        .pause,
        .new_pc,

        .reg_write_en,
        .reg_write_addr,
        .reg_write_data,

        .is_llw_scw,
        .csr_write_en,
        .csr_write_addr,
        .csr_write_data,
        .tlb_inst
        
        `ifdef DIFF
        ,

        .ctrl_diff_i(wb_diff_o),
        .ctrl_diff_o(diff)
        `endif 
    );

    // regfile u_regfile (
    //     .clk,
    //     .rst,

    //     .reg_write_en,
    //     .reg_write_addr,
    //     .reg_write_data,

    //     .slave(dispatch_regfile_io.slave)
    // );

    regs_file u_regs_file (
        .clk,

        .we_i(reg_write_en),
        .waddr_i(reg_write_addr),
        .wdata_i(reg_write_data),

        .read_valid_i({dispatch_regfile_io.reg_read_en[1], dispatch_regfile_io.reg_read_en[0]}),
        .read_addr_i({dispatch_regfile_io.reg_read_addr[1], dispatch_regfile_io.reg_read_addr[0]}),
        .read_data_o({dispatch_regfile_io.reg_read_data[1], dispatch_regfile_io.reg_read_data[0]})
        
    );

    //csr
    csr u_csr (
        .clk,
        .rst,

        .tlb_master(csr_tlb_master),
        .tlb_inst,

        .is_ipi(1'b0),
        .is_hwi,

        .dispatch_slave(dispatch_csr_io.slave),

        .is_llw_scw,
        .csr_write_en,
        .csr_write_addr,
        .csr_write_data,

        .cnt(cnt),

        .ctrl_slave(ctrl_csr_io.slave)
        
        `ifdef DIFF
        ,

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
        `endif
    );

    stable_counter u_counter (
        .clk,
        .rst,

        .cnt
    );


endmodule