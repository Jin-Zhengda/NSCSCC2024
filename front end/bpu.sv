`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 21:16:38
// Design Name: 
// Module Name: bpu
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
`define InstBus 31:0

module bpu
import pipeline_type::*;
(
    input logic clk,
    input logic rst,
    input logic branch_flush,
    
    input pc_out pc_i,
    input logic [`InstBus] inst_1_i,
    input logic [`InstBus] inst_2_i,
    input logic inst_en_1,
    input logic inst_en_2,

    output inst_and_pc_t inst_and_pc,
   
   //分支预测的结果
    output logic is_branch_1,
    output logic is_branch_2,
    output logic pre_taken_or_not,

    //跳转的目标地址，传给pc
    output logic [`InstBus] pre_branch_addr,  


    output logic fetch_inst_1_en,
    output logic fetch_inst_2_en
    );

    logic [5:0] branch_judge_1;
    logic [5:0] branch_judge_2;

    assign branch_judge_1 = inst_1_i[31:26];
    assign branch_judge_2 = inst_2_i[31:26];

    //异常
    assign inst_and_pc.is_exception = pc_i.is_exception;
    assign inst_and_pc.exception_cause = pc_i.exception_cause;


    always_comb begin
        case(branch_judge_1)
            6'b010010:begin
                is_branch_1 <= 1'b1;
            end
            6'b010011:begin
                is_branch_1 <= 1'b1;
            end
            6'b010100:begin
                is_branch_1 <= 1'b1;
            end
            6'b010101:begin
                is_branch_1 <= 1'b1;
            end
            6'b010110:begin
                is_branch_1 <= 1'b1;
            end
            6'b010111:begin
                is_branch_1 <= 1'b1;
            end
            6'b011000:begin
                is_branch_1 <= 1'b1;
            end
            6'b011001:begin
                is_branch_1 <= 1'b1;
            end
            6'b011010:begin
                is_branch_1 <= 1'b1;
            end
            6'b011011:begin
                is_branch_1 <= 1'b1;
            end
            default:begin
                is_branch_1 <= 1'b0;
            end
        endcase
    end

    always_comb begin
        case(branch_judge_2)
            6'b010010:begin
                is_branch_2 <= 1'b1;
            end
            6'b010011:begin
                is_branch_2 <= 1'b1;
            end
            6'b010100:begin
                is_branch_2 <= 1'b1;
            end
            6'b010101:begin
                is_branch_2 <= 1'b1;
            end
            6'b010110:begin
                is_branch_2 <= 1'b1;
            end
            6'b010111:begin
                is_branch_2 <= 1'b1;
            end
            6'b011000:begin
                is_branch_2 <= 1'b1;
            end
            6'b011001:begin
                is_branch_2 <= 1'b1;
            end
            6'b011010:begin
                is_branch_2 <= 1'b1;
            end
            6'b011011:begin
                is_branch_2 <= 1'b1;
            end
            default:begin
                is_branch_2 <= 1'b0;
            end
        endcase
    end

    logic [`InstBus] prediction_addr_1;
    logic [`InstBus] prediction_addr_2;

    logic pre_taken_or_not_1;
    logic pre_taken_or_not_2;

    always_ff @(posedge clk) begin
        if(rst|branch_flush) begin
            fetch_inst_1_en <= 0;
            fetch_inst_2_en <= 0;
            inst_and_pc.inst_o_1 <= 0;
            inst_and_pc.inst_o_2 <= 0;
            inst_and_pc.pc_o_1 <= 0;
            inst_and_pc.pc_o_2 <= 0;
            is_branch_1 <= 0;
            is_branch_2 <= 0;
        end
        else begin
            if(is_branch_1&&pre_taken_or_not_1&&inst_en_1)begin
                fetch_inst_1_en <= 1'b1;
                fetch_inst_2_en <= 1'b0;
                inst_and_pc.inst_o_1 <= inst_1_i;
                inst_and_pc.pc_o_1 <= pc_i.pc_o_1;
                pre_branch_addr <= prediction_addr_1;
            end else if(is_branch_2&&pre_taken_or_not_2&&inst_en_2) begin
                fetch_inst_1_en <= 1'b1;
                fetch_inst_2_en <= 1'b1;
                inst_and_pc.inst_o_1 <= inst_1_i;
                inst_and_pc.inst_o_2 <= inst_2_i;
                inst_and_pc.pc_o_1 <= pc_i.pc_o_1;
                inst_and_pc.pc_o_2 <= pc_i.pc_o_2;
                pre_branch_addr <= prediction_addr_2;
            end else begin
                fetch_inst_1_en <= 1'b1;
                fetch_inst_2_en <= 1'b1;
                inst_and_pc.inst_o_1 <= inst_1_i;
                inst_and_pc.inst_o_2 <= inst_2_i;
                inst_and_pc.pc_o_1 <= pc_i.pc_o_1;
                inst_and_pc.pc_o_2 <= pc_i.pc_o_2;
            end
        end
    end

    // always @(*) begin
    //     pre_taken_or_not <= pre_taken_or_not_1&pre_taken_or_not_2;
    // end

    always_comb begin
        pre_taken_or_not <= 0;
        pre_taken_or_not_1 <= 0;
        pre_taken_or_not_2 <= 0;
    end


endmodule
