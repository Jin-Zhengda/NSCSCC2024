`include "define.v"

module LA_spoc (
    input wire clk,
    input wire rst
);

    wire[`InstAddrWidth] inst_addr;
    wire[`InstWidth] inst;
    wire inst_en;

    LA_cpu u_LA_cpu (
        .clk(clk),
        .rst(rst),
        .rom_inst_i(inst),

        .rom_inst_addr_o(inst_addr),
        .rom_inst_en_o(inst_en)
    );

    inst_rom u_inst_rom (
        .rom_inst_en(inst_en),
        .rom_inst_addr(inst_addr),

        .rom_inst(inst)
    );
    
endmodule