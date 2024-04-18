`include "define.v"

module stable_counter (
    input wire clk,
    input wire rst,

    output reg [`CountWidth] cnt
);


    reg cnt_en;
    wire cnt_end;

    assign cnt_end = cnt_en & (cnt == 64'hFFFFFFFFFFFFFFFF);

    always @ (*) begin
        if (rst) begin
            cnt_en = 1'b0;
        end
        else begin
            cnt_en = 1'b1;
        end
    end 

    always @(posedge clk) begin
        if (rst) begin
            cnt <= 64'h0;
        end
        else if (cnt_end) begin
            cnt <= 64'h0;
        end
        else if (cnt_en) begin
            cnt <= cnt + 64'h1;
        end
    end

    
endmodule