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
    input [`InstBus] pc_1_i,
    input [`InstBus] pc_2_i,

   //分支预测的结果
    output reg [`InstBus] pc_1_o,
    output reg [`InstBus] pc_2_o,
    output reg is_branch_1,
    output reg is_branch_2,
    output reg taken_or_not_1,
    output reg taken_or_not_2,

    //跳转的目标地址，传给pc
    output reg [`InstBus] branch_target_1,  
    output reg [`InstBus] branch_target_2
    );
endmodule
