`include "pipeline_types.sv"
`include "interface.sv"
`timescale 1ns / 1ps

module cpu 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic icache_ret_valid,
    input bus256_t icache_ret_data,
    output logic icache_rd_req,
    output bus32_t icache_rd_addr,

    output logic iucache_ren_i,
    output bus32_t iucache_addr_i,
    input logic iucache_rvalid_o,
    input bus32_t iucache_rdata_o,

    input logic dcache_wr_rdy,
    input logic dcache_rd_rdy,
    input logic dcache_ret_valid,
    input bus256_t dcache_ret_data,

    output logic dcache_rd_req,
    output logic[2: 0] dcache_rd_type,
    output bus32_t dcache_rd_addr,
    output logic dcache_wr_req,
    output bus32_t dcache_wr_addr,
    output logic[3: 0] dcache_wr_wstrb,
    output bus256_t dcache_wr_data,

    output logic ducache_ren_i,
    output bus32_t ducache_araddr_i,
    input logic ducache_rvalid_o,
    input bus32_t ducache_rdata_o,

    output logic ducache_wen_i,
    output bus32_t ducache_wdata_i,
    output bus32_t ducache_awaddr_i,
    output wire[3:0]ducache_strb,    //改了个名
    input logic ducache_bvalid_o,

    output logic[31:0] debug0_wb_pc,
    output logic[ 3:0] debug0_wb_rf_wen,
    output logic[ 4:0] debug0_wb_rf_wnum,
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
    
    ctrl_t ctrl;
    logic branch_flush;
    cache_inst_t cache_inst;

    mem_dcache mem_dcache_io();
    pc_icache pc_icache_io();
    frontend_backend fb();

    backend u_backend (
        .clk,
        .rst,

        .continue_idle(1'b0),

        .dcache_master(mem_dcache_io.master),
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
        
        .pi_master(pc_icache_io.master),
        .fb_master(fb.master)
    );

    logic icache_cacop;
    logic dcache_cacop;
    assign icache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2: 0] == 3'b0);
    assign dcache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2: 0] == 3'b1);

    icache u_icache (
        .clk,
        .reset(rst),
        .pc2icache(pc_icache_io.slave),
        .ctrl(ctrl),
        .branch_flush(branch_flush),
        .icache_uncache(pc_icache_io.uncache_en),

        .rd_req(icache_rd_req),
        .rd_addr(icache_rd_addr),
        .ret_valid(icache_ret_valid),
        .ret_data(icache_ret_data),

        .icacop_op_en(icache_cacop),
        .icacop_op_mode(cache_inst.cacop_code[4: 3]),
        .icacop_addr(cache_inst.addr),

        .iucache_ren_i(iucache_ren_i),
        .iucache_addr_i(iucache_addr_i),
        .iucache_rvalid_o(iucache_rvalid_o),
        .iucache_rdata_o(iucache_rdata_o)

    );

    dcache u_dcache (
        .clk,
        .reset(rst),
        .mem2dcache(mem_dcache_io.slave),
        .dcache_uncache(mem_dcache_io.uncache_en),

        .rd_req(dcache_rd_req),
        .rd_type(dcache_rd_type),
        .rd_addr(dcache_rd_addr),
        .wr_req(dcache_wr_req),
        .wr_addr(dcache_wr_addr),
        .wr_wstrb(dcache_wr_wstrb),
        .wr_data(dcache_wr_data),

        .wr_rdy(dcache_wr_rdy),
        .rd_rdy(dcache_rd_rdy),
        .ret_data(dcache_ret_data),
        .ret_valid(dcache_ret_valid),

        .ducache_ren_i(ducache_ren_i),
        .ducache_araddr_i(ducache_araddr_i),
        .ducache_rvalid_o(ducache_rvalid_o),
        .ducache_rdata_o(ducache_rdata_o),

        .ducache_wen_i(ducache_wen_i),
        .ducache_wdata_i(ducache_wdata_i),
        .ducache_awaddr_i(ducache_awaddr_i),
        .ducache_strb(ducache_strb),//改了个名
        .ducache_bvalid_o(ducache_bvalid_o)
    );
endmodule
