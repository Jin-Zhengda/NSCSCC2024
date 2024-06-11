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

    always_ff @( posedge clk ) begin : enqueue
        if (rst) begin
            tail <= 0;
            ram <= '{default:{DATA_WIDTH{1'b0}}};
        end else begin
            if (|enqueue_en) begin
                ram[tail] <= enqueue_data[0];
                ram[tail + 1] <= enqueue_data[1];
                valid[tail] <= 1'b1;
                valid[tail + 1] <= 1'b1;
                tail <= tail + 2;
            end
        end       
    end

    logic [2: 0] head_plus;
    assign head_plus = head + 1;
    assign dqueue_data[0] = dqueue_en[0]? ram[head]: '0;
    assign dqueue_data[1] = dqueue_en[1]? ram[head_plus]: '0;
    // always_comb begin: read
    //     case (dqueue_en)
    //         2'b11: begin
    //             dqueue_data[0] = ram[head];
    //             dqueue_data[1] = ram[head + 1];
    //         end
    //         2'b00: begin
    //             dqueue_data[0] = '0;
    //             dqueue_data[1] = '0;
    //         end 
    //         default: begin
    //             dqueue_data[0] = '0;
    //             dqueue_data[1] = '0;
    //         end
    //     endcase
    // end

    always_ff @(posedge clk) begin : valid_set
        if (rst) begin
            valid <= '{default:0};    
            head <= 0;
        end
        else begin
            case (invalid_en)
                2'b11: begin
                    valid[head] <= 1'b0;
                    valid[head + 1] <= 1'b0;
                    head <= head + 2;
                end 
                2'b01: begin
                    valid[head] <= 1'b0;
                    head <= head + 1;
                end
            endcase
        end
    end

    assign full = &valid;
    
endmodule