`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"

module ctrl
    import pipeline_types::*;
(
    // from pipeline
    input pause_t pause_request,
    input logic   branch_flush,
    input bus32_t branch_target,

    // from wb
    input mem_wb_t [ISSUE_WIDTH - 1:0] wb_o,
    input commit_ctrl_t [ISSUE_WIDTH - 1:0] commit_ctrl_o,

    // with csr
    ctrl_csr csr_master,

    // to pipeline
    output logic [PIPE_WIDTH - 1:0] flush,
    output logic [PIPE_WIDTH - 1:0] pause,
    output bus32_t new_pc,
    output logic is_interrupt,

    // to regfile
    output logic [ISSUE_WIDTH - 1:0] reg_write_en,
    output logic [ISSUE_WIDTH - 1:0][REG_ADDR_WIDTH - 1:0] reg_write_addr,
    output logic [ISSUE_WIDTH - 1:0][REG_WIDTH - 1:0] reg_write_data,

    // to csr
    output logic is_llw_scw,
    output logic csr_write_en,
    output csr_addr_t csr_write_addr,
    output bus32_t csr_write_data,

    // diff
    input  diff_t [ISSUE_WIDTH - 1: 0] ctrl_diff_i,
    output diff_t [ISSUE_WIDTH - 1: 0] ctrl_diff_o
);
    // interrupt
    logic [11:0] int_vec;
    assign int_vec = csr_master.crmd[2] ? csr_master.ecfg[12:11] & csr_master.estat[1:0] : 12'b0;
    assign is_interrupt = (int_vec != 12'b0);

    // ertn inst
    logic is_ertn;
    assign is_ertn = commit_ctrl_o[0].is_exception == 6'b0 && commit_ctrl_o[0].aluop == `ALU_ERTN;

    // new target
    assign new_pc  = branch_flush ? branch_target : (is_ertn ? csr_master.era : csr_master.eentry);

    // exception enable
    logic [1:0] is_exception;
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign is_exception[i] = commit_ctrl_o[i].pc != 32'hfc && commit_ctrl_o[i].pc != 32'b0 && commit_ctrl_o[i].is_exception != 6'b0;
        end
    endgenerate
    assign csr_master.is_exception = |is_exception;

    // flush
    // flush[0] PC, flush[1] icache, flush[2] instbuffer, flush[3] id
    // flush[4] dispatch, flush[5] ex, flush[6] mem, flush[7] wb
    assign flush = {
        1'b0,
        |is_exception || is_ertn,
        |is_exception || is_ertn,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush
    };

    // commit
    logic pc1_lt_pc2;
    assign pc1_lt_pc2 = commit_ctrl_o[0].pc < commit_ctrl_o[1].pc;

    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign reg_write_addr[i] = wb_o[i].reg_write_addr;
            assign reg_write_data[i] = wb_o[i].reg_write_data;
        end
    endgenerate

    logic [ISSUE_WIDTH - 1:0] reg_write_en_out;
    always_comb begin
        if (pc1_lt_pc2) begin
            reg_write_en_out[0] = is_exception[0] || pause[0] ? 1'b0 : wb_o[0].reg_write_en;
            reg_write_en_out[1] = |is_exception || pause[0] ? 1'b0 : wb_o[1].reg_write_en;
        end else begin
            reg_write_en_out[0] = |is_exception || pause[0] ? 1'b0 : wb_o[0].reg_write_en;
            reg_write_en_out[1] = is_exception[1] || pause[0] ? 1'b0 : wb_o[1].reg_write_en;
        end
    end

    // handle same addr write
    always_comb begin
        if (wb_o[0].reg_write_addr == wb_o[1].reg_write_addr) begin
            if (pc1_lt_pc2) begin
                reg_write_en[0] = 1'b0;
                reg_write_en[1] = reg_write_en_out[1];
            end else begin
                reg_write_en[0] = reg_write_en_out[0];
                reg_write_en[1] = 1'b0;
            end
        end else begin
            reg_write_en = reg_write_en_out;
        end
    end

    assign is_llw_scw = (!pc1_lt_pc2 && |is_exception) || (pc1_lt_pc2 && is_exception[0]) || pause[0] ? 1'b0 : wb_o[0].is_llw_scw;
    assign csr_write_en = (!pc1_lt_pc2 && |is_exception) || (pc1_lt_pc2 && is_exception[0]) || pause[0] ? 1'b0 : wb_o[0].csr_write_en;
    assign csr_write_addr = wb_o[0].csr_write_addr;
    assign csr_write_data = wb_o[0].csr_write_data;

    // exception addr
    assign csr_master.exception_pc = is_exception[0] ? commit_ctrl_o[0].pc : commit_ctrl_o[1].pc;
    assign csr_master.exception_addr = commit_ctrl_o[0].mem_addr;

    // exception cause
    exception_cause_t [ISSUE_WIDTH - 1: 0] exception_cause;
    always_comb begin
        for (integer i = 0; i < ISSUE_WIDTH; i++) begin
            if (is_exception[i]) begin
                if (commit_ctrl_o[i].is_exception[5]) begin
                    exception_cause[i] = commit_ctrl_o[i].exception_cause[5];
                end else if (commit_ctrl_o[i].is_exception[4]) begin
                    exception_cause[i] = commit_ctrl_o[i].exception_cause[4];
                end else if (commit_ctrl_o[i].is_exception[3]) begin
                    exception_cause[i] = commit_ctrl_o[i].exception_cause[3];
                end else if (commit_ctrl_o[i].is_exception[2]) begin
                    if (commit_ctrl_o[i].is_privilege && csr_master.crmd[1:0] != 2'b00) begin
                        exception_cause[i] = `EXCEPTION_IPE;
                    end else begin
                        exception_cause[i] = commit_ctrl_o[i].exception_cause[2];
                    end
                end else if (commit_ctrl_o[i].is_exception[1]) begin
                    exception_cause[i] = commit_ctrl_o[i].exception_cause[1];
                end else if (commit_ctrl_o[i].is_exception[0]) begin
                    exception_cause[i] = commit_ctrl_o[i].exception_cause[0];
                end else begin
                    exception_cause[i] = `EXCEPTION_NOP;
                end
            end else begin
                exception_cause[i] = `EXCEPTION_NOP;
            end
        end
    end

    // exception cause info
    exception_cause_t exception_cause_out;
    assign exception_cause_out = is_exception[0] ? exception_cause[0] : exception_cause[1];
    assign csr_master.exception_cause = exception_cause_out;
    always_comb begin
        case (exception_cause_out)
            `EXCEPTION_INT: begin
                csr_master.ecode = 6'h0;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_PIL: begin
                csr_master.ecode = 6'h1;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_PIS: begin
                csr_master.ecode = 6'h2;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_PIF: begin
                csr_master.ecode = 6'h3;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_PME: begin
                csr_master.ecode = 6'h4;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_PPI: begin
                csr_master.ecode = 6'h7;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_ADEF: begin
                csr_master.ecode = 6'h8;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_ADEM: begin
                csr_master.ecode = 6'h8;
                csr_master.esubcode = 9'b1;
            end
            `EXCEPTION_ALE: begin
                csr_master.ecode = 6'h9;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_SYS: begin
                csr_master.ecode = 6'hb;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_BRK: begin
                csr_master.ecode = 6'hc;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_INE: begin
                csr_master.ecode = 6'hd;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_IPE: begin
                csr_master.ecode = 6'he;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_FPD: begin
                csr_master.ecode = 6'hf;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_FPE: begin
                csr_master.ecode = 6'h12;
                csr_master.esubcode = 9'b0;
            end
            `EXCEPTION_TLBR: begin
                csr_master.ecode = 6'h3f;
                csr_master.esubcode = 9'b0;
            end
            default: begin
                csr_master.ecode = 6'h0;
                csr_master.esubcode = 9'b0;
            end
        endcase
    end

    // pause assignment
    logic pause_idle;
    assign pause_idle = (commit_ctrl_o[0].aluop == `ALU_IDLE) && (int_vec == 12'b0);

    // pause[0] PC, pause[1] icache, pause[2] instbuffer, pause[3] id
    // pause[4] dispatch, pause[5] ex, pause[6] mem, pause[7] wb
    always_comb begin : pause_ctrl
        if (pause_request.pause_if) begin
            pause = 8'b00000001;
        end else if (pause_request.pause_icache) begin
            pause = 8'b00000011;
        end else if (pause_request.pause_buffer) begin
            pause = 8'b00000111;
        end else if (pause_request.pause_decoder) begin
            pause = 8'b00001111;
        end else if (pause_request.pause_dispatch) begin
            pause = 8'b00011111;
        end else if (pause_request.pause_execute) begin
            pause = 8'b00111111;
        end else if (pause_request.pause_mem || pause_idle) begin
            pause = 8'b01111111;
        end else begin
            pause = 8'b00000000;
        end
    end


    // diff 
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign ctrl_diff_o[i].debug_wb_pc = ctrl_diff_i[i].debug_wb_pc;
            assign ctrl_diff_o[i].debug_wb_inst = ctrl_diff_i[i].debug_wb_inst;
            assign ctrl_diff_o[i].debug_wb_rf_wen = reg_write_en_out[i];
            assign ctrl_diff_o[i].debug_wb_rf_wnum = reg_write_addr[i];
            assign ctrl_diff_o[i].debug_wb_rf_wdata = reg_write_data[i];

            assign ctrl_diff_o[i].cnt_inst = ctrl_diff_i[i].cnt_inst;
            assign ctrl_diff_o[i].csr_rstat_en = ctrl_diff_i[i].csr_rstat_en;
            assign ctrl_diff_o[i].csr_data = ctrl_diff_i[i].csr_data;

            assign ctrl_diff_o[i].excp_flush = is_exception[i];
            
            assign ctrl_diff_o[i].ecode = csr_master.ecode;

            assign ctrl_diff_o[i].inst_st_en = ctrl_diff_i[i].inst_st_en;
            assign ctrl_diff_o[i].st_paddr = ctrl_diff_i[i].st_paddr;
            assign ctrl_diff_o[i].st_vaddr = ctrl_diff_i[i].st_vaddr;

            assign ctrl_diff_o[i].inst_ld_en = ctrl_diff_i[i].inst_ld_en;
            assign ctrl_diff_o[i].ld_paddr = ctrl_diff_i[i].ld_paddr;
            assign ctrl_diff_o[i].ld_vaddr = ctrl_diff_i[i].ld_vaddr;
        end
    endgenerate

    assign ctrl_diff_o[0].ertn_flush = is_ertn;
    assign ctrl_diff_o[1].ertn_flush = 1'b0;

    assign ctrl_diff_o[0].inst_valid = (pc1_lt_pc2 && is_exception[0]) || (!pc1_lt_pc2 && |is_exception) ? 1'b0 : ctrl_diff_i[0].inst_valid;
    assign ctrl_diff_o[1].inst_valid = (pc1_lt_pc2 && |is_exception) || (!pc1_lt_pc2 && is_exception[1]) ? 1'b0 : ctrl_diff_i[1].inst_valid;


endmodule
