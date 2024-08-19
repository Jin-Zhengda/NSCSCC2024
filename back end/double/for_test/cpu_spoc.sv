`timescale 1ns / 1ps
`include "../pipeline_types.sv"

module cpu_spoc
    import pipeline_types::*;
(
    input logic clk,
    input logic rst
);

    logic [PIPE_WIDTH - 1:0] flush;
    logic [PIPE_WIDTH - 1:0] pause;
    logic is_interrupt;
    bus32_t new_pc;

    logic inst_en;
    bus32_t [DECODER_WIDTH-1:0] pc;

    bus32_t [DECODER_WIDTH-1:0] pc_i;
    bus32_t [DECODER_WIDTH-1:0] inst_i;

    bus32_t [DECODER_WIDTH-1:0] pc_o;
    bus32_t [DECODER_WIDTH-1:0] inst_o;

    mem_dcache mem_dcache_io ();
    cache_inst_t cache_inst;
    logic write_en;
    logic read_en;
    bus32_t read_addr;
    bus32_t write_addr;
    logic [3:0] select;
    bus256_t data_i;
    logic [255:0] data_o;
    logic data_valid;
    logic ducache_ren_i;
    bus32_t ducache_araddr_i;
    logic ducache_rvalid_o;
    bus32_t ducache_rdata_o;
    logic ducache_wen_i;
    bus32_t ducache_wdata_i;
    bus32_t ducache_awaddr_i;
    logic [3:0] ducache_strb;
    logic ducache_bvalid_o;

    inst_rom u_inst_rom (
        .clk,
        .rst,

        .inst_en,
        .addr(pc_i),

        .pc,
        .inst(inst_i)
    );


    pc u_pc (
        .clk,
        .rst,
        .flush(flush[0]),
        .pause(pause[0]),
        .is_interrupt,
        .inst_en,
        .new_pc,
        .pc(pc_i)
    );

    if_id u_if_id (
        .clk,
        .rst,
        .flush(flush[1]),
        .pause(pause[1]),

        .pc_i(pc),
        .inst_i,

        .pc_o,
        .inst_o
    );

    backend_top u_backend_top (
        .clk,
        .rst,

        .pc(pc_o),
        .inst(inst_o),
        .pre_is_branch('0),
        .pre_is_branch_taken('0),
        .pre_branch_addr('0),
        .is_exception('0),
        .exception_cause('0),

        .is_interrupt,
        .new_pc,

        .dcache_master(mem_dcache_io.master),
        .cache_inst,

        .flush,
        .pause
    );

    dcache u_dcache (
        .clk,
        .reset(rst),
        .mem2dcache(mem_dcache_io.slave),
        .dcache_uncache(mem_dcache_io.uncache_en),
        .dcache_inst(cache_inst),

        .rd_req(read_en),
        .rd_addr(read_addr),
        .wr_req(write_en),
        .wr_addr(write_addr),
        .wr_wstrb(select),
        .wr_data(data_i),
        .wr_rdy(1'b1),
        .rd_rdy(1'b1),
        .ret_data(data_o),
        .ret_valid(data_valid),

        .ducache_ren_i(ducache_ren_i),
        .ducache_araddr_i(ducache_araddr_i),
        .ducache_rvalid_o(ducache_rvalid_o),
        .ducache_rdata_o(ducache_rdata_o),

        .ducache_wen_i(ducache_wen_i),
        .ducache_wdata_i(ducache_wdata_i),
        .ducache_awaddr_i(ducache_awaddr_i),
        .ducache_strb(ducache_strb),
        .ducache_bvalid_o(ducache_bvalid_o)
    );

    data_ram u_data_ram (
        .clk(clk),
        .ram_en(1'b1),

        .write_en(write_en),

        .read_addr(read_addr),
        .write_addr(write_addr),
        .select(select),
        .data_i(data_i),
        .read_en(read_en),

        .data_o(data_o),
        .data_valid(data_valid),

        .uncache_read_en(ducache_ren_i),
        .uncache_read_addr(ducache_araddr_i),
        .uncache_read_data(ducache_rdata_o),
        .uncache_read_valid(ducache_rvalid_o),

        .uncache_write_en(ducache_wen_i),
        .uncache_write_addr(ducache_awaddr_i),
        .uncache_write_data(ducache_wdata_i),
        .uncache_select(ducache_strb)
    );



endmodule
