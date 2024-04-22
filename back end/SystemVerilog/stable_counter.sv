module stable_counter 
    import pipeline_types::bus64_t;
(
    input logic clk,
    input logic rst,

    output bus64_t cnt
);
    logic cnt_en;
    logic cnt_end;

    assign cnt_end = cnt_en & (cnt == '1);

    always_comb begin
        if (rst) begin
            cnt_en = 1'b0;
        end
        else begin
            cnt_en = 1'b1;
        end
    end 

    always_ff @(posedge clk) begin
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