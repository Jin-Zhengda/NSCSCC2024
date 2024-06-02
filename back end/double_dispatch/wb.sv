`timescale 1ns / 1ps

module wb 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from mem
    input mem_wb_t wb_i[ISSUE_WIDTH],

    // from ctrl
    input ctrl_t ctrl,

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

    mem_wb_t wb_o[ISSUE_WIDTH];
    
    always_ff @( posedge clk ) begin
        if (rst || ctrl.exception_flush || (ctrl.pause[6] && !ctrl.pause[7])) begin
            wb_o <= '{default:0};
        end else if (!ctrl.pause[6]) begin
            wb_o <= wb_i;
        end else begin
            wb_o <= wb_o;
        end
    end

    // to regfile
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign reg_write_en[i] = wb_o[i].reg_write_en;
            assign reg_write_addr[i] = wb_o[i].reg_write_addr;
            assign reg_write_data[i] = wb_o[i].reg_write_data;
        end
    endgenerate

    // to csr
    assign is_llw_scw = wb_o[0].is_llw_scw;
    assign csr_write_en = wb_o[0].csr_write_en;
    assign csr_write_addr = wb_o[0].csr_write__addr;
    assign csr_write_data = wb_o[0].csr_write_data;
endmodule