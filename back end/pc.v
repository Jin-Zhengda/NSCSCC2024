`include "define.v"

module pc (
    input wire clk,
    input wire rst,

    input wire[5: 0] pause,

    output reg[`InstAddrWidth] pc_o,
    output reg inst_en_o   
);

    always @(posedge clk) begin
        if (rst) begin
            inst_en_o <= 1'b0;
        end
        else begin
            inst_en_o <= 1'b1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            pc_o <= 32'h0;
        end
        else if (pause[0]) begin
            pc_o <= pc_o;
        end
        else begin
            pc_o <= pc_o + 4'h4;
        end
    end
    
endmodule