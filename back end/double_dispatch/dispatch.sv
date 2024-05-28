`timescale 1ns / 1ps
`include "core_defines.sv"

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

    // with csr
    dispatch_csr csr_master,

    // to ctrl
    output logic pause_dispatch,

    // to ex
    output dispatch_ex_t ex_i[ISSUE_WIDTH - 1:0]
);

    dispatch_ex_t dispatch_o[ISSUE_WIDTH - 1:0];
    logic[ISSUE_WIDTH - 1:0] issue_en;

    // with regfile
    always_comb begin: regfile_read
        for (int id_num = 0; id_num < DECODER_WIDTH; id_num++) begin
            for (int reg_num = id_num; reg_num < id_num + 2; reg_num++) begin
                regfile_master.reg_read_en[reg_num] = dispatch_i[id_num].reg_read_en[reg_num];
                regfile_master.reg_read_addr[reg_num] = dispatch_i[id_num].reg_read_addr[reg_num];
            end
        end
    end

    always_comb begin: regfile_read_data
        
    end

    // with csr

    
endmodule