`timescale 1ns / 1ps

module regfile
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input logic [ISSUE_WIDTH - 1:0] reg_write_en,
    input logic [ISSUE_WIDTH - 1:0][REG_ADDR_WIDTH - 1:0] reg_write_addr,
    input logic [ISSUE_WIDTH - 1:0][REG_WIDTH - 1:0] reg_write_data,

    // with dispatch
    dispatch_regfile slave,

    // for diff
    output bus32_t regs_diff[32]
);

    (* ram_style="distributed" *) bus32_t ram[32];

    assign regs_diff = ram;

    always_ff @(posedge clk) begin : ram_write
        if (rst) begin
            ram <= '{default: 32'b0};
        end else begin
            for (int i = 0; i < WRITE_PORTS; i++) begin
                if (reg_write_en[i]) begin
                    ram[reg_write_addr[i]] <= reg_write_data[i];
                end
            end
        end
    end

    always_comb begin : ram_read
        for (int i = 0; i < 2; i++) begin
            for (int j = 0; j < 2; j++) begin
                slave.reg_read_data[i][j] = ram[slave.reg_read_addr[i][j]];
                for (int k = 0; k < WRITE_PORTS; k++) begin
                    if (slave.reg_read_addr[i][j] == reg_write_addr[k] && reg_write_en[k]) begin
                        slave.reg_read_data[i][j] = reg_write_data[k];
                    end
                end
                if (rst || slave.reg_read_addr[i][j] == 5'b0 || !slave.reg_read_en[i][j]) begin
                    slave.reg_read_data[i][j] = 32'b0;
                end
            end
        end
    end


endmodule
