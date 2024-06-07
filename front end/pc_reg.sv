`timescale 1ns / 1ps
`define InstAddrWidth 31:0
`include "csr_defines.sv"

module pc_reg
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic stall,

    input logic is_branch_i_1,
    input logic is_branch_i_2,
    input logic pre_taken_or_not,
    input logic [`InstAddrWidth] pre_branch_addr,
    input logic btb_valid,

    //后端给的分支真实情况
    input logic [`InstAddrWidth] branch_actual_addr,
    input logic branch_flush,

    input ctrl_t ctrl,
    input ctrl_pc_t ctrl_pc,

    output pc_out_t pc,
    output logic inst_en_1,
    output logic inst_en_2,

    output logic uncache_en
);


    assign inst_en_1 = uncache_en? 1'b0: 1'b1;

	logic[7: 0] pause;
    always_ff @(posedge clk) begin
        pause <= ctrl.pause;
    end

    always_ff @(posedge clk) begin
        pc.is_exception <= {ctrl_pc.is_interrupt, {(pc.pc_o_1[1: 0] == 2'b00) ? 1'b0 : 1'b1}, 4'b0};
        pc.exception_cause <= {{ctrl_pc.is_interrupt ? `EXCEPTION_INT: `EXCEPTION_NOP}, 
                                {(pc.pc_o_1[1: 0] == 2'b00) ?  `EXCEPTION_NOP: `EXCEPTION_ADEF},
                                {4{`EXCEPTION_NOP}}};

        if(rst) begin
            pc.pc_o_1 <= 32'h1bfffffc;
            //pc.pc_o_1 <= 32'hfc;
            pc.pc_o_2 <= 32'h104;
        end
        else if(ctrl.exception_flush) begin
            pc.pc_o_1 <= ctrl_pc.exception_new_pc;
        end
         else if(ctrl.pause[0]) begin
            if (pause[0]) begin
                pc.pc_o_1 <= pc.pc_o_1;
            end
            else if (!stall)begin
                pc.pc_o_1 <= pc.pc_o_1 + 4'h4;
            end
        end
        else begin
            if(branch_flush) begin
                pc.pc_o_1 <= branch_actual_addr;
            end
            else if (stall) begin
                pc.pc_o_1 <= pc.pc_o_1;
            end
            else if(is_branch_i_1&&pre_taken_or_not&&btb_valid) begin
                pc.pc_o_1 <= pre_branch_addr;
            end
            else begin
                pc.pc_o_1 <= pc.pc_o_1 + 4'h4;
            end
        end
    end

    assign uncache_en = (pc.pc_o_1 <= 32'h1c000100) ? 1'b1: 1'b0;

endmodule
