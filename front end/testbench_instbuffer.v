`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 10:40:35
// Design Name: 
// Module Name: testbench_instbuffer
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

module testbench_instbuffer(
);
    reg clk;
    reg rst;
    reg flush;

    reg [`InstBus] inst_1_i;
    reg [`InstBus] inst_2_i;
    reg [`InstBus] pc_1_i;
    reg [`InstBus] pc_2_i;

    reg is_inst1_valid;
    reg is_inst2_valid;

    reg send_inst_1_en;
    reg send_inst_2_en;

    reg fetch_inst_1_en;
    reg fetch_inst_2_en;

    wire [`InstBus] instbuffer_1_o;
    wire [`InstBus] instbuffer_2_o;
    wire [`InstBus] pc_1_o;
    wire [`InstBus] pc_2_o;

    instbuffer u_instbuffer(
        .clk(clk),
        .rst(rst),
        .flush(flush),

        .inst_1_i(inst_1_i),
        .inst_2_i(inst_2_i),
        .pc_1_i(pc_1_i),
        .pc_2_i(pc_2_i),

        .is_inst1_valid(is_inst1_valid),
        .is_inst2_valid(is_inst2_valid),

        .send_inst_1_en(send_inst_1_en),
        .send_inst_2_en(send_inst_2_en),

        .fetch_inst_1_en(fetch_inst_1_en),
        .fetch_inst_2_en(fetch_inst_2_en),

        .instbuffer_1_o(instbuffer_1_o),
        .instbuffer_2_o(instbuffer_2_o),
        .pc_1_o(pc_1_o),
        .pc_2_o(pc_2_o)
    );

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = 1'b1;flush = 1'b0;is_inst1_valid = 1'b1;is_inst2_valid = 1'b1;
        #20
        begin rst = 1'b0;fetch_inst_1_en = 1'b1;fetch_inst_2_en = 1'b1;send_inst_1_en = 1'b0;send_inst_2_en = 1'b0;
        inst_1_i = 32'b1;inst_2_i = 32'b10;pc_1_i = 32'b1;pc_2_i = 32'b10; end
        #20
        begin rst = 1'b0;fetch_inst_1_en = 1'b1;fetch_inst_2_en = 1'b1;send_inst_1_en = 1'b0;send_inst_2_en = 1'b0;
        inst_1_i = 32'b11;inst_2_i = 32'b100;pc_1_i = 32'b11;pc_2_i = 32'b100; end
        #20
        begin rst = 1'b0;fetch_inst_1_en = 1'b1;fetch_inst_2_en = 1'b1;send_inst_1_en = 1'b0;send_inst_2_en = 1'b0;
        inst_1_i = 32'b101;inst_2_i = 32'b110;pc_1_i = 32'b101;pc_2_i = 32'b110; end
        #20
        begin rst = 1'b0;fetch_inst_1_en = 1'b0;fetch_inst_2_en = 1'b0;send_inst_1_en = 1'b1;send_inst_2_en = 1'b1;
        inst_1_i = 32'b0;inst_2_i = 32'b0;pc_1_i = 32'b0;pc_2_i = 32'b0; end
        #20
        begin rst = 1'b0;fetch_inst_1_en = 1'b0;fetch_inst_2_en = 1'b0;send_inst_1_en = 1'b1;send_inst_2_en = 1'b1;
        inst_1_i = 32'b0;inst_2_i = 32'b0;pc_1_i = 32'b0;pc_2_i = 32'b0; end
        #20
        begin rst = 1'b0;fetch_inst_1_en = 1'b0;fetch_inst_2_en = 1'b0;send_inst_1_en = 1'b1;send_inst_2_en = 1'b1;
        inst_1_i = 32'b0;inst_2_i = 32'b0;pc_1_i = 32'b0;pc_2_i = 32'b0; end
        #20 $finish;
    end
endmodule
