`include "define.v"

module mem_wb (
    input wire clk,
    input wire rst,
    input wire[5: 0] pause,

    input wire[`RegWidth] mem_reg_write_data,
    input wire[`RegAddrWidth] mem_reg_write_addr,
    input wire mem_reg_write_en,

    output reg[`RegWidth] wb_reg_write_data,
    output reg[`RegAddrWidth] wb_reg_write_addr,
    output reg wb_reg_write_en
);

    always @(posedge clk) begin
        if (rst) begin
            wb_reg_write_data <= 32'b0;
            wb_reg_write_addr <= 5'b0;
            wb_reg_write_en <= 1'b0;
        end
        else if (pause[4] && ~pause[5]) begin
            wb_reg_write_data <= 32'b0;
            wb_reg_write_addr <= 5'b0;
            wb_reg_write_en <= 1'b0;
        end
        else if (~pause[4]) begin
            wb_reg_write_data <= mem_reg_write_data;
            wb_reg_write_addr <= mem_reg_write_addr;
            wb_reg_write_en <= mem_reg_write_en;
        end
        else begin
            wb_reg_write_data <= wb_reg_write_data;
            wb_reg_write_addr <= wb_reg_write_addr;
            wb_reg_write_en <= wb_reg_write_en;
        end
    end
    
endmodule