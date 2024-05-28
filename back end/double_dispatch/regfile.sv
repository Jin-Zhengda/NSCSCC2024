`timescale 1ns / 1ps

module regfile
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input data_write_t data_write,
    dispatch_regfile slave,

    output bus32_t regs_diff[32]
);

    (* ram_style="distributed" *) bus32_t ram[32];

    assign regs_diff = ram;

    always_ff @(posedge clk) begin : ram_write
        if (rst) begin
            ram <= '{default: 32'b0};
        end else begin
            for (int i = 0; i < WRITE_PORTS; i++) begin
                if (data_write.write_en[i]) begin
                    ram[data_write.write_addr[i]] <= data_write.write_data[i];
                end
            end
        end
    end

    always_comb begin: ram_read
        for (int i = 0; i < READ_PORTS; i++) begin

            slave.reg_read_data[i] = ram[slave.reg_read_addr[i]];

            for (int j = 0; j < WRITE_PORTS; j++) begin
                if (slave.reg_read_addr[i] == data_write.write_addr[j] && data_write.write_en[j]) begin
                    slave.reg_read_data[i] = data_write.write_data[j];
                end
            end

            if (rst || slave.reg_read_addr[i] == 5'b0 || !slave.reg_read_en[i]) begin
                slave.reg_read_data[i] = 32'b0;
            end
        end
    end


endmodule
