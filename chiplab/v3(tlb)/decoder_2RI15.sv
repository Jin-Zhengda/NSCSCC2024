`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_2RI15 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,
    input logic [5:0] is_exception,
    input logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause,

    output id_dispatch_t id_o
);

    logic [ 5:0] opcode5;
    logic [ 4:0] rj;
    logic [ 4:0] rd;

    assign opcode5 = inst[31:26];
    assign rj = inst[9:5];
    assign rd = inst[4:0];

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
        id_o.reg_read_addr[1] = 5'b0;
        id_o.imm = 32'b0;
        id_o.csr_read_en = 1'b0;
        id_o.csr_write_en = 1'b0;
        id_o.csr_addr = 14'b0;
        id_exception = 1'b0;
        id_exception_cause = `EXCEPTION_INE;
        id_o.cacop_code = 5'b0;
        id_o.is_cnt = 1'b0;
        id_o.invtlb_op = 5'b0;

        case (opcode5)
            `BEQ_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BEQ;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `BNE_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BNE;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `BLT_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BLT;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `BGE_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BGE;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `BLTU_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BLTU;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `BGEU_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BGEU;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `B_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_B;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `BL_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = 5'b00001;
                id_o.aluop = `ALU_BL;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `JIRL_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_JIRL;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase

    end

endmodule