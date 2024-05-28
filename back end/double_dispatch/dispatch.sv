`timescale 1ns / 1ps
`include "defines.sv"

module dispatch 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input ctrl_t ctrl,

    // from decoder
    input id_dispatch_t dispatch_i[DECODER_WIDTH - 1:0],

    // from ex and mem
    input pipeline_push_forward_t ex_push_forward[ISSUE_WIDTH - 1:0],
    input pipeline_push_forward_t mem_push_forward[ISSUE_WIDTH - 1:0],

    // with regfile
    dispatch_regfile regfile_master,

    // to ctrl
    output logic pause_dispatch,

    // to ex
    output dispatch_ex_t ex_i[ISSUE_WIDTH - 1:0]
);

    dispatch_ex_t dispatch_o[ISSUE_WIDTH - 1:0];
    
endmodule