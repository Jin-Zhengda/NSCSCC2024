`timescale 1ns / 1ps

module inst_rom 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic inst_en[DECODER_WIDTH],
    input bus32_t addr[DECODER_WIDTH],

    output bus32_t inst[DECODER_WIDTH]
);
    
endmodule