`timescale 1ns / 1ps
`define InstAddrWidth 31:0
`include "csr_defines.sv"

module pc_reg_d
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic stall,

    input logic [`InstAddrWidth] pre_branch_addr,
    input logic [1:0] taken_sure,

    //后端给的分支真实情况
    input logic [`InstAddrWidth] branch_actual_addr,
    input logic flush,

    input logic pause,
    input logic is_interrupt,
    input logic [31:0] new_pc,


    output pc_out_t pc,
    output logic inst_en_1,
    output logic inst_en_2,

    output logic uncache_en
);


    assign inst_en_1 = rst || uncache_en? 1'b0: 1'b1;
    assign inst_en_2 = rst || uncache_en? 1'b0: 1'b1;

    logic pc_excp;
    assign pc_excp = (pc.pc_o[1: 0] != 2'b00);

    always_ff @(posedge clk) begin
        pc.is_exception <= {1'b0, pc_excp, 4'b0};
        pc.exception_cause <= {`EXCEPTION_NOP, 
                        (pc_excp ?  `EXCEPTION_ADEF: `EXCEPTION_NOP),
                        {4{`EXCEPTION_NOP}}};
    end


    always_ff @(posedge clk) begin
        if(rst) begin
            pc.pc_o <= 32'h1c000000;
            //pc.pc_o <= 32'h100;
        end
        else if(flush) begin
            pc.pc_o <= new_pc;
        end
        else if(|taken_sure) begin
            pc.pc_o <= pre_branch_addr;
        end
        else if(pause) begin
            pc.pc_o <= pc.pc_o;
        end
        else begin
            if (stall) begin
                pc.pc_o <= pc.pc_o;
            end
            else begin
                if (uncache_en) pc.pc_o <= pc.pc_o + 4'h4;
                else pc.pc_o <= pc.pc_o + 4'h8;
            end
        end
    end

    //assign uncache_en = ((pc.pc_o <= 32'h1c000100 && pc.pc_o >= 32'h1c000000) && !rst) ? 1'b1: 1'b0;
    assign uncache_en = 1'b0;
endmodule
