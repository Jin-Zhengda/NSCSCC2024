module cpu_spoc 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst
);

    bus32_t inst_addr;
    bus32_t inst;
    logic inst_en;

    logic ram_en;
    logic write_en;
    logic read_en;
    bus32_t addr;
    logic[3: 0] select;
    bus32_t data_i;
    bus32_t data_o;

    cpu_core u_cpu_core (
        .clk,
        .rst,
        .rom_inst(inst),
        .inst_en(inst_en),
        .pc(inst_addr),

        .is_cache_hit(1'b1),
        .ram_read_data(data_o),

        .ram_addr(addr),
        .ram_write_data(data_i),
        .ram_write_en(write_en),
        .ram_read_en(read_en),
        .ram_select(select),
        .ram_en(ram_en)
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
        .read_en(read_en),

        .data_o(data_o)
    );

endmodule