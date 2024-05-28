`timescale 1ns / 1ps

module dispatch_ex
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,

    input  dispatch_ex_t dispatch_i,
    output dispatch_ex_t ex_o
);

    always_ff @(posedge clk) begin
        if (rst) begin
            ex_o <= 0;
        end else if (ctrl.exception_flush) begin
            ex_o <= 0;
        end else if (ctrl.pause[4] && !ctrl.pause[5]) begin
            ex_o <= 0;
        end else if (!ctrl.pause[4]) begin
            ex_o <= dispatch_i;
        end else begin
            ex_o <= ex_o;
        end
    end

endmodule
