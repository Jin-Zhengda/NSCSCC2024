module dram_fifo #(
    parameter DATA_WIDTH = 32,
    parameter DEPTH = 16
) (
    input logic clk,
    input logic reset,

    input logic [1:0] enqueue_en,
    input logic [1:0][DATA_WIDTH - 1:0] enqueue_data,

    input logic [1:0] dqueue_en,
    output logic [1:0][DATA_WIDTH - 1:0] dqueue_data,

    input logic [1:0] invalid_en,

    output logic full
);

    logic [DATA_WIDTH - 1:0] ram[DEPTH-1: 0];
    logic empty;
    logic [DEPTH - 1:0] valid;
    logic [$clog2(DEPTH) - 1:0] head;
    logic [$clog2(DEPTH) - 1:0] tail;

    logic [$clog2(DEPTH) - 1:0] head_plus;
    assign head_plus = head + 1;
    logic [$clog2(DEPTH) - 1:0] tail_plus;
    assign tail_plus = tail + 1;

    // for simulation
    initial begin
        for (integer i = 0; i < DEPTH; i++) begin
            ram[i] = DATA_WIDTH'(0);
        end
    end

    always_ff @(posedge clk) begin : tail_update
        if (reset) begin
            tail <= 0;
        end else begin
            if (&enqueue_en) begin
                tail <= tail + 2;
            end else if (|enqueue_en) begin
                tail <= tail + 1;
            end
        end
    end

    always_ff @(posedge clk) begin : enqueue
        if (enqueue_en[0]) begin
            ram[tail] <= enqueue_data[0];
        end
        if (enqueue_en[1]) begin
            ram[tail_plus] <= enqueue_data[1];
        end
    end

    always_ff @(posedge clk) begin : head_update
        if (reset) begin
            head <= 0;
        end else begin
            if (&invalid_en) begin
                head <= head + 2;
            end else if (|invalid_en) begin
                head <= head + 1;
            end
        end
    end

    always_ff @(posedge clk) begin : valid_update
        if (reset) begin
            valid <= '{default: 0};
        end else begin
            if (&invalid_en) begin
                valid[head] <= 1'b0;
                valid[head_plus] <= 1'b0;
            end else if (|invalid_en) begin
                valid[head] <= 1'b0;
            end

            if (&enqueue_en) begin
                valid[tail] <= 1'b1;
                valid[tail_plus] <= 1'b1;
            end else if (|enqueue_en) begin
                valid[tail] <= 1'b1;
            end
        end
    end

    // dequeue

    assign dqueue_data[0] = (dqueue_en && valid[head] && !empty) ? ram[head]: 0;
    assign dqueue_data[1] = (dqueue_en && valid[head_plus] && !empty) ? ram[head_plus]: 0;

    // full and empty judgement
    logic[$clog2(DEPTH) - 1:0] valid_sum;
    assign valid_sum = +valid;

    assign full = (valid_sum >= (DEPTH - 2));
    assign empty = ~|valid;

endmodule
