`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/13 16:09:10
// Design Name: 
// Module Name: predecoder
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


module predecoder(
    input logic clk,
    input logic rst,

    input logic [31:0] inst_i,
    input logic [31:0] pc_i,

    output logic [1:0] branch_type,
    output logic target_address
    );

    logic [25:0] imm;
    assign imm = {inst_i[9:0], inst_i[25:10]};

    always_ff @(posedge clk) begin
        case (inst_i[31:26])
            //无条件直接跳转
            6'b010100, 6'b010101: begin
                branch_type <= 2'b10;
                target_address <= {{4{imm[25]}}, imm, 2'b0} + pc_i;
            end
            //无条件间接跳转
            6'b010011: begin
                branch_type <= 2'b11;
                target_address <= 0;
            end
            //条件跳转
            6'b010110,6'b010111,6'b011000,6'b011001,6'b011010,6'b011011: begin
                branch_type <= 2'b01;
                target_address <= 0;
            end
            //非分支
            default:begin
                branch_type <= 2'b00;
                target_address <= 0;
            end
        endcase
    end



endmodule
