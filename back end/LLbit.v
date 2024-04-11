`include "define.v"

module LLbit (
    input wire clk,
    input wire rst,

    input wire is_exception,
    input wire write_en,

    input wire LLbit_i,
    output reg LLbit_o
);

    always @(posedge clk) begin
        if (rst) begin
            LLbit_o <= 1'b0;
        end
        else if (is_exception) begin
            LLbit_o <= 1'b0;
        end
        else if (write_en) begin
            LLbit_o <= LLbit_i;
        end 
        else begin
            LLbit_o <= LLbit_o;
        end
end

endmodule
