`include "define.v"

module ex (
    input wire rst,
    output reg pause_ex,

    input wire[`ALUSelWidth] alusel_i,
    input wire[`ALUOpWidth] aluop_i,

    input wire[`RegWidth] reg1_i,
    input wire[`RegWidth] reg2_i,
    input wire[`RegAddrWidth] reg_write_addr_i,
    input wire reg_write_en_i,

    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,
    output reg[`RegWidth] reg_write_data_o,

    input wire[`DoubleRegWidth] div_result_i,
    input wire div_done_i,
    output reg[`RegWidth] div_data1_o,
    output reg[`RegWidth] div_data2_o,
    output reg div_singed_o,
    output reg div_start_o
);

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
                `ALU_ORI: begin
                    logic_res = reg1_i | reg2_i;
                end
                `ALU_NOR: begin
                    logic_res = ~(reg1_i | reg2_i);
                end
                `ALU_AND: begin
                    logic_res = reg1_i & reg2_i;
                end
                `ALU_OR: begin
                    logic_res = reg1_i | reg2_i;
                end
                `ALU_XOR: begin
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
    assign reg1_lt_reg2 = (aluop_i == `ALU_SLT) ?
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

    always @(*) begin
        pause_ex = pause_ex_div;
    end

    always @(*) begin
        if (rst) begin
            arithmetic_res = 32'b0;
        end
        else begin
            case (aluop_i)
                `ALU_ADDW, `ALU_SUBW: begin
                    arithmetic_res = sum_result;
                end
                `ALU_SLT, `ALU_SLTU: begin
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
            default: begin
                reg_write_data_o = 32'b0;
            end
        endcase
    end

endmodule