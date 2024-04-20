`include "define.v"

module id (
    input wire rst,

    output wire pause_id,

    // Instruction memory
    input wire[`InstAddrWidth] pc_i,
    input wire[`InstWidth] inst_i,

    input wire[4: 0] is_exception_i,
    input wire[`FiveExceptionCauseWidth] exception_cause_i,

    output wire[4: 0] is_exception_o,
    output wire[`FiveExceptionCauseWidth] exception_cause_o,

    // from Regfile
    input wire[`RegWidth] reg1_data_i,
    input wire[`RegWidth] reg2_data_i,

    // to Regfile
    output reg reg1_read_en_o,
    output reg reg2_read_en_o,
    output reg[`RegAddrWidth] reg1_read_addr_o,
    output reg[`RegAddrWidth] reg2_read_addr_o,

    //to ex 
    output reg[`ALUOpWidth] aluop_o,
    output reg[`ALUSelWidth] alusel_o,
    output reg[`RegWidth] reg1_o,
    output reg[`RegWidth] reg2_o,
    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,
    output wire[`InstWidth] inst_o,
    output wire[`InstAddrWidth] pc_o,

    output reg csr_read_en_o,
    output reg csr_write_en_o,
    output reg[`CSRAddrWidth] csr_addr_o,

    // from ex
    input wire[`ALUOpWidth] ex_aluop_i,

    // ex and mem data pushed forward
    input wire ex_reg_write_en_i,
    input wire [`RegAddrWidth] ex_reg_write_addr_i,
    input wire [`RegWidth] ex_reg_write_data_i,
    input wire mem_reg_write_en_i,
    input wire [`RegAddrWidth] mem_reg_write_addr_i,
    input wire [`RegWidth] mem_reg_write_data_i,
    input wire mem_csr_write_en_i,
    input wire [`CSRAddrWidth] mem_csr_write_addr_i,
    input wire [`RegWidth] mem_csr_write_data_i,

    // branch
    output reg is_branch_o,
    output reg[`RegWidth] branch_target_addr_o,
    output reg[`RegWidth] reg_write_branch_data_o,
    output reg branch_flush_o,

    // from csr
    input wire[1: 0] CRMD_PLV
);

    assign inst_o = inst_i;
    assign pc_o = pc_i;

    wire[1: 0] CRMD_PLV_current;
    assign CRMD_PLV_current = (mem_csr_write_en_i && (mem_csr_write_addr_i == `CSR_CRMD))  
                          ? mem_csr_write_data_i: CRMD_PLV;

    // Instruction fields
    wire[9: 0] opcode1 = inst_i[31: 22];
    wire[16: 0] opcode2 = inst_i[31: 15];
    wire[6: 0] opcode3 = inst_i[31: 25];
    wire[7: 0] opcode4 = inst_i[31: 24];
    wire[5: 0] opcode5 = inst_i[31: 26];
    wire[21: 0] opcode6 = inst_i[31: 10];
    wire[26: 0] opcode7 = inst_i[31: 5];   

    wire[19: 0] si20 = inst_i[24: 5];
    wire[11: 0] ui12 = inst_i[21: 10];
    wire[11: 0] si12 = inst_i[21: 10];
    wire[13: 0] si14 = inst_i[23: 10];
    wire[4: 0] ui5 = inst_i[14: 10];

    wire[4: 0] rk = inst_i[14: 10];
    wire[4: 0] rj = inst_i[9: 5];
    wire[4: 0] rd = inst_i[4: 0];
    wire[14: 0] code = inst_i[14: 0];
    wire[13: 0] csr = inst_i[23: 10];
    wire[9: 0] level = inst_i[9: 0]; 

    wire[`RegWidth] branch16_addr;
    wire[`RegWidth] branch26_addr;

    assign branch16_addr = {{14{inst_i[25]}}, inst_i[25: 10], 2'b00};
    assign branch26_addr = {{4{inst_i[9]}}, inst_i[9: 0], inst_i[25: 10], 2'b00};

    reg[`RegWidth] imm;
    reg inst_valid;
    reg id_exception;
    reg[`ExceptionCauseWidth] id_exception_cause;
    reg reg1_lt_reg2;

    assign is_exception_o = {is_exception_i[4: 3], {((rst || inst_valid || inst_i == 32'b0) ? id_exception: 1'b1)}, is_exception_i[1: 0]};
    assign exception_cause_o = {exception_cause_i[34: 21], {((rst || inst_valid || inst_i == 32'b0) ? id_exception_cause: `EXCEPTION_INE)}, exception_cause_i[13: 0]};

    wire pause_reg1_load_relate;
    wire pause_reg2_load_relate;
    wire load_pre;

    assign load_pre = ((ex_aluop_i == `ALU_LDB) || (ex_aluop_i == `ALU_LDH) || (ex_aluop_i == `ALU_LDW) 
                    || (ex_aluop_i == `ALU_LDBU) || (ex_aluop_i == `ALU_LDHU) || (ex_aluop_i == `ALU_LLW)
                    || (ex_aluop_i == `ALU_SCW)) ? 1'b1 : 1'b0;

    assign pause_reg1_load_relate = (load_pre && (ex_reg_write_addr_i == reg1_read_addr_o) && reg1_read_en_o) ? 1'b1 : 1'b0;
    assign pause_reg2_load_relate = (load_pre && (ex_reg_write_addr_i == reg2_read_addr_o) && reg2_read_en_o) ? 1'b1 : 1'b0;

    assign pause_id = pause_reg1_load_relate || pause_reg2_load_relate;

    // Instruction decode
    always @(*) begin
        if (rst) begin
            aluop_o = `ALU_NOP;
            alusel_o = `ALU_SEL_NOP;
            reg_write_addr_o = 5'b0;
            reg_write_en_o = 1'b0;
            reg1_read_en_o = 1'b0;
            reg2_read_en_o = 1'b0;
            reg1_read_addr_o = 5'b0;
            reg2_read_addr_o = 5'b0;
            imm = 32'b0;
            inst_valid = 1'b0;
            is_branch_o = 1'b0;
            reg_write_branch_data_o = 32'b0;
            branch_target_addr_o = 5'b0;
            branch_flush_o = 1'b0;
            csr_read_en_o = 1'b0;
            csr_write_en_o = 1'b0;
            csr_addr_o = 14'b0;
            id_exception = 1'b0;
            id_exception_cause = `EXCEPTION_NOP;
        end
        else begin
            aluop_o = `ALU_NOP;
            alusel_o = `ALU_SEL_NOP;
            reg_write_addr_o = 5'b0;
            reg_write_en_o = 1'b0;
            inst_valid = 1'b0;
            reg1_read_en_o = 1'b0;
            reg2_read_en_o = 1'b0;
            reg1_read_addr_o = rj;
            reg2_read_addr_o = rk;
            imm = 32'b0;
            is_branch_o = 1'b0;
            reg_write_branch_data_o = 32'b0;
            branch_target_addr_o = 5'b0;
            branch_flush_o = 1'b0;
            csr_read_en_o = 1'b0;
            csr_write_en_o = 1'b0;
            csr_addr_o = csr;
            id_exception = 1'b0;
            id_exception_cause = `EXCEPTION_NOP;

            case (opcode1)
                `SLTI_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SLTI;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `SLTUI_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SLTUI;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `ADDIW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_ADDIW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `ANDI_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_ANDI;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {20'b0, ui12};
                    inst_valid = 1'b1;
                end
                `ORI_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_ORI;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {20'b0, ui12};
                    inst_valid = 1'b1;
                end
                `XORI_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_XORI;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {20'b0, ui12};
                    inst_valid = 1'b1;
                end
                `LDB_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LDB;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `LDH_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LDH;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `LDW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LDW;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `LDBU_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LDBU;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `LDHU_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LDHU;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{20{si12[11]}}, si12};
                    inst_valid = 1'b1;
                end
                `STB_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_STB;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                end
                `STH_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_STH;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                end
                `STW_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_STW;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                end
                default: begin
                end
            endcase

            case (opcode2)
                `ADDW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_ADDW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SUBW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SUBW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SLT_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SLT;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SLTU_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SLTU;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `NOR_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_NOR;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `AND_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_AND;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `OR_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_OR;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `XOR_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_XOR;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SLLW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SLLW;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SRLW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SRLW;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SRAW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SRAW;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `MULW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_MULW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `MULHW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_MULHW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `MULHWU_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_MULHWU;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `DIVW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_DIVW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `MODW_OPCODE:begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_MODW;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `DIVWU_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_DIVWU;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `MODWU_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_MODWU;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    inst_valid = 1'b1;
                end
                `SLLIW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SLLIW;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {27'b0, ui5};
                    inst_valid = 1'b1;
                end
                `SRLIW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SRLIW;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {27'b0, ui5};
                    inst_valid = 1'b1;
                end
                `SRAIW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SRAIW;
                    alusel_o = `ALU_SEL_SHIFT;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {27'b0, ui5};
                    inst_valid = 1'b1;
                end
                `BREAK_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BREAK;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    id_exception = 1'b1;
                    id_exception_cause = `EXCEPTION_BRK;
                    inst_valid = 1'b1;
                end
                `SYSCALL_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_SYSCALL;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    id_exception = 1'b1;
                    id_exception_cause = `EXCEPTION_SYS;
                    inst_valid = 1'b1;
                end
                `IDLE_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_IDLE;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0: 1'b1;
                    id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0: `EXCEPTION_IPE;
                    inst_valid = 1'b1;
                end
                default:begin
                end 
            endcase

            case (opcode3)
                `LU12I_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LU12I;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = 5'b0;
                    reg2_read_en_o = 1'b0;
                    imm = {si20, 12'b0};
                    inst_valid = 1'b1;
                end
                `PCADDU12I_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_PCADDU12I;
                    alusel_o = `ALU_SEL_ARITHMETIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {si20, 12'b0};
                    inst_valid = 1'b1;
                end
                default:begin
                end 
            endcase

            case (opcode4)
                `LLW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_LLW;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {{16{si14[13]}}, si14, 2'b00};
                    inst_valid = 1'b1;
                end
                `SCW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_SCW;
                    alusel_o = `ALU_SEL_LOAD_STORE;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                end
                `CSR_OPCODE: begin
                    id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0: 1'b1;  
                    id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0: `EXCEPTION_IPE;
                    case (rj)
                        `CSRRD_OPCODE: begin
                            reg_write_en_o = 1'b1;
                            reg_write_addr_o = rd;
                            aluop_o = `ALU_CSRRD;
                            alusel_o = `ALU_SEL_NOP;
                            reg1_read_en_o = 1'b0;
                            reg2_read_en_o = 1'b0;
                            csr_read_en_o = 1'b1;
                            csr_write_en_o = 1'b0;
                            inst_valid = 1'b1;
                        end 
                        `CSRWR_OPCODE: begin
                            reg_write_en_o = 1'b1;
                            reg_write_addr_o = rd;
                            aluop_o = `ALU_CSRWR;
                            alusel_o = `ALU_SEL_NOP;
                            reg1_read_en_o = 1'b1;
                            reg1_read_addr_o = rd;
                            reg2_read_en_o = 1'b0;
                            csr_read_en_o = 1'b1;
                            csr_write_en_o = 1'b1;
                            inst_valid = 1'b1;
                        end
                        default: begin
                            reg_write_en_o = 1'b1;
                            reg_write_addr_o = rd;
                            aluop_o = `ALU_CSRXCHG;
                            alusel_o = `ALU_SEL_NOP;
                            reg1_read_en_o = 1'b1;
                            reg1_read_addr_o = rd;
                            reg2_read_en_o = 1'b1;
                            reg2_read_addr_o = rj;
                            csr_read_en_o = 1'b1;
                            csr_write_en_o = 1'b1;
                            inst_valid = 1'b1;
                        end 
                    endcase
                end
                default: begin 
                end 
            endcase


            case (opcode5)
                `BEQ_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BEQ;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = rj;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                    if (reg1_o == reg2_o) begin
                        is_branch_o = 1'b1;
                        branch_target_addr_o = pc_i + branch16_addr;
                        branch_flush_o = 1'b1;
                    end
                    else begin
                        is_branch_o = 1'b0;
                        branch_flush_o = 1'b0;
                    end 
                end 
                `BNE_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BNE;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = rj;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                    if (reg1_o != reg2_o) begin
                        is_branch_o = 1'b1;
                        branch_target_addr_o = pc_i + branch16_addr;
                        branch_flush_o = 1'b1;
                    end
                    else begin
                        is_branch_o = 1'b0;
                        branch_flush_o = 1'b0;
                    end 
                end
                `BLT_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BLT;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = rj;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;

                    reg1_lt_reg2 = (reg1_o[31] && !reg2_o[31]) || (!reg1_o[31] && !reg2_o[31] && (reg1_o < reg2_o)) 
                                    || (reg1_o[31] && reg2_o[31] && (reg1_o > reg2_o));
                    if (reg1_lt_reg2) begin
                        is_branch_o = 1'b1;
                        branch_target_addr_o = pc_i + branch16_addr;
                        branch_flush_o = 1'b1;
                    end
                    else begin
                        is_branch_o = 1'b0;
                        branch_flush_o = 1'b0;
                    end 
                end
                `BGE_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BGE;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = rj;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;

                    reg1_lt_reg2 = (reg1_o[31] && !reg2_o[31]) || (!reg1_o[31] && !reg2_o[31] && (reg1_o < reg2_o)) 
                                    || (reg1_o[31] && reg2_o[31] && (reg1_o > reg2_o));
                    if (~reg1_lt_reg2) begin
                        is_branch_o = 1'b1;
                        branch_target_addr_o = pc_i + branch16_addr;
                        branch_flush_o = 1'b1;
                    end
                    else begin
                        is_branch_o = 1'b0;
                        branch_flush_o = 1'b0;
                    end 
                end
                `BLTU_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BLT;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = rj;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                    if (reg1_o < reg2_o) begin
                        is_branch_o = 1'b1;
                        branch_target_addr_o = pc_i + branch16_addr;
                        branch_flush_o = 1'b1;
                    end
                    else begin
                        is_branch_o = 1'b0;
                        branch_flush_o = 1'b0;
                    end 
                end
                `BGEU_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_BGE;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg1_read_addr_o = rj;
                    reg2_read_en_o = 1'b1;
                    reg2_read_addr_o = rd;
                    inst_valid = 1'b1;
                    if (reg1_o >= reg2_o) begin
                        is_branch_o = 1'b1;
                        branch_target_addr_o = pc_i + branch16_addr;
                        branch_flush_o = 1'b1;
                    end
                    else begin
                        is_branch_o = 1'b0;
                        branch_flush_o = 1'b0;
                    end 
                end
                `B_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_B;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                    is_branch_o = 1'b1;
                    branch_target_addr_o = pc_i + branch26_addr;
                    branch_flush_o = 1'b1;
                end
                `BL_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = 5'b00001;
                    reg_write_branch_data_o = pc_i + 4'h4;
                    aluop_o = `ALU_BL;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                    is_branch_o = 1'b1;
                    branch_target_addr_o = pc_i + branch26_addr;
                    branch_flush_o = 1'b1;
                end
                `JIRL_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    reg_write_branch_data_o = pc_i + 4'h4;
                    aluop_o = `ALU_JIRL;
                    alusel_o = `ALU_SEL_JUMP_BRANCH;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                    is_branch_o = 1'b1;
                    branch_target_addr_o = reg1_o + branch26_addr;
                    branch_flush_o = 1'b1;
                end
                default: begin
                end 
            endcase

            case (opcode6)
                `ERTN_OPCODE: begin
                    reg_write_en_o = 1'b0;
                    aluop_o = `ALU_ERTN;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                    id_exception = (CRMD_PLV_current == 2'b00) ? 1'b0: 1'b1;
                    id_exception_cause = (CRMD_PLV_current == 2'b00) ? 7'b0: `EXCEPTION_IPE;
                end 
                `RDCNTID_OPCDOE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rj;
                    aluop_o = `ALU_RDCNTID;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                end
                default: begin
                end 
            endcase

            case (opcode7) 
                `RDCNTVLW_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_RDCNTVLW;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                end
                `RDCNTVHW_OPCDOE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_RDCNTVHW;
                    alusel_o = `ALU_SEL_NOP;
                    reg1_read_en_o = 1'b0;
                    reg2_read_en_o = 1'b0;
                    inst_valid = 1'b1;
                end
                default: begin
                end
            endcase
        end
    end

    // Determine the number of source operands
    always @(*) begin
        if (rst) begin
            reg1_o = 32'b0;
        end
        else if (reg1_read_en_o && (opcode3 == `PCADDU12I_OPCODE)) begin
            reg1_o = pc_i;
        end
        else if (reg1_read_en_o && ex_reg_write_en_i && (ex_reg_write_addr_i == reg1_read_addr_o)) begin
            reg1_o = ex_reg_write_data_i;
        end
        else if (reg1_read_en_o && mem_reg_write_en_i && (mem_reg_write_addr_i == reg1_read_addr_o)) begin
            reg1_o = mem_reg_write_data_i;
        end
        else if (reg1_read_en_o) begin
            reg1_o = reg1_data_i;
        end 
        else if (!reg1_read_en_o) begin
            reg1_o = imm;
        end
        else begin
            reg1_o = 32'b0;
        end
    end

    always @(*) begin
        if (rst) begin
            reg2_o = 32'b0;
        end
        else if (reg2_read_en_o && ex_reg_write_en_i && (ex_reg_write_addr_i == reg2_read_addr_o)) begin
            reg2_o = ex_reg_write_data_i;
        end
        else if (reg2_read_en_o && mem_reg_write_en_i && (mem_reg_write_addr_i == reg2_read_addr_o)) begin
            reg2_o = mem_reg_write_data_i;
        end
        else if (reg2_read_en_o) begin
            reg2_o = reg2_data_i;
        end
        else if (!reg2_read_en_o) begin
            reg2_o = imm;
        end
        else begin
            reg2_o = 32'b0;
        end
    end



endmodule