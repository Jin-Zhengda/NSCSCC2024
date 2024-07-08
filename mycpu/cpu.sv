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

    output logic   iucache_ren_i,
    output bus32_t iucache_addr_i,
    input  logic   iucache_rvalid_o,
    input  bus32_t iucache_rdata_o,

    input logic dcache_wr_rdy,
    input logic dcache_rd_rdy,
    input logic dcache_ret_valid,
    input bus256_t dcache_ret_data,

    output logic dcache_rd_req,
    output logic [2:0] dcache_rd_type,
    output bus32_t dcache_rd_addr,
    output logic dcache_wr_req,
    output bus32_t dcache_wr_addr,
    output logic [3:0] dcache_wr_wstrb,
    output bus256_t dcache_wr_data,

    output logic   ducache_ren_i,
    output bus32_t ducache_araddr_i,
    input  logic   ducache_rvalid_o,
    input  bus32_t ducache_rdata_o,

    output logic ducache_wen_i,
    output bus32_t ducache_wdata_i,
    output bus32_t ducache_awaddr_i,
    output wire [3:0] ducache_strb,  //改了个名
    input logic ducache_bvalid_o,

    output logic [31:0] debug_wb_pc[2],
    output logic [3:0] debug_wb_rf_wen[2],
    output logic [4:0] debug_wb_rf_wnum[2],
    output logic [31:0] debug_wb_rf_wdata[2],
    output logic [31:0] debug_wb_inst[2],

    output logic inst_valid_diff[2],
    output logic cnt_inst_diff[2],
    output logic csr_rstat_en_diff[2],
    output logic [31:0] csr_data_diff[2],
    output logic [63:0] timer_64_diff[2],

    output logic [7:0] inst_st_en_diff[2],
    output logic [31:0] st_paddr_diff[2],
    output logic [31:0] st_vaddr_diff[2],
    output logic [31:0] st_data_diff[2],

    output logic [ 7:0] inst_ld_en_diff[2],
    output logic [31:0] ld_paddr_diff  [2],
    output logic [31:0] ld_vaddr_diff  [2],

    output logic excp_flush[2],
    output logic ertn_flush[2],
    output logic [5:0] ecode[2],

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

    logic [PIPE_WIDTH - 1:0] flush;
    logic [PIPE_WIDTH - 1:0] pause;
    cache_inst_t cache_inst;

    mem_dcache mem_dcache_io ();
    pc_icache pc_icache_io ();
    frontend_backend fb ();

    logic [1:0] pre_is_branch;
    logic [1:0] pre_is_branch_taken;
    bus32_t [1:0] pre_branch_addr;

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign pre_is_branch[i] = frontend_backend_io.slave.branch_info[i].is_branch;
            assign pre_is_branch_taken[i] = frontend_backend_io.slave.branch_info[i].pre_taken_or_not;
            assign pre_branch_addr[i] = frontend_backend_io.slave.branch_info[i].pre_branch_addr;
        end
    endgenerate

    backend_top u_backend_top (
        .clk,
        .rst,

        .pc  (frontend_backend_io.slave.inst_and_pc_o.pc_o),
        .inst(frontend_backend_io.slave.inst_and_pc_o.inst_o),

        .pre_is_branch,
        .pre_is_branch_taken,
        .pre_branch_addr,

        .is_exception(frontend_backend_io.slave.inst_and_pc_o.is_exception),
        .exception_cause(frontend_backend_io.slave.inst_and_pc_o.exception_cause),

        .is_interrupt(frontend_backend_io.slave.is_interrupt),
        .new_pc(frontend_backend_io.slave.new_pc),

        .update_info(frontend_backend_io.slave.update_info),
        .send_en(frontend_backend_io.slave.send_inst_en),

        .mem_dcache(mem_dcache_io.master),
        .cache_inst(cache_inst),

        .flush(flush),
        .pause(pause),

        .debug_wb_pc,
        .debug_wb_rf_wen,
        .debug_wb_rf_wnum,
        .debug_wb_rf_wdata,
        .debug_wb_inst,

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

    assign frontend_backend_io.master.flush = {flush[2], flush[0]};
    assign frontend_backend_io.master.pause = {pause[2], pause[0]};

    frontend_top_d u_frontend_top_d (
        .clk,
        .rst,

        .pi_master(pc_icache_io.master),
        .fb_master(frontend_backend_io.master)
    );

    logic icache_cacop;
    logic dcache_cacop;
    assign icache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2:0] == 3'b0);
    assign dcache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2:0] == 3'b1);

    icache u_icache (
        .clk(clk),
        .reset(rst),
        .pause_icache(pause[1]),
        .branch_flush(flush[1]),

        .pc2icache(pc_icache_io.slave),
        .icache_uncache(pc_icache_io.uncache_en),

        .rd_req(icache_rd_req),
        .rd_addr(icache_rd_addr),
        .ret_valid(icache_ret_valid),
        .ret_data(icache_ret_data),

        .icacop_op_en(icache_cacop),
        .icacop_op_mode(cache_inst.cacop_code[4:3]),
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

        .rd_req  (dcache_rd_req),
        .rd_type (dcache_rd_type),
        .rd_addr (dcache_rd_addr),
        .wr_req  (dcache_wr_req),
        .wr_addr (dcache_wr_addr),
        .wr_wstrb(dcache_wr_wstrb),
        .wr_data (dcache_wr_data),

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
        .ducache_strb(ducache_strb),  //改了个名
        .ducache_bvalid_o(ducache_bvalid_o)
    );
endmodule
