module dram_fifo #(
    parameter DATA_WIDTH = 32,
    parameter DEPTH = 8
) (
    input logic clk,
    input logic reset,

    input logic enqueue_en,
    input logic [DATA_WIDTH - 1:0] enqueue_data,

    input logic dqueue_en,
    output logic [DATA_WIDTH - 1:0] dqueue_data,

    input logic invalid_en,

    output logic full
);

    (* ram_style="distributed" *) logic [DATA_WIDTH - 1:0] ram[DEPTH-1: 0];
    logic empty;
    logic [DEPTH - 1:0] valid;
    logic [$clog2(DEPTH) - 1:0] head;
    logic [$clog2(DEPTH) - 1:0] tail;


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
            if (enqueue_en) begin
                tail <= tail + 1;
            end
        end
    end

    always_ff @(posedge clk) begin : enqueue
        if (enqueue_en) begin
            ram[tail] <= enqueue_data;
        end
    end

    always_ff @(posedge clk) begin : head_update
        if (reset) begin
            head <= 0;
        end else begin
            if (invalid_en) begin
                head <= head + 1;
            end
        end
    end

    always_ff @(posedge clk) begin : valid_update
        if (reset) begin
            valid <= '{default: 0};
        end else begin
            if (invalid_en) begin
                valid[head] <= 1'b0;
            end

            if (enqueue_en) begin
                valid[tail] <= 1'b1;
            end
        end
    end

    // dequeue
    logic [DATA_WIDTH - 1:0] data;
    assign data = ram[head];
    assign dqueue_data = (dqueue_en && valid[head] && !empty) ? data: '0;

    // full and empty judgement
    assign full = &valid;
    assign empty = ~|valid;

endmodule
