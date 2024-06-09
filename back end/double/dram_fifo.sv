module dram_fifo
#(
    parameter DATA_WIDTH = 32,
    parameter DEPTH = 8,
    parameter READ_PORTS = 2,
    parameter WRITE_PORTS = 2
)
(
    input logic clk,
    input logic rst,

    input logic[WRITE_PORTS - 1: 0] enqueue_en,
    logic [WRITE_PORTS-1: 0][DATA_WIDTH - 1: 0] enqueue_data,

    input logic[READ_PORTS - 1: 0] dqueue_en,
    logic [READ_PORTS - 1: 0][DATA_WIDTH - 1: 0] dqueue_data,

    input logic[READ_PORTS - 1: 0] invalid_en,

    output logic full
);

    (* ram_style="distributed" *) logic[DATA_WIDTH - 1: 0] ram[DEPTH];
    logic[DEPTH - 1: 0] valid;
    logic[$clog2(DEPTH) - 1: 0] head;
    logic[$clog2(DEPTH) - 1: 0] tail;

    always_ff @( posedge clk ) begin : enqueue
        if (rst) begin
            tail <= 0;
            ram <= '{default:{DATA_WIDTH{1'b0}}};
        end else begin
            for (int i = 0; i < WRITE_PORTS; i++) begin
                if (enqueue_en[i] && !full) begin
                    ram[tail] <= enqueue_data[i];
                    tail <= tail + 1;
                end
            end
        end       
    end

    generate
        for (genvar i = 0; i < READ_PORTS; i++) begin
            assign dqueue_data[i] = dqueue_en[i]? ram[head + i]: {DATA_WIDTH{1'b0}};
        end
    endgenerate

    always_ff @(posedge clk) begin : valid_set
        if (rst) begin
            valid <= '{default:0};    
            head <= 0;
        end
        else begin
            for (int i = 0; i < READ_PORTS; i++) begin
                if (invalid_en[i]) begin
                    valid[head] <= 1'b0;
                    head <= head + 1;
                end 
            end
        end
    end

    assign full = &valid;
    
endmodule