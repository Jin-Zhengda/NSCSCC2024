`timescale 1ns / 1ps

module if_id
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic branch_flush,

    input ctrl_t ctrl,

    input  pc_id_t pc_i,
    output pc_id_t id_o
);


    always_ff @(posedge clk) begin
        if (rst) begin
            id_o <= 0;
        end else if (ctrl.exception_flush) begin
            id_o <= 0;
        end else if (ctrl.pause[1] && !ctrl.pause[2]) begin
            id_o <= 0;
        end else if (!ctrl.pause[1]) begin
            if (branch_flush) begin
                id_o <= 0;
            end else begin
                id_o <= pc_i;
            end
        end else begin
            id_o <= id_o;
        end
    end


endmodule
