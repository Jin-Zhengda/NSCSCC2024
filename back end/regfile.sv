`timescale 1ns / 1ps

module regfile 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input data_write_t data_write,

    dispatch_regfile slave
);

    logic [31: 0] regs [0: 31];

    always_ff @(posedge clk) begin
        if (!rst) begin
            if (data_write.write_en) begin
                regs[data_write.write_addr] <= data_write.write_data;
            end
        end
    end

    always_comb begin: read1
        if (rst) begin
            slave.reg1_read_data = 32'b0;
        end
        else if (slave.reg1_read_addr == 5'b0) begin
            slave.reg1_read_data = 32'b0;        
        end
        else if (slave.reg1_read_addr == data_write.write_addr && data_write.write_en && slave.reg1_read_en) begin
            slave.reg1_read_data = data_write.write_data;
        end
        else if (slave.reg1_read_en) begin
            slave.reg1_read_data = regs[slave.reg1_read_addr];
        end 
        else begin
            slave.reg1_read_data = 32'b0;
        end
    end

    always_comb begin: read2
        if (rst) begin
            slave.reg2_read_data = 32'b0;
        end
        else if (slave.reg2_read_addr == 5'b0) begin
            slave.reg2_read_data = 32'b0;        
        end
        else if (slave.reg2_read_addr == data_write.write_addr && data_write.write_en && slave.reg2_read_en) begin
            slave.reg2_read_data = data_write.write_data;
        end
        else if (slave.reg2_read_en) begin
            slave.reg2_read_data = regs[slave.reg2_read_addr];
        end 
        else begin
            slave.reg2_read_data = 32'b0;
        end
    end
    
endmodule