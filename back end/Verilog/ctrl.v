`include "define.v"

module ctrl (
    input wire rst,

    input wire pause_id,
    input wire pause_ex,
    input wire pause_mem,
    
    // from csr
    input wire[`InstAddrWidth] EENTRY_VA,
    input wire[`InstAddrWidth] ERA_PC,
    input wire[11: 0] ECFG_LIE,
    input wire[11: 0] ESTAT_IS,
    input wire CRMD_IE,

    // from mem
    input wire[`InstAddrWidth] pc,
    input wire[`RegWidth] exception_addr_i,
    input wire[4: 0] is_exception_i,
    input wire[`FiveExceptionCauseWidth] exception_cause_i,
    input wire is_ertn,

    // to csr
    output reg is_exception_o,
    output reg[`ExceptionCauseWidth] exception_cause_o,
    output wire[`InstAddrWidth] exception_pc_o,
    output wire[`RegWidth] exception_addr_o,

    // from wb
    input wire wb_csr_write_en_i,
    input wire[`CSRAddrWidth] wb_csr_write_addr_i,
    input wire[`RegWidth] wb_csr_write_data_i,

    // pause[0] PC, pause[1] if, pause[2] id
    // pause[3] ex, pause[4] mem, pause[5] wb
    output reg[5: 0] pause,
    output wire exception_flush,

    // to pc
    output wire[`InstAddrWidth] exception_in_pc_o,
    output wire is_interrupt_o
);

    wire[`InstAddrWidth] EEBTRY_VA_current;
    wire[`InstAddrWidth] ERA_PC_current;
    wire[11: 0] ECFG_LIE_current;
    wire[11: 0] ESTAT_IS_current;
    wire CRMD_IE_current;

    assign ERA_PC_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_ERA)) ? wb_csr_write_data_i : ERA_PC;
    assign EEBTRY_VA_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_EENTRY)) ? wb_csr_write_data_i : EENTRY_VA;
    assign ECFG_LIE_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_ECFG)) ? {wb_csr_write_data_i[12: 11], wb_csr_write_data_i[9: 0]} : ECFG_LIE;
    assign ESTAT_IS_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_ESTAT)) ? {wb_csr_write_data_i[12: 11], wb_csr_write_data_i[9: 0]} : ESTAT_IS;
    assign CRMD_IE_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_CRMD)) ? wb_csr_write_data_i[2] : CRMD_IE;

    assign exception_in_pc_o = (is_ertn) ? ERA_PC_current: EEBTRY_VA_current;
    assign exception_flush = (is_exception_i != 5'b0 || is_ertn) ? 1'b1 : 1'b0;

    assign exception_pc_o = pc;
    assign exception_addr_o = exception_addr_i;

    wire[11: 0] int_vec;

    assign int_vec = CRMD_IE_current ? ECFG_LIE_current & ESTAT_IS_current: 12'b0;
 
    assign is_interrupt_o = (int_vec != 12'b0) ? 1'b1 : 1'b0;
    

    always @(*) begin
        if (rst) begin
            is_exception_o = 1'b0;
            exception_cause_o = `EXCEPTION_NOP;
        end
        else if (pc != 32'h100 && is_exception_i != 5'b0) begin
            is_exception_o = 1'b1;
            if (is_exception_i[4]) begin
                exception_cause_o = exception_cause_i[34: 28];
            end 
            else if (is_exception_i[3]) begin
                exception_cause_o = exception_cause_i[27: 21];
            end
            else if (is_exception_i[2]) begin
                exception_cause_o = exception_cause_i[20: 14];
            end
            else if (is_exception_i[1]) begin
                exception_cause_o = exception_cause_i[13: 7];
            end
            else if (is_exception_i[0]) begin
                exception_cause_o = exception_cause_i[6: 0];
            end
        end
        else begin
            is_exception_o = 1'b0;
            exception_cause_o = `EXCEPTION_NOP;
        end
    end

    wire pause_idle;

    assign pause_idle = pause_mem && (int_vec == 12'b0) && ~rst;

    always @(*) begin
        if (rst) begin
            pause = 6'b0;
        end
        else if (pause_id) begin
            pause = 6'b000111;
        end
        else if (pause_ex) begin
            pause = 6'b001111;
        end
        else if (pause_idle) begin
            pause = 6'b011111;
        end
        else begin
            pause = 6'b0;
        end
    end

endmodule