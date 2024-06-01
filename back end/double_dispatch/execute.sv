`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"

module execute 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,
    input logic branch_flush,

    input dispatch_ex_t ex_i[ISSUE_WIDTH],

    output alu_op_t pre_ex_aluop,
    output ex_mem_t mem_i[ISSUE_WIDTH]
);


    
endmodule