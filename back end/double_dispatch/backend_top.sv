`timescale 1ns / 1ps
`include "pipeline_types.sv"

module backend_top 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input bus32_t pc[DECODER_WIDTH],
    input bus32_t inst[DECODER_WIDTH],
    input logic pre_is_branch[DECODER_WIDTH],
    input logic pre_is_branch_taken[DECODER_WIDTH],
    input bus32_t pre_branch_addr[DECODER_WIDTH],
    input logic [5:0] is_exception[DECODER_WIDTH],
    input logic [5:0][6:0] exception_cause[DECODER_WIDTH],

    mem_dcache dcache_master,
    output cache_inst_t cache_inst
);

    // reg
    dispatch_regfile dispatch_regfile_io();

    // ctrl
    pause_request_t pause_request;
    logic [PIPE_WIDTH - 1:0] flush;
    bus32_t new_pc;
    logic is_interrupt;
    logic [PIPE_WIDTH - 1:0] pause;

    // decoder
    id_dispatch_t dispatch_i[DECODER_WIDTH];

    decoder u_decoder(
        .clk,
        .rst,

        .flush(flush[0]),
        .pause(pause[0]),

        .pc,
        .inst,
        .pre_is_branch,
        .pre_is_branch_taken,
        .pre_branch_addr,
        .is_exception,
        .exception_cause,

        .pause_decoder(pause_request.pause_decoder),
        .dispatch_i(dispatch_i)
    );
    
endmodule