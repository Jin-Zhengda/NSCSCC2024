`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module id
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,
    input logic pre_is_branch,
    input logic pre_is_branch_taken,
    input bus32_t pre_branch_addr,
    input logic [5:0] is_exception,
    input logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause,

    output logic pause_id,
    output id_dispatch_t id_o
);

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.pre_is_branch = pre_is_branch;
    assign id_o.pre_is_branch_taken = pre_is_branch_taken;
    assign id_o.pre_branch_addr = pre_branch_addr;

    // select inst feild
    logic [ 9:0] opcode1;
    logic [16:0] opcode2;
    logic [ 6:0] opcode3;
    logic [ 7:0] opcode4;
    logic [ 5:0] opcode5;
    logic [21:0] opcode6;
    logic [26:0] opcode7;

    logic [19:0] si20;
    logic [11:0] ui12;
    logic [11:0] si12;
    logic [13:0] si14;
    logic [ 4:0] ui5;

    logic [ 4:0] rk;
    logic [ 4:0] rj;
    logic [ 4:0] rd;
    logic [14:0] code;
    logic [13:0] csr;
    logic [ 9:0] level;

    assign opcode1 = inst[31:22];
    assign opcode2 = inst[31:15];
    assign opcode3 = inst[31:25];
    assign opcode4 = inst[31:24];
    assign opcode5 = inst[31:26];
    assign opcode6 = inst[31:10];
    assign opcode7 = inst[31:5];

    assign si20 = inst[24:5];
    assign ui12 = inst[21:10];
    assign si12 = inst[21:10];
    assign si14 = inst[23:10];
    assign ui5 = inst[14:10];

    assign rk = inst[14:10];
    assign rj = inst[9:5];
    assign rd = inst[4:0];
    assign code = inst[14:0];
    assign csr = inst[23:10];
    assign level = inst[9:0];

    logic inst_valid;
    logic id_exception;
    exception_cause_t id_exception_cause;

    assign id_o.is_exception = {
        is_exception[5:3],
        {((inst_valid || inst == 32'b0) ? id_exception: 1'b1)},
        is_exception[1:0]
    };
    assign id_o.exception_cause = {
        exception_cause[5:3],
        {((inst_valid || inst == 32'b0) ? id_exception_cause : `EXCEPTION_INE)},
        exception_cause[1:0]
    };
    assign id_o.inst_valid = inst_valid;

    assign pause_id = 1'b0;

    always_comb begin
        id_o.aluop = `ALU_NOP;
        id_o.alusel = `ALU_SEL_NOP;
        id_o.reg_write_addr = 5'b0;
        id_o.reg_write_en = 1'b0;
        inst_valid = 1'b0;
        id_o.reg_read_en[0] = 1'b0;
        id_o.reg_read_en[1] = 1'b0;
        id_o.reg_read_addr[0] = rj;
        id_o.reg_read_addr[1] = rk;
        id_o.imm = 32'b0;
        id_o.csr_read_en = 1'b0;
        id_o.csr_write_en = 1'b0;
        id_o.csr_addr = csr;
        id_exception = 1'b0;
        id_exception_cause = `EXCEPTION_INE;
        id_o.cacop_code = 5'b0;

        case (opcode1)
            `SLTI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLTI;
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `SLTUI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLTUI;
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `ADDIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_ADDIW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `ANDI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_ANDI;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {20'b0, ui12};
                inst_valid = 1'b1;
            end
            `ORI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_ORI;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {20'b0, ui12};
                inst_valid = 1'b1;
            end
            `XORI_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_XORI;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {20'b0, ui12};
                inst_valid = 1'b1;
            end
            `LDB_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_LDB;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDH_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_LDH;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_LDW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDBU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_LDBU;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{20{si12[11]}}, si12};
                inst_valid = 1'b1;
            end
            `LDHU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
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

        case (opcode2)
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
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `AND_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_AND;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `OR_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_OR;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `XOR_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_XOR;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SLLW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SLLW;
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SRLW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRLW;
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `SRAW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRAW;
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MULW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MULW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MULHW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MULHW;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                inst_valid = 1'b1;
            end
            `MULHWU_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_MULHWU;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
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
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                inst_valid = 1'b1;
            end
            `SRLIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRLIW;
                id_o.alusel = `ALU_SEL_SHIFT;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {27'b0, ui5};
                inst_valid = 1'b1;
            end
            `SRAIW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SRAIW;
                id_o.alusel = `ALU_SEL_SHIFT;
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
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase

        case (opcode3)
            `LU12I_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_LU12I;
                id_o.alusel = `ALU_SEL_LOGIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = 5'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {si20, 12'b0};
                inst_valid = 1'b1;
            end
            `PCADDU12I_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_PCADDU12I;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {si20, 12'b0};
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase

        case (opcode4)
            `LLW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_LLW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {{16{si14[13]}}, si14, 2'b00};
                inst_valid = 1'b1;
            end
            `SCW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_SCW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `CSR_OPCODE: begin
                id_o.is_privilege = 1'b1;
                case (rj)
                    `CSRRD_OPCODE: begin
                        id_o.reg_write_en = 1'b1;
                        id_o.reg_write_addr = rd;
                        id_o.aluop = `ALU_CSRRD;
                        id_o.alusel = `ALU_SEL_CSR;
                        id_o.reg_read_en[0] = 1'b0;
                        id_o.reg_read_en[1] = 1'b0;
                        id_o.csr_read_en = 1'b1;
                        id_o.csr_write_en = 1'b0;
                        inst_valid = 1'b1;
                    end
                    `CSRWR_OPCODE: begin
                        id_o.reg_write_en = 1'b1;
                        id_o.reg_write_addr = rd;
                        id_o.aluop = `ALU_CSRWR;
                        id_o.alusel = `ALU_SEL_CSR;
                        id_o.reg_read_en[0] = 1'b1;
                        id_o.reg_read_addr[0] = rd;
                        id_o.reg_read_en[1] = 1'b0;
                        id_o.csr_read_en = 1'b1;
                        id_o.csr_write_en = 1'b1;
                        inst_valid = 1'b1;
                    end
                    default: begin
                        id_o.reg_write_en = 1'b1;
                        id_o.reg_write_addr = rd;
                        id_o.aluop = `ALU_CSRXCHG;
                        id_o.alusel = `ALU_SEL_CSR;
                        id_o.reg_read_en[0] = 1'b1;
                        id_o.reg_read_addr[0] = rd;
                        id_o.reg_read_en[1] = 1'b1;
                        id_o.reg_read_addr[1] = rj;
                        id_o.csr_read_en = 1'b1;
                        id_o.csr_write_en = 1'b1;
                        inst_valid = 1'b1;
                    end
                endcase
            end
            default: begin
            end
        endcase


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
                id_o.aluop = `ALU_BLT;
                id_o.alusel = `ALU_SEL_JUMP_BRANCH;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[1] = rd;
                inst_valid = 1'b1;
            end
            `BGEU_OPCODE: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_BGE;
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

        case (opcode6)
            `ERTN_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_ERTN;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `RDCNTID_OPCDOE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rj;
                id_o.aluop = `ALU_RDCNTID;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.csr_read_en = 1'b1;
                id_o.csr_addr = 14'b01000000;
                id_o.csr_write_en = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBSRCH_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBSRCH;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBRD_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBRD;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBWR_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBWR;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBFILL_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBFILL;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase

        case (opcode7)
            `RDCNTVLW_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_RDCNTVLW;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `RDCNTVHW_OPCDOE: begin
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_RDCNTVHW;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            default: begin
            end
        endcase
    end

endmodule
