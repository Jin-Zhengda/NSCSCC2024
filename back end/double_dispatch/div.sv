`timescale 1ns / 1ps

module div
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    ex_div slave
);
    enum logic [1:0] {
        DivFree,
        DivByZero,
        DivOn,
        DivEnd
    } state;

    logic [32:0] div_temp;
    logic [5:0] cnt;
    logic [64:0] dividend;
    bus32_t divisor;

    bus32_t temp_op1;
    bus32_t temp_op2;

    assign div_temp = {1'b0, dividend[63:32]} - {1'b0, divisor};

    always_ff @(posedge clk) begin
        if (rst) begin
            state <= DivFree;
            slave.div_done <= 1'b0;
            slave.div_result <= 0;
        end else begin
            case (state)
                DivFree: begin
                    if (slave.div_start) begin
                        if (slave.div_data2 == 32'b0) begin
                            state <= DivByZero;
                        end else begin
                            state <= DivOn;
                            cnt   <= 6'b000000;
                            if (slave.div_signed && slave.div_data1[31]) begin
                                temp_op1 = ~slave.div_data1 + 1;
                            end else begin
                                temp_op1 = slave.div_data1;
                            end
                            if (slave.div_signed && slave.div_data2[31]) begin
                                temp_op2 = ~slave.div_data2 + 1;
                            end else begin
                                temp_op2 = slave.div_data2;
                            end
                            dividend <= 0;
                            dividend[32:1] <= temp_op1;
                            divisor <= temp_op2;
                        end
                    end else begin
                        slave.div_done   <= 1'b0;
                        slave.div_result <= 0;
                    end
                end
                DivByZero: begin
                    dividend <= 0;
                    state <= DivEnd;
                end
                DivOn: begin
                    if (cnt != 6'd32) begin
                        if (div_temp[32]) begin
                            dividend <= {dividend[63:0], 1'b0};
                        end else begin
                            dividend <= {div_temp[31:0], dividend[31:0], 1'b1};
                        end
                        cnt <= cnt + 1;
                    end else begin
                        if (slave.div_signed && ((slave.div_data1[31] ^ slave.div_data2[31]) == 1'b1)) begin
                            dividend[31:0] <= ~dividend[31:0] + 1;
                        end
                        if (slave.div_signed && ((slave.div_data1[31] ^ dividend[64]) == 1'b1)) begin
                            dividend[64:33] <= ~dividend[64:33] + 1;
                        end
                        state <= DivEnd;
                        cnt   <= 0;
                    end
                end
                DivEnd: begin
                    slave.div_result <= {dividend[64:33], dividend[31:0]};
                    slave.div_done   <= 1'b1;
                    if (slave.div_start == 1'b0) begin
                        state <= DivFree;
                        slave.div_done <= 1'b0;
                        slave.div_result <= 0;
                    end
                end
                default: begin
                end
            endcase
        end
    end
endmodule
