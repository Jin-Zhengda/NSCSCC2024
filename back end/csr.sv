`include "csr_defines.sv"

module csr
  import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    mem_csr mem_slave,

    input csr_write_t wb_i,

    input logic is_ertn,
    input logic is_syscall_break,

    input logic is_ipi,
    input logic [7:0] is_hwi,

    ctrl_csr ctrl_slave,

    output logic [1:0] CRMD_PLV,
    output logic LLbit
);

    bus32_t crmd;
    bus32_t prmd;
    bus32_t euem;
    bus32_t ecfg;
    bus32_t estat;
    bus32_t era;
    bus32_t badv;
    bus32_t eentry;
    bus32_t tlbidx;
    bus32_t tlbhi;
    bus32_t tlblo0;
    bus32_t tlblo1;
    bus32_t asid;
    bus32_t pgdl;
    bus32_t pgdh;
    bus32_t pgd;
    bus32_t cpuid;
    bus32_t save0;
    bus32_t save1;
    bus32_t save2;
    bus32_t save3;
    bus32_t tid;
    bus32_t tcfg;
    bus32_t tval;
    bus32_t ticlr;
    bus32_t llbctl;
    bus32_t tlbrentry;
    bus32_t ctag;
    bus32_t dmw0;
    bus32_t dmw1;

    logic is_ti;

    assign CRMD_PLV = crmd[1: 0];

    assign ctrl_slave.CRMD_IE = crmd[2];
    assign ctrl_slave.EENTRY_VA = {eentry[31: 6], 6'b0};
    assign ctrl_slave.ERA_PC = era;
    assign ctrl_slave.ECFG_LIE = {ecfg[12: 11], ecfg[9: 0]};
    assign ctrl_slave.ESTAT_IS = {estat[12: 11], estat[9: 0]};

    // CRMD write
    always_ff @(posedge clk) begin
        if (rst) begin
            crmd <= {{23{1'b0}}, 9'b000001000};
        end 
        else if (ctrl_slave.is_exception) begin
            crmd[1: 0] <= 2'b0; // PLV
            crmd[2] <= 1'b0; // IE
            if (ctrl_slave.exception_cause == `EXCEPTION_TLBR) begin
                crmd[3] <= 1'b0; // DA
                crmd[4] <= 1'b1; // PG
            end
        end 
        else if (is_ertn) begin
            crmd[1: 0] <= prmd[1: 0]; // PLV
            crmd[2] <= prmd[2]; // IE
            crmd[3] <= (estat[21: 16] == 6'b111111) ? 1'b0 : crmd[3]; // DA
            crmd[4] <= (estat[21: 16] == 6'b111111) ? 1'b1 : crmd[4]; // PG
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_CRMD) begin
            crmd[8: 0] <= wb_i.csr_write_data[8: 0];
        end
        else begin
            crmd <= crmd;
        end
    end

    // PRMD write
    always_ff @(posedge clk) begin
        if (rst) begin
            prmd <= 32'b0;
        end 
        else if (ctrl_slave.is_exception) begin
            prmd[1: 0] <= crmd[1: 0]; // PPLV
            prmd[2] <= crmd[2]; // PIE
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_PRMD) begin
            prmd[2: 0] <= wb_i.csr_write_data[2: 0];
        end
        else begin
            prmd <= prmd;
        end
    end

    // EUEN write
    always_ff @(posedge clk) begin
        if (rst) begin
            euem <= 32'b0;
        end 
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_EUEN) begin
            euem[0] <= wb_i.csr_write_data[0];
        end
        else begin
            euem <= euem;
        end
    end

    // ECFG write
    always_ff @(posedge clk) begin
        if (rst) begin
            ecfg <= 32'b0;
        end 
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_ECFG) begin
            ecfg[9: 0] <= wb_i.csr_write_data[9: 0];
            ecfg[12: 11] <= wb_i.csr_write_data[12: 11];
        end
        else begin
            ecfg <= ecfg;
        end
    end

    // ESTAT write
    always_ff @(posedge clk) begin
        if (rst) begin
            estat <= 32'b0;
        end 
        else if (ctrl_slave.is_exception) begin
            case (ctrl_slave.exception_cause)
                `EXCEPTION_INT: begin
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
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_ESTAT) begin
            estat[1: 0] <= wb_i.csr_write_data[1: 0];
        end
        else begin
            estat[1: 0] <= estat[1: 0];
            estat[9: 2] <= is_hwi;
            estat[10] <= estat[10];
            estat[11] <= is_ti;
            estat[12] <= is_ipi;
            estat[31: 13] <= estat[31: 13];
        end
    end

    // ERA write
    always_ff @(posedge clk) begin
        if (rst) begin
            era <= 32'b0;
        end 
        else if (ctrl_slave.is_exception) begin
            if (is_syscall_break) begin
                era <= ctrl_slave.exception_pc + 4'h4;
            end
            else begin
                era <= ctrl_slave.exception_pc;
            end
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_ERA) begin
            era <= wb_i.csr_write_data;
        end
        else begin
            era <= era;
        end
    end

    // BADV write
    always_ff @(posedge clk) begin
        if (rst) begin
            badv <= 32'b0;
        end 
        else if (ctrl_slave.is_exception) begin
            case (ctrl_slave.exception_cause)
                `EXCEPTION_TLBR, `EXCEPTION_ALE, `EXCEPTION_PIL, `EXCEPTION_PIS, 
                `EXCEPTION_PIF, `EXCEPTION_PME, `EXCEPTION_PPI: begin
                    badv <= ctrl_slave.exception_addr;
                end 
                `EXCEPTION_ADEF: begin
                    badv <= ctrl_slave.exception_pc;
                end
                default: begin
                end
            endcase
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_BADV) begin
            badv <= wb_i.csr_write_data;
        end
        else begin
            badv <= badv;
        end
    end

    // EENTRY write
    always_ff @(posedge clk) begin
        if (rst) begin
            eentry <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_EENTRY) begin
            eentry[31: 6] <= wb_i.csr_write_data[31: 6];
        end
        else begin
            eentry <= eentry;
        end
    end

    // CPUID write
    always_ff @(posedge clk) begin
        if (rst) begin
            cpuid <= 32'b1;
        end
        else begin
            cpuid <= cpuid;
        end
    end

    // SAVE0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save0 <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_SAVE0) begin
            save0 <= wb_i.csr_write_data;
        end
        else begin
            save0 <= save0;
        end
    end

    // SAVE1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save1 <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_SAVE1) begin
            save1 <= wb_i.csr_write_data;
        end
        else begin
            save1 <= save1;
        end
    end

    // SAVE2 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save2 <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_SAVE2) begin
            save2 <= wb_i.csr_write_data;
        end
        else begin
            save2 <= save2;
        end
    end

    // SAVE3 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save3 <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_SAVE3) begin
            save3 <= wb_i.csr_write_data;
        end
        else begin
            save3 <= save3;
        end
    end

    // LLBCTL write
    always_ff @(posedge clk) begin
        if (rst) begin
            llbctl <= 32'b0;
        end
        else if (llbctl[1]) begin
            llbctl[0] <= 1'b0;
            llbctl[1] <= 1'b0;
        end
        else if (is_ertn && llbctl[2] != 1'b1) begin
            llbctl[0] <= 1'b0;
            llbctl[2] <= 1'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_LLBCTL) begin
            if (wb_i.is_llw_scw) begin
                llbctl[0] <= wb_i.csr_write_data[0];
            end
            else begin
                llbctl[1] <= (wb_i.csr_write_data[1] == 1'b1) ? 1'b1: llbctl[1];
                llbctl[2] <= wb_i.csr_write_data[2];
            end
        end
        else begin
            llbctl <= llbctl;
        end
    end

    assign LLbit = llbctl[0];

    // TID write
    always_ff @(posedge clk) begin
        if (rst) begin
            tid <= cpuid;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_TID) begin
            tid <= wb_i.csr_write_data;
        end
        else begin
            tid <= tid;
        end
    end

    // TCFG write
    always_ff @(posedge clk) begin
        if (rst) begin
            tcfg <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_TCFG) begin
            tcfg <= wb_i.csr_write_data;
        end
        else begin
            tcfg <= tcfg;
        end
    end

    // TVAL write
    // csr counter
    wire csr_cnt_end;

    assign is_ti = (tval == 32'h0) && ~ticlr[0];

    assign csr_cnt_end = tcfg[0] && (tval == 32'h0) && ~is_ti;

    always_ff @(posedge clk) begin
        if (rst) begin
            tval <= 32'hFFFFFFFF;
        end
        else if (csr_cnt_end) begin
            if (tcfg[1]) begin
                tval <= {tcfg[31: 2], 2'b0};
            end
            else begin
                tval <= tval;
            end
        end
        else if (tcfg[0] && ~is_ti) begin
            tval <= tval - 32'h1;
        end
        else begin
            tval <= tval;
        end
    end

    // TICLR write
    always_ff @(posedge clk) begin
        if (rst) begin
            ticlr <= 32'b0;
        end
        else if (wb_i.csr_write_en && wb_i.csr_write_addr == `CSR_TICLR && wb_i.csr_write_data[0] == 1'b1) begin
            ticlr[0] <= wb_i.csr_write_data[0];
        end
        else begin
            ticlr <= 32'b0;
        end
    end

    // read
    always_comb begin
        if (rst) begin
            mem_slave.csr_read_data = 0;
        end 
        else if (mem_slave.csr_read_en) begin
            case (mem_slave.csr_read_addr)
                `CSR_CRMD: begin
                    mem_slave.csr_read_data = crmd;
                end 
                `CSR_PRMD: begin
                    mem_slave.csr_read_data = prmd;
                end
                `CSR_EUEN: begin
                    mem_slave.csr_read_data = euem;
                end
                `CSR_ECFG: begin
                    mem_slave.csr_read_data = ecfg;
                end
                `CSR_ESTAT: begin
                    mem_slave.csr_read_data = estat;
                end
                `CSR_ERA: begin
                    mem_slave.csr_read_data = era;
                end
                `CSR_BADV: begin
                    mem_slave.csr_read_data = badv;
                end
                `CSR_EENTRY: begin
                    mem_slave.csr_read_data = eentry;
                end
                `CSR_CPUID: begin
                    mem_slave.csr_read_data = cpuid;
                end
                `CSR_SAVE0: begin
                    mem_slave.csr_read_data = save0;
                end
                `CSR_SAVE1: begin
                    mem_slave.csr_read_data = save1;
                end
                `CSR_SAVE2: begin
                    mem_slave.csr_read_data = save2;
                end
                `CSR_SAVE3: begin
                    mem_slave.csr_read_data = save3;
                end
                `CSR_LLBCTL: begin
                    mem_slave.csr_read_data = llbctl;
                end
                `CSR_TID: begin
                    mem_slave.csr_read_data = tid;
                end
                `CSR_TCFG: begin
                    mem_slave.csr_read_data = tcfg;
                end
                `CSR_TVAL: begin
                    mem_slave.csr_read_data = tval;
                end
                `CSR_TICLR: begin
                    mem_slave.csr_read_data = ticlr;
                end
                default: begin
                    mem_slave.csr_read_data = 32'b0;
                end
            endcase
        end
        else begin
            mem_slave.csr_read_data = 32'b0;
        end
    end
    
endmodule
