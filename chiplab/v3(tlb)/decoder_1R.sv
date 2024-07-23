`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_1R 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,
    input logic [5:0] is_exception,
    input logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause,

    output id_dispatch_t id_o
);

    logic [21:0] opcode6;
    logic [ 4:0] rj;

    assign opcode6 = inst[31:10];
    assign rj = inst[9:5];

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
                id_o.is_cnt = 1'b1;
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rj;
                id_o.aluop = `ALU_RDCNTID;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.csr_read_en = 1'b1;
                id_o.csr_addr = `CSR_TID;
                id_o.csr_write_en = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBSRCH_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBSRCH;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBRD_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBRD;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBWR_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBWR;
                id_o.alusel = `ALU_SEL_CSR;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                inst_valid = 1'b1;
            end
            `TLBFILL_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_TLBFILL;
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