`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 21:12:50
// Design Name: 
// Module Name: pc_reg
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

module pc_reg(
    input logic clk,
    input logic rst,

    input logic [5: 0] pause,
    input logic is_branch_i_1,
    input logic is_branch_i_2,
    input logic taken_or_not,
    input logic [`InstAddrWidth] branch_target_addr_i,

    output logic [`InstAddrWidth] pc_1_o,
    output logic [`InstAddrWidth] pc_2_o,
    output logic inst_en_o_1,
    output logic inst_en_o_2   
);

    always_ff @(posedge clk) begin
        if (rst) begin
            inst_en_o_1 <= 1'b0;
            inst_en_o_2 <= 1'b0;
        end
        else begin
            inst_en_o_1 <= 1'b1;
            inst_en_o_2 <= 1'b1;
        end
    end


    always_ff @(posedge clk) begin
        if (rst) begin
            pc_1_o <= 32'h0;
            pc_2_o <= 32'h4;
        end
        else if (pause[0]) begin
            pc_1_o <= pc_1_o;
            pc_2_o <= pc_2_o;
        end
        else begin
            if ((is_branch_i_1|is_branch_i_2)&&taken_or_not) begin
                pc_1_o <= branch_target_addr_i;
                pc_2_o <= branch_target_addr_i+4;
            end
            else begin
            pc_1_o <= pc_1_o + 4'h8;
            pc_2_o <= pc_2_o + 4'h8;
            end
        end
    end
endmodule
