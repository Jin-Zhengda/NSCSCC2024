`timescale 1ns / 1ps
`include "core_defines.sv"

module regular_alu
    import pipeline_types::*;
(
    input alu_op_t  aluop,
    input alu_sel_t alusel,

    input  bus32_t reg1,
    input  bus32_t reg2,
    
    output bus32_t result
);

    bus32_t logic_res;
    bus32_t shift_res;
    bus32_t arithmetic_res;

    always_comb begin : logic_calculate
        case (aluop)
            `ALU_OR, `ALU_ORI, `ALU_LU12I: begin
                logic_res = reg1 | reg2;
            end
            `ALU_NOR: begin
                logic_res = ~(reg1 | reg2);
            end
            `ALU_AND, `ALU_ANDI: begin
                logic_res = reg1 & reg2;
            end
            `ALU_XOR, `ALU_XORI: begin
                logic_res = reg1 ^ reg2;
            end
            default: begin
                logic_res = 32'b0;
            end
        endcase
    end

    always_comb begin : shift_calculate
        case (aluop)
            `ALU_SLLW, `ALU_SLLIW: begin
                shift_res = reg1 << reg2[4:0];
            end
            `ALU_SRLW, `ALU_SRLIW: begin
                shift_res = reg1 >> reg2[4:0];
            end
            `ALU_SRAW, `ALU_SRAIW: begin
                shift_res = ({32{reg1[31]}} << (6'd32 - {1'b0, reg2[4:0]})) | reg1 >> reg2[4:0];
            end
            default: begin
                shift_res = 32'b0;
            end
        endcase
    end

    logic   reg1_lt_reg2;
    bus32_t reg2_i_mux;
    bus32_t sum_result;

    assign reg2_i_mux = ((aluop == `ALU_SUBW) || (aluop == `ALU_SLT) || aluop == `ALU_SLTI) ? ~reg2 + 1 : reg2;
    assign sum_result = reg1 + reg2_i_mux;

    assign reg1_lt_reg2 = (( aluop == `ALU_SLT) || ( aluop == `ALU_SLTI)) ?
                            (( reg1[31] && !reg2[31]) || (!reg1[31] && !reg2[31] && sum_result[31]) || ( reg1[31] &&  reg2[31] && sum_result[31])) 
                            : ( reg1 < reg2);

    // mul 
    bus32_t mul_data1;
    bus32_t mul_data2;
    bus64_t mul_temp_result;
    bus64_t mul_result;

    assign mul_data1 = ((( aluop == `ALU_MULW) || ( aluop == `ALU_MULHW)) &&  reg1[31]) ? 
                        (~reg1 + 1) :  reg1;
    assign mul_data2 = ((( aluop == `ALU_MULW) || ( aluop == `ALU_MULHW)) &&  reg2[31]) ? 
                        (~reg2 + 1) :  reg2;
    assign mul_temp_result = mul_data1 * mul_data2;

    assign mul_result = ((( aluop == `ALU_MULW) || ( aluop == `ALU_MULHW)) 
                        && ( reg1[31] ^  reg2[31])) ? (~mul_temp_result + 1) : mul_temp_result;

    always_comb begin : result_assign
        case (aluop)
            `ALU_ADDW, `ALU_SUBW, `ALU_ADDIW, `ALU_PCADDU12I: begin
                arithmetic_res = sum_result;
            end
            `ALU_SLT, `ALU_SLTU, `ALU_SLTI, `ALU_SLTUI: begin
                arithmetic_res = {31'b0, reg1_lt_reg2};
            end
            `ALU_MULW: begin
                arithmetic_res = mul_result[31:0];
            end
            `ALU_MULHW, `ALU_MULHWU: begin
                arithmetic_res = mul_result[63:32];
            end
            default: begin
                arithmetic_res = 32'b0;
            end
        endcase
    end

    always_comb begin
        case (alusel)
            `ALU_SEL_LOGIC: begin
                result = logic_res;
            end
            `ALU_SEL_SHIFT: begin
                result = shift_res;
            end
            `ALU_SEL_ARITHMETIC: begin
                result = arithmetic_res;
            end
            default: begin
                result = 32'b0;
            end
        endcase
    end
endmodule
