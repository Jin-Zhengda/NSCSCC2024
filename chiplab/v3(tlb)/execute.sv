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

    // with dcache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    // tlb
    ex_tlb tlb_master,

    // to bpu
    output branch_update update_info,

    // to dispatch
    output alu_op_t [ISSUE_WIDTH - 1: 0] pre_ex_aluop,
    output pipeline_push_forward_t [ISSUE_WIDTH - 1:0] ex_reg_pf,
    output csr_push_forward_t ex_csr_pf,

    // to ctrl
    output logic   pause_ex,
    output logic   branch_flush,
    output logic   ex_excp_flush,
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
    logic [1:0] uncache_en;
    logic addr_ok;
    bus32_t [1:0] virtual_addr;
    bus32_t [1:0] wdata;
    logic [1:0][3:0] wstrb;

    ex_mem_t [ISSUE_WIDTH - 1:0] ex_o;

    assign cache_inst = cache_inst_alu[0] | cache_inst_alu[1];

    assign dcache_master.valid = |valid;
    assign dcache_master.op = valid[0] ? op[0] : op[1];
    assign dcache_master.uncache_en = |uncache_en;
    assign addr_ok = dcache_master.addr_ok;
    assign dcache_master.virtual_addr = valid[0] ? virtual_addr[0] : virtual_addr[1];
    assign dcache_master.wdata = valid[0] ? wdata[0] : wdata[1];
    assign dcache_master.wstrb = valid[0] ? wstrb[0] : wstrb[1];

    generate
        for (genvar i = 0; i < 2; i++) begin
            alu u_alu (
                .clk,
                .rst,
                .ex_i(ex_i[i]),
                .cnt,
                .tlb_master(tlb_master),
                .valid(valid[i]),
                .op(op[i]),
                .uncache_en(uncache_en[i]),
                .addr_ok,
                .virtual_addr(virtual_addr[i]),
                .wdata(wdata[i]),
                .wstrb(wstrb[i]),
                .update_info(update_info_alu[i]),
                .pause_alu(pause_alu[i]),
                .branch_flush(branch_flush_alu[i]),
                .branch_target_alu(branch_target_alu[i]),
                .pre_ex_aluop(pre_ex_aluop[i]),
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

    assign ex_csr_pf.csr_write_en = ex_o[0].csr_write_en || ex_o[1].csr_write_en;
    assign ex_csr_pf.csr_write_addr = ex_o[0].csr_write_en ? ex_o[0].csr_addr : ex_o[1].csr_addr;
    assign ex_csr_pf.csr_write_data = ex_o[0].csr_write_en ? ex_o[0].csr_write_data : ex_o[1].csr_write_data;

   
    // to ctrl
    assign pause_ex = |pause_alu;
    assign branch_flush = |branch_flush_alu && !pause_ex;
    always_comb begin
        if (branch_flush_alu[0]) begin
            branch_target = branch_target_alu[0];
            update_info = update_info_alu[0];
        end else if (branch_flush_alu[1]) begin
            branch_target = branch_target_alu[1];
            update_info = update_info_alu[1];
        end else begin
            branch_target = 32'b0;
            update_info = '{default: 0};
        end
    end

    assign ex_excp_flush = (ex_o[0].is_exception != 6'b0 || ex_o[1].is_exception != 6'b0 || ex_o[0].aluop == `ALU_ERTN || ex_o[1].aluop == `ALU_ERTN) && !pause_ex;

    // to mem
    always_ff @(posedge clk) begin
        if (rst || flush || pause_ex) begin
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
