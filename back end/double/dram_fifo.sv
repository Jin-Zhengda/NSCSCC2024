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
    input logic flush,

    input logic[WRITE_PORTS - 1: 0] enqueue_en,
    output logic [WRITE_PORTS-1: 0][DATA_WIDTH - 1: 0] enqueue_data,

    input logic[READ_PORTS - 1: 0] dqueue_en,
    output logic [READ_PORTS - 1: 0][DATA_WIDTH - 1: 0] dqueue_data,

    input logic[READ_PORTS - 1: 0] invalid_en,

    output logic full
);

    (* ram_style="distributed" *) logic[DATA_WIDTH - 1: 0] ram[DEPTH];
    logic[DEPTH - 1: 0] valid;
    logic[$clog2(DEPTH) - 1: 0] head;
    logic[$clog2(DEPTH) - 1: 0] tail;

    always_ff @(posedge clk) begin: tail_update
        if (rst || flush) begin
            tail <= 0;
        end else begin
            if (|enqueue_en) begin
                tail <= tail + 2;
            end
        end
    end

    always_ff @( posedge clk ) begin : enqueue
        if (rst) begin
            ram <= '{default:{DATA_WIDTH{1'b0}}};
        end else begin
            if (|enqueue_en) begin
                ram[tail] <= enqueue_data[0];
                ram[tail + 1] <= enqueue_data[1];
            end
        end       
    end

    always_ff @(posedge clk) begin : head_update
        if (rst || flush) begin   
            head <= 0;
        end
        else begin
            case (invalid_en)
                2'b11: begin
                    head <= head + 2;
                end 
                2'b01: begin
                    head <= head + 1;
                end
            endcase
        end
    end

    always_ff @(posedge clk) begin: valid_update
        if (rst || flush) begin
            valid <= '{default:0}; 
        end else begin
            case (invalid_en)
                2'b11: begin
                    valid[head] <= 1'b0;
                    valid[head + 1] <= 1'b0;
                end 
                2'b01: begin
                    valid[head] <= 1'b0;
                end
            endcase

            if (|enqueue_en) begin
                valid[tail] <= 1'b1;
                valid[tail + 1] <= 1'b1;
            end
        end
    end

    // dequeue
    logic [2: 0] head_plus;
    assign head_plus = head + 1;
    assign dqueue_data[0] = (dqueue_en[0] && valid[head])? ram[head]: '0;
    assign dqueue_data[1] = (dqueue_en[1] && valid[head_plus])? ram[head_plus]: '0;

    // full judgement
    logic[$clog2(DEPTH): 0] zero_cnt;
    logic[$clog2(DEPTH): 0] sum;
    always @(*) begin
        sum = 0;
        for (integer i = 0; i < $size(valid); i = i + 1) begin
            sum = sum + valid[i];
        end
    end
    assign zero_cnt = DEPTH - sum;

    assign full = (zero_cnt == 1) || (zero_cnt == 0);
    
endmodule