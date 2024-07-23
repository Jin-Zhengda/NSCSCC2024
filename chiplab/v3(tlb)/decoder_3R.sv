`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_3R 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,
    input logic [5:0] is_exception,
    input logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause,

    output id_dispatch_t id_o
);

    logic [16:0] opcode;

    logic [ 4:0] rk;
    logic [ 4:0] rj;
    logic [ 4:0] rd;
    logic [ 4:0] ui5;

    assign opcode = inst[31:15];

    assign rk = inst[14:10];
    assign rj = inst[9:5];
    assign rd = inst[4:0];
    assign ui5 = inst[14:10];

    logic inst_valid;
    logic id_exception;
    exception_cause_t id_exception_cause;

    assign id_o.is_exception = {
        is_exception[5:4],
        id_exception,
        is_exception[2:0]
    };
    assign id_o.exception_cause = {
        exception_cause[5:4],
        id_exception_cause,
        exception_cause[2:0]
    };
    assign id_o.inst_valid = inst_valid;

    always_comb begin
        id_o.aluop = `ALU_NOP;
        id_o.alusel = `ALU_SEL_NOP;
        id_o.reg_write_addr = 5'b0;
        id_o.reg_write_en = 1'b0;
        inst_valid = 1'b0;
        id_o.is_privilege = 1'b0;
        id_o.reg_read_en[0] = 1'b0;
        id_o.reg_read_en[1] = 1'b0;
        id_o.reg_read_addr[0] = rj;
        id_o.reg_read_addr[1] = rk;
        id_o.imm = 32'b0;
        id_o.csr_read_en = 1'b0;
        id_o.csr_write_en = 1'b0;
        id_o.csr_addr = 14'b0;
        id_exception = 1'b0;
        id_exception_cause = `EXCEPTION_INE;
        id_o.cacop_code = 5'b0;
        id_o.is_cnt = 1'b0;
        id_o.invtlb_op = 5'b0;

        case (opcode)
            `ADDW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_ADDW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SUBW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SUBW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SLT_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLT;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SLTU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLTU;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `NOR_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_NOR;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `AND_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_AND;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `OR_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_OR;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `XOR_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_XOR;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SLLW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLLW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SRLW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRLW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SRAW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRAW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MULW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MULW;
                id_o.alusel = `ALU_SEL_MUL;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MULHW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MULHW;
                id_o.alusel = `ALU_SEL_MUL;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MULHWU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MULHWU;
                id_o.alusel = `ALU_SEL_MUL;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `DIVW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_DIVW;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MODW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MODW;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `DIVWU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_DIVWU;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MODWU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MODWU;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SLLIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLLIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                inst_valid = 1'b1;
            end
            `SRLIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRLIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                inst_valid = 1'b1;
            end
            `SRAIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRAIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                inst_valid = 1'b1;
            end
            `BREAK_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BREAK;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_exception = 1'b1;
                id_exception_cause = `EXCEPTION_BRK;
                inst_valid = 1'b1;
            end
            `SYSCALL_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_SYSCALL;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_exception = 1'b1;
                id_exception_cause = `EXCEPTION_SYS;
                inst_valid = 1'b1;
            end
            `IDLE_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_IDLE;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `INVTLB_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_INVTLB;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.invtlb_op = rd;
                inst_valid = 1'b1;
            end
            `DBAR_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `IBAR_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase
    end
endmodule