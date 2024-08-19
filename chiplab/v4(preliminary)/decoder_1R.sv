`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module decoder_1R
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,

    output logic inst_valid,
    output id_dispatch_t id_o
);

    logic [21:0] opcode;
    logic [ 4:0] rj;
    logic [ 4:0] rd;

    assign opcode = inst[31:10];
    assign rj = inst[9:5];
    assign rd = inst[4:0];

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.is_exception = 3'b0;
    assign id_o.exception_cause = {3{`EXCEPTION_INE}};
    assign id_o.reg_read_en[0] = 1'b0;
    assign id_o.reg_read_en[1] = 1'b0;
    assign id_o.reg_read_addr[0] = 5'b0;
    assign id_o.reg_read_addr[1] = 5'b0;
    assign id_o.csr_addr = `CSR_TID;
    assign id_o.imm = 32'b0;
    assign id_o.csr_write_en = 1'b0;
    assign id_o.invtlb_op = 5'b0;

    always_comb begin
        case (opcode)
            `ERTN_OPCODE: begin
                id_o.is_cnt = 1'b0;
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_ERTN;
                id_o.alusel = `ALU_SEL_NOP;
                inst_valid = 1'b1;
                id_o.csr_read_en = 1'b0;
            end
            `RDCNTID_OPCDOE: begin
                id_o.is_cnt = 1'b1;
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.alusel = `ALU_SEL_CSR;
                inst_valid = 1'b1;
                if (rj == 5'b0) begin
                    id_o.reg_write_addr = rd;
                    id_o.aluop = `ALU_RDCNTVLW;
                    id_o.csr_read_en = 1'b0;
                end else begin
                    id_o.reg_write_addr = rj;
                    id_o.aluop = `ALU_RDCNTID;
                    id_o.csr_read_en = 1'b1;
                end
            end
            `RDCNTVHW_OPCDOE: begin
                id_o.is_cnt = 1'b1;
                id_o.is_privilege = 1'b0;
                id_o.reg_write_en = 1'b1;
                id_o.reg_write_addr = rd;
                id_o.aluop = `ALU_RDCNTVHW;
                id_o.alusel = `ALU_SEL_CSR;
                inst_valid = 1'b1;
                id_o.csr_read_en = 1'b0;
            end
            `TLBSRCH_OPCODE: begin
                id_o.is_cnt = 1'b0;
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_TLBSRCH;
                id_o.alusel = `ALU_SEL_CSR;
                inst_valid = 1'b1;
                id_o.csr_read_en = 1'b0;
            end
            `TLBRD_OPCODE: begin
                id_o.is_cnt = 1'b0;
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_TLBRD;
                id_o.alusel = `ALU_SEL_CSR;
                inst_valid = 1'b1;
                id_o.csr_read_en = 1'b0;
            end
            `TLBWR_OPCODE: begin
                id_o.is_cnt = 1'b0;
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_TLBWR;
                id_o.alusel = `ALU_SEL_CSR;
                inst_valid = 1'b1;
                id_o.csr_read_en = 1'b0;
            end
            `TLBFILL_OPCODE: begin
                id_o.is_cnt = 1'b0;
                id_o.is_privilege = 1'b1;
                id_o.reg_write_en = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.aluop = `ALU_TLBFILL;
                id_o.alusel = `ALU_SEL_CSR;
                inst_valid = 1'b1;
                id_o.csr_read_en = 1'b0;
            end
            default: begin
                id_o.is_cnt = 1'b0;
                id_o.is_privilege = 1'b0;
                id_o.reg_write_addr = 5'b0;
                id_o.reg_write_en = 1'b0;
                id_o.aluop = `ALU_NOP;
                id_o.alusel = `ALU_SEL_NOP;
                inst_valid = 1'b0;
                id_o.csr_read_en = 1'b0;
            end
        endcase
    end

endmodule
