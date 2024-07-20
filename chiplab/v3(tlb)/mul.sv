`timescale 1ns / 1ps

module mul_alu
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic start,
    input bus32_t reg1,
    input bus32_t reg2,
    input logic signed_op,

    output logic ready,
    output logic done,
    output bus64_t result
);

    logic signed [63:0] mul_result;
    logic valid;

    logic signed [32:0] reg1_ext, reg2_ext;

    assign reg1_ext = signed'({reg1[31] & signed_op, reg1});
    assign reg2_ext = signed'({reg2[31] & signed_op, reg2});

    assign ready = start;
    
    always_ff @(posedge clk) begin
        if (start) begin
            mul_result <= 64'(reg1_ext * reg2_ext);
        end
    end

    always_ff @(posedge clk) begin
        if (rst) valid <= 0;
        else begin
            valid <= start ? 1 : 0;
        end
    end

    assign done = valid;
    assign result = mul_result;
endmodule