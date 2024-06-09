`timescale 1ns / 1ps

module if_id
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic flush,
    input logic pause,

    input bus32_t pc_i  [DECODER_WIDTH],
    input bus32_t inst_i[DECODER_WIDTH],

    output bus32_t pc_o  [DECODER_WIDTH],
    output bus32_t inst_o[DECODER_WIDTH]
);

    always_ff @(posedge clk) begin
        if (rst) begin
            pc_o   <= '{default: 0};
            inst_o <= '{default: 0};
        end else if (!pause) begin
            if (flush) begin
                pc_o   <= '{default: 0};
                inst_o <= '{default: 0};
            end else begin
                pc_o   <= pc_i;
                inst_o <= inst_i;
            end
        end
    end

endmodule
