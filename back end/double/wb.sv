`timescale 1ns / 1ps

module wb 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from mem
    input mem_wb_t wb_i[ISSUE_WIDTH],
    input commit_ctrl_t commit_ctrl_i[ISSUE_WIDTH],

    // from ctrl
    input logic flush,
    input logic pause,

    // to dispatch
    output pipeline_push_forward_t wb_reg_pf[ISSUE_WIDTH],

    // to ctrl
    output mem_wb_t wb_o[ISSUE_WIDTH],
    output commit_ctrl_t commit_ctrl_o[ISSUE_WIDTH],

    // diff
    input diff_t wb_diff_i[ISSUE_WIDTH],
    output diff_t wb_diff_o[ISSUE_WIDTH]
);
    
    always_ff @( posedge clk ) begin
        if (rst || flush) begin
            wb_o <= '{default:0};
            commit_ctrl_o <= '{default:0};
            wb_diff_o <= '{default:0};
        end else if (!pause) begin
            wb_o <= wb_i;
            commit_ctrl_o <= commit_ctrl_i;
            wb_diff_o <= wb_diff_i;
        end else begin
            wb_o <= wb_o;
            commit_ctrl_o <= commit_ctrl_o;
            wb_diff_o <= wb_diff_o;
        end
    end

    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign wb_reg_pf[i].reg_write_en = wb_o[i].reg_write_en;
            assign wb_reg_pf[i].reg_write_addr = wb_o[i].reg_write_addr;
            assign wb_reg_pf[i].reg_write_data = wb_o[i].reg_write_data;
        end
    endgenerate 
    

endmodule