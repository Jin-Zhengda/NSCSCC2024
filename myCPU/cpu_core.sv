`timescale 1ns / 1ps

module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic continue_idle,
    
    mem_dcache dcache_master,
    pc_icache icache_master,
    output cache_inst_t cache_inst,
    output ctrl_t ctrl,
    output logic branch_flush,

    output logic[31:0] debug0_wb_pc,
    output logic[3:0] debug0_wb_rf_wen,
    output logic[4:0] debug0_wb_rf_wnum,
    output logic[31:0] debug0_wb_rf_wdata,
    output logic[31:0] debug0_wb_inst,

    output logic inst_valid_diff,
    output logic cnt_inst_diff,
    output logic csr_rstat_en_diff,
    output logic[31: 0] csr_data_diff,
    output logic[63: 0] timer_64_diff,

    output logic[7: 0] inst_st_en_diff,
    output logic[31: 0] st_paddr_diff,
    output logic[31: 0] st_vaddr_diff,
    output logic[31: 0] st_data_diff,

    output logic[7: 0] inst_ld_en_diff,
    output logic[31: 0] ld_paddr_diff,
    output logic[31: 0] ld_vaddr_diff,

    output logic excp_flush,
    output logic ertn_flush,
    output logic[5: 0] ecode,

    output logic [31: 0] regs_diff [31: 0],

    output logic[31:0] csr_crmd_diff,
    output logic[31:0] csr_prmd_diff,
    output logic[31:0] csr_ectl_diff,
    output logic[31:0] csr_estat_diff,
    output logic[31:0] csr_era_diff,
    output logic[31:0] csr_badv_diff,
    output logic[31:0] csr_eentry_diff,
    output logic[31:0] csr_tlbidx_diff,
    output logic[31:0] csr_tlbehi_diff,
    output logic[31:0] csr_tlbelo0_diff,
    output logic[31:0] csr_tlbelo1_diff,
    output logic[31:0] csr_asid_diff,
    output logic[31:0] csr_save0_diff,
    output logic[31:0] csr_save1_diff,
    output logic[31:0] csr_save2_diff,
    output logic[31:0] csr_save3_diff,
    output logic[31:0] csr_tid_diff,
    output logic[31:0] csr_tcfg_diff,
    output logic[31:0] csr_tval_diff,
    output logic[31:0] csr_ticlr_diff,
    output logic[31:0] csr_llbctl_diff,
    output logic[31:0] csr_tlbrentry_diff,
    output logic[31:0] csr_dmw0_diff,
    output logic[31:0] csr_dmw1_diff,
    output logic[31:0] csr_pgdl_diff,
    output logic[31:0] csr_pgdh_diff
);

    frontend_backend fb();

    backend u_backend (
        .clk,
        .rst,

        .continue_idle,

        .dcache_master(dcache_master),
        .fb_slave(fb.slave),
        .cache_inst(cache_inst),

        .debug0_wb_pc,
        .debug0_wb_rf_wen,
        .debug0_wb_rf_wnum,
        .debug0_wb_rf_wdata,
        .debug0_wb_inst,

        .inst_valid_diff,
        .cnt_inst_diff,
        .csr_rstat_en_diff,
        .csr_data_diff,
        .timer_64_diff,

        .inst_st_en_diff,
        .st_paddr_diff,
        .st_vaddr_diff,
        .st_data_diff,

        .inst_ld_en_diff,
        .ld_paddr_diff,
        .ld_vaddr_diff,

        .excp_flush,
        .ertn_flush,
        .ecode,

        .regs_diff,

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

    assign branch_flush = fb.update_info.branch_flush;
    assign ctrl = fb.ctrl;

    frontend_top u_frontend_top (
        .clk,
        .rst,
        
        .pi_master(icache_master),
        .fb_master(fb.master)
    );

endmodule
