`include "define.v"

module ex_mem (
    input wire clk,
    input wire rst,
    input wire[5: 0] pause,
    input wire exception_flush,

    input wire[`RegWidth] ex_reg_write_data,
    input wire[`RegAddrWidth] ex_reg_write_addr,
    input wire ex_reg_write_en,
    input wire[`ALUOpWidth] ex_aluop,
    input wire[`RegWidth] ex_mem_addr,
    input wire[`RegWidth] ex_store_data,
    input wire ex_csr_read_en,
    input wire ex_csr_write_en,
    input wire[`CSRAddrWidth] ex_csr_addr,
    input wire[`RegWidth] ex_csr_write_data,
    input wire[`RegWidth] ex_csr_mask,
    input wire[4: 0] ex_is_exception,
    input wire[`FiveExceptionCauseWidth] ex_exception_cause,
    input wire[`InstAddrWidth] ex_pc,

    output reg[`RegWidth] mem_reg_write_data,
    output reg[`RegAddrWidth] mem_reg_write_addr,
    output reg mem_reg_write_en,
    output reg[`ALUOpWidth] mem_aluop,
    output reg[`RegWidth] mem_mem_addr,
    output reg[`RegWidth] mem_store_data,
    output reg mem_csr_read_en,
    output reg mem_csr_write_en,
    output reg[`CSRAddrWidth] mem_csr_addr,
    output reg[`RegWidth] mem_csr_write_data,
    output reg[`RegWidth] mem_csr_mask,
    output reg[4: 0] mem_is_exception,
    output reg[`FiveExceptionCauseWidth] mem_exception_cause,
    output reg[`InstAddrWidth] mem_pc
);  

    always @(posedge clk) begin
        if (rst) begin
            mem_reg_write_data <= 32'b0;
            mem_reg_write_addr <= 5'b0;
            mem_reg_write_en <= 1'b0;
            mem_aluop <= `ALU_NOP;
            mem_mem_addr <= 32'b0;
            mem_store_data <= 32'b0;
            mem_csr_read_en <= 1'b0;
            mem_csr_write_en <= 1'b0;
            mem_csr_addr <= 14'b0;
            mem_csr_write_data <= 32'b0;
            mem_csr_mask <= 32'b0;
            mem_is_exception <= 5'b0;
            mem_exception_cause <= {5{`EXCEPTION_NOP}};
            mem_pc <= 32'h100;
        end
        else if (exception_flush) begin
            mem_reg_write_data <= 32'b0;
            mem_reg_write_addr <= 5'b0;
            mem_reg_write_en <= 1'b0;
            mem_aluop <= `ALU_NOP;
            mem_mem_addr <= 32'b0;
            mem_store_data <= 32'b0;
            mem_csr_read_en <= 1'b0;
            mem_csr_write_en <= 1'b0;
            mem_csr_addr <= 14'b0;
            mem_csr_write_data <= 32'b0;
            mem_csr_mask <= 32'b0;
            mem_is_exception <= 5'b0;
            mem_exception_cause <= {5{`EXCEPTION_NOP}};
            mem_pc <= 32'h100;
        end
        else if (pause[3] && ~pause[4]) begin
            mem_reg_write_data <= 32'b0;
            mem_reg_write_addr <= 5'b0;
            mem_reg_write_en <= 1'b0;
            mem_aluop <= `ALU_NOP;
            mem_mem_addr <= 32'b0;
            mem_store_data <= 32'b0;
            mem_csr_read_en <= 1'b0;
            mem_csr_write_en <= 1'b0;
            mem_csr_addr <= 14'b0;
            mem_csr_write_data <= 32'b0;
            mem_csr_mask <= 32'b0;
            mem_is_exception <= 5'b0;
            mem_exception_cause <= {5{`EXCEPTION_NOP}};
            mem_pc <= 32'h100;
        end 
        else if (~pause[3]) begin
            mem_reg_write_data <= ex_reg_write_data;
            mem_reg_write_addr <= ex_reg_write_addr;
            mem_reg_write_en <= ex_reg_write_en;
            mem_aluop <= ex_aluop;
            mem_mem_addr <= ex_mem_addr;
            mem_store_data <= ex_store_data;
            mem_csr_read_en <= ex_csr_read_en;
            mem_csr_write_en <= ex_csr_write_en;
            mem_csr_addr <= ex_csr_addr;
            mem_csr_write_data <= ex_csr_write_data;
            mem_csr_mask <= ex_csr_mask;
            mem_is_exception <= ex_is_exception;
            mem_exception_cause <= ex_exception_cause;
            mem_pc <= ex_pc;
        end
        else begin
            mem_reg_write_data <= mem_reg_write_data;
            mem_reg_write_addr <= mem_reg_write_addr;
            mem_reg_write_en <= mem_reg_write_en;
            mem_aluop <= mem_aluop;
            mem_mem_addr <= mem_mem_addr;
            mem_store_data <= mem_store_data;
            mem_csr_read_en <= mem_csr_read_en;
            mem_csr_write_en <= mem_csr_write_en;
            mem_csr_addr <= mem_csr_addr;
            mem_csr_write_data <= mem_csr_write_data;
            mem_csr_mask <= mem_csr_mask;
            mem_is_exception <= mem_is_exception;
            mem_exception_cause <= mem_exception_cause;
            mem_pc <= mem_pc;
        end
    end
    
endmodule