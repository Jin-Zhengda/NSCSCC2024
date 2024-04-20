`include "define.v"

module id_ex (
    input wire clk,
    input wire rst,
    input wire[5: 0] pause,
    input wire exception_flush,

    input wire[`ALUSelWidth] id_alusel,
    input wire[`ALUOpWidth] id_aluop,
    input wire[`RegWidth] id_reg1,
    input wire[`RegWidth] id_reg2,
    input wire[`RegAddrWidth] id_reg_write_addr,
    input wire id_reg_write_en,
    input wire[`RegWidth] id_reg_write_branch_data,
    input wire[`InstWidth] id_inst,
    input wire id_csr_read_en,
    input wire id_csr_write_en,
    input wire[`CSRAddrWidth] id_csr_addr,
    input wire[4: 0] id_is_exception,
    input wire[`FiveExceptionCauseWidth] id_exception_cause,
    input wire[`InstAddrWidth] id_pc,

    output reg[`ALUSelWidth] ex_alusel,
    output reg[`ALUOpWidth] ex_aluop,
    output reg[`RegWidth] ex_reg1,
    output reg[`RegWidth] ex_reg2,
    output reg[`RegAddrWidth] ex_reg_write_addr,
    output reg ex_reg_write_en,
    output reg[`RegWidth] ex_reg_write_branch_data,
    output reg[`InstWidth] ex_inst,
    output reg ex_csr_read_en,
    output reg ex_csr_write_en,
    output reg[`CSRAddrWidth] ex_csr_addr,
    output reg[4: 0] ex_is_exception,
    output reg[`FiveExceptionCauseWidth] ex_exception_cause,
    output reg[`InstAddrWidth] ex_pc
);

    always @(posedge clk) begin
        if (rst) begin
            ex_alusel <= `ALU_SEL_NOP;
            ex_aluop <= `ALU_NOP;
            ex_reg1 <= 32'b0;
            ex_reg2 <= 32'b0;
            ex_reg_write_addr <= 5'b0;
            ex_reg_write_en <= 1'b0;
            ex_reg_write_branch_data <= 32'b0;
            ex_inst <= 32'b0;
            ex_csr_read_en <= 1'b0;
            ex_csr_write_en <= 1'b0;
            ex_csr_addr <= 14'b0;
            ex_is_exception <= 5'b0;
            ex_exception_cause <= {5{`EXCEPTION_NOP}};
            ex_pc <= 32'h100;
        end
        else if (exception_flush) begin
            ex_alusel <= `ALU_SEL_NOP;
            ex_aluop <= `ALU_NOP;
            ex_reg1 <= 32'b0;
            ex_reg2 <= 32'b0;
            ex_reg_write_addr <= 5'b0;
            ex_reg_write_en <= 1'b0;
            ex_reg_write_branch_data <= 32'b0;
            ex_inst <= 32'b0;
            ex_csr_read_en <= 1'b0;
            ex_csr_write_en <= 1'b0;
            ex_csr_addr <= 14'b0;
            ex_is_exception <= 5'b0;
            ex_exception_cause <= {5{`EXCEPTION_NOP}};
            ex_pc <= 32'h100;
        end
        else if (pause[2] && ~pause[3]) begin
            ex_alusel <= `ALU_SEL_NOP;
            ex_aluop <= `ALU_NOP;
            ex_reg1 <= 32'b0;
            ex_reg2 <= 32'b0;
            ex_reg_write_addr <= 5'b0;
            ex_reg_write_en <= 1'b0;
            ex_reg_write_branch_data <= 32'b0;
            ex_inst <= 32'b0;
            ex_csr_read_en <= 1'b0;
            ex_csr_write_en <= 1'b0;
            ex_csr_addr <= 14'b0;
            ex_is_exception <= 5'b0;
            ex_exception_cause <= {5{`EXCEPTION_NOP}};
            ex_pc <= 32'h100;
        end
        else if (~pause[2]) begin
            ex_alusel <= id_alusel;
            ex_aluop <= id_aluop;
            ex_reg1 <= id_reg1;
            ex_reg2 <= id_reg2;
            ex_reg_write_addr <= id_reg_write_addr;
            ex_reg_write_en <= id_reg_write_en;
            ex_reg_write_branch_data <= id_reg_write_branch_data;
            ex_inst <= id_inst;
            ex_csr_read_en <= id_csr_read_en;
            ex_csr_write_en <= id_csr_write_en;
            ex_csr_addr <= id_csr_addr;
            ex_is_exception <= id_is_exception;
            ex_exception_cause <= id_exception_cause;
            ex_pc <= id_pc;
        end 
        else begin
            ex_alusel <= ex_alusel;
            ex_aluop <= ex_aluop;
            ex_reg1 <= ex_reg1;
            ex_reg2 <= ex_reg2;
            ex_reg_write_addr <= ex_reg_write_addr;
            ex_reg_write_en <= ex_reg_write_en;
            ex_reg_write_branch_data <= ex_reg_write_branch_data;
            ex_inst <= ex_inst;
            ex_csr_read_en <= ex_csr_read_en;
            ex_csr_write_en <= ex_csr_write_en;
            ex_csr_addr <= ex_csr_addr;
            ex_is_exception <= ex_is_exception;
            ex_exception_cause <= ex_exception_cause;
            ex_pc <= ex_pc;
        end
    end
    
endmodule