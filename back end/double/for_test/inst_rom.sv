`timescale 1ns / 1ps

module inst_rom
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic inst_en,
    input bus32_t addr[DECODER_WIDTH],

    output bus32_t inst[DECODER_WIDTH]
);
    bus32_t rom[0:4095];

    initial begin
        $readmemh("C:/Documents/Code/NSCSCC2024/test/inst_rom.mem", rom);
    end

    logic [11:0] inst_addr;
    assign inst_addr[0] = addr[0][13:2];
    assign inst_addr[1] = addr[1][13:2];

    always_ff @(posedge clk) begin
        for (int i = 0; i < DECODER_WIDTH; i++) begin
            if (rst) begin
                inst[i] <= 0;
            end else if (inst_en) begin
                inst[i] <= rom[inst_addr[i]];
            end else begin
                inst[i] <= 0;
            end
        end
    end

endmodule
