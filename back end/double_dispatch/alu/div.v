`timescale 1ns / 1ps

module divider (
    input  wire       clk,
    input  wire       rst,
    input  wire [7:0] x,
    input  wire [7:0] y,
    input  wire       start,
    output reg [7:0] z,
    output reg [7:0] r,
    output reg        busy
);
    localparam WIDTH = 8; 

    reg [WIDTH*2:0] dividend;
    reg [WIDTH-1:0] divisor;
    reg [WIDTH-1:0] quotient;
    reg [WIDTH-1:0] remainder;
    reg [WIDTH-1:0] neg_y;
    reg [WIDTH-1:0] abs_y;

    always @(posedge clk) begin
        if (rst) begin
            dividend <= 0;
            divisor <= 0;
            quotient <= 0;
            remainder <= 0;
            neg_y <= 0;
            abs_y <= 0;
        end else if (start) begin
            dividend <= {1'b0, x[WIDTH - 2: 0]};
            divisor <= {1'b0, y[WIDTH - 2: 0]};
            neg_y <= {y[WIDTH - 1], ~y[WIDTH - 2: 0] + 1};
            abs_y <= {1'b0, y[WIDTH - 2: 0]};
        end
    end

    parameter DivFree = 2'b00;
    parameter DivOn = 2'b01;
    parameter DivEnd = 2'b10;

    reg [1:0] state;
    reg [1:0] next_state;

    reg[$clog2(WIDTH)-1:0] i;

    always @(posedge clk) begin
        if (rst) begin
            state <= DivFree;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        case (state)
            DivFree: begin
                if (start) next_state = DivOn; 
                else next_state = DivFree; 
            end
            DivOn: begin
                if (i == 0) next_state = DivEnd; 
                else next_state = DivOn;
            end
            DivEnd: begin
                if (!busy) begin
                    next_state = DivFree;
                end else begin
                    next_state = DivEnd;
                end
            end
            default: next_state = DivFree;
        endcase
    end

    always @(posedge clk) begin
        case (state) 
            DivFree: begin
                busy <= 0;
                quotient <= 0;
                remainder <= {1'b0, x[WIDTH - 2: 0]} + {y[WIDTH - 1], ~y[WIDTH - 2: 0] + 1};
                i <= WIDTH - 1;
                if (start) begin
                    busy <= 1'b1;
                end
            end
            DivOn: begin        
                i <= i - 1;
                if (remainder[WIDTH - 1]) begin
                    quotient[i] <= 1'b0;
                    remainder <= (remainder << 1) + abs_y;
                end else begin
                    quotient[i] <= 1'b1;
                    remainder <= (remainder << 1) + neg_y;
                end
            end
            DivEnd: begin
                busy <= 0;
                if (quotient[WIDTH - 1]) begin
                    z <= {dividend[WIDTH - 1] ^ divisor[WIDTH - 1], ~quotient[WIDTH - 2: 0] + 1};
                end else begin
                    z <= {dividend[WIDTH - 1] ^ divisor[WIDTH - 1], quotient[WIDTH - 2: 0]};
                end
                r <= remainder;
            end
        endcase
    end

    
endmodule
