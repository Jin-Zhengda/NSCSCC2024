`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_3R 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,

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

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.is_exception = 3'b0;
    assign id_o.exception_cause = {3{`EXCEPTION_INE}};
    assign id_o.reg_read_addr[0] = rj;
    assign id_o.reg_read_addr[1] = rk;
    assign id_o.csr_read_en = 1'b0;
    assign id_o.csr_write_en = 1'b0;
    assign id_o.csr_addr = 14'b0;
    assign id_o.is_cnt = 1'b0;
    assign id_o.reg_write_addr = rd;

    always_comb begin
        case (opcode)
            `ADDW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ADDW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SUBW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SUBW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SLT_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLT;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SLTU_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLTU;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `NOR_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_NOR;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `AND_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_AND;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `OR_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_OR;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `XOR_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_XOR;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SLLW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLLW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SRLW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SRLW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SRAW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SRAW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `MULW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_MULW;
                id_o.alusel = `ALU_SEL_MUL;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `MULHW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_MULHW;
                id_o.alusel = `ALU_SEL_MUL;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `MULHWU_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_MULHWU;
                id_o.alusel = `ALU_SEL_MUL;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `DIVW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_DIVW;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `MODW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_MODW;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `DIVWU_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_DIVWU;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `MODWU_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_MODWU;
                id_o.alusel = `ALU_SEL_DIV;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SLLIW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLLIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SRLIW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SRLIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SRAIW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SRAIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `BREAK_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BREAK;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `SYSCALL_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_SYSCALL;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `IDLE_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_IDLE;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `INVTLB_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_INVTLB;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.imm = 32'b0;
                id_o.invtlb_op = rd;
                id_o.inst_valid = 1'b1;
            end
            `DBAR_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            `IBAR_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
                id_o.invtlb_op = 5'b0;
            end
            default: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b0;
                id_o.invtlb_op = 5'b0;
            end
        endcase
    end
endmodule