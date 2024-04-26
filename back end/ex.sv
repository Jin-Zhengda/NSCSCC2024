`include "defines.sv"
`include "csr_defines.sv"

module ex 
    import pipeline_types::*;
(
    input dispatch_ex_t dispatch_ex,

    output logic pause_ex,
    output ex_mem_t ex_mem,

    ex_div master
);
    assign ex_mem.pc = dispatch_ex.pc;
    assign ex_mem.is_exception = dispatch_ex.is_exception;
    assign ex_mem.exception_cause = dispatch_ex.exception_cause;

    assign ex_mem.csr_read_en = dispatch_ex.csr_read_en;
    assign ex_mem.csr_write_en = dispatch_ex.csr_write_en;
    assign ex_mem.csr_addr = dispatch_ex.csr_addr;
    assign ex_mem.csr_write_data = dispatch_ex.reg1;
    assign ex_mem.csr_mask = dispatch_ex.reg2;

    assign ex_mem.aluop = dispatch_ex.aluop;
    assign ex_mem.store_data = dispatch_ex.reg2;

    logic[11: 0] si12;
    logic[13: 9] si14;

    assign si12 = dispatch_ex.inst[21: 10];
    assign si14 = dispatch_ex.inst[14: 10];
    
    always_comb begin
        case (dispatch_ex.aluop)
            `ALU_LDB, `ALU_LDBU, `ALU_LDH, `ALU_LDHU, `ALU_LDW, `ALU_LLW: begin
                ex_mem.mem_addr = dispatch_ex.reg1 + dispatch_ex.reg2;
            end
            `ALU_STB, `ALU_STH, `ALU_STW: begin
                ex_mem.mem_addr = dispatch_ex.reg1 + {{20{si12[11]}}, si12};
            end
            `ALU_SCW: begin
                ex_mem.mem_addr = dispatch_ex.reg1 + {{16{si14[13]}}, si14, 2'b00};
            end
            default: begin
                ex_mem.mem_addr = 32'b0;        
            end
        endcase
    end

    bus32_t logic_res;
    bus32_t shift_res;
    bus32_t move_res;
    bus32_t arithmetic_res;

    always_comb begin : logic_calculate
        case (dispatch_ex.aluop)
            `ALU_OR, `ALU_ORI, `ALU_LU12I: begin
                logic_res = dispatch_ex.reg1 | dispatch_ex.reg2;
            end
            `ALU_NOR: begin
                logic_res = ~(dispatch_ex.reg1 | dispatch_ex.reg2);
            end
            `ALU_AND, `ALU_ANDI: begin
                logic_res = dispatch_ex.reg1 & dispatch_ex.reg2;
            end
            `ALU_XOR, `ALU_XORI: begin
                logic_res = dispatch_ex.reg1 ^ dispatch_ex.reg2;
            end
            default: begin
                logic_res = 32'b0;
            end
        endcase
    end

    always_comb begin: shift_calculate
        case (dispatch_ex.aluop)
            `ALU_SLLW, `ALU_SLLIW: begin
                shift_res = dispatch_ex.reg1 << dispatch_ex.reg2[4:0];
            end
            `ALU_SRLW, `ALU_SRLIW: begin
                shift_res = dispatch_ex.reg1 >> dispatch_ex.reg2[4:0];
            end
            `ALU_SRAW, `ALU_SRAIW: begin
                shift_res = ({32{dispatch_ex.reg1[31]}} << (6'd32 - {1'b0, dispatch_ex.reg2[4: 0]})) | dispatch_ex.reg1 >> dispatch_ex.reg2[4:0];
            end
            default: begin
                shift_res = 32'b0;
            end
        endcase
    end

    logic reg1_eq_reg2;
    logic reg1_lt_reg2;
    bus32_t reg2_i_mux;
    bus32_t reg1_i_not;
    bus32_t sum_result;

    assign reg2_i_mux= ((dispatch_ex.aluop == `ALU_SUBW) || (dispatch_ex.aluop == `ALU_SLT)) ? ~dispatch_ex.reg2 + 1 : dispatch_ex.reg2;
    assign sum_result = dispatch_ex.reg1 + reg2_i_mux;
    assign reg1_lt_reg2 = ((dispatch_ex.aluop == `ALU_SLT) || (dispatch_ex.aluop == `ALU_SLTI)) ?
                            ((dispatch_ex.reg1[31] && !dispatch_ex.reg2[31]) || (!dispatch_ex.reg1[31] && !dispatch_ex.reg2[31] && sum_result[31]) || (dispatch_ex.reg1[31] && dispatch_ex.reg2[31] && sum_result[31])) 
                            : (dispatch_ex.reg1 < dispatch_ex.reg2);
    assign reg1_i_not = ~dispatch_ex.reg1;

    bus32_t mul_data1;
    bus32_t mul_data2;
    bus64_t mul_temp_result;
    bus64_t mul_result;

    assign mul_data1 = (((dispatch_ex.aluop == `ALU_MULW) || (dispatch_ex.aluop == `ALU_MULHW)) && dispatch_ex.reg1[31]) ? 
                        (~ dispatch_ex.reg1 + 1) : dispatch_ex.reg1;
    assign mul_data2 = (((dispatch_ex.aluop == `ALU_MULW) || (dispatch_ex.aluop == `ALU_MULHW)) && dispatch_ex.reg2[31]) ? 
                        (~ dispatch_ex.reg2 + 1) : dispatch_ex.reg2;
    assign mul_temp_result = mul_data1 * mul_data2;

    assign mul_result = (((dispatch_ex.aluop == `ALU_MULW) || (dispatch_ex.aluop == `ALU_MULHW)) 
                        && (dispatch_ex.reg1[31] ^ dispatch_ex.reg2[31])) ? (~mul_temp_result + 1) : mul_temp_result;

    logic pause_ex_div;

    always_comb begin: div_calculate
        case (dispatch_ex.aluop)
            `ALU_DIVW, `ALU_MODW: begin
                if (!master.div_done) begin
                    master.div_data1= dispatch_ex.reg1;
                    master.div_data2 = dispatch_ex.reg2;
                    master.div_start = 1'b1;
                    master.div_signed = 1'b1;
                    pause_ex_div = 1'b1;
                end 
                else if (master.div_done) begin
                    master.div_data1= dispatch_ex.reg1;
                    master.div_data2 = dispatch_ex.reg2;
                    master.div_start = 1'b0;
                    master.div_signed = 1'b1;
                    pause_ex_div = 1'b0;
                end
                else begin
                    master.div_data1= 32'b0;
                    master.div_data2 = 32'b0;
                    master.div_start = 1'b0;
                    master.div_signed = 1'b0;
                    pause_ex_div = 1'b0;
                end
            end 
            `ALU_DIVWU, `ALU_MODWU: begin
                if (!master.div_done) begin
                    master.div_data1= dispatch_ex.reg1;
                    master.div_data2 = dispatch_ex.reg2;
                    master.div_start = 1'b1;
                   master.div_signed = 1'b0;
                    pause_ex_div = 1'b1;
                end 
                else if (master.div_done) begin
                    master.div_data1= dispatch_ex.reg1;
                    master.div_data2 = dispatch_ex.reg2;
                    master.div_start = 1'b0;
                   master.div_signed = 1'b0;
                    pause_ex_div = 1'b0;
                end
                else begin
                    master.div_data1= 32'b0;
                    master.div_data2 = 32'b0;
                    master.div_start = 1'b0;
                   master.div_signed = 1'b0;
                    pause_ex_div = 1'b0;
                end
            end
            default: begin
            end
        endcase
    end

    assign pause_ex = pause_ex_div;

    always_comb begin: result
        case (dispatch_ex.aluop)
            `ALU_ADDW, `ALU_SUBW, `ALU_ADDIW, `ALU_PCADDU12I: begin
                arithmetic_res = sum_result;
            end
            `ALU_SLT, `ALU_SLTU, `ALU_SLTI, `ALU_SLTUI: begin
                arithmetic_res = reg1_lt_reg2;
            end
            `ALU_MULW: begin
                arithmetic_res = mul_result[31:0];
            end
            `ALU_MULHW, `ALU_MULHWU: begin
                arithmetic_res = mul_result[63:32];
            end
            `ALU_DIVW, `ALU_DIVWU: begin
                if(master.div_done) begin
                    arithmetic_res = master.div_result[31:0];
                end
            end
            `ALU_MODW, `ALU_MODWU: begin
                if (master.div_done) begin
                    arithmetic_res = master.div_result[63:32];
                end
            end
            default: begin
                arithmetic_res = 32'b0;
            end 
        endcase
    end

    always_comb begin: reg_write
        ex_mem.reg_write_addr = dispatch_ex.reg_write_addr;
        ex_mem.reg_write_en = dispatch_ex.reg_write_en;

        case (dispatch_ex.alusel)
            `ALU_SEL_LOGIC: begin
                ex_mem.reg_write_data = logic_res;
            end 
            `ALU_SEL_SHIFT: begin
                ex_mem.reg_write_data = shift_res;
            end
            `ALU_SEL_MOVE: begin
                ex_mem.reg_write_data = move_res;
            end
            `ALU_SEL_ARITHMETIC: begin
                ex_mem.reg_write_data = arithmetic_res;
            end
            `ALU_SEL_JUMP_BRANCH: begin
                ex_mem.reg_write_data = dispatch_ex.reg_write_branch_data;
            end
            default: begin
                ex_mem.reg_write_data = 32'b0;
            end
        endcase
    end

endmodule