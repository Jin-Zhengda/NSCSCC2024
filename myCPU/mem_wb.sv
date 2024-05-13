`timescale 1ns / 1ps

module mem_wb 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,

    input mem_wb_t mem_i,
    output mem_wb_t wb_o,

    output logic inst_valid_diff
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
        end
        else if (ctrl.exception_flush || (ctrl.pause[6] && !ctrl.pause[7])) begin
            inst_valid_diff <= 1'b0;
        end
        else begin
            inst_valid_diff <= 1'b1;
        end
    end
endmodule