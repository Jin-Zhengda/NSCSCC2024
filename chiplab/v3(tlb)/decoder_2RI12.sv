`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_2RI12 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,

    output id_dispatch_t id_o
);

    logic [ 9:0] opcode;
    logic [ 4:0] rj;
    logic [ 4:0] rd;
    logic [11:0] ui12;
    logic [11:0] si12;

    assign opcode = inst[31:22];
    assign rj = inst[9:5];
    assign rd = inst[4:0];
    assign ui12 = inst[21:10];
    assign si12 = inst[21:10];

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.is_exception = 3'b0;
    assign id_o.exception_cause = {3{`EXCEPTION_INE}};
    assign id_o.reg_write_addr = rd;
    assign id_o.is_privilege = 1'b0;
    assign id_o.csr_read_en = 1'b0;
    assign id_o.csr_write_en = 1'b0;
    assign id_o.csr_addr = 14'b0;
    assign id_o.is_cnt = 1'b0;
    assign id_o.invtlb_op = 5'b0;

    always_comb begin
        case (opcode)
            `SLTI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLTI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `SLTUI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLTUI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `ADDIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ADDIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `ANDI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ANDI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {20'b0, ui12};
                id_o.inst_valid = 1'b1;
            end
            `ORI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ORI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {20'b0, ui12};
                id_o.inst_valid = 1'b1;
            end
            `XORI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_XORI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {20'b0, ui12};
                id_o.inst_valid = 1'b1;
            end
            `LDB_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDB;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `LDH_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDH;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `LDW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `LDBU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDBU;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `LDHU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDHU;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.inst_valid = 1'b1;
            end
            `STB_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_STB;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = rd;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
            end
            `STH_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_STH;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = rd;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
            end
            `STW_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_STW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = rd;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b1;
            end
            default: begin
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_write_en = 1'b0;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = 5'b0;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.imm = 32'b0;
                id_o.inst_valid = 1'b0;
            end
        endcase

    end
    
endmodule