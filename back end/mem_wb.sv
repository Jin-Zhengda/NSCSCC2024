`timescale 1ns / 1ps

module mem_wb 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,

    input mem_wb_t mem_i,
    output mem_wb_t wb_o,

    input logic cnt_inst,
    input logic csr_rstat_en,
    input logic[31: 0] csr_data,
    input logic[63: 0] timer_64,

    output logic inst_valid_diff,
    output logic cnt_inst_diff,
    output logic csr_rstat_en_diff,
    output logic[31: 0] csr_data_diff,
    output logic[63: 0] timer_64_diff
);
    always_ff @(posedge clk) begin
        if (rst) begin
            wb_o <= 0;
        end
        else if (ctrl.exception_flush) begin
            wb_o <= 0;
        end
        else if (ctrl.pause[6] && !ctrl.pause[7]) begin
            wb_o <= 0;
        end
        else if (!ctrl.pause[6]) begin
            wb_o <= mem_i;
        end
        else begin
            wb_o <= wb_o;
        end
    end

    always_ff @( posedge clk ) begin : blockName
        if (rst) begin
            inst_valid_diff <= 1'b0;
            cnt_inst_diff <= 1'b0;
            csr_rstat_en_diff <= 1'b0;
            csr_data_diff <= 32'b0;
            timer_64_diff <= 64'b0;
        end
        else if (ctrl.exception_flush || (ctrl.pause[6] && !ctrl.pause[7])) begin
            inst_valid_diff <= 1'b0;
            cnt_inst_diff <= 1'b0;
            csr_rstat_en_diff <= 1'b0;
            csr_data_diff <= 32'b0;
            timer_64_diff <= 64'b0;
        end
        else begin
            inst_valid_diff <= 1'b1;
            cnt_inst_diff <= cnt_inst;
            csr_rstat_en_diff <= csr_rstat_en;
            csr_data_diff <= csr_data;
            timer_64_diff <= timer_64;
        end
    end
endmodule