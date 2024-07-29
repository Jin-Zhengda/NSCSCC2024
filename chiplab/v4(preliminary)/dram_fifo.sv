module dram_fifo #(
    parameter DATA_WIDTH = 32,
    parameter DEPTH = 8
) (
    input logic clk,
    input logic rst,

    input logic flush,

    input logic [1:0] enqueue_en,
    input logic [1:0][DATA_WIDTH - 1:0] enqueue_data,

    input logic [1:0] invalid_en,
    output logic [1:0][DATA_WIDTH - 1:0] dqueue_data,

    output logic full,
    output logic empty
);

    logic [DATA_WIDTH - 1:0] ram[DEPTH-1: 0];

    logic [$clog2(DEPTH) - 1:0] head;
    logic [$clog2(DEPTH) - 1:0] tail;

    logic [$clog2(DEPTH) - 1:0] head_plus;
    logic [$clog2(DEPTH) - 1:0] tail_plus;

    `ifdef DIFF
    // for simulation
    initial begin
        for (integer i = 0; i < DEPTH; i++) begin
            ram[i] = DATA_WIDTH'(0);
        end
    end
    `endif

    always_ff @(posedge clk) begin : tail_update
        if (rst || flush) begin
            tail <= 0;
            tail_plus <= 1;
        end else if (&enqueue_en) begin
            tail <= tail + 2;
            tail_plus <= tail_plus + 2;
        end else if (|enqueue_en) begin
            tail <= tail + 1;
            tail_plus <= tail_plus + 1;
        end
    end

    always_ff @(posedge clk) begin : enqueue
        if (&enqueue_en) begin
            ram[tail] <= enqueue_data[0];
            ram[tail_plus] <= enqueue_data[1];
        end else if (enqueue_en[0]) begin
            ram[tail] <= enqueue_data[0];
        end else if (enqueue_en[1]) begin
            ram[tail] <= enqueue_data[1];
        end
    end

    always_ff @(posedge clk) begin : head_update
        if (rst || flush) begin
            head <= 0;
            head_plus <= 1;
        end else if (&invalid_en && !empty) begin
            head <= head + 2;
            head_plus <= head_plus + 2;
        end else if (|invalid_en && !empty) begin
            head <= head + 1;
            head_plus <= head_plus + 1;
        end
    end

    // dequeue
    assign dqueue_data[0] = ram[head];
    assign dqueue_data[1] = ram[head_plus];

    assign full = (head == 3'(tail_plus + 1)) || (head == tail_plus);
    assign empty = (head == tail) || (head_plus == tail);

endmodule
