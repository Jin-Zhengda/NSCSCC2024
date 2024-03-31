`include "define.v"

module mem (
    input wire rst,

    input wire[`RegWidth] reg_write_data_i,
    input wire[`RegAddrWidth] reg_write_addr_i,
    input wire reg_write_en_i,

    output reg[`RegWidth] reg_write_data_o,
    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o
);

    always @(*) begin
        if (rst) begin
            reg_write_data_o = 32'b0;
            reg_write_addr_o = 5'b0;
            reg_write_en_o = 1'b0;
        end
        else begin
            reg_write_data_o = reg_write_data_i;
            reg_write_addr_o = reg_write_addr_i;
            reg_write_en_o = reg_write_en_i;
        end
    end
    
endmodule