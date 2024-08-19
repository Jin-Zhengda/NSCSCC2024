`timescale 1ns / 1ps

module mem_wb
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,

    input  mem_wb_t mem_i,
    output mem_wb_t wb_o,

    output logic cnt_inst_diff,
    output logic [63:0] timer_64_diff,
    output logic csr_rstat_en_diff,
    output logic [31:0] csr_data_diff,
    output logic [ 7:0] inst_st_en_diff,
    output logic [31:0] st_paddr_diff,
    output logic [31:0] st_vaddr_diff,
    output logic [31:0] st_data_diff,
    output logic [ 7:0] inst_ld_en_diff,
    output logic [31:0] ld_paddr_diff,
    output logic [31:0] ld_vaddr_diff
);
    always_ff @(posedge clk) begin
        if (rst) begin
            wb_o <= 0;
        end else if (ctrl.exception_flush) begin
            wb_o <= 0;
        end else if (ctrl.pause[6] && !ctrl.pause[7]) begin
            wb_o <= 0;
        end else if (!ctrl.pause[6]) begin
            wb_o <= mem_i;
        end else begin
            wb_o <= wb_o;
        end
    end

    assign cnt_inst_diff = wb_o.cnt_inst_diff;
    assign timer_64_diff = wb_o.timer_64_diff;
    assign csr_rstat_en_diff = wb_o.csr_rstat_en_diff;
    assign csr_data_diff = wb_o.csr_data_diff;
    
    assign inst_st_en_diff = wb_o.inst_st_en_diff;
    assign st_paddr_diff = wb_o.st_paddr_diff;
    assign st_vaddr_diff = wb_o.st_vaddr_diff;
    assign st_data_diff = wb_o.st_data_diff;

    assign inst_ld_en_diff = wb_o.inst_ld_en_diff;
    assign ld_paddr_diff = wb_o.ld_paddr_diff;
    assign ld_vaddr_diff = wb_o.ld_vaddr_diff;

endmodule
