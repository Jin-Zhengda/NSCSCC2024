`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/09 15:26:28
// Design Name: 
// Module Name: ras_d
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
module ras_d (
    input logic clk,
    input logic rst,

    input logic push_i,
    input logic [31:0] call_addr_i,
    input logic pop_i,

    output logic [31:0] top_addr_o
);

    // ras存储器
    logic [31:0] lutram[32];
    initial lutram = '{default: 0};

    // 指针
    logic [4:0] new_index;
    logic [4:0] read_index;


    // Index
    assign new_index = read_index + 5'(push_i) - 5'(pop_i);
    always_ff @(posedge clk) begin
        read_index <= new_index;
    end

    // Data
    always_ff @(posedge clk) begin
        if (push_i) lutram[new_index] <= call_addr_i;
    end

    // Output
    assign top_addr_o = lutram[read_index];

endmodule