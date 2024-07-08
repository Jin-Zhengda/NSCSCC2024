`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 23:26:02
// Design Name: 
// Module Name: pc_reg_d
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define InstAddrWidth 31:0
`include "csr_defines.sv"

module pc_reg_d
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic stall,

    input logic [`InstAddrWidth] pre_branch_addr,
    input logic taken_sure,

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

	// logic pause_pc;
    // always_ff @(posedge clk) begin
    //     pause_pc <= pause;
    // end

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                pc.is_exception[i] <= {is_interrupt, {(pc.pc_o[1: 0] == 2'b00) ? 1'b0 : 1'b1}, 4'b0};
                pc.exception_cause[i] <= {{is_interrupt ? `EXCEPTION_INT: `EXCEPTION_NOP}, 
                                {(pc.pc_o[1: 0] == 2'b00) ?  `EXCEPTION_NOP: `EXCEPTION_ADEF},
                                {4{`EXCEPTION_NOP}}};
            end
        end
    endgenerate

    always_ff @(posedge clk) begin
        if(rst) begin
            //pc.pc_o <= 32'h1bfffffc;
            pc.pc_o <= 32'h100;
        end
        else if(flush) begin
            pc.pc_o <= new_pc;
        end
        else if(pause) begin
            // if (pause_pc) begin
            //     pc.pc_o <= pc.pc_o;
            // end
            // else if (!stall)begin
            //     pc.pc_o <= pc.pc_o + 4'h8;
            // end
            pc.pc_o <= pc.pc_o;
        end
        else begin
            if(flush) begin
                pc.pc_o <= branch_actual_addr;
            end
            else if (stall) begin
                pc.pc_o <= pc.pc_o;
            end
            else if(taken_sure) begin
                pc.pc_o <= pre_branch_addr;
            end
            else begin
                pc.pc_o <= pc.pc_o + 4'h8;
            end
        end
    end

    // assign uncache_en = (pc.pc_o <= 32'h1c000100) ? 1'b1: 1'b0;
    assign uncache_en = 1'b0;
endmodule
