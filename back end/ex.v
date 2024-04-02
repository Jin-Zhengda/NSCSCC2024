`include "define.v"

module ex (
    input wire rst,

    input wire[`ALUSelWidth] alusel_i,
    input wire[`ALUOpWidth] aluop_i,

    input wire[`RegWidth] reg1_i,
    input wire[`RegWidth] reg2_i,
    input wire[`RegAddrWidth] reg_write_addr_i,
    input wire reg_write_en_i,

    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,
    output reg[`RegWidth] reg_write_data_o
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

    always @(*) begin
        if (rst) begin
            arithmetic_res = 32'b0;
        end
        else begin
            case (aluop_i)
                `ALU_ADDW: begin
                    arithmetic_res = sum_result;
                end
                `ALU_SUBW: begin
                    arithmetic_res = sum_result;
                end
                `ALU_SLT, `ALU_SLTU: begin
                    arithmetic_res = reg1_lt_reg2;
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