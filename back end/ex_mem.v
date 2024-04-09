`include "define.v"

module ex_mem (
    input wire clk,
    input wire rst,
    input wire[5: 0] pause,

    input wire[`RegWidth] ex_reg_write_data,
    input wire[`RegAddrWidth] ex_reg_write_addr,
    input wire ex_reg_write_en,
    input wire[`ALUOpWidth] ex_aluop,
    input wire[`RegWidth] ex_mem_addr,
    input wire[`RegWidth] ex_store_data,

    output reg[`RegWidth] mem_reg_write_data,
    output reg[`RegAddrWidth] mem_reg_write_addr,
    output reg mem_reg_write_en,
    output reg[`ALUOpWidth] mem_aluop,
    output reg[`RegWidth] mem_mem_addr,
    output reg[`RegWidth] mem_store_data
);  

    always @(posedge clk) begin
        if (rst) begin
            mem_reg_write_data <= 32'b0;
            mem_reg_write_addr <= 5'b0;
            mem_reg_write_en <= 1'b0;
            mem_aluop <= `ALU_NOP;
            mem_mem_addr <= 32'b0;
            mem_store_data <= 32'b0;
        end
        else if (pause[3] && ~pause[4]) begin
            mem_reg_write_data <= 32'b0;
            mem_reg_write_addr <= 5'b0;
            mem_reg_write_en <= 1'b0;
            mem_aluop <= `ALU_NOP;
            mem_mem_addr <= 32'b0;
            mem_store_data <= 32'b0;
        end 
        else if (~pause[3]) begin
            mem_reg_write_data <= ex_reg_write_data;
            mem_reg_write_addr <= ex_reg_write_addr;
            mem_reg_write_en <= ex_reg_write_en;
            mem_aluop <= ex_aluop;
            mem_mem_addr <= ex_mem_addr;
            mem_store_data <= ex_store_data;
        end
        else begin
            mem_reg_write_data <= mem_reg_write_data;
            mem_reg_write_addr <= mem_reg_write_addr;
            mem_reg_write_en <= mem_reg_write_en;
            mem_aluop <= mem_aluop;
            mem_mem_addr <= mem_mem_addr;
            mem_store_data <= mem_store_data;
        end
    end
    
endmodule