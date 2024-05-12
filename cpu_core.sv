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
    output logic[63: 0] timer_64_diff
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
        .timer_64_diff
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
