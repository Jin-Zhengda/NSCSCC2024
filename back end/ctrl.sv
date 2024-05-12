`include "defines.sv"
`include "csr_defines.sv"
`timescale 1ns / 1ps

module ctrl 
    import pipeline_types::*;
(
    input pause_t pause_request,
    input mem_ctrl_t mem_i,

    input csr_push_forward_t wb_push_forward,

    input logic continue_idle,

    ctrl_csr master,

    output ctrl_t ctrl_o,
    output ctrl_pc_t ctrl_pc,

    output logic send_inst1_en
);

    bus32_t EEBTRY_VA_current;
    bus32_t ERA_PC_current;
    logic[11: 0] ECFG_LIE_current;
    logic[11: 0] ESTAT_IS_current;
    logic CRMD_IE_current;

    assign ERA_PC_current = (wb_push_forward.csr_write_en && (wb_push_forward.csr_write_addr == `CSR_ERA)) ? wb_push_forward.csr_write_data : master.ERA_PC;
    assign EEBTRY_VA_current = (wb_push_forward.csr_write_en && (wb_push_forward.csr_write_addr == `CSR_EENTRY)) ? wb_push_forward.csr_write_data : master.EENTRY_VA;
    assign ECFG_LIE_current = (wb_push_forward.csr_write_en && (wb_push_forward.csr_write_addr == `CSR_ECFG)) ? {wb_push_forward.csr_write_data[12: 11], wb_push_forward.csr_write_data[9: 0]} : master.ECFG_LIE;
    assign ESTAT_IS_current = (wb_push_forward.csr_write_en && (wb_push_forward.csr_write_addr == `CSR_ESTAT)) ? {wb_push_forward.csr_write_data[12: 11], wb_push_forward.csr_write_data[9: 0]} : master.ESTAT_IS;
    assign CRMD_IE_current = (wb_push_forward.csr_write_en && (wb_push_forward.csr_write_addr == `CSR_CRMD)) ? wb_push_forward.csr_write_data[2] : master.CRMD_IE;

    assign ctrl_pc.exception_new_pc = (mem_i.is_ertn) ? ERA_PC_current: EEBTRY_VA_current;
    assign ctrl_o.exception_flush = (mem_i.is_exception != 6'b0 || mem_i.is_ertn) ? 1'b1 : 1'b0;

    assign master.exception_pc = mem_i.pc;
    assign master.exception_addr = mem_i.exception_addr;

    logic[11: 0] int_vec;

    assign int_vec = CRMD_IE_current ? ECFG_LIE_current & ESTAT_IS_current: 12'b0;
 
    assign ctrl_pc.is_interrupt = (int_vec != 12'b0) ? 1'b1 : 1'b0;

    always_comb begin: exception
        if (mem_i.pc != 32'hfc && mem_i.is_exception != 6'b0) begin
            master.is_exception = 1'b1;
            if (mem_i.is_exception[5]) begin
                master.exception_cause = mem_i.exception_cause[5];
            end
            else if (mem_i.is_exception[4]) begin
                master.exception_cause = mem_i.exception_cause[4];
            end 
            else if (mem_i.is_exception[3]) begin
                master.exception_cause = mem_i.exception_cause[3];
            end
            else if (mem_i.is_exception[2]) begin
                master.exception_cause = mem_i.exception_cause[2];
            end
            else if (mem_i.is_exception[1]) begin
                master.exception_cause = mem_i.exception_cause[1];
            end
            else if (mem_i.is_exception[0]) begin
                master.exception_cause = mem_i.exception_cause[0];
            end
        end
        else begin
            master.is_exception = 1'b0;
            master.exception_cause = `EXCEPTION_NOP;
        end
    end

    logic pause_idle;

    assign pause_idle = mem_i.is_idle && (int_vec == 12'b0) && !continue_idle;

    // pause[0] PC, pause[1] icache, pause[2] instbuffer, pause[3] id
    // pause[4] dispatch, pause[5] ex, pause[6] mem, pause[7] wb
    always_comb begin: pause_ctrl
        if (pause_request.pause_if) begin
            ctrl_o.pause = 7'b00000001;
        end
        else if (pause_request.pause_id) begin
            ctrl_o.pause = 7'b00001111;
        end
        else if (pause_request.pause_dispatch) begin
            ctrl_o.pause = 7'b00011111;
        end
        else if (pause_request.pause_ex) begin
            ctrl_o.pause = 7'b00111111;
        end
        else if (pause_request.pause_mem || pause_idle) begin
            ctrl_o.pause = 7'b01111111;
        end
        else begin
            ctrl_o.pause = 7'b0;
        end
    end

    assign send_inst1_en = ctrl_o.pause[2] ? 1'b0 : 1'b1;

    
endmodule