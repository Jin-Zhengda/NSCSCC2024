`include "define.v"

module id (
    input wire rst,

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
    output reg reg_write_en_o
);

    // Instruction fields
    wire[9: 0] opcode1 = inst_i[31: 22];
    wire[11: 0] i12 = inst_i[21: 10];
    wire[4: 0] rk = inst_i[14: 10];
    wire[4: 0] rj = inst_i[9: 5];
    wire[4: 0] rd = inst_i[4: 0];

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
                `ORI_OPCODE: begin
                    reg_write_en_o = 1'b1;
                    reg_write_addr_o = rd;
                    aluop_o = `ALU_ORI;
                    alusel_o = `ALU_SEL_LOGIC;
                    reg1_read_en_o = 1'b1;
                    reg2_read_en_o = 1'b0;
                    imm = {20'b0, i12};
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