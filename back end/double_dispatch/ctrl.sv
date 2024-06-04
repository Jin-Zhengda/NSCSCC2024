`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"

module ctrl
    import pipeline_types::*;
(
    // from pipeline
    input pause_t pause_request[ISSUE_WIDTH],
    input logic   branch_flush,
    bus32_t branch_target,

    // from wb
    input mem_wb_t wb_o[ISSUE_WIDTH],
    input commit_ctrl_t commit_ctrl[ISSUE_WIDTH],

    // with csr
    ctrl_csr csr_master,

    // to pipeline
    output logic [PIPE_WIDTH - 1:0] flush,
    output bus32_t new_pc,
    output logic is_interrupt,
    output logic [PIPE_WIDTH - 1:0] pause,

    // to regfile
    output logic [ISSUE_WIDTH - 1:0] reg_write_en,
    output logic [ISSUE_WIDTH - 1:0][REG_ADDR_WIDTH - 1:0] reg_write_addr,
    output logic [ISSUE_WIDTH - 1:0][REG_WIDTH - 1:0] reg_write_data,

    // to csr
    output logic is_llw_scw,
    output logic csr_write_en,
    output csr_addr_t csr_write_addr,
    output bus32_t csr_write_data
);
    // interrupt
    logic [11:0] int_vec;
    assign int_vec = csr_master.crmd[2] ? csr_master.ecfg_lie & csr_master.estat_is : 12'b0;
    assign is_interrupt = (int_vec != 12'b0);

    // ertn inst
    logic is_ertn;
    assign is_ertn = commit_ctrl[0].is_exception == 6'b0 && commit_ctrl[0].aluop == `ALU_ERTN;

    // new target
    assign new_pc = branch_flush ? branch_target: (is_ertn ? csr_master.era : csr_master.eentry);

    // exception enable
    logic [1: 0] is_exception;
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign is_exception[i] = commit_ctrl[i].pc != 32'hfc && commit_ctrl[i].pc != 32'b0 && commit_ctrl[i].is_exception != 6'b0;
        end
    endgenerate
    assign csr_master.is_exception = |is_exception;

    // flush
    assign flush = {
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn || branch_flush,
        |is_exception || is_ertn,
        |is_exception || is_ertn,
        1'b0
    };

    // commit
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign reg_write_addr[i] = commit_ctrl[i].reg_write_addr;
            assign reg_write_data[i] = commit_ctrl[i].reg_write_data;
        end
    endgenerate

    assign reg_write_en[0] = is_exception[0] || pause[0] ? 1'b0 : commit_ctrl[0].reg_write_en;
    assign reg_write_en[1] = |is_exception || pause[0] ? 1'b0 : commit_ctrl[1].reg_write_en;

    assign is_llw_scw = is_exception[0] || pause[0] ? 1'b0 : commit_ctrl[0].is_llw_scw;
    assign csr_write_en = is_exception[0] || pause[0] ? 1'b0 : commit_ctrl[0].csr_write_en;
    assign csr_write_addr = commit_ctrl[0].csr_addr;
    assign csr_write_data = commit_ctrl[0].csr_write_data;

    // exception addr
    assign csr_master.exception_pc = is_exception[0] ? commit_ctrl[0].pc : commit_ctrl[1].pc;
    assign csr_master.exception_addr = commit_ctrl[0].mem_addr;

    // exception cause
    exception_cause_t exception_cause[ISSUE_WIDTH];
    always_comb begin
        for (integer i = 0; i < ISSUE_WIDTH; i++) begin
            if (is_exception[i]) begin
                if (commit_ctrl[i].is_exception[5]) begin
                    exception_cause[i] = commit_ctrl[i].exception_cause[5];
                end else if (commit_ctrl[i].is_exception[4]) begin
                    exception_cause[i] = commit_ctrl[i].exception_cause[4];
                end else if (commit_ctrl[i].is_exception[3]) begin
                    exception_cause[i] = commit_ctrl[i].exception_cause[3];
                end else if (commit_ctrl[i].is_exception[2]) begin
                    if (commit_ctrl[i].is_privilege && csr_master.crmd[1: 0] != 2'b00) begin
                        exception_cause[i] = `EXCEPTION_IPE;
                    end else begin
                        exception_cause[i] = commit_ctrl[i].exception_cause[2];
                    end
                end else if (commit_ctrl[i].is_exception[1]) begin
                    exception_cause[i] = commit_ctrl[i].exception_cause[1];
                end else if (commit_ctrl[i].is_exception[0]) begin
                    exception_cause[i] = commit_ctrl[i].exception_cause[0];
                end else begin
                    exception_cause[i] = `EXCEPTION_NOP;
                end
            end
            else begin
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

    // pause assign
    logic pause_idle;
    assign pause_idle = (commit_ctrl[0].aluop == `ALU_IDLE) && (int_vec == 12'b0);

    logic[7: 0] pause_comb;
    assign pause_comb = {
        1'b0,
        pause_request[0].pause_mem || pause_request[1].pause_mem || pause_idle,
        pause_request[0].pause_ex || pause_request[1].pause_ex,
        pause_request[0].pause_dispatch || pause_request[1].pause_dispatch,
        pause_request[0].pause_id || pause_request[1].pause_id,
        pause_request[0].pause_buffer || pause_request[1].pause_buffer,
        pause_request[0].pause_icache || pause_request[1].pause_icache,
        pause_request[0].pause_if || pause_request[1].pause_if
    };
    // pause[0] PC, pause[1] icache, pause[2] instbuffer, pause[3] id
    // pause[4] dispatch, pause[5] ex, pause[6] mem, pause[7] wb
    always_comb begin : pause_ctrl
        if (pause_comb[0]) begin
            pause = 8'b11111111;
        end else if (pause_comb[1]) begin
            pause = 8'b01111111;
        end else if (pause_comb[2]) begin
            pause = 8'b00111111;
        end else if (pause_comb[3]) begin
            pause = 8'b00011111;
        end else if (pause_comb[4]) begin
            pause = 8'b00001111;
        end else if (pause_comb[5]) begin
            pause = 8'b00000111;
        end else if (pause_comb[6]) begin
            pause = 8'b00000011;
        end else if (pause_comb[7]) begin
            pause = 8'b00000001;
        end else begin
            pause = 8'b00000000;
        end
    end
endmodule
