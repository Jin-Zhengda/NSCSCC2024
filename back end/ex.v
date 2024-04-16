`include "define.v"

module ex (
    input wire rst,
    output wire pause_ex,

    // from id_ex
    input wire[`ALUSelWidth] alusel_i,
    input wire[`ALUOpWidth] aluop_i,
    input wire[`InstWidth] inst_i,
    input wire[`InstAddrWidth] pc_i,
    output wire[`InstAddrWidth] pc_o,

    input wire[`RegWidth] reg1_i,
    input wire[`RegWidth] reg2_i,
    input wire[`RegAddrWidth] reg_write_addr_i,
    input wire reg_write_en_i,

    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,
    output reg[`RegWidth] reg_write_data_o,

    input wire[4: 0] is_exception_i,
    input wire[`FiveExceptionCauseWidth] exception_cause_i,

    output wire[4: 0] is_exception_o,
    output wire[`FiveExceptionCauseWidth] exception_cause_o,

    // from div
    input wire[`DoubleRegWidth] div_result_i,
    input wire div_done_i,

    // to div
    output reg[`RegWidth] div_data1_o,
    output reg[`RegWidth] div_data2_o,
    output reg div_singed_o,
    output reg div_start_o,

    input wire[`RegWidth] reg_write_branch_data_i,

    output wire[`ALUOpWidth] aluop_o,
    output reg[`RegWidth] mem_addr_o,
    output wire[`RegWidth] store_data_o,

    input wire csr_read_en_i,
    input wire csr_write_en_i,
    input wire[`CSRAddrWidth] csr_addr_i,

    output wire csr_read_en_o,
    output wire csr_write_en_o,
    output wire[`CSRAddrWidth] csr_addr_o,
    output wire[`RegWidth] csr_write_data_o,
    output wire[`RegWidth] csr_mask_o
);
    assign pc_o = pc_i;

    assign is_exception_o = is_exception_i;
    assign exception_cause_o = exception_cause_i;

    assign csr_read_en_o = csr_read_en_i;
    assign csr_write_en_o = csr_write_en_i;
    assign csr_addr_o = csr_addr_i;
    assign csr_write_data_o = reg1_i;
    assign csr_mask_o = reg2_i;

    assign aluop_o = aluop_i;
    assign store_data_o = reg2_i;

    wire[11: 0] si12 = inst_i[21: 10];
    wire[13: 9] si14 = inst_i[14: 10];

    always @(*) begin
        if (rst) begin
            mem_addr_o = 32'b0;
        end
        else begin
            case (aluop_i)
                `ALU_LDB, `ALU_LDBU, `ALU_LDH, `ALU_LDHU, `ALU_LDW, `ALU_LLW: begin
                    mem_addr_o = reg1_i + reg2_i;
                end
                `ALU_STB, `ALU_STH, `ALU_STW: begin
                    mem_addr_o = reg1_i + {{20{si12[11]}}, si12};
                end
                `ALU_SCW: begin
                    mem_addr_o = reg1_i + {{16{si14[13]}}, si14, 2'b00};
                end
                default: begin
                    mem_addr_o = 32'b0;        
                end
            endcase
        end
    end

    reg[`RegWidth] logic_res;
    reg[`RegWidth] shift_res;
    reg[`RegWidth] move_res;
    reg[`RegWidth] arithmetic_res;

    always @(*) begin
        if (rst) begin
            logic_res = 32'b0;
        end
        else begin
            case (aluop_i)
                `ALU_OR, `ALU_ORI, `ALU_LU12I: begin
                    logic_res = reg1_i | reg2_i;
                end
                `ALU_NOR: begin
                    logic_res = ~(reg1_i | reg2_i);
                end
                `ALU_AND, `ALU_ANDI: begin
                    logic_res = reg1_i & reg2_i;
                end
                `ALU_XOR, `ALU_XORI: begin
                    logic_res = reg1_i ^ reg2_i;
                end
                default: begin
                    logic_res = 32'b0;
                end
            endcase
        end
    end

    always @(*) begin
        if (rst) begin
            shift_res = 32'b0;
        end
        else begin
            case (aluop_i)
                `ALU_SLLW, `ALU_SLLIW: begin
                    shift_res = reg1_i << reg2_i[4:0];
                end
                `ALU_SRLW, `ALU_SRLIW: begin
                    shift_res = reg1_i >> reg2_i[4:0];
                end
                `ALU_SRAW, `ALU_SRAIW: begin
                    shift_res = ({32{reg1_i[31]}} << (6'd32 - {1'b0, reg2_i[4: 0]})) | reg1_i >> reg2_i[4:0];
                end
                default: begin
                    shift_res = 32'b0;
                end
            endcase
        end
    end

    wire reg1_eq_reg2;
    wire reg1_lt_reg2;
    wire[`RegWidth] reg2_i_mux;
    wire[`RegWidth] reg1_i_not;
    wire[`RegWidth] sum_result;

    assign reg2_i_mux= ((aluop_i == `ALU_SUBW) || (aluop_i == `ALU_SLT)) ? ~reg2_i + 1 : reg2_i;
    assign sum_result = reg1_i + reg2_i_mux;
    assign reg1_lt_reg2 = ((aluop_i == `ALU_SLT) || (aluop_i == `ALU_SLTI)) ?
                            ((reg1_i[31] && !reg2_i[31]) || (!reg1_i[31] && !reg2_i[31] && sum_result[31]) || (reg1_i[31] && reg2_i[31] && sum_result[31])) 
                            : (reg1_i < reg2_i);
    assign reg1_i_not = ~reg1_i;

    wire[`RegWidth] mul_data1;
    wire[`RegWidth] mul_data2;
    wire[`DoubleRegWidth] mul_temp_result;
    wire[`DoubleRegWidth] mul_result;

    assign mul_data1 = (((aluop_i == `ALU_MULW) || (aluop_i == `ALU_MULHW)) && reg1_i[31]) ? 
                        (~ reg1_i + 1) : reg1_i;
    assign mul_data2 = (((aluop_i == `ALU_MULW) || (aluop_i == `ALU_MULHW)) && reg2_i[31]) ? 
                        (~ reg2_i + 1) : reg2_i;
    assign mul_temp_result = mul_data1 * mul_data2;

    assign mul_result = (((aluop_i == `ALU_MULW) || (aluop_i == `ALU_MULHW)) 
                        && (reg1_i[31] ^ reg2_i[31])) ? (~mul_temp_result + 1) : mul_temp_result;

    reg pause_ex_div;

    always @(*) begin
        if (rst) begin
            pause_ex_div = 1'b0;
            div_data1_o = 32'b0;
            div_data2_o = 32'b0;
            div_start_o = 1'b0;
            div_singed_o = 1'b0;
        end
        else begin
            pause_ex_div = 1'b0;
            div_data1_o = 32'b0;
            div_data2_o = 32'b0;
            div_start_o = 1'b0;
            div_singed_o = 1'b0;

            case (aluop_i)
                `ALU_DIVW, `ALU_MODW: begin
                    if (~div_done_i) begin
                        div_data1_o = reg1_i;
                        div_data2_o = reg2_i;
                        div_start_o = 1'b1;
                        div_singed_o = 1'b1;
                        pause_ex_div = 1'b1;
                    end 
                    else if (div_done_i) begin
                        div_data1_o = reg1_i;
                        div_data2_o = reg2_i;
                        div_start_o = 1'b0;
                        div_singed_o = 1'b1;
                        pause_ex_div = 1'b0;
                    end
                    else begin
                        div_data1_o = 32'b0;
                        div_data2_o = 32'b0;
                        div_start_o = 1'b0;
                        div_singed_o = 1'b0;
                        pause_ex_div = 1'b0;
                    end
                end 
                `ALU_DIVWU, `ALU_MODWU: begin
                    if (~div_done_i) begin
                        div_data1_o = reg1_i;
                        div_data2_o = reg2_i;
                        div_start_o = 1'b1;
                        div_singed_o = 1'b0;
                        pause_ex_div = 1'b1;
                    end 
                    else if (div_done_i) begin
                        div_data1_o = reg1_i;
                        div_data2_o = reg2_i;
                        div_start_o = 1'b0;
                        div_singed_o = 1'b0;
                        pause_ex_div = 1'b0;
                    end
                    else begin
                        div_data1_o = 32'b0;
                        div_data2_o = 32'b0;
                        div_start_o = 1'b0;
                        div_singed_o = 1'b0;
                        pause_ex_div = 1'b0;
                    end
                end
                default: begin
                end
            endcase
        end
    end

    assign pause_ex = pause_ex_div;

    always @(*) begin
        if (rst) begin
            arithmetic_res = 32'b0;
        end
        else begin
            case (aluop_i)
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
                    if(div_done_i) begin
                        arithmetic_res = div_result_i[31:0];
                    end
                end
                `ALU_MODW, `ALU_MODWU: begin
                    if (div_done_i) begin
                        arithmetic_res = div_result_i[63:32];
                    end
                end
                default: begin
                    arithmetic_res = 32'b0;
                end 
            endcase
        end
    end

    always @(*) begin
        reg_write_addr_o = reg_write_addr_i;
        reg_write_en_o = reg_write_en_i;

        case (alusel_i)
            `ALU_SEL_LOGIC: begin
                reg_write_data_o = logic_res;
            end 
            `ALU_SEL_SHIFT: begin
                reg_write_data_o = shift_res;
            end
            `ALU_SEL_MOVE: begin
                reg_write_data_o = move_res;
            end
            `ALU_SEL_ARITHMETIC: begin
                reg_write_data_o = arithmetic_res;
            end
            `ALU_SEL_JUMP_BRANCH: begin
                reg_write_data_o = reg_write_branch_data_i;
            end
            default: begin
                reg_write_data_o = 32'b0;
            end
        endcase
    end

endmodule