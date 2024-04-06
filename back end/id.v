`include "define.v"

module id (
    input wire rst,

    output reg pause_id,

    // Instruction memory
    input wire[`InstAddrWidth] pc_i,
    input wire[`InstWidth] inst_i,

    // Regfile input
    input wire[`RegWidth] reg1_data_i,
    input wire[`RegWidth] reg2_data_i,

    // Regfile output
    output reg reg1_read_en_o,
    output reg reg2_read_en_o,
    output reg[`RegAddrWidth] reg1_read_addr_o,
    output reg[`RegAddrWidth] reg2_read_addr_o,

    // Convert to ex stage
    output reg[`ALUOpWidth] aluop_o,
    output reg[`ALUSelWidth] alusel_o,
    output reg[`RegWidth] reg1_o,
    output reg[`RegWidth] reg2_o,
    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,

    // ex and mem data pushed forward
    input ex_reg_write_en_i,
    input[`RegAddrWidth] ex_reg_write_addr_i,
    input[`RegWidth] ex_reg_write_data_i,
    input mem_reg_write_en_i,
    input[`RegAddrWidth] mem_reg_write_addr_i,
    input[`RegWidth] mem_reg_write_data_i
);

    // Instruction fields
    wire[9: 0] opcode1 = inst_i[31: 22];
    wire[16: 0] opcode2 = inst_i[31: 15];
    wire[11: 0] ui12 = inst_i[21: 10];
    wire[11: 0] si12 = inst_i[21: 10];
    wire[4: 0] ui5 = inst_i[14: 10];
    wire[4: 0] rk = inst_i[14: 10];
    wire[4: 0] rj = inst_i[9: 5];
    wire[4: 0] rd = inst_i[4: 0];
    wire[14: 0] code = inst_i[14: 0];

    reg[`RegWidth] imm;
    reg inst_valid;

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
                default:begin
                end 
            endcase
        end
    end

    // Determine the number of source operands
    always @(*) begin
        if (rst) begin
            reg1_o = 32'b0;
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