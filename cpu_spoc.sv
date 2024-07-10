`timescale 1ns/1ps
`include "pipeline_types.sv"
`include "interface.sv"

module cpu_spoc 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst
);

    logic [PIPE_WIDTH - 1:0] flush;
    logic [PIPE_WIDTH - 1:0] pause;

    mem_dcache mem_dcache_io();
    pc_icache pc_icache_io();
    icache_mem icache_mem_io();
    frontend_backend frontend_backend_io();

    cache_inst_t cache_inst;

    bus32_t inst_addr;
    bus256_t inst;
    logic inst_en;
    logic inst_valid;

    logic write_en;
    logic read_en;
    bus32_t read_addr;
    bus32_t write_addr;
    logic[3: 0] select;
    bus32_t data_i;
    logic[255: 0] data_o;
    logic data_valid;

    assign inst_addr = icache_mem_io.rd_addr;
    assign inst_en = icache_mem_io.rd_req;
    assign icache_mem_io.ret_data = inst;
    assign icache_mem_io.ret_valid = inst_valid;


    logic[1: 0] pre_is_branch;
    logic [1:0] pre_is_branch_taken;
    bus32_t [1:0] pre_branch_addr;

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign pre_is_branch[i] = frontend_backend_io.branch_info[i].is_branch;
            assign pre_is_branch_taken[i] = frontend_backend_io.branch_info[i].pre_taken_or_not;
            assign pre_branch_addr[i] = frontend_backend_io.branch_info[i].pre_branch_addr;
        end
    endgenerate
    

    backend_top u_backend_top (
        .clk,
        .rst,

        .pc(frontend_backend_io.inst_and_pc_o.pc_o),
        .inst(frontend_backend_io.inst_and_pc_o.inst_o),

        .pre_is_branch,
        .pre_is_branch_taken,
        .pre_branch_addr,

        .is_exception(frontend_backend_io.inst_and_pc_o.is_exception),
        .exception_cause(frontend_backend_io.inst_and_pc_o.exception_cause),
        
        .is_interrupt(frontend_backend_io.is_interrupt),
        .new_pc(frontend_backend_io.new_pc),

        .update_info(frontend_backend_io.update_info),
        .send_inst_en(frontend_backend_io.send_inst_en),

        .dcache_master(mem_dcache_io.master),
        .cache_inst(cache_inst),

        .flush(flush),
        .pause(pause)
    );

    assign frontend_backend_io.flush = {flush[2], flush[0]};
    assign frontend_backend_io.pause = {pause[2], pause[0]};

    frontend_top_d u_frontend_top_d (
        .clk,
        .rst,

        .pi_master(pc_icache_io.master),
        .fb_master(frontend_backend_io.master)
    );

    logic iucache_ren_i;
    bus32_t iucache_addr_i;
    logic iucache_rvalid_o;
    bus32_t iucache_rdata_o;

    logic ducache_ren_i;
    bus32_t ducache_araddr_i;
    logic ducache_rvalid_o;
    bus32_t ducache_rdata_o;  
    logic ducache_wen_i;
    bus32_t ducache_wdata_i;
    bus32_t ducache_awaddr_i;
    logic[3: 0] ducache_strb;
    logic ducache_bvalid_o;
    icache_transaddr icache2transaddr();

    trans_addr u_trans_addr(
        .clk(clk),
        .icache2transaddr(icache2transaddr.slave)
    );

    icache u_icache (
        .clk(clk),
        .reset(rst),
        .pause_icache(pause[1]),
        .branch_flush(flush[1]),

        .pc2icache(pc_icache_io.slave),
        .icache2transaddr(icache2transaddr.master),

        .rd_req(icache_mem_io.rd_req),
        .rd_addr(icache_mem_io.rd_addr),
        .ret_valid(icache_mem_io.ret_valid),
        .ret_data(icache_mem_io.ret_data),

        .icacop_op_en(icache_cacop),
        .icacop_op_mode(cache_inst.cacop_code[4: 3]),
        .icacop_addr(cache_inst.addr),

        .iucache_ren_i(iucache_ren_i),
        .iucache_addr_i(iucache_addr_i),
        .iucache_rvalid_o(iucache_rvalid_o),
        .iucache_rdata_o(iucache_rdata_o)
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

    inst_rom u_inst_rom (
        .clk,
        .rst,
        .rom_inst_en(inst_en),
        .rom_inst_addr(inst_addr),

        .uncache_en(iucache_ren_i),
        .uncache_addr(iucache_addr_i),
        .uncache_valid(iucache_rvalid_o),
        .uncache_inst(iucache_rdata_o),

        .rom_inst(inst),
        .rom_inst_valid(inst_valid)
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