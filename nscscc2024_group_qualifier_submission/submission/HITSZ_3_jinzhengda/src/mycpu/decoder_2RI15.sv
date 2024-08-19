`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_2RI15 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,

    output logic inst_valid,
    output id_dispatch_t id_o
);

    logic [ 5:0] opcode;
    logic [ 4:0] rj;
    logic [ 4:0] rd;

    assign opcode = inst[31:26];
    assign rj = inst[9:5];
    assign rd = inst[4:0];

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.is_exception = 3'b0;
    assign id_o.exception_cause = {3{`EXCEPTION_INE}};
    assign id_o.reg_read_addr[0] = rj;
    assign id_o.reg_read_addr[1] = rd;
    assign id_o.is_privilege = 1'b0;
    assign id_o.imm = 32'b0;
    assign id_o.csr_read_en = 1'b0;
    assign id_o.csr_write_en = 1'b0;
    assign id_o.csr_addr = 14'b0;
    assign id_o.is_cnt = 1'b0;
    assign id_o.invtlb_op = 5'b0;

    always_comb begin
        case (opcode)
            `BEQ_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_BEQ;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `BNE_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_BNE;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `BLT_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_BLT;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `BGE_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_BGE;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `BLTU_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_BLTU;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `BGEU_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_BGEU;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `B_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
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
                id_o.reg_write_addr = 5'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b0;
            end
        endcase

    end

endmodule