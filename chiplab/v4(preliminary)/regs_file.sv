// Regfile is the architectural register file
// No hardware reset to generate LUTRAM, is allowed in manual
module regs_file
#(
    parameter WRITE_PORTS = 2,
    parameter READ_PORTS  = 4,
    parameter DEPTH = 32,
    parameter WIDTH = 32
) (
    input wire clk,

    // Write signals
    input logic [WRITE_PORTS-1:0] we_i,
    input logic [WRITE_PORTS-1:0][$clog2(DEPTH)-1:0] waddr_i,
    input logic [WRITE_PORTS-1:0][WIDTH-1:0] wdata_i,

    // Read signals, all packed
    input logic [READ_PORTS-1:0] read_valid_i,
    input logic [READ_PORTS-1:0][$clog2(DEPTH)-1:0] read_addr_i,
    output logic [READ_PORTS-1:0][WIDTH-1:0] read_data_o
);

    logic [READ_PORTS-1:0] read_valid_bit;  // Indicates where the "live" value is in
    logic [WRITE_PORTS-1:0][READ_PORTS-1:0][WIDTH-1:0] rdata_buffer;


    last_valid_table u_lvt (
        .clk(clk),
        .we(we_i),
        .waddr(waddr_i),
        .raddr(read_addr_i),
        .rdata(read_valid_bit)
    );


    generate
        for (genvar write_idx = 0; write_idx < WRITE_PORTS; write_idx++) begin : write_bank
            for (genvar read_idx = 0; read_idx < READ_PORTS; read_idx++) begin : read_bank
                reg_lutram u_reg_lutram (
                    .clk(clk),

                    // Write port
                    .wen  (we_i[write_idx]),
                    .waddr(waddr_i[write_idx]),
                    .wdata(wdata_i[write_idx]),

                    .raddr(read_addr_i[read_idx]),
                    .rdata(rdata_buffer[write_idx][read_idx])
                );
            end
        end
    endgenerate

    // Read Logic
    always_comb begin : read_comb
        for (integer read_idx = 0; read_idx < READ_PORTS; read_idx++) begin
            // Normal read regfile
            // out = rdata_buffer[i][j], i = read_valid_bit[read_idx], j = read_idx
            read_data_o[read_idx] = rdata_buffer[read_valid_bit[read_idx]][read_idx];

            // If read while write, do bypass
            // Higher write port index has higher priority
            for (integer write_idx = 0; write_idx < WRITE_PORTS; write_idx++) begin
                if (we_i[write_idx] && waddr_i[write_idx] == read_addr_i[read_idx])
                    read_data_o[read_idx] = wdata_i[write_idx];
            end

            // r0 is always zero
            if (read_addr_i[read_idx] == 0) read_data_o[read_idx] = 0;
            // Last thing to do, if no read_valid, always zero
            if (read_valid_i[read_idx] == 0) read_data_o[read_idx] = 0;
        end
    end

endmodule
