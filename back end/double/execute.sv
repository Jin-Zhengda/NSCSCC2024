`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"

module execute
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input logic flush,
    input logic pause,

    // from dispatch
    input dispatch_ex_t [ISSUE_WIDTH - 1:0] ex_i,

    // from counter
    input bus64_t cnt,

    // with dcache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    // to bpu
    output branch_update update_info,

    // to dispatch
    output alu_op_t pre_ex_aluop,
    output pipeline_push_forward_t [ISSUE_WIDTH - 1:0] ex_reg_pf,
    output csr_push_forward_t ex_csr_pf,

    // to ctrl
    output logic   pause_ex,
    output logic   branch_flush,
    output bus32_t branch_target,

    // to mem
    output ex_mem_t [ISSUE_WIDTH - 1:0] mem_i
);

    logic [1:0] pause_alu;
    logic [1:0] branch_flush_alu;
    bus32_t [ISSUE_WIDTH - 1:0] branch_target_alu;
    branch_update [1:0] update_info_alu;

    ex_mem_t [ISSUE_WIDTH - 1:0] ex_o;

    main_ex u_main_ex (
        .clk,
        .rst,
        .ex_i(ex_i[0]),
        .cnt,
        .dcache_master,
        .update_info(update_info_alu[0]),
        .pause_alu(pause_alu[0]),
        .branch_flush(branch_flush_alu[0]),
        .branch_target_alu(branch_target_alu[0]),
        .pre_ex_aluop,
        .cache_inst,
        .ex_o(ex_o[0])
    );

    deputy_ex u_deputy_ex (
        .clk,
        .rst,
        .ex_i(ex_i[1]),
        .update_info(update_info_alu[1]),
        .pause_alu(pause_alu[1]),
        .branch_flush(branch_flush_alu[1]),
        .branch_target_alu(branch_target_alu[1]),
        .ex_o(ex_o[1])
    );

    // ex push forward
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign ex_reg_pf[i].reg_write_en   = ex_o[i].reg_write_en;
            assign ex_reg_pf[i].reg_write_addr = ex_o[i].reg_write_addr;
            assign ex_reg_pf[i].reg_write_data = ex_o[i].reg_write_data;
        end
    endgenerate

    assign ex_csr_pf.csr_write_en = ex_o[0].csr_write_en;
    assign ex_csr_pf.csr_write_addr = ex_o[0].csr_addr;
    assign ex_csr_pf.csr_write_data = ex_o[0].csr_write_data;

    // to ctrl
    assign pause_ex = |pause_alu;
    assign branch_flush = |branch_flush_alu;
    assign branch_target = branch_flush_alu[0] ? branch_target_alu[0] : branch_target_alu[1];
    assign update_info = branch_flush_alu[0] ? update_info_alu[0] : update_info_alu[1];

    // to mem
    always_ff @(posedge clk) begin
        if (rst || flush) begin
            mem_i <= '{default: 0};
        end else if (!pause) begin
            if (branch_flush_alu[0]) begin
                mem_i[0] <= ex_o[0];
                mem_i[1] <= 0;
            end else begin
                mem_i <= ex_o;
            end
        end else begin
            mem_i <= mem_i;
        end
    end
endmodule
