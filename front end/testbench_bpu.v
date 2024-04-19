`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 10:41:41
// Design Name: 
// Module Name: testbench_bpu
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

module testbench_bpu(
);
    reg clk;
    reg rst;
    reg flush;

    reg [`InstBus] pc_1_i;
    reg [`InstBus] pc_2_i;
    reg [`InstBus] inst_1_i;
    reg [`InstBus] inst_2_i;

    wire [`InstBus] pc_1_o;
    wire [`InstBus] pc_2_o;
    wire is_branch_1;
    wire is_branch_2;
    wire taken_or_not;

    wire [`InstBus] branch_target;
    wire [`InstBus] inst_1_o;
    wire [`InstBus] inst_2_o;
    wire fetch_inst_1_en;
    wire fetch_inst_2_en;

    branch_prediction_unit u_branch_prediction_unit(
        .clk(clk),
        .rst(rst),
        .flush(flush),

        .pc_1_i(pc_1_i),
        .pc_2_i(pc_2_i),
        .inst_1_i(inst_1_i),
        .inst_2_i(inst_2_i),

        .pc_1_o(pc_1_o),
        .pc_2_o(pc_2_o),
        .is_branch_1(is_branch_1),
        .is_branch_2(is_branch_2),
        .taken_or_not(taken_or_not),

        .branch_target(branch_target),
        .inst_1_o(inst_1_o),
        .inst_2_o(inst_2_o),
        .fetch_inst_1_en(fetch_inst_1_en),
        .fetch_inst_2_en(fetch_inst_2_en)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = 1'b1;flush = 1'b0;
        #20
        begin rst = 1'b0;pc_1_i = 32'b100;pc_2_i = 32'b1000;
        inst_1_i = 32'b1;inst_2_i = 32'b10; end
        #20
        begin rst = 1'b0;pc_1_i = 32'b1100;pc_2_i = 32'b10000;
        inst_1_i = 32'b01010000000000000000000000000001;inst_2_i = 32'b10; end
        #20
        begin rst = 1'b0;pc_1_i = 32'b100;pc_2_i = 32'b1000;
        inst_1_i = 32'b1;inst_2_i = 32'b10; end
        #20
        begin rst = 1'b0;pc_1_i = 32'b1100;pc_2_i = 32'b10000;
        inst_1_i = 32'b10;inst_2_i = 32'b01010000000000000000000000000001; end
        #20 $finish;
    end 
endmodule
