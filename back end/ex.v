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

    always @(*) begin
        if (rst) begin
            logic_res = 32'b0;
        end
        else begin
            case (aluop_i)
                `ALU_ORI: begin
                    logic_res = reg1_i | reg2_i;
                end
                default: begin
                    logic_res = 32'b0;
                end
            endcase
        end
    end
    
    always @(*) begin
        reg_write_addr_o = reg_write_addr_i;
        reg_write_en_o = reg_write_en_i;

        case (alusel_i)
            `ALU_SEL_NOP: begin
                reg_write_data_o = logic_res;
            end 
            default: begin
                reg_write_data_o = 32'b0;
            end
        endcase
    end

endmodule