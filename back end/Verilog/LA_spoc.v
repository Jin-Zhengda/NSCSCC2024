`include "define.v"

module LA_spoc (
    input wire clk,
    input wire rst
);

    wire[`InstAddrWidth] inst_addr;
    wire[`InstWidth] inst;
    wire inst_en;

    wire ram_en;
    wire write_en;
    wire[`RegWidth] addr;
    wire[3: 0] select;
    wire[`RegWidth] data_i;
    wire[`RegWidth] data_o;

    LA_cpu u_LA_cpu (
        .clk(clk),
        .rst(rst),
        .rom_inst_i(inst),
        .ram_data_i(data_o),

        .rom_inst_addr_o(inst_addr),
        .rom_inst_en_o(inst_en),
        .ram_en_o(ram_en),
        .ram_addr_o(addr),
        .ram_data_o(data_i),
        .ram_write_en_o(write_en),
        .ram_select_o(select)
    );

    inst_rom u_inst_rom (
        .rom_inst_en(inst_en),
        .rom_inst_addr(inst_addr),

        .rom_inst(inst)
    );

    data_ram u_data_ram (
        .clk(clk),
        .ram_en(ram_en),

        .write_en(write_en),
        .addr(addr),
        .select(select),
        .data_i(data_i),

        .data_o(data_o)
    );
    
endmodule