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
    dispatch_regfile slave
    
    `ifdef DIFF
    ,

    output bus32_t regs_diff[0:31]
    `endif 
);

    bus32_t regs[0:31];

    `ifdef DIFF
    assign regs_diff = regs;
    `endif 

    logic[REG_ADDR_WIDTH-1:0] addr1;
    assign addr1 = reg_write_addr[0];
    logic[REG_ADDR_WIDTH-1:0] addr2;
    assign addr2 = reg_write_addr[1];

    always_ff@ (posedge clk) begin
        if (reg_write_en[0]) begin
            regs[addr1] <= reg_write_data[0];
        end 

        if (reg_write_en[1]) begin
            regs[addr2] <= reg_write_data[1];
        end
    end

    always_comb begin : ram_read
        for (int i = 0; i < 2; i++) begin
            for (int j = 0; j < 2; j++) begin
                slave.reg_read_data[i][j] = regs[slave.reg_read_addr[i][j]];
                for (int k = 0; k < 2; k++) begin
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
