`timescale 1ns / 1ps
`include "core_defines.sv"

module regular_alu
    import pipeline_types::*;
(
    input alu_op_t  aluop,

    input  bus32_t reg1,
    input  bus32_t reg2,
    
    output bus32_t result
);

    logic   reg1_lt_reg2;
    bus32_t reg2_i_mux;
    bus32_t sum_result;

    assign reg2_i_mux = ((aluop == `ALU_SUBW) || (aluop == `ALU_SLT) || aluop == `ALU_SLTI) ? ~reg2 + 1 : reg2;
    assign sum_result = reg1 + reg2_i_mux;

    assign reg1_lt_reg2 = (( aluop == `ALU_SLT) || ( aluop == `ALU_SLTI)) ?
                            (( reg1[31] && !reg2[31]) || (!reg1[31] && !reg2[31] && sum_result[31]) || ( reg1[31] &&  reg2[31] && sum_result[31])) 
                            : ( reg1 < reg2);

    always_comb begin : result_assign
        case (aluop)
            `ALU_OR, `ALU_ORI, `ALU_LU12I: begin
                result = reg1 | reg2;
            end
            `ALU_NOR: begin
                result = ~(reg1 | reg2);
            end
            `ALU_AND, `ALU_ANDI: begin
                result = reg1 & reg2;
            end
            `ALU_XOR, `ALU_XORI: begin
                result = reg1 ^ reg2;
            end
            `ALU_SLLW, `ALU_SLLIW: begin
                result = reg1 << reg2[4:0];
            end
            `ALU_SRLW, `ALU_SRLIW: begin
                result = reg1 >> reg2[4:0];
            end
            `ALU_SRAW, `ALU_SRAIW: begin
                result = ({32{reg1[31]}} << (6'd32 - {1'b0, reg2[4:0]})) | reg1 >> reg2[4:0];
            end
            `ALU_ADDW, `ALU_SUBW, `ALU_ADDIW, `ALU_PCADDU12I: begin
                result = sum_result;
            end
            `ALU_SLT, `ALU_SLTU, `ALU_SLTI, `ALU_SLTUI: begin
                result = {31'b0, reg1_lt_reg2};
            end
            default: begin
                result = 32'b0;
            end
        endcase
    end
endmodule
