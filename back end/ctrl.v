`include "define.v"

module ctrl (
    input wire rst,

    input wire pause_id,
    input wire pause_ex,

    input wire[`InstAddrWidth] EENTRY_VA,
    input wire[`InstAddrWidth] ERA_PC,

    input wire is_exception,
    input wire[`ExceptionCauseWidth] exception_cause,
    input wire is_ertn,

    input wire wb_csr_write_en_i,
    input wire[`CSRAddrWidth] wb_csr_write_addr_i,
    input wire[`RegWidth] wb_csr_write_data_i,

    // pause[0] PC, pause[1] if, pause[2] id
    // pause[3] ex, pause[4] mem, pause[5] wb
    output reg[5: 0] pause,
    output wire exception_flush,
    // to pc
    output wire[`InstAddrWidth] exception_in_pc_o
);

    wire EEBTRY_VA_current;
    wire ERA_PC_current;
    assign ERA_PC_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_ERA)) ? wb_csr_write_data_i : ERA_PC;
    assign EEBTRY_VA_current = (wb_csr_write_en_i && (wb_csr_write_addr_i == `CSR_EENTRY)) ? wb_csr_write_data_i : EENTRY_VA;
    
    assign exception_in_pc_o = (is_ertn) ? ERA_PC_current: EEBTRY_VA_current;
    assign exception_flush = (is_exception || is_ertn) ? 1'b1 : 1'b0;

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
        else begin
            pause = 6'b0;
        end
    end

endmodule