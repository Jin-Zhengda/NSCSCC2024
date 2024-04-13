`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/09 21:20:19
// Design Name: 
// Module Name: if_unit
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

module if_unit(
    input clk,
    input rst,

    //从icache取到的指令
    input [`InstBus] inst_1_i,
    input [`InstBus] inst_2_i,
    //输出给icache的pc值
    output reg [`InstBus] pc_1_o,
    output reg [`InstBus] pc_2_o,

    input is_branch_1_i,
    input is_branch_2_i,
    input [`InstBus] pc_1_i,
    input [`InstBus] pc_2_i,
    input flush,
    input TLB,  //留作与TLB进行交互

    //输出给instbuffer的指令
    output reg [`InstBus] inst_1_o,
    output reg [`InstBus] inst_2_o,

    output reg is_branch_1_o,
    output reg is_branch_2_o,
    output TLB_o  //留作与TLB进行交互
    );

    always @(posedge clk) begin
        if(rst|flush) begin
            inst_1_o <= 0;
            inst_2_o <= 0;
            pc_1_o <= 0;
            pc_2_o <= 0;
            is_branch_1_o <= 0;
            is_branch_2_o <= 0;
        end
        else begin
            inst_1_o <= inst_1_i;
            inst_2_o <= inst_2_i;
            pc_1_o <= pc_1_i;
            pc_2_o <= pc_2_i;
            is_branch_1_o <= is_branch_1_i;
            is_branch_2_o <= is_branch_1_i;
        end
    end

endmodule
