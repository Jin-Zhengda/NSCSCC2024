`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"

module execute
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input logic flush,
    input logic pause,

    // from dispatch
    input dispatch_ex_t [ISSUE_WIDTH - 1:0] ex_i,

    // from stable counter
    input bus64_t cnt,

    // from mem
    input logic pause_mem,

    // with dcache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    // to bpu
    output branch_update update_info,

    // to dispatch
    output alu_op_t [ISSUE_WIDTH - 1: 0] pre_ex_aluop,
    output pipeline_push_forward_t [ISSUE_WIDTH - 1:0] ex_reg_pf,

    // to ctrl
    output logic   pause_ex,
    output logic   branch_flush,
    output logic   ex_excp_flush,
    // output logic   ertn_flush,
    // output logic   refetch_flush,
    // output bus32_t refetch_target,
    output bus32_t branch_target,

    // to mem
    output ex_mem_t [ISSUE_WIDTH - 1:0] mem_i
);

    logic [1:0] pause_alu;
    logic [1:0] branch_flush_alu;
    bus32_t [ISSUE_WIDTH - 1:0] branch_target_alu;
    branch_update [1:0] update_info_alu;
    cache_inst_t [ISSUE_WIDTH - 1: 0] cache_inst_alu;
    logic [1:0] valid;
    logic [1:0] op;
    logic addr_ok;
    bus32_t [1:0] virtual_addr;
    bus32_t [1:0] wdata;
    logic [1:0][3:0] wstrb;

    ex_mem_t [ISSUE_WIDTH - 1:0] ex_o;

    assign cache_inst = cache_inst_alu[0] | cache_inst_alu[1];

    assign dcache_master.valid = |valid;
    assign dcache_master.op = valid[0]? op[0]: op[1];
    assign addr_ok = dcache_master.addr_ok;
    assign dcache_master.virtual_addr = valid[0]? virtual_addr[0]: virtual_addr[1];
    assign dcache_master.wdata = valid[0]? wdata[0]: wdata[1];
    assign dcache_master.wstrb = valid[0]? wstrb[0]: wstrb[1];

    generate
        for (genvar i = 0; i < 2; i++) begin
            alu u_alu (
                .clk,
                .rst,
                .flush,
                .pause_mem,

                .pre_ex_aluop(pre_ex_aluop[i]),
                .pause_alu(pause_alu[i]),

                .ex_i(ex_i[i]),
                .cnt(cnt),

                .valid(valid[i]),
                .op(op[i]),
                .addr_ok(addr_ok),
                .virtual_addr(virtual_addr[i]),
                .wdata(wdata[i]),
                .wstrb(wstrb[i]),

                .update_info(update_info_alu[i]),
                .branch_flush(branch_flush_alu[i]),
                .branch_target_alu(branch_target_alu[i]),

                .cache_inst(cache_inst_alu[i]),

                .ex_o(ex_o[i])
            );
        end
    endgenerate

    // ex push forward
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign ex_reg_pf[i].reg_write_en   = ex_o[i].reg_write_en;
            assign ex_reg_pf[i].reg_write_addr = ex_o[i].reg_write_addr;
            assign ex_reg_pf[i].reg_write_data = ex_o[i].reg_write_data;
        end
    endgenerate

   
    // to ctrl
    assign pause_ex = |pause_alu;
    assign branch_flush = |branch_flush_alu && !pause_ex && !pause_mem;

    assign branch_target = branch_flush_alu[0]? branch_target_alu[0]: branch_target_alu[1];
    // assign update_info = branch_flush_alu[0]? update_info_alu[0]: update_info_alu[1];
    always_ff @( posedge clk ) begin
        if (branch_flush_alu[0]) begin
            update_info <= update_info_alu[0];
        end else begin
            update_info <= update_info_alu[1];
        end
    end

    assign ex_excp_flush = (ex_o[0].is_exception != 0 || ex_o[1].is_exception != 0 || ex_o[0].csr_write_en 
                        || ex_o[1].csr_write_en || ex_o[0].aluop == `ALU_ERTN || ex_o[1].aluop == `ALU_ERTN) && !pause_ex && !pause_mem;

    logic ex_mem_pause;
    assign ex_mem_pause = pause_ex && !pause_mem;
    // to mem
    always_ff @(posedge clk) begin
        if (rst  || ex_mem_pause || flush) begin
            mem_i <= '{default: 0};
        end else if (!pause) begin
            if (branch_flush_alu[0]) begin
                mem_i[0] <= ex_o[0];
                mem_i[1] <= 0;
            end else begin
                mem_i <= ex_o;
            end
        end else begin
            mem_i <= mem_i;
        end
    end
endmodule
