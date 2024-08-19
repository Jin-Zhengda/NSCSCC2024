`timescale 1ns / 1ps

module wb
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from mem
    input mem_wb_t [ISSUE_WIDTH - 1:0] wb_i,
    input commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_i,
    input logic pause_mem,

    // to dispatch
    output pipeline_push_forward_t [ISSUE_WIDTH - 1:0] wb_reg_pf,

    // to ctrl
    output mem_wb_t [ISSUE_WIDTH - 1:0] wb_o,
    output commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_o
    
    `ifdef DIFF
    ,
    
    // diff
    input  diff_t [ISSUE_WIDTH - 1:0] wb_diff_i,
    output diff_t [ISSUE_WIDTH - 1:0] wb_diff_o
    `endif
);

    always_ff @(posedge clk) begin
        if (rst || pause_mem) begin
            wb_o <= '{default: 0};
            commit_ctrl_o <= '{default: 0};
        end else begin
            wb_o <= wb_i;
            commit_ctrl_o <= commit_ctrl_i;
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

    `ifdef DIFF
    // diff
    always_ff @(posedge clk) begin
        if (rst || pause_mem) begin
            wb_diff_o <= '{default: 0};
        end else begin
            wb_diff_o <= wb_diff_i;
        end 
    end
    `endif
endmodule
