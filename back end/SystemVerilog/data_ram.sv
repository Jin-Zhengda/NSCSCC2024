module data_ram 
    import pipeline_types::*;
(
    input logic clk,
    input logic ram_en,

    input logic write_en,
    input bus32_t addr,
    input logic[3: 0] select,
    input bus32_t data_i,
    input logic read_en,

    output bus32_t data_o
);

    logic[7: 0] ram0[0: 1023];
    logic[7: 0] ram1[0: 1023];
    logic[7: 0] ram2[0: 1023];
    logic[7: 0] ram3[0: 1023];

    logic[9: 0] data_addr;

    assign data_addr = addr[11: 2];

    always_ff @(posedge clk) begin
        if (!ram_en) begin
            data_o <= 32'b0;
        end
        else if (write_en) begin
                if (select[3]) begin
                    ram3[data_addr] <= data_i[31: 24];
                end
                if (select[2]) begin
                    ram2[data_addr] <= data_i[23: 16];
                
                end
                if (select[1]) begin
                    ram1[data_addr] <= data_i[15: 8];
                end
                if (select[0]) begin
                    ram0[data_addr] <= data_i[7: 0];
                end
        end
    end

    always_comb begin
        if (!ram_en) begin
            data_o <= 32'b0;
        end
        else if (read_en) begin
            data_o <= {ram3[data_addr], ram2[data_addr], ram1[data_addr], ram0[data_addr]};
        end 
        else begin
            data_o <= 32'b0;
        end
    end
    
endmodule