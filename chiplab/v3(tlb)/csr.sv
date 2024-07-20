`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module csr
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // with disptch (raed ports)
    dispatch_csr dispatch_slave,

    // with tlb
    csr_tlb tlb_master,

    // from wb (write ports)
    input logic is_llw_scw,
    input logic csr_write_en,
    input csr_addr_t csr_write_addr,
    input bus32_t csr_write_data,

    input tlb_inst_t tlb_inst,

    // from stable counter
    bus64_t cnt,

    // from outer
    input logic is_ipi,
    input logic [7:0] is_hwi,

    // with ctrl
    ctrl_csr ctrl_slave
    
    `ifdef DIFF
    ,

    // diff
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
    `endif
);

    bus32_t crmd;
    bus32_t prmd;
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

    logic llbit;

    `ifdef DIFF
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
    assign csr_llbctl_diff    = {llbctl[31:1], llbit};
    assign csr_tlbrentry_diff = tlbrentry;
    assign csr_dmw0_diff      = dmw0;
    assign csr_dmw1_diff      = dmw1;
    assign csr_pgdl_diff      = pgdl;
    assign csr_pgdh_diff      = pgdh;
    `endif 

    logic crmd_wen;
    logic prmd_wen;
    logic ecfg_wen;
    logic estat_wen;
    logic era_wen;
    logic badv_wen;
    logic eentry_wen;
    logic tlbidx_wen;
    logic tlbehi_wen;
    logic tlbelo0_wen;
    logic tlbelo1_wen;
    logic asid_wen;
    logic pgdl_wen;
    logic pgdh_wen;
    logic pgd_wen;
    logic cpuid_wen;
    logic save0_wen;
    logic save1_wen;
    logic save2_wen;
    logic save3_wen;
    logic tid_wen;
    logic tcfg_wen;
    logic tval_wen;
    logic ticlr_wen;
    logic llbctl_wen;
    logic tlbrentry_wen;
    logic dmw0_wen;
    logic dmw1_wen;  

    assign crmd_wen   = csr_write_en & (csr_write_addr == `CSR_CRMD);
    assign prmd_wen   = csr_write_en & (csr_write_addr == `CSR_PRMD);
    assign ecfg_wen   = csr_write_en & (csr_write_addr == `CSR_ECFG);
    assign estat_wen  = csr_write_en & (csr_write_addr == `CSR_ESTAT);
    assign era_wen    = csr_write_en & (csr_write_addr == `CSR_ERA);
    assign badv_wen   = csr_write_en & (csr_write_addr == `CSR_BADV);
    assign eentry_wen = csr_write_en & (csr_write_addr == `CSR_EENTRY);
    assign tlbidx_wen = csr_write_en & (csr_write_addr == `CSR_TLBIDX);
    assign tlbehi_wen = csr_write_en & (csr_write_addr == `CSR_TLBEHI);
    assign tlbelo0_wen= csr_write_en & (csr_write_addr == `CSR_TLBELO0);
    assign tlbelo1_wen= csr_write_en & (csr_write_addr == `CSR_TLBELO1);
    assign asid_wen   = csr_write_en & (csr_write_addr == `CSR_ASID);
    assign pgdl_wen   = csr_write_en & (csr_write_addr == `CSR_PGDL);
    assign pgdh_wen   = csr_write_en & (csr_write_addr == `CSR_PGDH);
    assign pgd_wen    = csr_write_en & (csr_write_addr == `CSR_PGD);
    assign cpuid_wen  = csr_write_en & (csr_write_addr == `CSR_CPUID);
    assign save0_wen  = csr_write_en & (csr_write_addr == `CSR_SAVE0);
    assign save1_wen  = csr_write_en & (csr_write_addr == `CSR_SAVE1);
    assign save2_wen  = csr_write_en & (csr_write_addr == `CSR_SAVE2);
    assign save3_wen  = csr_write_en & (csr_write_addr == `CSR_SAVE3);
    assign tid_wen    = csr_write_en & (csr_write_addr == `CSR_TID);
    assign tcfg_wen   = csr_write_en & (csr_write_addr == `CSR_TCFG);
    assign tval_wen   = csr_write_en & (csr_write_addr == `CSR_TVAL);
    assign ticlr_wen  = csr_write_en & (csr_write_addr == `CSR_TICLR);
    assign llbctl_wen = csr_write_en & (csr_write_addr == `CSR_LLBCTL);
    assign tlbrentry_wen = csr_write_en & (csr_write_addr == `CSR_TLBRENTRY);
    assign dmw0_wen   = csr_write_en & (csr_write_addr == `CSR_DMW0);
    assign dmw1_wen   = csr_write_en & (csr_write_addr == `CSR_DMW1);

    assign ctrl_slave.crmd = crmd;
    assign ctrl_slave.eentry = eentry;
    assign ctrl_slave.era = era;
    assign ctrl_slave.ecfg = ecfg;
    assign ctrl_slave.estat = estat;
    assign ctrl_slave.tlbrentry = tlbrentry;

    assign tlb_master.tlbidx = tlbidx;
    assign tlb_master.tlbehi = tlbehi;
    assign tlb_master.tlbelo0 = tlbelo0;
    assign tlb_master.tlbelo1 = tlbelo1;
    assign tlb_master.asid = asid[9:0];
    assign tlb_master.ecode = estat[21:16];
    assign tlb_master.csr_dmw0 = dmw0;
    assign tlb_master.csr_dmw1 = dmw1;
    assign tlb_master.csr_da = crmd[3];
    assign tlb_master.csr_pg = crmd[4];
    assign tlb_master.csr_plv = crmd[1:0];

    logic timer_en;
    logic eret_tlbrefill_excp;
    assign eret_tlbrefill_excp = (estat[21:16] == 6'h3f);

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
            end
        end else if (ctrl_slave.is_ertn) begin
            crmd[1:0] <= prmd[1:0];  // PLV
            crmd[2]   <= prmd[2];  // IE
            if (eret_tlbrefill_excp) begin
                crmd[3] <= 1'b0;  // DA
                crmd[4] <= 1'b1;  // PG
            end
        end 
        else if (crmd_wen) begin
            crmd[8:0] <= csr_write_data[8:0];
        end
    end

    // PRMD write
    always_ff @(posedge clk) begin
        if (rst) begin
            prmd <= 32'b0;
        end else if (ctrl_slave.is_exception) begin
            prmd[1:0] <= crmd[1:0];  // PPLV
            prmd[2]   <= crmd[2];  // PIE
        end else if (prmd_wen) begin
            prmd[2:0] <= csr_write_data[2:0];
        end
    end

    // ECFG write
    always_ff @(posedge clk) begin
        if (rst) begin
            ecfg <= 32'b0;
        end else if (ecfg_wen) begin
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
            timer_en <= 1'b0;
        end else begin
            estat[9:2] <= is_hwi;
            if (ticlr_wen && csr_write_data[0]) begin
                estat[11] <= 1'b0;
            end else if (tcfg_wen) begin
                timer_en <= csr_write_data[0];
            end else if (timer_en && tval == 32'h0) begin
                estat[11] <= 1'b1;
                timer_en <= tcfg[1];
            end
            if (ctrl_slave.is_exception) begin
                estat[21:16] <= ctrl_slave.ecode;
                estat[30:22] <= ctrl_slave.esubcode;
            end else if (estat_wen) begin
                estat[1:0] <= csr_write_data[1:0];
            end
        end
    end

    // ERA write
    always_ff @(posedge clk) begin
        if (rst) begin
            era <= 32'b0;
        end else if (ctrl_slave.is_exception) begin
            era <= ctrl_slave.exception_pc;
        end else if (era_wen) begin
            era <= csr_write_data;
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
                    if (ctrl_slave.is_inst_tlb_exception) begin
                        badv <= ctrl_slave.exception_pc;
                    end else begin
                        badv <= ctrl_slave.exception_addr;
                    end
                end
                `EXCEPTION_ADEF: begin
                    badv <= ctrl_slave.exception_pc;
                end
            endcase
        end else if (badv_wen) begin
            badv <= csr_write_data;
        end else begin
            badv <= badv;
        end
    end

    // EENTRY write
    always_ff @(posedge clk) begin
        if (rst) begin
            eentry <= 32'b0;
        end else if (eentry_wen) begin
            eentry[31:6] <= csr_write_data[31:6];
        end else begin
            eentry <= eentry;
        end
    end

    // TLBIDX write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbidx <= 32'b0;
        end else if (tlbidx_wen) begin
            tlbidx[4:0] <= csr_write_data[4:0];  // index
            tlbidx[29:24] <= csr_write_data[29:24];  // ps
            tlbidx[31] <= csr_write_data[31];  // ne
        end else if (tlb_inst.tlbsrch_ret) begin
            if (tlb_inst.search_tlb_found) begin
                tlbidx[4:0] <= tlb_inst.search_tlb_index;
                tlbidx[31]  <= 1'b0;
            end else begin
                tlbidx[31] <= 1'b1;
            end
        end else if (tlb_inst.tlbrd_ret) begin
            if (tlb_inst.tlbrd_valid) begin
                tlbidx[29:24] <= tlb_inst.tlbidx_out[29:24];
                tlbidx[31] <= tlb_inst.tlbidx_out[31];
            end else begin
                tlbidx[29:24] <= 6'b0;
                tlbidx[31] <= tlb_inst.tlbidx_out[31];
            end
        end 
    end

    // TLBEHI write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbehi <= 32'b0;
        end else if (tlbehi_wen) begin
            tlbehi[31:13] <= csr_write_data[31:13];  // vppn
        end else if (tlb_inst.tlbrd_ret) begin
            if (tlb_inst.tlbrd_valid) begin
                tlbehi[31:13] <= tlb_inst.tlbehi_out[31:13];
            end else begin
                tlbehi[31:13] <= 19'b0;
            end
        end else if (ctrl_slave.is_tlb_exception) begin
            if (ctrl_slave.is_inst_tlb_exception) begin
                tlbehi[31:13] <= ctrl_slave.exception_pc[31:13];
            end else begin
                tlbehi[31:13] <= ctrl_slave.exception_addr[31:13];
            end
        end 
    end

    // TLBELO0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbelo0 <= 32'b0;
        end else if (tlbelo0_wen) begin
            tlbelo0[0] <= csr_write_data[0];  // V
            tlbelo0[1] <= csr_write_data[1];  // D
            tlbelo0[3:2] <= csr_write_data[3:2];  // PLV
            tlbelo0[5:4] <= csr_write_data[5:4];  // MAT
            tlbelo0[6] <= csr_write_data[6];  // G
            tlbelo0[31:8] <= csr_write_data[31:8];  // PPN
        end else if (tlb_inst.tlbrd_ret) begin
            if (tlb_inst.tlbrd_valid) begin
                tlbelo0[0] <= tlb_inst.tlbelo0_out[0];
                tlbelo0[1] <= tlb_inst.tlbelo0_out[1];
                tlbelo0[3:2] <= tlb_inst.tlbelo0_out[3:2];
                tlbelo0[5:4] <= tlb_inst.tlbelo0_out[5:4];
                tlbelo0[6] <= tlb_inst.tlbelo0_out[6];
                tlbelo0[31:8] <= tlb_inst.tlbelo0_out[31:8];
            end else begin
                tlbelo0[0] <= 1'b0;
                tlbelo0[1] <= 1'b0;
                tlbelo0[3:2] <= 2'b0;
                tlbelo0[5:4] <= 2'b0;
                tlbelo0[6] <= 1'b0;
                tlbelo0[31:8] <= 24'b0;
            end
        end 
    end

    // TLBELO1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbelo1 <= 32'b0;
        end else if (tlbelo1_wen) begin
            tlbelo1[0] <= csr_write_data[0];  // V
            tlbelo1[1] <= csr_write_data[1];  // D
            tlbelo1[3:2] <= csr_write_data[3:2];  // PLV
            tlbelo1[5:4] <= csr_write_data[5:4];  // MAT
            tlbelo1[6] <= csr_write_data[6];  // G
            tlbelo1[31:8] <= csr_write_data[31:8];  // PPN
        end else if (tlb_inst.tlbrd_ret) begin
            if (tlb_inst.tlbrd_valid) begin
                tlbelo1[0] <= tlb_inst.tlbelo1_out[0];
                tlbelo1[1] <= tlb_inst.tlbelo1_out[1];
                tlbelo1[3:2] <= tlb_inst.tlbelo1_out[3:2];
                tlbelo1[5:4] <= tlb_inst.tlbelo1_out[5:4];
                tlbelo1[6] <= tlb_inst.tlbelo1_out[6];
                tlbelo1[31:8] <= tlb_inst.tlbelo1_out[31:8];
            end else begin
                tlbelo1[0] <= 1'b0;
                tlbelo1[1] <= 1'b0;
                tlbelo1[3:2] <= 2'b0;
                tlbelo1[5:4] <= 2'b0;
                tlbelo1[6] <= 1'b0;
                tlbelo1[31:8] <= 24'b0;
            end
        end 
    end

    // ASID write
    always_ff @(posedge clk) begin
        if (rst) begin
            asid[15:0]  <= 16'b0;
            asid[23:16] <= 8'd10;
            asid[31:24] <= 8'b0;
        end else if (asid_wen) begin
            asid[9:0] <= csr_write_data[9:0];
        end else if (tlb_inst.tlbrd_ret) begin
            if (tlb_inst.tlbrd_valid) begin
                asid[9:0] <= tlb_inst.asid_out;
            end else begin
                asid[9:0] <= 10'b0;
            end
        end 
    end

    // PGDL write
    always_ff @(posedge clk) begin
        if (rst) begin
            pgdl <= 32'b0;
        end else if (pgdl_wen) begin
            pgdl[31:12] <= csr_write_data[31:12];  // BASE
        end
    end

    // PGDH write
    always_ff @(posedge clk) begin
        if (rst) begin
            pgdh <= 32'b0;
        end else if (pgdh_wen) begin
            pgdh[31:12] <= csr_write_data[31:12];  // BASE
        end
    end

    // PGD write
    assign pgd = badv[31] ? pgdh : pgdl;

    // TLBRENTRY write
    always_ff @(posedge clk) begin
        if (rst) begin
            tlbrentry <= 32'b0;
        end else if (tlbrentry_wen) begin
            tlbrentry[31:6] <= csr_write_data[31:6];  // PA
        end
    end

    // DMW0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            dmw0 <= 32'b0;
        end else if (dmw0_wen) begin
            dmw0[0] <= csr_write_data[0];  // PLV0
            dmw0[3] <= csr_write_data[3];  // PLV3
            dmw0[5:4] <= csr_write_data[5:4];  // MAT
            dmw0[27:25] <= csr_write_data[27:25];  // PSEG
            dmw0[31:29] <= csr_write_data[31:29];  // VSEG
        end
    end

    // DMW1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            dmw1 <= 32'b0;
        end else if (dmw1_wen) begin
            dmw1[0] <= csr_write_data[0];  // PLV0
            dmw1[3] <= csr_write_data[3];  // PLV3
            dmw1[5:4] <= csr_write_data[5:4];  // MAT
            dmw1[27:25] <= csr_write_data[27:25];  // PSEG
            dmw1[31:29] <= csr_write_data[31:29];  // VSEG
        end
    end

    // CPUID write
    always_ff @(posedge clk) begin
        if (rst) begin
            cpuid <= 32'b0;
        end
    end

    // SAVE0 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save0 <= 32'b0;
        end else if (save0_wen) begin
            save0 <= csr_write_data;
        end
    end

    // SAVE1 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save1 <= 32'b0;
        end else if (save1_wen) begin
            save1 <= csr_write_data;
        end
    end

    // SAVE2 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save2 <= 32'b0;
        end else if (save2_wen) begin
            save2 <= csr_write_data;
        end
    end

    // SAVE3 write
    always_ff @(posedge clk) begin
        if (rst) begin
            save3 <= 32'b0;
        end else if (save3_wen) begin
            save3 <= csr_write_data;
        end
    end

    // LLBCTL write
    always_ff @(posedge clk) begin
        if (rst) begin
            llbctl <= 32'b0;
            llbit <= 1'b0;
        end else if (ctrl_slave.is_ertn) begin
            if (llbctl[2]) begin
                llbctl[2] <= 1'b0; // KLO
            end else begin
                llbit <= 1'b0; // ROLLB
            end
        end else if (llbctl_wen) begin
            llbctl[2] <= csr_write_data[2];
            if (is_llw_scw) begin
                llbit <= csr_write_data[0];
            end else if (csr_write_data[1]) begin
                llbit <= 1'b0;
            end
        end
    end

    // TID write
    always_ff @(posedge clk) begin
        if (rst) begin
            tid <= 32'b0;
        end else if (tid_wen) begin
            tid <= csr_write_data;
        end
    end

    // TCFG write
    always_ff @(posedge clk) begin
        if (rst) begin
            tcfg <= 32'b0;
        end else if (tcfg_wen) begin
            tcfg <= csr_write_data;
        end
    end

    // TVAL write
    always_ff @(posedge clk) begin
        if (tcfg_wen) begin
            tval <= {csr_write_data[31:2], 2'b0};
        end else if (timer_en) begin
            if (tval != 32'b0) begin
                tval <= tval - 32'b1;
            end else if (tval == 32'b0) begin
                tval <= tcfg[1]? {tcfg[31:2], 2'b0}: 32'hffffffff;
            end
        end
    end

    // TICLR write
    always_ff @(posedge clk) begin
        if (rst) begin
            ticlr <= 32'b0;
        end
    end

    // read
    always_comb begin
        for (integer i = 0; i < 2; i++) begin
            if (rst) begin
                dispatch_slave.csr_read_data[i] = 0;
            end else if (dispatch_slave.csr_read_en[i]) begin
                case (dispatch_slave.csr_read_addr[i])
                    `CSR_CRMD: begin
                        dispatch_slave.csr_read_data[i] = crmd;
                    end
                    `CSR_PRMD: begin
                        dispatch_slave.csr_read_data[i] = prmd;
                    end
                    `CSR_ECFG: begin
                        dispatch_slave.csr_read_data[i] = ecfg;
                    end
                    `CSR_ESTAT: begin
                        dispatch_slave.csr_read_data[i] = estat;
                    end
                    `CSR_ERA: begin
                        dispatch_slave.csr_read_data[i] = era;
                    end
                    `CSR_BADV: begin
                        dispatch_slave.csr_read_data[i] = badv;
                    end
                    `CSR_EENTRY: begin
                        dispatch_slave.csr_read_data[i] = eentry;
                    end
                    `CSR_TLBIDX: begin
                        dispatch_slave.csr_read_data[i] = tlbidx;
                    end
                    `CSR_TLBEHI: begin
                        dispatch_slave.csr_read_data[i] = tlbehi;
                    end
                    `CSR_TLBELO0: begin
                        dispatch_slave.csr_read_data[i] = tlbelo0;
                    end
                    `CSR_TLBELO1: begin
                        dispatch_slave.csr_read_data[i] = tlbelo1;
                    end
                    `CSR_ASID: begin
                        dispatch_slave.csr_read_data[i] = asid;
                    end
                    `CSR_PGDL: begin
                        dispatch_slave.csr_read_data[i] = pgdl;
                    end
                    `CSR_PGDH: begin
                        dispatch_slave.csr_read_data[i] = pgdh;
                    end
                    `CSR_PGD: begin
                        dispatch_slave.csr_read_data[i] = pgd;
                    end
                    `CSR_CPUID: begin
                        dispatch_slave.csr_read_data[i] = cpuid;
                    end
                    `CSR_SAVE0: begin
                        dispatch_slave.csr_read_data[i] = save0;
                    end
                    `CSR_SAVE1: begin
                        dispatch_slave.csr_read_data[i] = save1;
                    end
                    `CSR_SAVE2: begin
                        dispatch_slave.csr_read_data[i] = save2;
                    end
                    `CSR_SAVE3: begin
                        dispatch_slave.csr_read_data[i] = save3;
                    end
                    `CSR_LLBCTL: begin
                        dispatch_slave.csr_read_data[i] = {llbctl[31:1], llbit};
                    end
                    `CSR_TID: begin
                        dispatch_slave.csr_read_data[i] = tid;
                    end
                    `CSR_TCFG: begin
                        dispatch_slave.csr_read_data[i] = tcfg;
                    end
                    `CSR_TVAL: begin
                        dispatch_slave.csr_read_data[i] = tval;
                    end
                    `CSR_TICLR: begin
                        dispatch_slave.csr_read_data[i] = 32'b0;
                    end
                    `CSR_TLBRENTRY: begin
                        dispatch_slave.csr_read_data[i] = tlbrentry;
                    end
                    `CSR_DMW0: begin
                        dispatch_slave.csr_read_data[i] = dmw0;
                    end
                    `CSR_DMW1: begin
                        dispatch_slave.csr_read_data[i] = dmw1;
                    end
                    default: begin
                        dispatch_slave.csr_read_data[i] = 32'b0;
                    end
                endcase
            end else begin
                dispatch_slave.csr_read_data[i] = 32'b0;
            end
        end
    end    

endmodule
