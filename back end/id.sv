`include "defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"

module id
  import pipeline_types::*;
(
    input pc_id_t pc_id,

    input logic [1:0] CRMD_PLV,
    input csr_push_forward_t csr_push_forward,

    output logic pause_id,
    output id_dispatch_t id_dispatch
);

  assign id_dispatch.pc = pc_id.pc;
  assign id_dispatch.inst = pc_id.inst;
  assign id_dispatch.pre_is_branch = pc_id.pre_is_branch;
  assign id_dispatch.pre_is_branch_taken = pc_id.pre_is_branch_taken;
  assign id_dispatch.pre_branch_addr = pc_id.pre_branch_addr;

  logic [1:0] CRMD_PLV_current;
  assign CRMD_PLV_current = (csr_push_forward.csr_write_en && csr_push_forward.csr_write_addr == `CSR_CRMD) 
                                ? csr_push_forward.csr_write_data : CRMD_PLV;

  // select inst feild
  logic [9:0] opcode1;
  logic [16:0] opcode2;
  logic [6:0] opcode3;
  logic [7:0] opcode4;
  logic [5:0] opcode5;
  logic [21:0] opcode6;
  logic [26:0] opcode7;

  logic [19:0] si20;
  logic [11:0] ui12;
  logic [11:0] si12;
  logic [13:0] si14;
  logic [4:0] ui5;

  logic [4:0] rk;
  logic [4:0] rj;
  logic [4:0] rd;
  logic [14:0] code;
  logic [13:0] csr;
  logic [9:0] level;

  assign opcode1 = pc_id.inst[31:22];
  assign opcode2 = pc_id.inst[31:15];
  assign opcode3 = pc_id.inst[31:25];
  assign opcode4 = pc_id.inst[31:24];
  assign opcode5 = pc_id.inst[31:26];
  assign opcode6 = pc_id.inst[31:10];
  assign opcode7 = pc_id.inst[31:5];

  assign si20 = pc_id.inst[24:5];
  assign ui12 = pc_id.inst[21:10];
  assign si12 = pc_id.inst[21:10];
  assign si14 = pc_id.inst[23:10];
  assign ui5 = pc_id.inst[14:10];

  assign rk = pc_id.inst[14:10];
  assign rj = pc_id.inst[9:5];
  assign rd = pc_id.inst[4:0];
  assign code = pc_id.inst[14:0];
  assign csr = pc_id.inst[23:10];
  assign level = pc_id.inst[9:0];

  logic inst_valid;
  logic id_exception;
  exception_cause_t id_exception_cause;

  assign id_dispatch.is_exception = {
    pc_id.is_exception[5: 3],
    {((inst_valid || pc_id.inst == 32'b0) ? id_exception : 1'b1)},
    pc_id.is_exception[1: 0]
  };
  assign id_dispatch.exception_cause = {
    pc_id.exception_cause[5: 3],
    {((inst_valid || pc_id.inst == 32'b0) ? id_exception_cause : `EXCEPTION_INE)},
    pc_id.exception_cause[1: 0]
  };

  always_comb begin
      id_dispatch.aluop = `ALU_NOP;
      id_dispatch.alusel = `ALU_SEL_NOP;
      id_dispatch.reg_write_addr = 5'b0;
      id_dispatch.reg_write_en = 1'b0;
      inst_valid = 1'b0;
      id_dispatch.reg1_read_en = 1'b0;
      id_dispatch.reg2_read_en = 1'b0;
      id_dispatch.reg1_read_addr = rj;
      id_dispatch.reg2_read_addr = rk;
      id_dispatch.imm = 32'b0;
      id_dispatch.csr_read_en = 1'b0;
      id_dispatch.csr_write_en = 1'b0;
      id_dispatch.csr_addr = csr;
      id_exception = 1'b0;
      id_exception_cause = `EXCEPTION_NOP;
      id_dispatch.cacop_code = 5'b0;

      case (opcode1)
        `SLTI_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SLTI;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `SLTUI_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SLTUI;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `ADDIW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_ADDIW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `ANDI_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_ANDI;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {20'b0, ui12};
          inst_valid = 1'b1;
        end
        `ORI_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_ORI;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {20'b0, ui12};
          inst_valid = 1'b1;
        end
        `XORI_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_XORI;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {20'b0, ui12};
          inst_valid = 1'b1;
        end
        `LDB_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LDB;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `LDH_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LDH;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `LDW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LDW;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `LDBU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LDBU;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `LDHU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LDHU;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `STB_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_STB;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `STH_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_STH;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `STW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_STW;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `PRELD_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_PRELD;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          inst_valid = 1'b1;
        end
        `CACOP_OPCODE: begin
          id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0 : 1'b1;
          id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0 : `EXCEPTION_IPE;
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_CACOP;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{20{si12[11]}}, si12};
          id_dispatch.cacop_code = rd;
          inst_valid = 1'b1;
        end
        default: begin
        end
      endcase

      case (opcode2)
        `ADDW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_ADDW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SUBW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SUBW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SLT_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SLT;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SLTU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SLTU;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `NOR_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_NOR;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `AND_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_AND;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `OR_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_OR;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `XOR_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_XOR;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SLLW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SLLW;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SRLW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SRLW;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SRAW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SRAW;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `MULW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_MULW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `MULHW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_MULHW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `MULHWU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_MULHWU;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `DIVW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_DIVW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `MODW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_MODW;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `DIVWU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_DIVWU;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `MODWU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_MODWU;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          inst_valid = 1'b1;
        end
        `SLLIW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SLLIW;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {27'b0, ui5};
          inst_valid = 1'b1;
        end
        `SRLIW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SRLIW;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {27'b0, ui5};
          inst_valid = 1'b1;
        end
        `SRAIW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SRAIW;
          id_dispatch.alusel = `ALU_SEL_SHIFT;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {27'b0, ui5};
          inst_valid = 1'b1;
        end
        `BREAK_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BREAK;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          id_exception = 1'b1;
          id_exception_cause = `EXCEPTION_BRK;
          inst_valid = 1'b1;
        end
        `SYSCALL_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_SYSCALL;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          id_exception = 1'b1;
          id_exception_cause = `EXCEPTION_SYS;
          inst_valid = 1'b1;
        end
        `IDLE_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_IDLE;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0 : 1'b1;
          id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0 : `EXCEPTION_IPE;
          inst_valid = 1'b1;
        end
        default: begin
        end
      endcase

      case (opcode3)
        `LU12I_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LU12I;
          id_dispatch.alusel = `ALU_SEL_LOGIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = 5'b0;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {si20, 12'b0};
          inst_valid = 1'b1;
        end
        `PCADDU12I_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_PCADDU12I;
          id_dispatch.alusel = `ALU_SEL_ARITHMETIC;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {si20, 12'b0};
          inst_valid = 1'b1;
        end
        default: begin
        end
      endcase

      case (opcode4)
        `LLW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_LLW;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          id_dispatch.imm = {{16{si14[13]}}, si14, 2'b00};
          inst_valid = 1'b1;
        end
        `SCW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_SCW;
          id_dispatch.alusel = `ALU_SEL_LOAD_STORE;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `CSR_OPCODE: begin
          id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0 : 1'b1;
          id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0 : `EXCEPTION_IPE;
          case (rj)
            `CSRRD_OPCODE: begin
              id_dispatch.reg_write_en = 1'b1;
              id_dispatch.reg_write_addr = rd;
              id_dispatch.aluop = `ALU_CSRRD;
              id_dispatch.alusel = `ALU_SEL_NOP;
              id_dispatch.reg1_read_en = 1'b0;
              id_dispatch.reg2_read_en = 1'b0;
              id_dispatch.csr_read_en = 1'b1;
              id_dispatch.csr_write_en = 1'b0;
              inst_valid = 1'b1;
            end
            `CSRWR_OPCODE: begin
              id_dispatch.reg_write_en = 1'b1;
              id_dispatch.reg_write_addr = rd;
              id_dispatch.aluop = `ALU_CSRWR;
              id_dispatch.alusel = `ALU_SEL_NOP;
              id_dispatch.reg1_read_en = 1'b1;
              id_dispatch.reg1_read_addr = rd;
              id_dispatch.reg2_read_en = 1'b0;
              id_dispatch.csr_read_en = 1'b1;
              id_dispatch.csr_write_en = 1'b1;
              inst_valid = 1'b1;
            end
            default: begin
              id_dispatch.reg_write_en = 1'b1;
              id_dispatch.reg_write_addr = rd;
              id_dispatch.aluop = `ALU_CSRXCHG;
              id_dispatch.alusel = `ALU_SEL_NOP;
              id_dispatch.reg1_read_en = 1'b1;
              id_dispatch.reg1_read_addr = rd;
              id_dispatch.reg2_read_en = 1'b1;
              id_dispatch.reg2_read_addr = rj;
              id_dispatch.csr_read_en = 1'b1;
              id_dispatch.csr_write_en = 1'b1;
              inst_valid = 1'b1;
            end
          endcase
        end
        default: begin
        end
      endcase


      case (opcode5)
        `BEQ_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BEQ;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = rj;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `BNE_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BNE;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = rj;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `BLT_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BLT;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = rj;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `BGE_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BGE;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = rj;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `BLTU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BLT;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = rj;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `BGEU_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_BGE;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg1_read_addr = rj;
          id_dispatch.reg2_read_en = 1'b1;
          id_dispatch.reg2_read_addr = rd;
          inst_valid = 1'b1;
        end
        `B_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_B;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
        end
        `BL_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = 5'b00001;
          id_dispatch.aluop = `ALU_BL;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
        end
        `JIRL_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_JIRL;
          id_dispatch.alusel = `ALU_SEL_JUMP_BRANCH;
          id_dispatch.reg1_read_en = 1'b1;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
        end
        default: begin
        end
      endcase

      case (opcode6)
        `ERTN_OPCODE: begin
          id_dispatch.reg_write_en = 1'b0;
          id_dispatch.aluop = `ALU_ERTN;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
          id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0 : 1'b1;
          id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0 : `EXCEPTION_IPE;
        end
        `RDCNTID_OPCDOE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rj;
          id_dispatch.aluop = `ALU_RDCNTID;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
        end
        default: begin
        end
      endcase

      case (opcode7)
        `RDCNTVLW_OPCODE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_RDCNTVLW;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
        end
        `RDCNTVHW_OPCDOE: begin
          id_dispatch.reg_write_en = 1'b1;
          id_dispatch.reg_write_addr = rd;
          id_dispatch.aluop = `ALU_RDCNTVHW;
          id_dispatch.alusel = `ALU_SEL_NOP;
          id_dispatch.reg1_read_en = 1'b0;
          id_dispatch.reg2_read_en = 1'b0;
          inst_valid = 1'b1;
        end
        default: begin
        end
      endcase
  end

endmodule
