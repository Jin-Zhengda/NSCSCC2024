`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_1RI20 
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,

    output logic inst_valid,
    output id_dispatch_t id_o
);


    logic [ 6:0] opcode;
    logic [19:0] si20;
    logic [ 4:0] rd;

    assign opcode = inst[31:25];
    assign si20 = inst[24:5];
    assign rd = inst[4:0];

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.is_exception = 3'b0;
    assign id_o.exception_cause = {3{`EXCEPTION_INE}};
    assign id_o.reg_write_addr = rd;
    assign id_o.is_privilege = 1'b0;
    assign id_o.reg_read_addr[0] = 5'b0;
    assign id_o.reg_read_addr[1] = 5'b0;
    assign id_o.csr_read_en = 1'b0;
    assign id_o.csr_write_en = 1'b0;
    assign id_o.csr_addr = 14'b0;
    assign id_o.is_cnt = 1'b0;
    assign id_o.invtlb_op = 5'b0;

    always_comb begin
        case (opcode)
            `LU12I_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_LU12I;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {si20, 12'b0};
                inst_valid = 1'b1;
            end
            `PCADDU12I_OPCODE: begin
                id_o.reg_write_en = 1'b1;
                id_o.aluop = `ALU_PCADDU12I;
                id_o.alusel = `ALU_SEL_ARITHMETIC;
                id_o.reg_read_en[0] = 1'b1;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = {si20, 12'b0};
                inst_valid = 1'b1;
            end
            default: begin
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                id_o.reg_read_en[0] = 1'b0;
                id_o.reg_read_en[1] = 1'b0;
                id_o.imm = 32'b0;
                inst_valid = 1'b0;
            end
        endcase
    end

endmodule