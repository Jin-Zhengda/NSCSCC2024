`timescale 1ns / 1ps

module wb
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from mem
    input mem_wb_t [ISSUE_WIDTH - 1:0] wb_i,
    input commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_i,
    input tlb_inst_t tlb_inst_i,
    input logic pause_mem,

    // from ctrl
    input logic flush,
    input logic pause,

    // to dispatch
    output pipeline_push_forward_t [ISSUE_WIDTH - 1:0] wb_reg_pf,
    output csr_push_forward_t wb_csr_pf,
    output alu_op_t [ISSUE_WIDTH - 1:0] pre_wb_aluop,

    // to ctrl
    output mem_wb_t [ISSUE_WIDTH - 1:0] wb_o,
    output commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_o,
    output tlb_inst_t tlb_inst_o
    
    `ifdef DIFF
    ,
    
    // diff
    input  diff_t [ISSUE_WIDTH - 1:0] wb_diff_i,
    output diff_t [ISSUE_WIDTH - 1:0] wb_diff_o
    `endif
);

    always_ff @(posedge clk) begin
        if (rst || flush || pause_mem) begin
            wb_o <= '{default: 0};
            commit_ctrl_o <= '{default: 0};
            tlb_inst_o <= 0;
        end else if (!pause) begin
            wb_o <= wb_i;
            commit_ctrl_o <= commit_ctrl_i;
            tlb_inst_o <= tlb_inst_i;
        end else begin
            wb_o <= wb_o;
            commit_ctrl_o <= commit_ctrl_o;
            tlb_inst_o <= tlb_inst_o;
        end
    end

    // wb push forward
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign wb_reg_pf[i].reg_write_en   = wb_o[i].reg_write_en;
            assign wb_reg_pf[i].reg_write_addr = wb_o[i].reg_write_addr;
            assign wb_reg_pf[i].reg_write_data = wb_o[i].reg_write_data;
        end
    endgenerate


    assign wb_csr_pf.csr_write_en   = wb_o[0].csr_write_en || wb_o[1].csr_write_en;
    assign wb_csr_pf.csr_write_addr = wb_o[0].csr_write_en? wb_o[0].csr_write_addr: wb_o[1].csr_write_addr;
    assign wb_csr_pf.csr_write_data = wb_o[0].csr_write_en? wb_o[0].csr_write_data: wb_o[1].csr_write_data;

    // pre_wb_aluop
    assign pre_wb_aluop = {commit_ctrl_o[1].aluop, commit_ctrl_o[0].aluop};

    `ifdef DIFF
    // diff
    always_ff @(posedge clk) begin
        if (rst || flush || pause_mem) begin
            wb_diff_o <= '{default: 0};
        end else if (!pause) begin
            wb_diff_o <= wb_diff_i;
        end else begin
            wb_diff_o <= wb_diff_o;
        end   
    end
    `endif
endmodule
