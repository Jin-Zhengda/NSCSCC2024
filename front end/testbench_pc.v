`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 10:40:58
// Design Name: 
// Module Name: testbench_pc
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

module testbench_pc(

    );
    reg clk;
    reg rst;

    reg [5: 0] pause;
    reg is_branch_i_1;
    reg is_branch_i_2;
    reg taken_or_not;
    reg[`InstAddrWidth] branch_target_addr_i;

    wire[`InstAddrWidth] pc_1_o;
    wire[`InstAddrWidth] pc_2_o;
    wire inst_en_o_1;
    wire inst_en_o_2;

    pc_reg u_pc_reg(
        .clk(clk),
        .rst(rst),

        .pause(pause),
        .is_branch_i_1(is_branch_i_1),
        .is_branch_i_2(is_branch_i_2),
        .taken_or_not(taken_or_not),
        .branch_target_addr_i(branch_target_addr_i),

        .pc_1_o(pc_1_o),
        .pc_2_o(pc_2_o),
        .inst_en_o_1(inst_en_o_1),
        .inst_en_o_2(inst_en_o_2)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = 1'b1;
        #20 
        begin rst = 1'b0;pause = 6'b0;is_branch_i_1 = 1'b0;is_branch_i_2 = 1'b0;
        taken_or_not = 1'b0;branch_target_addr_i = 0;end
        #100 
        begin rst = 1'b0;pause = 6'b000001;is_branch_i_1 = 1'b0;is_branch_i_2 = 1'b0;
        taken_or_not = 1'b0;branch_target_addr_i = 0;end
        #40
        begin rst = 1'b0;pause = 6'b0;is_branch_i_1 = 1'b1;is_branch_i_2 = 1'b0;
        taken_or_not = 1'b1;branch_target_addr_i = 32'b1;end
        #20
        begin rst = 1'b0;pause = 6'b0;is_branch_i_1 = 1'b0;is_branch_i_2 = 1'b0;
        taken_or_not = 1'b0;branch_target_addr_i = 32'b0;end
        #100 $finish;
    end
endmodule
