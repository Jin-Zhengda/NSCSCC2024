`timescale 1ns / 1ps

module if_id
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic flush,
    input logic pause,

    input bus32_t [DECODER_WIDTH-1:0] pc_i,
    input bus32_t [DECODER_WIDTH-1:0] inst_i,

    output bus32_t [DECODER_WIDTH-1:0] pc_o,
    output bus32_t [DECODER_WIDTH-1:0] inst_o
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
