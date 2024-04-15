`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 14:00:56
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
    input wire clk,
    input wire rst,

    input wire[5: 0] pause,
    input wire is_branch_i_1,
    input wire is_branch_i_2,
    input wire taken_or_not_1,
    input wire taken_or_not_2,
    input wire[`InstAddrWidth] branch_target_addr_i_1,
    input wire[`InstAddrWidth] branch_target_addr_i_2,

    output reg[`InstAddrWidth] pc_o_1,
    output reg[`InstAddrWidth] pc_o_2,
    output reg inst_en_o_1,
    output reg inst_en_o_2   
);

    always @(posedge clk) begin
        if (rst) begin
            inst_en_o_1 <= 1'b0;
            inst_en_o_2 <= 1'b0;
        end
        else begin
            inst_en_o_1 <= 1'b1;
            inst_en_o_2 <= 1'b1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            pc_o_1 <= 32'h0;
            pc_o_2 <= 32'h0;
        end
        else if (pause[0]) begin
            pc_o_1 <= pc_o_1;
            pc_o_2 <= pc_o_2;
        end
        else begin
            if (is_branch_i_1&&taken_or_not_1) begin
                pc_o_1 <= branch_target_addr_i_1;
            end
            else begin
            pc_o_1 <= pc_o_1 + 4'h4;
            end
        end
    end
endmodule
