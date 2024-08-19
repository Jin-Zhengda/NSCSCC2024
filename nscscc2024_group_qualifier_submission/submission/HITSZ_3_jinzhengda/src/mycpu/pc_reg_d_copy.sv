`timescale 1ns / 1ps
`define InstAddrWidth 31:0
`include "csr_defines.sv"

module pc_reg_d_copy
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic stall,
    input logic iuncache,

    input logic [`InstAddrWidth] pre_branch_addr,
    input logic [1:0] taken_sure,

    //后端给的分支真实情况
    input logic flush,

    input logic pause,
    input logic [31:0] new_pc,


    output pc_out_t pc,
    output logic inst_en_1,
    output logic inst_en_2
);


    assign inst_en_1 = rst? 1'b0: 1'b1;
    assign inst_en_2 = rst? 1'b0: 1'b1;

    logic pc_excp;
    assign pc_excp = (pc.pc_o[1: 0] != 2'b00);

    assign pc.is_exception = pc_excp;
    assign pc.exception_cause = (pc_excp ?  `EXCEPTION_ADEF: `EXCEPTION_NOP);

    logic[31:0] pc_4,pc_8;

    always_ff @(posedge clk) begin
        if(rst) begin
            pc_4 <= 32'h1c000000;
            pc_8 <= 32'h1c000000;
        end
        else if(flush) begin
            pc_4 <= new_pc;
            pc_8 <= new_pc;
        end
        else if(|taken_sure) begin
            pc_4 <= pre_branch_addr;
            pc_8 <= pre_branch_addr;
        end
        else if(pause) begin
            pc_4 <= pc_4;
            pc_8 <= pc_8;
        end
        else begin
            if (stall) begin
                pc_4 <= pc_4;
                pc_8 <= pc_8;
            end
            else begin
                pc_4 <= pc.pc_o + 32'h4;
                pc_8 <= pc.pc_o + 32'h8;
            end
        end
    end
    assign pc.pc_o=iuncache?pc_4:pc_8;

endmodule
