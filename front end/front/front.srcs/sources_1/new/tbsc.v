`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/02 14:43:38
// Design Name: 
// Module Name: tbsc
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


module tbsc
#(
    parameter PCW = 30,
    parameter STRONGLY_TAKEN = 2'b11,
    parameter WEAKLY_TAKEN = 2'b10,
    parameter WEAKLY_NOT_TAKEN = 2'b01,
    parameter STRONGLY_NOT_TAKEN = 2'b00
)
(
    input clk,
    input rst_n,
    input [PCW-1:0] pc_i,
    input set_i,
    input [PCW-1:0] set_pc_i,
    input set_taken_i,
    input [PCW-1:0] set_target_i,
    output reg pre_taken_o,
    output reg [PCW-1:0] pre_target_o
    );
    wire bypass;
    
    assign bypass = set_i && set_pc_i == pc_i;
    
    
endmodule
