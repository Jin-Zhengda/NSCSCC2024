`include "define.v"

module data_ram (
    input wire clk,
    input wire ram_en,

    input wire write_en,
    input wire[`RegWidth] addr,
    input wire[3: 0] select,
    input wire[`RegWidth] data_i,
    input wire read_en,

    output reg[`RegWidth] data_o
);

    reg[`ByteWidth] ram0[0: 1023];
    reg[`ByteWidth] ram1[0: 1023];
    reg[`ByteWidth] ram2[0: 1023];
    reg[`ByteWidth] ram3[0: 1023];

    wire[9: 0] data_addr;

    assign data_addr = addr[11: 2];

    always @(posedge clk) begin
        if (~ram_en) begin
            data_o <= 32'b0;
        end
        else if (write_en) begin
                if (select[3]) begin
                    ram3[data_addr] <= data_i[31: 24];
                end
                if (select[2]) begin
                    ram2[data_addr] <= data_i[23: 16];
                
                end
                if (select[1]) begin
                    ram1[data_addr] <= data_i[15: 8];
                end
                if (select[0]) begin
                    ram0[data_addr] <= data_i[7: 0];
                end
        end
    end

    always @(*) begin
        if (~ram_en) begin
            data_o <= 32'b0;
        end
        else if (read_en) begin
            data_o <= {ram3[data_addr], ram2[data_addr], ram1[data_addr], ram0[data_addr]};
        end 
        else begin
            data_o <= 32'b0;
        end
    end

endmodule