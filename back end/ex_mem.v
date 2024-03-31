`include "define.v"

module ex_mem (
    input wire clk,
    input wire rst,

    input wire[`RegWidth] ex_reg_write_data,
    input wire[`RegAddrWidth] ex_reg_write_addr,
    input wire ex_reg_write_en,

    output reg[`RegWidth] mem_reg_write_data,
    output reg[`RegAddrWidth] mem_reg_write_addr,
    output reg mem_reg_write_en
);  

    always @(posedge clk) begin
        if (rst) begin
            mem_reg_write_data <= 32'b0;
            mem_reg_write_addr <= 5'b0;
            mem_reg_write_en <= 1'b0;
        end
        else begin
            mem_reg_write_data <= ex_reg_write_data;
            mem_reg_write_addr <= ex_reg_write_addr;
            mem_reg_write_en <= ex_reg_write_en;
        end
    end
    
endmodule