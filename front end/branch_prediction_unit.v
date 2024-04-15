`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/12 20:17:53
// Design Name: 
// Module Name: branch_prediction_unit
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

module branch_prediction_unit(
    input clk,
    input rst,
    input flush,
    
    input [`InstBus] pc_1_i,
    input [`InstBus] pc_2_i,
    input [`InstBus] inst_1_i,
    input [`InstBus] inst_2_i,

   //分支预测的结果
    output reg [`InstBus] pc_1_o,
    output reg [`InstBus] pc_2_o,
    output reg is_branch_1,
    output reg is_branch_2,
    output reg taken_or_not_1,
    output reg taken_or_not_2,

    //跳转的目标地址，传给pc
    output reg [`InstBus] branch_target_1,  
    output reg [`InstBus] branch_target_2,
    output reg [`InstBus] inst_1_o,
    output reg [`InstBus] inst_2_o,
    output reg fetch_inst_1_en,
    output reg fetch_inst_2_en
    );

    wire branch_judge_1;
    wire branch_judge_2;

    assign branch_judge_1 = inst_1_i[31:26];
    assign branch_judge_2 = inst_2_i[31:26];

    always @(*) begin
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

    always @(*) begin
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

    always @(posedge clk) begin
        if(rst|flush) begin
            fetch_inst_1_en <= 0;
            fetch_inst_2_en <= 0;
            inst_1_o <= 0;
            inst_2_o <= 0;
            pc_1_o <= 0;
            pc_2_o <= 0;
        end
        else begin
            fetch_inst_1_en <= 1'b0;
            fetch_inst_2_en <= 1'b1;
            inst_1_o <= inst_1_i;
            inst_2_o <= inst_2_i;
            pc_1_o <= pc_1_i;
            pc_2_o <= pc_2_i;
        end
    end

    always @(*) begin
        taken_or_not_1 <= 0;
        taken_or_not_2 <= 0;
    end

endmodule
