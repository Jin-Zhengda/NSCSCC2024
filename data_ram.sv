module data_ram 
    import pipeline_types::*;
(
    input logic clk,
    input logic ram_en,

    input logic write_en,
    input bus32_t read_addr,
    input bus32_t write_addr,
    input logic[3: 0] select,
    input bus32_t data_i,
    input logic read_en,

    // output logic[7: 0][31: 0] data_o,
    output bus32_t data_o,
    output logic data_valid
);

    logic[7: 0] ram0[0: 1023];
    logic[7: 0] ram1[0: 1023];
    logic[7: 0] ram2[0: 1023];
    logic[7: 0] ram3[0: 1023];

    logic[9: 0] data_addr1;
    logic[9: 0] data_addr2;

    assign data_addr1 = read_addr[11: 2];
    assign data_addr2 = write_addr[11: 2];

    always_ff @(posedge clk) begin
        if (write_en) begin
            if (select[3]) begin
                ram3[data_addr2] <= data_i[31: 24];
            end
            if (select[2]) begin
                ram2[data_addr2] <= data_i[23: 16];
            end
            if (select[1]) begin
                ram1[data_addr2] <= data_i[15: 8];
            end
            if (select[0]) begin
                ram0[data_addr2] <= data_i[7: 0];
            end
        end
    end

    // always_ff @(posedge clk) begin
    //     if (!ram_en) begin
    //         data_o <= 32'b0;
    //         data_valid <= 1'b0;
    //     end
    //     else if (read_en) begin
    //         data_o[0] <= {ram3[data_addr1], ram2[data_addr1], ram1[data_addr1], ram0[data_addr1]};
    //         data_o[1] <= {ram3[data_addr1 + 1], ram2[data_addr1 + 1], ram1[data_addr1 + 1], ram0[data_addr1 + 1]};
    //         data_o[2] <= {ram3[data_addr1 + 2], ram2[data_addr1 + 2], ram1[data_addr1 + 2], ram0[data_addr1 + 2]};
    //         data_o[3] <= {ram3[data_addr1 + 3], ram2[data_addr1 + 3], ram1[data_addr1 + 3], ram0[data_addr1 + 3]};
    //         data_o[4] <= {ram3[data_addr1 + 4], ram2[data_addr1 + 4], ram1[data_addr1 + 4], ram0[data_addr1 + 4]};
    //         data_o[5] <= {ram3[data_addr1 + 5], ram2[data_addr1 + 5], ram1[data_addr1 + 5], ram0[data_addr1 + 5]};
    //         data_o[6] <= {ram3[data_addr1 + 6], ram2[data_addr1 + 6], ram1[data_addr1 + 6], ram0[data_addr1 + 6]};
    //         data_o[7] <= {ram3[data_addr1 + 7], ram2[data_addr1 + 7], ram1[data_addr1 + 7], ram0[data_addr1 + 7]};
    //         data_valid <= 1'b1;
    //     end 
    //     else begin
    //         data_o <= 32'b0;
    //         data_valid <= 1'b0;
    //     end
    // end

    always_ff @( posedge clk ) begin : blockName
        if (!ram_en) begin
            data_o <= 32'b0;
            data_valid <= 1'b0;
        end
        else if (read_en) begin
            data_o <= {ram3[data_addr1], ram2[data_addr1], ram1[data_addr1], ram0[data_addr1]};
            data_valid <= 1'b1;
        end 
        else begin
            data_o <= 32'b0;
            data_valid <= 1'b0;
        end
    end
    
endmodule