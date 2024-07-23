`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_2RI12 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,
    input logic [5:0] is_exception,
    input logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause,

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

        case (opcode)
            `SLTI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLTI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `SLTUI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SLTUI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `ADDIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ADDIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `ANDI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ANDI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {20'b0, ui12};
                inst_valid = 1'b1;
            end
            `ORI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_ORI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {20'b0, ui12};
                inst_valid = 1'b1;
            end
            `XORI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_XORI;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {20'b0, ui12};
                inst_valid = 1'b1;
            end
            `LDB_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDB;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDH_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDH;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDBU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDBU;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDHU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LDHU;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `STB_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_STB;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `STH_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_STH;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `STW_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_STW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `PRELD_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_PRELD;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `CACOP_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_CACOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                id_o.cacop_code = rd;
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase

    end
    
endmodule