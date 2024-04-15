`include "define.v"

module mem_wb (
    input wire clk,
    input wire rst,
    input wire[5: 0] pause,
    input wire exception_flush,

    // from mem
    input wire[`RegWidth] mem_reg_write_data,
    input wire[`RegAddrWidth] mem_reg_write_addr,
    input wire mem_reg_write_en,
    input wire mem_LLbit_write_en,
    input wire mem_LLbit_write_data,
    input wire mem_csr_write_en,
    input wire[`CSRAddrWidth] mem_csr_write_addr,
    input wire[`RegWidth] mem_csr_write_data,

    // to wb
    output reg[`RegWidth] wb_reg_write_data,
    output reg[`RegAddrWidth] wb_reg_write_addr,
    output reg wb_reg_write_en,
    output reg wb_LLbit_write_en,
    output reg wb_LLbit_write_data,
    output reg wb_csr_write_en,
    output reg[`CSRAddrWidth] wb_csr_write_addr,
    output reg[`RegWidth] wb_csr_write_data
);

    always @(posedge clk) begin
        if (rst) begin
            wb_reg_write_data <= 32'b0;
            wb_reg_write_addr <= 5'b0;
            wb_reg_write_en <= 1'b0;
            wb_LLbit_write_en <= 1'b0;
            wb_LLbit_write_data <= 1'b0;
            wb_csr_write_en <= 1'b0;
            wb_csr_write_addr <= 14'b0;
            wb_csr_write_data <= 32'b0;
        end
        else if (exception_flush) begin
            wb_reg_write_data <= 32'b0;
            wb_reg_write_addr <= 5'b0;
            wb_reg_write_en <= 1'b0;
            wb_LLbit_write_en <= 1'b0;
            wb_LLbit_write_data <= 1'b0;
            wb_csr_write_en <= 1'b0;
            wb_csr_write_addr <= 14'b0;
            wb_csr_write_data <= 32'b0;
        end
        else if (pause[4] && ~pause[5]) begin
            wb_reg_write_data <= 32'b0;
            wb_reg_write_addr <= 5'b0;
            wb_reg_write_en <= 1'b0;
            wb_LLbit_write_en <= 1'b0;
            wb_LLbit_write_data <= 1'b0;
            wb_csr_write_en <= 1'b0;
            wb_csr_write_addr <= 14'b0;
            wb_csr_write_data <= 32'b0;
        end
        else if (~pause[4]) begin
            wb_reg_write_data <= mem_reg_write_data;
            wb_reg_write_addr <= mem_reg_write_addr;
            wb_reg_write_en <= mem_reg_write_en;
            wb_LLbit_write_en <= mem_LLbit_write_en;
            wb_LLbit_write_data <= mem_LLbit_write_data;
            wb_csr_write_en <= mem_csr_write_en;
            wb_csr_write_addr <= mem_csr_write_addr;
            wb_csr_write_data <= mem_csr_write_data;
        end
        else begin
            wb_reg_write_data <= wb_reg_write_data;
            wb_reg_write_addr <= wb_reg_write_addr;
            wb_reg_write_en <= wb_reg_write_en;
            wb_LLbit_write_en <= wb_LLbit_write_en;
            wb_LLbit_write_data <= wb_LLbit_write_data;
            wb_csr_write_en <= wb_csr_write_en;
            wb_csr_write_addr <= wb_csr_write_addr;
            wb_csr_write_data <= wb_csr_write_data;
        end
    end
    
endmodule