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
    input dispatch_ex_t ex_i[ISSUE_WIDTH],

    // from csr
    input logic   LLbit,
    input bus64_t cnt,

    // with dcache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    // to bpu
    output branch_update update_info[ISSUE_WIDTH],

    // to dispatch
    output alu_op_t pre_ex_aluop,
    output pipeline_push_forward_t ex_reg_pf [ISSUE_WIDTH],

    // to ctrl
    output logic pause_ex,
    output logic branch_flush,

    // to mem
    output ex_mem_t mem_i[ISSUE_WIDTH]
);

    logic [1:0] pause_alu;
    logic [1:0] branch_flush_alu;

    ex_mem_t ex_o[ISSUE_WIDTH];

    main_ex u_main_ex (
        .ex_i(ex_i[0]),
        .LLbit(LLbit),
        .cnt(cnt),
        .dcache_master(dcache_master),
        .update_info(update_info[0]),
        .pause_alu(pause_alu[0]),
        .branch_flush(branch_flush_alu[0]),
        .pre_ex_aluop(pre_ex_aluop),
        .cache_inst(cache_inst),
        .ex_o(ex_o[0])
    );

    deputy_alu u_deputy_alu (
        .ex_i(ex_i[1]),
        .update_info(update_info[1]),
        .pause_alu(pause_alu[1]),
        .branch_flush(branch_flush_alu[1]),
        .ex_o(ex_o[1])
    );

    // ex push forward
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign ex_reg_pf[i].reg_write_en = ex_o[i].reg_write_en;
            assign ex_reg_pf[i].reg_write_addr = ex_o[i].reg_write_addr;
            assign ex_reg_pf[i].reg_write_data = ex_o[i].reg_write_data;
        end
    endgenerate

    // to ctrl
    assign pause_ex = |pause_alu;
    assign branch_flush = |branch_flush_alu;

    // to mem
    always_ff @(posedge clk) begin
        if (rst || flush) begin
            mem_i <= '{default: 0};
        end else if (!pause) begin
            if (branch_flush_alu[0]) begin
                mem_i[0] <= ex_i[0];
                mem_i[1] <= 0;
            end else begin
                mem_i <= ex_o;
            end
        end else begin
            mem_i <= mem_i;
        end
    end
endmodule
