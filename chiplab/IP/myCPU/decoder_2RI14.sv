`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_2RI14 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,

    output logic inst_valid,
    output id_dispatch_t id_o
);

    logic [ 7:0] opcode;
    logic [ 4:0] rj;
    logic [ 4:0] rd;
    logic [13:0] si14;
    logic [13:0] csr;

    assign opcode = inst[31:24];
    assign rj = inst[9:5];
    assign rd = inst[4:0];
    assign si14 = inst[23:10];
    assign csr = inst[23:10];

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.is_exception = 3'b0;
    assign id_o.exception_cause = {3{`EXCEPTION_INE}};
    assign id_o.reg_write_addr = rd;
    assign id_o.is_cnt = 1'b0;


    always_comb begin
        case (opcode)
            `LLW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LLW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = rj;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.csr_read_en = 1'b1;
                id_o.csr_write_en = 1'b0;
                id_o.csr_addr = `CSR_LLBCTL;
                id_o.imm = {{16{si14[13]}}, si14, 2'b00};
                inst_valid = 1'b1;
            end
            `SCW_OPCODE: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_SCW;
                id_o.alusel = `ALU_SEL_LOAD_STORE;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b1;
                id_o.reg_read_addr[0] = 5'b0;
                id_o.reg_read_addr[1] = rd;
                id_o.csr_read_en = 1'b1;
                id_o.csr_write_en = 1'b0;
                id_o.csr_addr = `CSR_LLBCTL;
                id_o.imm = 32'b0;
                inst_valid = 1'b1;
            end
            `CSR_OPCODE: begin
                id_o.is_privilege = 1'b1;
                id_o.csr_addr = csr;
                inst_valid = 1'b1;
                id_o.imm = 32'b0;
                case (rj)
                    `CSRRD_OPCODE: begin
                        id_o.reg_write_en = 1'b1;
                        id_o.aluop = `ALU_CSRRD;
                        id_o.alusel = `ALU_SEL_CSR;
                        id_o.reg_read_en[0] = 1'b0;
                        id_o.reg_read_en[1] = 1'b0;
                        id_o.reg_read_addr[0] = 5'b0;
                        id_o.reg_read_addr[1] = 5'b0;
                        id_o.csr_read_en = 1'b1;
                        id_o.csr_write_en = 1'b0;
                    end
                    `CSRWR_OPCODE: begin
                        id_o.reg_write_en = 1'b1;
                        id_o.aluop = `ALU_CSRWR;
                        id_o.alusel = `ALU_SEL_CSR;
                        id_o.reg_read_en[0] = 1'b1;
                        id_o.reg_read_en[1] = 1'b0;
                        id_o.reg_read_addr[0] = rd;
                        id_o.reg_read_addr[1] = 5'b0;
                        id_o.csr_read_en = 1'b1;
                        id_o.csr_write_en = 1'b1;
                    end
                    default: begin
                        id_o.reg_write_en = 1'b1;
                        id_o.aluop = `ALU_CSRXCHG;
                        id_o.alusel = `ALU_SEL_CSR;
                        id_o.reg_read_en[0] = 1'b1;
                        id_o.reg_read_en[1] = 1'b1;
                        id_o.reg_read_addr[0] = rd;
                        id_o.reg_read_addr[1] = rj;
                        id_o.csr_read_en = 1'b1;
                        id_o.csr_write_en = 1'b1;
                    end
                endcase
            end
            default: begin
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.reg_read_addr[0] = 5'b0;
                id_o.reg_read_addr[1] = 5'b0;
                id_o.csr_read_en = 1'b0;
                id_o.csr_write_en = 1'b0;
                id_o.csr_addr = 14'b0;
                id_o.imm = 32'b0;
                inst_valid = 1'b0;
            end
        endcase
    end

endmodule