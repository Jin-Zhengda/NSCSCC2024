`include "csr_defines.sv"
`timescale 1ns / 1ps

module csr
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // with disptch (raed ports)
    dispatch_csr dispatch_slave,

    // from wb (write ports)
    input logic is_llw_scw,
    input logic csr_write_en,
    input csr_addr_t csr_write_addr,
    input bus32_t csr_write_data,

    // from inst
    input logic ertn_en,
    input logic tlbsrch_en,
    input logic tlbrd_en,
    input logic is_tlbrd_valid,
    input logic tlbwr_en,
    input logic tlbfill_en,
    input logic tlbsrch_found,
    input logic [4:0] tlbsrch_index,

    input bus32_t tlb_line,
    input bus32_t tlblo0_line,
    input bus32_t tlblo1_line,

    input logic is_tlb_exception,

    // from outer
    input logic is_ipi,
    input logic [7:0] is_hwi,

    // with ctrl
    ctrl_csr ctrl_slave,

    output bus32_t csr_crmd_diff,
    output bus32_t csr_prmd_diff,
    output bus32_t csr_ectl_diff,
    output bus32_t csr_estat_diff,
    output bus32_t csr_era_diff,
    output bus32_t csr_badv_diff,
    output bus32_t csr_eentry_diff,
    output bus32_t csr_tlbidx_diff,
    output bus32_t csr_tlbehi_diff,
    output bus32_t csr_tlbelo0_diff,
    output bus32_t csr_tlbelo1_diff,
    output bus32_t csr_asid_diff,
    output bus32_t csr_save0_diff,
    output bus32_t csr_save1_diff,
    output bus32_t csr_save2_diff,
    output bus32_t csr_save3_diff,
    output bus32_t csr_tid_diff,
    output bus32_t csr_tcfg_diff,
    output bus32_t csr_tval_diff,
    output bus32_t csr_ticlr_diff,
    output bus32_t csr_llbctl_diff,
    output bus32_t csr_tlbrentry_diff,
    output bus32_t csr_dmw0_diff,
    output bus32_t csr_dmw1_diff,
    output bus32_t csr_pgdl_diff,
    output bus32_t csr_pgdh_diff
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
    bus32_t tlbehi;
    bus32_t tlbelo0;
    bus32_t tlbelo1;
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

    assign csr_crmd_diff      = crmd;
    assign csr_prmd_diff      = prmd;
    assign csr_ectl_diff      = ecfg;
    assign csr_estat_diff     = estat;
    assign csr_era_diff       = era;
    assign csr_badv_diff      = badv;
    assign csr_eentry_diff    = eentry;
    assign csr_tlbidx_diff    = tlbidx;
    assign csr_tlbehi_diff    = tlbehi;
    assign csr_tlbelo0_diff   = tlbelo0;
    assign csr_tlbelo1_diff   = tlbelo1;
    assign csr_asid_diff      = asid;
    assign csr_save0_diff     = save0;
    assign csr_save1_diff     = save1;
    assign csr_save2_diff     = save2;
    assign csr_save3_diff     = save3;
    assign csr_tid_diff       = tid;
    assign csr_tcfg_diff      = tcfg;
    assign csr_tval_diff      = tval;
    assign csr_ticlr_diff     = ticlr;
    assign csr_llbctl_diff    = llbctl;
    assign csr_tlbrentry_diff = tlbrentry;
    assign csr_dmw0_diff      = dmw0;
    assign csr_dmw1_diff      = dmw1;
    assign csr_pgdl_diff      = pgdl;
    assign csr_pgdh_diff      = pgdh;

    logic is_ti;

    assign ctrl_slave.crmd = crmd;
    assign ctrl_slave.EENTRY_VA = {eentry[31:6], 6'b0};
    assign ctrl_slave.ERA_PC = era;
    assign ctrl_slave.ECFG_LIE = {ecfg[12:11], ecfg[9:0]};
    assign ctrl_slave.ESTAT_IS = {estat[12:11], estat[9:0]};

    // CRMD write
    always_ff @(posedge clk) begin
        if (rst) begin
            crmd <= {{23{1'b0}}, 9'b000001000};
        end else if (ctrl_slave.is_exception) begin
            crmd[1:0] <= 2'b0;  // PLV
            crmd[2]   <= 1'b0;  // IE
            if (ctrl_slave.exception_cause == `EXCEPTION_TLBR) begin
                crmd[3] <= 1'b1;  // DA
                crmd[4] <= 1'b0;  // PG
            end else if (ertn_en) begin
                crmd[1:0] <= prmd[1:0];  // PLV
                crmd[2]   <= prmd[2];  // IE
                crmd[3]   <= (estat[21:16] == 6'b111111) ? 1'b0 : crmd[3];  // DA
                crmd[4]   <= (estat[21:16] == 6'b111111) ? 1'b1 : crmd[4];  // PG
            end
        end else if (csr_write_en && csr_write_addr == `CSR_CRMD) begin
            crmd[8:0] <= csr_write_data[8:0];
        end else begin
            crmd <= crmd;
        end
    end

    // PRMD write
    always_ff @(posedge clk) begin
        if (rst) begin
            prmd <= 32'b0;
        end else if (ctrl_slave.is_exception) begin
            prmd[1:0] <= crmd[1:0];  // PPLV
            prmd[2]   <= crmd[2];  // PIE
        end else if (csr_write_en && csr_write_addr == `CSR_PRMD) begin
            prmd[2:0] <= csr_write_data[2:0];
        end else begin
            prmd <= prmd;
        end
    end

    // EUEN write
    always_ff @(posedge clk) begin
        if (rst) begin
            euem <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_EUEN) begin
            euem[0] <= csr_write_data[0];
        end else begin
            euem <= euem;
        end
    end

    // ECFG write
    always_ff @(posedge clk) begin
        if (rst) begin
            ecfg <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_ECFG) begin
            ecfg[9:0]   <= csr_write_data[9:0];
            ecfg[12:11] <= csr_write_data[12:11];
        end else begin
            ecfg <= ecfg;
        end
    end

    // ESTAT write
    always_ff @(posedge clk) begin
        if (rst) begin
            estat <= 32'b0;
        end else if (ctrl_slave.is_exception) begin
            estat[21:16] <= ctrl_slave.ecode;
            estat[31:22] <= ctrl_slave.esubcode;
        end else if (csr_write_en && csr_write_addr == `CSR_ESTAT) begin
            estat[1:0] <= csr_write_data[1:0];
        end else begin
            estat[1:0] <= estat[1:0];
            estat[9:2] <= is_hwi;
            estat[10] <= estat[10];
            estat[11] <= is_ti;
            estat[12] <= is_ipi;
            estat[31:13] <= estat[31:13];
        end
    end

    // ERA write
    always_ff @(posedge clk) begin
        if (rst) begin
            era <= 32'b0;
        end else if (ctrl_slave.is_exception) begin
            era <= ctrl_slave.exception_pc;
        end else if (csr_write_en && csr_write_addr == `CSR_ERA) begin
            era <= csr_write_data;
        end else begin
            era <= era;
        end
    end

    // BADV write
    always_ff @(posedge clk) begin
        if (rst) begin
            badv <= 32'b0;
        end else if (ctrl_slave.is_exception) begin
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
        end else if (csr_write_en && csr_write_addr == `CSR_BADV) begin
            badv <= csr_write_data;
        end else begin
            badv <= badv;
        end
    end

    // EENTRY write
    always_ff @(posedge clk) begin
        if (rst) begin
            eentry <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_EENTRY) begin
            eentry[31:6] <= csr_write_data[31:6];
        end else begin
            eentry <= eentry;
        end
    end

    // TLBIDX write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbidx <= 32'b0;
        end else if (tlbsrch_en) begin
            if (tlbsrch_found) begin
                tlbidx[4:0] <= tlbsrch_index;
                tlbidx[31]  <= 1'b0;
            end else begin
                tlbidx[31] <= 1'b1;
            end
        end else if (tlbrd_en) begin
            if (is_tlbrd_valid) begin
                tlbidx[29:24] <= tlb_line[17:12];
                tlbidx[31] <= ~tlb_line[0];
            end else begin
                tlbidx[29:24] <= 6'b0;
                tlbidx[31] <= 1'b1;
            end
        end else if (csr_write_en && csr_write_addr == `CSR_TLBIDX) begin
            tlbidx[4:0] <= csr_write_data[4:0];  // index
            tlbidx[29:24] <= csr_write_data[29:24];  // ps
            tlbidx[31] <= csr_write_data[31];  // ne
        end else begin
            tlbidx <= tlbidx;
        end
    end

    // TLBEHI write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbehi <= 32'b0;
        end else if (tlbrd_en) begin
            if (is_tlbrd_valid) begin
                tlbehi[31:13] <= tlb_line;
            end else begin
                tlbehi[31:13] <= 19'b0;
            end
        end else if (is_tlb_exception) begin
            tlbehi[31:13] <= ctrl_slave.exception_pc[31:13];
        end else if (csr_write_en && csr_write_addr == `CSR_TLBEHI) begin
            tlbehi[31:13] <= csr_write_data[31:13];  // vppn
        end else begin
            tlbehi <= tlbehi;
        end
    end

    // TLBELO0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbelo0 <= 32'b0;
        end else if (tlbrd_en) begin
            if (is_tlbrd_valid) begin
                tlbelo0[0] <= tlblo0_line[0];
                tlbelo0[1] <= tlblo0_line[1];
                tlbelo0[3:2] <= tlblo0_line[3:2];
                tlbelo0[5:4] <= tlblo0_line[5:4];
                tlbelo0[6] <= tlblo0_line[6];
                tlbelo0[31:8] <= tlblo0_line[31:8];
            end else begin
                tlbelo0[0] <= 1'b0;
                tlbelo0[1] <= 1'b0;
                tlbelo0[3:2] <= 2'b0;
                tlbelo0[5:4] <= 2'b0;
                tlbelo0[6] <= 1'b0;
                tlbelo0[31:8] <= 24'b0;
            end
        end else if (csr_write_en && csr_write_addr == `CSR_TLBELO0) begin
            tlbelo0[0] <= csr_write_data[0];  // V
            tlbelo0[1] <= csr_write_data[1];  // D
            tlbelo0[3:2] <= csr_write_data[3:2];  // PLV
            tlbelo0[5:4] <= csr_write_data[5:4];  // MAT
            tlbelo0[6] <= csr_write_data[6];  // G
            tlbelo0[31:8] <= csr_write_data[31:8];  // PPN
        end else begin
            tlbelo0 <= tlbelo0;
        end
    end

    // TLBELO1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbelo1 <= 32'b0;
        end else if (tlbrd_en) begin
            if (is_tlbrd_valid) begin
                tlbelo1[0] <= tlblo1_line[0];
                tlbelo1[1] <= tlblo1_line[1];
                tlbelo1[3:2] <= tlblo1_line[3:2];
                tlbelo1[5:4] <= tlblo1_line[5:4];
                tlbelo1[6] <= tlblo1_line[6];
                tlbelo1[31:8] <= tlblo1_line[31:8];
            end else begin
                tlbelo1[0] <= 1'b0;
                tlbelo1[1] <= 1'b0;
                tlbelo1[3:2] <= 2'b0;
                tlbelo1[5:4] <= 2'b0;
                tlbelo1[6] <= 1'b0;
                tlbelo1[31:8] <= 24'b0;
            end
        end else if (csr_write_en && csr_write_addr == `CSR_TLBELO1) begin
            tlbelo1[0] <= csr_write_data[0];  // V
            tlbelo1[1] <= csr_write_data[1];  // D
            tlbelo1[3:2] <= csr_write_data[3:2];  // PLV
            tlbelo1[5:4] <= csr_write_data[5:4];  // MAT
            tlbelo1[6] <= csr_write_data[6];  // G
            tlbelo1[31:8] <= csr_write_data[31:8];  // PPN
        end else begin
            tlbelo1 <= tlbelo1;
        end
    end

    // ASID write
    always_ff @(posedge clk) begin
        if (rst) begin
            asid[15:0]  <= 16'b0;
            asid[23:16] <= 8'd10;
            asid[31:24] <= 7'b0;
        end else if (tlbrd_en) begin
            if (is_tlbrd_valid) begin
                asid[9:0] <= tlb_line[9:0];
            end else begin
                asid[9:0] <= 10'b0;
            end
        end else if (csr_write_en && csr_write_addr == `CSR_ASID) begin
            asid[9:0] <= csr_write_data[9:0];
        end else begin
            asid <= asid;
        end
    end

    // PGDL write
    always_ff @(posedge clk) begin
        if (rst) begin
            pgdl <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_PGDL) begin
            pgdl[31:12] <= csr_write_data[31:12];  // BASE
        end else begin
            pgdl <= pgdl;
        end
    end

    // PGDH write
    always_ff @(posedge clk) begin
        if (rst) begin
            pgdh <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_PGDH) begin
            pgdh[31:12] <= csr_write_data[31:12];  // BASE
        end else begin
            pgdh <= pgdh;
        end
    end

    // PGD write
    always_ff @(posedge clk) begin
        if (rst) begin
            pgd <= 32'b0;
        end else begin
            pgd <= pgd;
        end
    end

    // TLBRENTRY write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbrentry <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_TLBRENTRY) begin
            tlbrentry[31:6] <= csr_write_data[31:6];  // PA
        end else begin
            tlbrentry <= tlbrentry;
        end
    end

    // DMW0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            dmw0 <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_DMW0) begin
            dmw0[0] <= csr_write_data[0];  // PLV0
            dmw0[3] <= csr_write_data[3];  // PLV3
            dmw0[5:4] <= csr_write_data[5:4];  // MAT
            dmw0[27:25] <= csr_write_data[27:25];  // PSEG
            dmw0[31:29] <= csr_write_data[31:29];  // VSEG
        end else begin
            dmw0 <= dmw0;
        end
    end

    // DMW1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            dmw1 <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_DMW1) begin
            dmw1[0] <= csr_write_data[0];  // PLV0
            dmw1[3] <= csr_write_data[3];  // PLV3
            dmw1[5:4] <= csr_write_data[5:4];  // MAT
            dmw1[27:25] <= csr_write_data[27:25];  // PSEG
            dmw1[31:29] <= csr_write_data[31:29];  // VSEG
        end else begin
            dmw1 <= dmw1;
        end
    end

    // CPUID write
    always_ff @(posedge clk) begin
        if (rst) begin
            cpuid <= 32'b0;
        end else begin
            cpuid <= cpuid;
        end
    end

    // SAVE0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save0 <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_SAVE0) begin
            save0 <= csr_write_data;
        end else begin
            save0 <= save0;
        end
    end

    // SAVE1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save1 <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_SAVE1) begin
            save1 <= csr_write_data;
        end else begin
            save1 <= save1;
        end
    end

    // SAVE2 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save2 <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_SAVE2) begin
            save2 <= csr_write_data;
        end else begin
            save2 <= save2;
        end
    end

    // SAVE3 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save3 <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_SAVE3) begin
            save3 <= csr_write_data;
        end else begin
            save3 <= save3;
        end
    end

    // LLBCTL write
    always_ff @(posedge clk) begin
        if (rst) begin
            llbctl <= 32'b0;
        end else if (ertn_en) begin
            if (llbctl[2]) begin
                llbctl[2] <= 1'b0;
            end else begin
                llbctl[0] <= 1'b0;
            end
        end else if (csr_write_en && csr_write_addr == `CSR_LLBCTL) begin
            if (is_llw_scw) begin
                llbctl[0] <= csr_write_data[0];
            end else begin
                llbctl[2] <= csr_write_data[2];
                llbctl[0] <= csr_write_data[1] ? 1'b0 : llbctl[0];
            end
        end else begin
            llbctl <= llbctl;
        end
    end

    // TID write
    always_ff @(posedge clk) begin
        if (rst) begin
            tid <= cpuid;
        end else if (csr_write_en && csr_write_addr == `CSR_TID) begin
            tid <= csr_write_data;
        end else begin
            tid <= tid;
        end
    end

    // TCFG write
    always_ff @(posedge clk) begin
        if (rst) begin
            tcfg <= 32'b0;
        end else if (csr_write_en && csr_write_addr == `CSR_TCFG) begin
            tcfg <= csr_write_data;
        end else begin
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
        end else if (csr_cnt_end) begin
            if (tcfg[1]) begin
                tval <= {tcfg[31:2], 2'b0};
            end else begin
                tval <= tval;
            end
        end else if (tcfg[0] && ~is_ti) begin
            tval <= tval - 32'h1;
        end else begin
            tval <= tval;
        end
    end

    // TICLR write
    always_ff @(posedge clk) begin
        if (rst) begin
            ticlr <= 32'b0;
        end
        else if (csr_write_en && csr_write_addr == `CSR_TICLR && csr_write_data[0] == 1'b1) begin
            ticlr[0] <= csr_write_data[0];
        end else begin
            ticlr <= 32'b0;
        end
    end

    // read
    always_comb begin
        if (rst) begin
            dispatch_slave.csr_read_data = 0;
        end else if (dispatch_slave.csr_read_en) begin
            case (dispatch_slave.csr_read_addr)
                `CSR_CRMD: begin
                    dispatch_slave.csr_read_data = crmd;
                end
                `CSR_PRMD: begin
                    dispatch_slave.csr_read_data = prmd;
                end
                `CSR_EUEN: begin
                    dispatch_slave.csr_read_data = euem;
                end
                `CSR_ECFG: begin
                    dispatch_slave.csr_read_data = ecfg;
                end
                `CSR_ESTAT: begin
                    dispatch_slave.csr_read_data = estat;
                end
                `CSR_ERA: begin
                    dispatch_slave.csr_read_data = era;
                end
                `CSR_BADV: begin
                    dispatch_slave.csr_read_data = badv;
                end
                `CSR_EENTRY: begin
                    dispatch_slave.csr_read_data = eentry;
                end
                `CSR_CPUID: begin
                    dispatch_slave.csr_read_data = cpuid;
                end
                `CSR_SAVE0: begin
                    dispatch_slave.csr_read_data = save0;
                end
                `CSR_SAVE1: begin
                    dispatch_slave.csr_read_data = save1;
                end
                `CSR_SAVE2: begin
                    dispatch_slave.csr_read_data = save2;
                end
                `CSR_SAVE3: begin
                    dispatch_slave.csr_read_data = save3;
                end
                `CSR_LLBCTL: begin
                    dispatch_slave.csr_read_data = llbctl;
                end
                `CSR_TID: begin
                    dispatch_slave.csr_read_data = tid;
                end
                `CSR_TCFG: begin
                    dispatch_slave.csr_read_data = tcfg;
                end
                `CSR_TVAL: begin
                    dispatch_slave.csr_read_data = tval;
                end
                `CSR_TICLR: begin
                    dispatch_slave.csr_read_data = ticlr;
                end
                default: begin
                    dispatch_slave.csr_read_data = 32'b0;
                end
            endcase
        end else begin
            dispatch_slave.csr_read_data = 32'b0;
        end
    end

endmodule
