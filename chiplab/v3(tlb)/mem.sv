`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
//`define DIFF 

module mem
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ex
    input ex_mem_t [ISSUE_WIDTH - 1: 0] mem_i,

    // with dcache
    mem_dcache dcache_master,

    // with tlb
    ex_tlb tlb_master,

    // to dispatch
    output pipeline_push_forward_t [ISSUE_WIDTH - 1: 0] mem_reg_pf,
    output csr_push_forward_t mem_csr_pf,
    output alu_op_t [ISSUE_WIDTH - 1:0] pre_mem_aluop,

    // to ctrl
    output logic pause_mem,

    // to wb
    output commit_ctrl_t [ISSUE_WIDTH - 1: 0] commit_ctrl_i,
    output mem_wb_t [ISSUE_WIDTH - 1: 0] wb_i,
    output tlb_inst_t tlb_inst_i
    
    `ifdef DIFF
    ,

    // diff
    output diff_t [ISSUE_WIDTH - 1: 0] diff_o
    `endif
);

    bus32_t pc1;
    bus32_t pc2;
    assign pc1 = mem_i[0].pc;
    assign pc2 = mem_i[1].pc;

    mem_wb_t [ISSUE_WIDTH - 1: 0] mem_o;
    assign wb_i = mem_o;



    // mem push forward
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign mem_reg_pf[i].reg_write_en = mem_o[i].reg_write_en;
            assign mem_reg_pf[i].reg_write_addr = mem_o[i].reg_write_addr;
            assign mem_reg_pf[i].reg_write_data = mem_o[i].reg_write_data;
        end
    endgenerate

    assign mem_csr_pf.csr_write_en = mem_o[0].csr_write_en || mem_o[1].csr_write_en;
    assign mem_csr_pf.csr_write_addr = mem_o[0].csr_write_en ? mem_o[0].csr_write_addr : mem_o[1].csr_write_addr;
    assign mem_csr_pf.csr_write_data = mem_o[0].csr_write_en ? mem_o[0].csr_write_data : mem_o[1].csr_write_data;

    assign pre_mem_aluop = {mem_i[1].aluop, mem_i[0].aluop};

    // wb signal assignment
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign mem_o[i].reg_write_en = mem_i[i].reg_write_en;
            assign mem_o[i].reg_write_addr = mem_i[i].reg_write_addr;

            assign mem_o[i].is_llw_scw = mem_i[i].is_llw_scw;
            assign mem_o[i].csr_write_en = mem_i[i].csr_write_en;
            assign mem_o[i].csr_write_addr = mem_i[i].csr_addr;
            assign mem_o[i].csr_write_data = mem_i[i].csr_write_data;
        end
    endgenerate

    // exception 
    logic [ISSUE_WIDTH - 1: 0][5:0] mem_is_exception;
    logic [ISSUE_WIDTH - 1: 0][5:0][6: 0] mem_exception_cause;
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign mem_is_exception[i] = {mem_i[i].is_exception[5:1], tlb_master.tlb_data_exception};
            assign mem_exception_cause[i] = {mem_i[i].exception_cause[5:1], tlb_master.tlb_data_exception_cause};
        end
    endgenerate

    logic [1:0][5:0] mem_is_exception_delay;
    logic [ISSUE_WIDTH - 1: 0][5:0][6: 0] mem_exception_cause_delay;
    always_ff @(posedge clk) begin
        mem_is_exception_delay <= mem_is_exception;
        mem_exception_cause_delay <= mem_exception_cause;
    end

    // ctrl signal assignment
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign commit_ctrl_i[i].is_exception = mem_is_exception[i];
            assign commit_ctrl_i[i].exception_cause = mem_exception_cause[i];
            assign commit_ctrl_i[i].pc = mem_i[i].pc;
            assign commit_ctrl_i[i].mem_addr = mem_i[i].mem_addr;
            assign commit_ctrl_i[i].aluop = mem_i[i].aluop;
            assign commit_ctrl_i[i].is_privilege = mem_i[i].is_privilege;
        end
    endgenerate

    logic [5:0] temp;
    assign temp = commit_ctrl_i[0].is_exception;

    // tlb inst
    assign tlb_inst_i.search_tlb_found = tlb_master.search_tlb_found;
    assign tlb_inst_i.search_tlb_index = tlb_master.search_tlb_index;
    assign tlb_inst_i.tlbrd_valid = tlb_master.tlbrd_valid;
    assign tlb_inst_i.tlbehi_out = tlb_master.tlbehi_out;
    assign tlb_inst_i.tlbelo0_out = tlb_master.tlbelo0_out;
    assign tlb_inst_i.tlbelo1_out = tlb_master.tlbelo1_out;
    assign tlb_inst_i.tlbidx_out = tlb_master.tlbidx_out;
    assign tlb_inst_i.asid_out = tlb_master.asid_out;
    assign tlb_inst_i.tlbsrch_ret = tlb_master.tlbsrch_ret;
    assign tlb_inst_i.tlbrd_ret = tlb_master.tlbrd_ret;


    // mem 
    bus32_t cache_data;
    assign cache_data = (dcache_master.data_ok) ? dcache_master.rdata : 32'b0;

    logic[1:0] pause_uncache;

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_comb begin
                case (mem_i[i].aluop)
                    `ALU_LDB: begin
                        if (dcache_master.data_ok) begin
                            pause_uncache[i] = 1'b0;
                            case (mem_i[i].mem_addr[1:0])
                                2'b00: begin
                                    mem_o[i].reg_write_data = {{24{cache_data[7]}}, cache_data[7:0]};
                                end
                                2'b01: begin
                                    mem_o[i].reg_write_data = {{24{cache_data[15]}}, cache_data[15:8]};
                                end
                                2'b10: begin
                                    mem_o[i].reg_write_data = {{24{cache_data[23]}}, cache_data[23:16]};
                                end
                                2'b11: begin
                                    mem_o[i].reg_write_data = {{24{cache_data[31]}}, cache_data[31:24]};
                                end
                                default: begin
                                    mem_o[i].reg_write_data = 32'b0;
                                end
                            endcase
                        end else begin
                            pause_uncache[i] = 1'b1;
                            mem_o[i].reg_write_data = 32'b0;
                        end

                    end
                    `ALU_LDBU: begin
                        if (dcache_master.data_ok) begin
                            pause_uncache[i] = 1'b0;
                            case (mem_i[i].mem_addr[1:0])
                                2'b00: begin
                                    mem_o[i].reg_write_data = {{24{1'b0}}, cache_data[7:0]};
                                end
                                2'b01: begin
                                    mem_o[i].reg_write_data = {{24{1'b0}}, cache_data[15:8]};
                                end
                                2'b10: begin
                                    mem_o[i].reg_write_data = {{24{1'b0}}, cache_data[23:16]};
                                end
                                2'b11: begin
                                    mem_o[i].reg_write_data = {{24{1'b0}}, cache_data[31:24]};
                                end
                                default: begin
                                    mem_o[i].reg_write_data = 32'b0;
                                end
                            endcase
                        end else begin
                            pause_uncache[i] = 1'b1;
                            mem_o[i].reg_write_data = 32'b0;
                        end
                    end
                    `ALU_LDH: begin
                        if (dcache_master.data_ok) begin
                            pause_uncache[i] = 1'b0;
                            case (mem_i[i].mem_addr[1:0])
                                2'b00: begin
                                    mem_o[i].reg_write_data = {{16{cache_data[15]}}, cache_data[15:0]};
                                end
                                2'b10: begin
                                    mem_o[i].reg_write_data = {{16{cache_data[31]}}, cache_data[31:16]};
                                end
                                default: begin
                                    mem_o[i].reg_write_data = 32'b0;
                                end
                            endcase
                        end else begin
                            pause_uncache[i] = 1'b1;
                            mem_o[i].reg_write_data = 32'b0;
                        end

                    end
                    `ALU_LDHU: begin
                        if (dcache_master.data_ok) begin
                            pause_uncache[i] = 1'b0;
                            case (mem_i[i].mem_addr[1:0])
                                2'b00: begin
                                    mem_o[i].reg_write_data = {{16{1'b0}}, cache_data[15:0]};
                                end
                                2'b10: begin
                                    mem_o[i].reg_write_data = {{16{1'b0}}, cache_data[31:16]};
                                end
                                default: begin
                                    mem_o[i].reg_write_data = 32'b0;
                                end
                            endcase
                        end else begin
                            pause_uncache[i] = 1'b1;
                            mem_o[i].reg_write_data = 32'b0;
                        end
                    end
                    `ALU_LDW: begin
                        if (dcache_master.data_ok) begin
                            pause_uncache[i] = 1'b0;
                            mem_o[i].reg_write_data = cache_data;
                        end else begin
                            pause_uncache[i] = 1'b1;
                            mem_o[i].reg_write_data = 32'b0;
                        end

                    end
                    `ALU_LLW: begin
                        if (dcache_master.data_ok) begin
                            pause_uncache[i] = 1'b0;
                            mem_o[i].reg_write_data = cache_data;
                        end else begin
                            pause_uncache[i] = 1'b1;
                            mem_o[i].reg_write_data = 32'b0;
                        end
                    end
                    default: begin
                        pause_uncache[i] = 1'b0;
                        mem_o[i].reg_write_data = mem_i[i].reg_write_data;
                    end
                endcase
            end
        end
    endgenerate 

    // pause
    assign pause_mem = (pause_uncache[0] || pause_uncache[1]) && (mem_is_exception[0] == 6'b0) && (mem_is_exception[1] == 6'b0);

    `ifdef DIFF
    // diff_o
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign diff_o[i].debug_wb_pc = mem_i[i].pc; 
            assign diff_o[i].debug_wb_inst = mem_i[i].inst;
            assign diff_o[i].debug_wb_rf_wen = 1'b0;
            assign diff_o[i].debug_wb_rf_wnum = 5'b0;
            assign diff_o[i].debug_wb_rf_wdata = 32'b0;
            assign diff_o[i].inst_valid = mem_i[i].inst_valid;
            assign diff_o[i].cnt_inst = (mem_i[i].aluop == `ALU_RDCNTID || mem_i[i].aluop == `ALU_RDCNTVLW || mem_i[i].aluop == `ALU_RDCNTVHW);
            // estat 不进行比对
            assign diff_o[i].csr_rstat_en = 1'b0;
            assign diff_o[i].csr_data = 32'b0;

            assign diff_o[i].excp_flush = 1'b0;
            assign diff_o[i].ertn_flush = 1'b0;
            assign diff_o[i].ecode = 6'b0;

            assign diff_o[i].inst_st_en = {4'b0, (mem_i[i].is_llw_scw && (mem_i[i].aluop == `ALU_SCW)),mem_i[i].aluop == `ALU_STW, 
                            mem_i[i].aluop == `ALU_STH, mem_i[i].aluop == `ALU_STB};
            assign diff_o[i].st_paddr = dcache_master.physical_addr;
            assign diff_o[i].st_vaddr = mem_i[i].mem_addr;
            assign diff_o[i].st_data = mem_i[i].mem_data;

            assign diff_o[i].inst_ld_en = {2'b0, mem_i[i].aluop == `ALU_LLW, mem_i[i].aluop == `ALU_LDW, mem_i[i].aluop == `ALU_LDHU,
                            mem_i[i].aluop == `ALU_LDH, mem_i[i].aluop == `ALU_LDBU, mem_i[i].aluop == `ALU_LDB};
            assign diff_o[i].ld_paddr = dcache_master.physical_addr;
            assign diff_o[i].ld_vaddr = mem_i[i].mem_addr;

            assign diff_o[i].tlbfill_en = (mem_i[i].aluop == `ALU_TLBFILL);
        end
    endgenerate
    `endif

endmodule
