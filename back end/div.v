`include "define.v"

module div (
    input wire rst,
    input wire clk,

    input wire start,
    input wire cancel,

    input wire signed_op,
    input wire[`RegWidth] reg1_i,
    input wire[`RegWidth] reg2_i,

    output reg[`DoubleRegWidth] result,
    output reg done

);
    
    parameter DivFree = 2'b00;
    parameter DivByZero = 2'b01;
    parameter DivOn = 2'b10;
    parameter DivEnd = 2'b11;

    wire[32: 0] div_temp;
    reg[5: 0] cnt;
    reg[64: 0] dividend;
    reg[`RegWidth] divisor;
    
    reg[1: 0] state;
    reg[`RegWidth] temp_op1;
    reg[`RegWidth] temp_op2;

    assign div_temp = {1'b0, dividend[63: 32]} - {1'b0, divisor};

    always @(posedge clk) begin
        if (rst) begin
            state <= DivFree;
            done <= 1'b0;
            result <= 0;
        end 
        else begin
            case (state)
                    DivFree: begin
                    if (start && cancel == 1'b0) begin
                        if (reg2_i == 32'b0) begin
                            state <= DivByZero;
                        end 
                        else begin
                            state <= DivOn;
                            cnt <= 6'b000000;
                            if (signed_op && reg1_i[31]) begin
                                temp_op1 = ~reg1_i + 1;
                            end
                            else begin
                                temp_op1 = reg1_i;
                            end
                            if (signed_op && reg2_i[31]) begin
                                temp_op2 = ~reg2_i + 1;
                            end
                            else begin
                                temp_op2 = reg2_i;
                            end
                            dividend <= 0;
                            dividend[32: 1] <= temp_op1;
                            divisor <= temp_op2;
                        end    
                    end 
                    else begin
                        done <= 1'b0;
                        result <= 0;
                    end
                end
                DivByZero: begin
                    dividend <= 0;
                    state <= DivEnd;
                end 
                DivOn: begin
                    if (cancel == 1'b0) begin
                        if (cnt != 6'b100000) begin
                            if (div_temp[32]) begin
                                dividend <= {dividend[63: 0], 1'b0};
                            end
                            else begin
                                dividend <= {div_temp[31: 0], dividend[31: 0], 1'b1};
                            end
                            cnt <= cnt + 1;
                        end
                        else begin
                            if (signed_op && ((reg1_i[31] ^ reg2_i[31]) == 1'b1)) begin
                                dividend[31: 0] <= ~dividend[31: 0] + 1;
                            end
                            if (signed_op && ((reg1_i[31] ^ dividend[64]) == 1'b1)) begin
                                dividend[64: 33] <= ~dividend[64: 33] + 1;
                            end
                            state <= DivEnd;
                            cnt <= 0;
                        end
                    end
                    else begin
                        state <= DivFree;
                    end
                end
                DivEnd: begin
                    result <= {dividend[64: 33], dividend[31: 0]};
                    done <= 1'b1;
                    if (start == 1'b0) begin
                        state <= DivFree;
                        done <= 1'b0;
                        result <= 0;
                    end
                end
                default: begin
                end
            endcase
        end
    end

endmodule