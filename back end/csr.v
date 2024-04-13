`include "define.v"

module csr (
    input wire clk,
    input wire rst,

    // read
    input wire read_en,
    input wire[`CSRAddrWidth] read_addr,
    output reg[`RegWidth] read_data,

    // write
    input wire write_en,
    input wire[`CSRAddrWidth] write_addr,    
    input wire[`RegWidth] write_data,

    // exception
    input wire is_exception,
    input wire[`ExceptionCauseWidth] exception_cause,
    input wire[`InstAddrWidth] exception_pc,
    input wire[`RegWidth] exception_addr,

    // interrupt
    input wire is_ipi,
    input wire[7: 0] is_hwi,
    input wire is_ti,

    // LLbit
    input wire LLbit_write_en,
    input wire LLbit_i,
    output wire LLbit_o
);

    reg[`RegWidth] crmd;
    reg[`RegWidth] prmd;
    reg[`RegWidth] euem;
    reg[`RegWidth] ecfg;
    reg[`RegWidth] estat;
    reg[`RegWidth] era;
    reg[`RegWidth] badv;
    reg[`RegWidth] eentry;
    reg[`RegWidth] tlbidx;
    reg[`RegWidth] tlbhi;
    reg[`RegWidth] tlblo0;
    reg[`RegWidth] tlblo1;
    reg[`RegWidth] asid;
    reg[`RegWidth] pgdl;
    reg[`RegWidth] pgdh;
    reg[`RegWidth] pgd;
    reg[`RegWidth] cpuid;
    reg[`RegWidth] save0;
    reg[`RegWidth] save1;
    reg[`RegWidth] save2;
    reg[`RegWidth] save3;
    reg[`RegWidth] tid;
    reg[`RegWidth] tcfg;
    reg[`RegWidth] tval;
    reg[`RegWidth] ticlr;
    reg[`RegWidth] llbctl;
    reg[`RegWidth] tlbrentry;
    reg[`RegWidth] ctag;
    reg[`RegWidth] dmw0;
    reg[`RegWidth] dmw1;

    // CRMD write
    always @(posedge clk) begin
        if (rst) begin
            crmd <= {{23{1'b0}}, 9'b000001000};
        end 
        else if (is_exception) begin
            crmd[1: 0] <= 2'b0; // PLV
            crmd[2] <= 1'b0; // IE
        end 
        else if (is_exception && exception_cause == `EXCEPTION_TLBR) begin
            crmd[3] <= 1'b1; // DA
            crmd[4] <= 1'b0; // PG
        end 
        else if (write_en && write_addr == `CSR_CRMD) begin
            crmd[8: 0] <= write_data[8: 0];
        end
        else begin
            crmd <= crmd;
        end
    end

    // PRMD write
    always @(posedge clk) begin
        if (rst) begin
            prmd <= 32'b0;
        end 
        else if (is_exception) begin
            prmd[1: 0] <= crmd[1: 0]; // PPLV
            prmd[2] <= crmd[2]; // PIE
        end
        else if (write_en && write_addr == `CSR_PRMD) begin
            prmd[2: 0] <= write_data[2: 0];
        end
        else begin
            prmd <= prmd;
        end
    end

    // EUEN write
    always @(posedge clk) begin
        if (rst) begin
            euem <= 32'b0;
        end 
        else if (write_en && write_addr == `CSR_EUEN) begin
            euem[0] <= write_data[0];
        end
        else begin
            euem <= euem;
        end
    end

    // ECFG write
    always @(posedge clk) begin
        if (rst) begin
            ecfg <= 32'b0;
        end 
        else if (write_en && write_addr == `CSR_ECFG) begin
            ecfg[9: 0] <= write_data[9: 0];
            ecfg[12: 11] <= write_data[12: 11];
        end
        else begin
            ecfg <= ecfg;
        end
    end

    // ESTAT write
    always @(posedge clk) begin
        if (rst) begin
            estat <= 32'b0;
        end 
        else if (is_exception) begin
            case (exception_cause)
                `EXCEPTION_INT: begin
                    estat[9: 2] <= is_hwi;
                    estat[11] <= is_ti;
                    estat[12] <= is_ipi;
                    estat[21: 16] <= 6'h0;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_PIL: begin
                    estat[21: 16] <= 6'h1;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_PIS: begin
                    estat[21: 16] <= 6'h2;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_PIF: begin
                    estat[21: 16] <= 6'h3;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_PME: begin
                    estat[21: 16] <= 6'h4;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_PPI: begin
                    estat[21: 16] <= 6'h7;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_ADEF: begin
                    estat[21: 16] <= 6'h8;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_ADEM: begin
                    estat[21: 16] <= 6'h8;
                    estat[30: 22] <= 9'b1;
                end
                `EXCEPTION_ALE: begin
                    estat[21: 16] <= 6'h9;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_SYS: begin
                    estat[21: 16] <= 6'hb;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_BRK: begin
                    estat[21: 16] <= 6'hc;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_INE: begin
                    estat[21: 16] <= 6'hd;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_IPE: begin
                    estat[21: 16] <= 6'he;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_FPD: begin
                    estat[21: 16] <= 6'hf;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_FPE: begin
                    estat[21: 16] <= 6'h12;
                    estat[30: 22] <= 9'b0;
                end
                `EXCEPTION_TLBR: begin
                    estat[21: 16] <= 6'h3f;
                    estat[30: 22] <= 9'b0;
                end
                default: begin
                end 
            endcase
        end
        else if (write_en && write_addr == `CSR_ESTAT) begin
            estat[1: 0] <= write_data[1: 0];
        end
        else begin
            estat <= estat;
        end
    end

    // ERA write
    always @(posedge clk) begin
        if (rst) begin
            era <= 32'b0;
        end 
        else if (is_exception) begin
            era <= exception_pc;
        end
        else if (write_en && write_addr == `CSR_ERA) begin
            era <= write_data;
        end
        else begin
            era <= era;
        end
    end

    // BADV write
    always @(posedge clk) begin
        if (rst) begin
            badv <= 32'b0;
        end 
        else if (is_exception) begin
            case (exception_cause)
                `EXCEPTION_TLBR, `EXCEPTION_ALE, `EXCEPTION_PIL, `EXCEPTION_PIS, 
                `EXCEPTION_PIF, `EXCEPTION_PME, `EXCEPTION_PPI: begin
                    badv <= exception_addr;
                end 
                `EXCEPTION_ADEF: begin
                    badv <= exception_pc;
                end
                default: begin
                end
            endcase
        end
        else if (write_en && write_addr == `CSR_BADV) begin
            badv <= write_data;
        end
        else begin
            badv <= badv;
        end
    end

    // EENTRY write
    always @(posedge clk) begin
        if (rst) begin
            eentry <= 32'b0;
        end
        else if (write_en && write_addr == `CSR_EENTRY) begin
            eentry[31: 6] <= write_data[31: 6];
        end
        else begin
            eentry <= eentry;
        end
    end

    // CPUID write
    always @(posedge clk) begin
        if (rst) begin
            cpuid <= 32'b0;
        end
        else begin
            cpuid <= cpuid;
        end
    end

    // SAVE0 write
    always @(posedge clk) begin
        if (rst) begin
            save0 <= 32'b0;
        end
        else if (write_en && write_addr == `CSR_SAVE0) begin
            save0 <= write_data;
        end
        else begin
            save0 <= save0;
        end
    end

    // SAVE1 write
    always @(posedge clk) begin
        if (rst) begin
            save1 <= 32'b0;
        end
        else if (write_en && write_addr == `CSR_SAVE1) begin
            save1 <= write_data;
        end
        else begin
            save1 <= save1;
        end
    end

    // SAVE2 write
    always @(posedge clk) begin
        if (rst) begin
            save2 <= 32'b0;
        end
        else if (write_en && write_addr == `CSR_SAVE2) begin
            save2 <= write_data;
        end
        else begin
            save2 <= save2;
        end
    end

    // SAVE3 write
    always @(posedge clk) begin
        if (rst) begin
            save3 <= 32'b0;
        end
        else if (write_en && write_addr == `CSR_SAVE3) begin
            save3 <= write_data;
        end
        else begin
            save3 <= save3;
        end
    end

    // LLBCTL write
    always @(rst) begin
        if (rst) begin
            llbctl <= 32'b0;
        end
        else if (is_exception) begin
            llbctl[0] <= 1'b0;
        end 
        else if (LLbit_write_en) begin
            llbctl[0] <= LLbit_i;
        end
        else if (write_en && write_addr == `CSR_LLBCTL) begin
            llbctl[1] <= write_data[1];
        end
        else begin
            llbctl <= llbctl;
        end
    end

    assign LLbit_o = llbctl[0];

    // read
    always @(*) begin
        if (rst) begin
            read_data = 0;
        end 
        else if (read_en) begin
            case (read_addr)
                `CSR_CRMD: begin
                    read_data = crmd;
                end 
                `CSR_PRMD: begin
                    read_data = prmd;
                end
                `CSR_EUEN: begin
                    read_data = euem;
                end
                `CSR_ECFG: begin
                    read_data = ecfg;
                end
                `CSR_ESTAT: begin
                    read_data = estat;
                end
                `CSR_ERA: begin
                    read_data = era;
                end
                `CSR_BADV: begin
                    read_data = badv;
                end
                `CSR_EENTRY: begin
                    read_data = eentry;
                end
                `CSR_CPUID: begin
                    read_data = cpuid;
                end
                `CSR_SAVE0: begin
                    read_data = save0;
                end
                `CSR_SAVE1: begin
                    read_data = save1;
                end
                `CSR_SAVE2: begin
                    read_data = save2;
                end
                `CSR_SAVE3: begin
                    read_data = save3;
                end
                `CSR_LLBCTL: begin
                    read_data = llbctl;
                end
                default: begin
                    read_data = 0;
                end
            endcase
        end
        else begin
            read_data <= 32'b0;
        end
    end
    
endmodule