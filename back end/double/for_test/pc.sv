`timescale 1ns / 1ps
`include "../csr_defines.sv"

module pc
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic   flush,
    input logic   pause,
    input logic   is_interrupt,
    input bus32_t new_pc,

    output bus32_t pc[DECODER_WIDTH],
    output logic inst_en
);

    always_ff @(posedge clk) begin
        if (rst) begin
            inst_en <= 1'b0;
        end else begin
            inst_en <= 1'b1;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            pc[0] <= 32'hfc;
            pc[1] <= 32'h100;
        end else if (!pause) begin
            if (flush) begin
                pc[0] <= new_pc;
                pc[1] <= new_pc + 32'h4;
            end else begin
                pc[0] <= pc[0] + 32'h8;
                pc[1] <= pc[1] + 32'h8;
            end
        end
    end

endmodule
