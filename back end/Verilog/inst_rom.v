`include "define.v"

module inst_rom (
    input wire rom_inst_en,
    input wire[`InstAddrWidth] rom_inst_addr,

    output reg[`InstWidth] rom_inst
);

    reg[`InstWidth] rom[0: 4095];

    initial begin
        $readmemh("C:/Documents/Code/NSCSCC2024/back end/inst_rom.mem", rom);
    end

    wire[11: 0] inst_addr;
    assign inst_addr = rom_inst_addr[13: 2];

    always @(*) begin
        if (~rom_inst_en) begin
            rom_inst <= 32'b0;
        end
        else begin
            rom_inst <= rom[inst_addr];
        end
    end
    
endmodule