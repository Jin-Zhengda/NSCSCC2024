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


module if_unit(
    input clk,
    input rst,
    input inst_1_i,
    input inst_2_i,
    input pc_1_i,
    input pc_2_i,
    input flush,
    input TLB,  //留作与TLB进行交互

    output reg inst_1_o,
    output reg inst_2_o,
    output reg pc_1_o,
    output reg pc_2_o,
    output TLB_o  //留作与TLB进行交互
    );

    always @(posedge clk) begin
        if(rst|flush) begin
            inst_1_o <= 0;
            inst_2_o <= 0;
            pc_1_o <= 0;
            pc_2_o <= 0;
        end
        else begin
            inst_1_o <= inst_1_i;
            inst_2_o <= inst_2_i;
            pc_1_o <= pc_1_i;
            pc_2_o <= pc_2_i;
        end
    end

endmodule
