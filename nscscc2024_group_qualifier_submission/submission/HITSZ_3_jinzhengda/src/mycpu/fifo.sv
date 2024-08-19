`timescale 1ns / 1ps

module fifo #(
    parameter DATA_WIDTH = 128,
    parameter DEPTH = 8
) (
    input logic clk,
    input logic rst,

    // Input
    input logic push,
    input logic [DATA_WIDTH-1:0] push_data,

    // Output
    input logic pop,
    output logic [DATA_WIDTH-1:0] pop_data,

    input logic flush,
    output logic full,
    output logic push_stall,
    output logic empty
);

    // Parameters
    localparam PTR_WIDTH = $clog2(DEPTH);

    //队列主体
    (* ram_style = "distributed" *) logic [DATA_WIDTH-1:0] ram[DEPTH];

    //头尾指针
    logic [PTR_WIDTH-1:0] write_index;
    logic [PTR_WIDTH-1:0] read_index;


    //写入逻辑
    always_ff @(posedge clk) begin
        // if (rst|flush) ram <= '{default: '0};
        // else 
        if (push) ram[write_index] <= push_data;
    end

    //更新指针
    always_ff @(posedge clk) begin
        if (rst || flush) begin
            read_index <= 0;
            // for(integer i = 0 ; i < DEPTH ; ++i) begin
            //     ram[i] = 0;
            // end
        end
        else if (pop & ~empty) read_index <= read_index + 1;
    end
    always_ff @(posedge clk) begin
        if (rst || flush) begin
            write_index <= 0;
        end
        else if (push & ~push_stall) write_index <= write_index + 1;
    end

    //输出
    assign pop_data = ram[read_index];

    //判断是否空或者满
    assign full = read_index == PTR_WIDTH'(write_index + 2);
    assign push_stall = read_index == PTR_WIDTH'(write_index + 1);
    assign empty = read_index == write_index;

endmodule