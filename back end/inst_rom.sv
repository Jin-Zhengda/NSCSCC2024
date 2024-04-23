module inst_rom 
    import pipeline_types::*;
(
    input logic rom_inst_en,
    input bus32_t rom_inst_addr,

    output bus32_t rom_inst
);

    bus32_t rom[0: 4095];

    initial begin
        $readmemh("C:/Documents/Code/NSCSCC2024/back end/inst_rom.mem", rom);
    end

    logic[11: 0] inst_addr;
    assign inst_addr = rom_inst_addr[13: 2];

    always_comb begin : rom_inst_comb
        if (~rom_inst_en) begin
            rom_inst <= 32'b0;
        end
        else begin
            rom_inst <= rom[inst_addr];
        end
    end
    
endmodule