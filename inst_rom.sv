module inst_rom 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic rom_inst_en,
    input bus32_t rom_inst_addr,

    input logic uncache_en,
    input bus32_t uncache_addr,
    output logic uncache_valid,
    output bus32_t uncache_inst,

    output bus256_t rom_inst,
    // output bus32_t rom_inst,
    output logic rom_inst_valid
);

    logic cnt_en;
    logic cnt_end;
    logic[4: 0] cnt;

    assign cnt_end = cnt_en & (cnt == 5'd5);

    always_comb begin
        if (rst) begin
            cnt_en = 1'b0;
        end else begin
            cnt_en = 1'b1;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            cnt <= 5'h0;
        end else if (cnt_end) begin
            cnt <= 5'h0;
        end else if (cnt_en) begin
            cnt <= cnt + 5'h1;
        end
    end


    bus32_t rom[0: 4095];

    initial begin
        $readmemh("C:/Documents/Code/NSCSCC2024/test/inst_rom.mem", rom);
    end

    logic[11: 0] inst_addr;
    assign inst_addr = rom_inst_addr[13: 2];

    logic[7: 0][31: 0] inst;

    always_ff @(posedge clk) begin
        if (rst) begin
            inst <= 256'b0;
        end
        else if (~rom_inst_en) begin
            inst <= 256'b0;
        end
        else begin
            inst[0] <= rom[inst_addr];
            inst[1] <= rom[inst_addr + 12'h1];
            inst[2] <= rom[inst_addr + 12'h2];
            inst[3] <= rom[inst_addr + 12'h3];
            inst[4] <= rom[inst_addr + 12'h4];
            inst[5] <= rom[inst_addr + 12'h5];
            inst[6] <= rom[inst_addr + 12'h6];
            inst[7] <= rom[inst_addr + 12'h7];
        end
    end

    // always_ff @( posedge clk ) begin
    //     if (rst) begin
    //         rom_inst <= 32'b0;
    //     end
    //     else if (~rom_inst_en) begin
    //         rom_inst <= 32'b0;
    //     end
    //     else begin
    //         rom_inst <= rom[inst_addr];
    //     end
    // end

    always_ff @(posedge clk) begin
        if (rst) begin
            rom_inst_valid <= 1'b0;
        end
        else if (~rom_inst_en) begin
            rom_inst_valid <= 1'b0;
        end
        else if (cnt_end && rom_inst_en)begin
            rom_inst_valid <= 1'b1;
        end
    end

    assign rom_inst = {inst[7], inst[6], inst[5], inst[4], inst[3], inst[2], inst[1], inst[0]};


    always_ff @( posedge clk ) begin
        if (rst) begin
            uncache_valid <= 1'b0;
        end
        else if (!uncache_en) begin
            uncache_valid <= 1'b0;
        end
        else if (cnt_end && uncache_en) begin
            uncache_valid <= 1'b1;
        end
        else begin
            uncache_valid <= 1'b0;
        end
    end

    logic[11: 0] uncache_inst_addr;
    assign uncache_inst_addr = uncache_addr[13: 2];
    always_ff @( posedge clk ) begin
        if (rst) begin
            uncache_inst <= 32'b0;
        end
        else if (~uncache_en) begin
            uncache_inst <= 32'b0;
        end
        else begin
            uncache_inst <= rom[uncache_inst_addr];
        end
    end
    
endmodule