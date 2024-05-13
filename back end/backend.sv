`timescale 1ns / 1ps

module backend
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic continue_idle,

    // with front
    frontend_backend fb_slave,

    // with dcache
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    // debug
    output logic[31:0] debug0_wb_pc,
    output logic[3:0] debug0_wb_rf_wen,
    output logic[4:0] debug0_wb_rf_wnum,
    output logic[31:0] debug0_wb_rf_wdata,
    output logic[31:0] debug0_wb_inst,

    output logic inst_valid_diff,
    output logic cnt_inst_diff,
    output logic csr_rstat_en_diff,
    output logic[31: 0] csr_data_diff,
    output logic[63: 0] timer_64_diff,

    output logic excp_flush,
    output logic ertn_flush,
    output logic[5: 0] ecode,

    output logic[7: 0] inst_st_en_diff,
    output logic[31: 0] st_paddr_diff,
    output logic[31: 0] st_vaddr_diff,
    output logic[31: 0] st_data_diff,

    output logic[7: 0] inst_ld_en_diff,
    output logic[31: 0] ld_paddr_diff,
    output logic[31: 0] ld_vaddr_diff,

    output logic [31: 0] regs_diff [31: 0],

    output logic[31:0] csr_crmd_diff,
    output logic[31:0] csr_prmd_diff,
    output logic[31:0] csr_ectl_diff,
    output logic[31:0] csr_estat_diff,
    output logic[31:0] csr_era_diff,
    output logic[31:0] csr_badv_diff,
    output logic[31:0] csr_eentry_diff,
    output logic[31:0] csr_tlbidx_diff,
    output logic[31:0] csr_tlbehi_diff,
    output logic[31:0] csr_tlbelo0_diff,
    output logic[31:0] csr_tlbelo1_diff,
    output logic[31:0] csr_asid_diff,
    output logic[31:0] csr_save0_diff,
    output logic[31:0] csr_save1_diff,
    output logic[31:0] csr_save2_diff,
    output logic[31:0] csr_save3_diff,
    output logic[31:0] csr_tid_diff,
    output logic[31:0] csr_tcfg_diff,
    output logic[31:0] csr_tval_diff,
    output logic[31:0] csr_ticlr_diff,
    output logic[31:0] csr_llbctl_diff,
    output logic[31:0] csr_tlbrentry_diff,
    output logic[31:0] csr_dmw0_diff,
    output logic[31:0] csr_dmw1_diff,
    output logic[31:0] csr_pgdl_diff,
    output logic[31:0] csr_pgdh_diff
);

    // regfile
    dispatch_regfile dispatch_regfile_io();

    // id
    pc_id_t id_i;
    id_dispatch_t id_o;
    logic[1: 0] CRMD_PLV;
    csr_push_forward_t csr_push_forward;

    // dispatch
    id_dispatch_t dispatch_i;
    pipeline_push_forward_t ex_push_forward;
    pipeline_push_forward_t mem_push_forward;
    dispatch_ex_t dispatch_o;

    // ex
    dispatch_ex_t ex_i;
    ex_div ex_div_io();
    ex_mem_t ex_o;
    logic LLbit;
    csr_push_forward_t mem_csr_push_forward;

    // mem
    ex_mem_t mem_i;
    mem_csr mem_csr_io();
    csr_push_forward_t wb_push_forward;
    bus64_t cnt;
    mem_wb_t mem_o;
    mem_ctrl_t mem_ctrl;
    logic is_syscall_break;

    // wb 
    mem_wb_t wb;

    // ctrl
    ctrl_csr ctrl_csr_io();
    pause_t pause_request;

    assign id_i.pc = fb_slave.inst_and_pc_o.pc_o_1;
    assign id_i.inst = fb_slave.inst_and_pc_o.inst_o_1;
    assign id_i.is_exception = fb_slave.inst_and_pc_o.is_exception;
    assign id_i.exception_cause = fb_slave.inst_and_pc_o.exception_cause;
    assign id_i.pre_is_branch = fb_slave.branch_info.is_branch;
    assign id_i.pre_is_branch_taken = fb_slave.branch_info.pre_taken_or_not;
    assign id_i.pre_branch_addr = fb_slave.branch_info.pre_branch_addr;


    id u_id (
        .pc_id(id_i),

        .CRMD_PLV(CRMD_PLV),
        .csr_push_forward(csr_push_forward),

        .pause_id(pause_request.pause_id),
        .id_dispatch(id_o)
    );

    assign csr_push_forward.csr_write_en = wb.csr_write.csr_write_en;
    assign csr_push_forward.csr_write_addr = wb.csr_write.csr_write_addr;
    assign csr_push_forward.csr_write_data = wb.csr_write.csr_write_data;

    id_dispatch u_id_dispatch (
        .clk,
        .rst,

        .branch_flush(fb_slave.update_info.branch_flush),

        .ctrl(fb_slave.ctrl),

        .id_i(id_o),

        .dispatch_o(dispatch_i)
    );

    dispatch u_dispatch (
        .id_dispatch(dispatch_i),

        .master(dispatch_regfile_io.master),

        .ex_push_forward(ex_push_forward),
        .mem_push_forward(mem_push_forward),
        .ex_aluop(ex_o.aluop), 

        .pause_dispatch(pause_request.pause_dispatch),
        .dispatch_ex(dispatch_o),

        .branch_update_info(fb_slave.update_info)
    );

    regfile u_regfile (
        .clk,
        .rst,

        .data_write(wb.data_write),

        .slave(dispatch_regfile_io.slave),

        .regs_diff
    );

    dispatch_ex u_dispatch_ex (
        .clk,
        .rst,

        .ctrl(fb_slave.ctrl),

        .dispatch_i(dispatch_o),
        .ex_o(ex_i)
    );

    ex u_ex (
        .dispatch_ex(ex_i),
        
        .LLbit(LLbit),
        .mem_push_forward(mem_csr_push_forward),
        .wb_push_forward(wb.csr_write),

        .pause_ex(pause_request.pause_ex),
        .ex_mem(ex_o),

        .dcache_master(dcache_master),
        .div_master(ex_div_io.master),
        .cache_inst(cache_inst)
    );

    assign ex_push_forward.reg_write_en = ex_o.reg_write_en;
    assign ex_push_forward.reg_write_addr = ex_o.reg_write_addr;
    assign ex_push_forward.reg_write_data = ex_o.reg_write_data;

    div u_div (
        .clk,
        .rst,

        .slave(ex_div_io.slave)
    );

    ex_mem u_ex_mem (
        .clk,
        .rst,

        .ctrl(fb_slave.ctrl),

        .ex_i(ex_o),
        .mem_o(mem_i)
    );


    mem u_mem (
        .ex_mem(mem_i),

        .csr_master(mem_csr_io.master),
        .dcache_master(dcache_master),

        .wb_push_forward(wb_push_forward),
        
        .cnt(cnt),

        .pause_mem(pause_request.pause_mem),
        .mem_wb(mem_o),
        .mem_ctrl(mem_ctrl),
        .is_syscall_break(is_syscall_break),

        .cnt_inst_diff,
        .csr_rstat_en_diff,
        .csr_data_diff,
        .timer_64_diff,

        .inst_st_en_diff,
        .st_paddr_diff,
        .st_vaddr_diff,
        .st_data_diff,

        .inst_ld_en_diff,
        .ld_paddr_diff,
        .ld_vaddr_diff
    );

    assign mem_push_forward.reg_write_en = mem_o.data_write.write_en;
    assign mem_push_forward.reg_write_addr = mem_o.data_write.write_addr;
    assign mem_push_forward.reg_write_data = mem_o.data_write.write_data;

    assign mem_csr_push_forward.csr_write_en = mem_o.csr_write.csr_write_en;
    assign mem_csr_push_forward.csr_write_addr = mem_o.csr_write.csr_write_addr;
    assign mem_csr_push_forward.csr_write_data = mem_o.csr_write.csr_write_data;

    mem_wb u_mem_wb (
        .clk,
        .rst,

        .ctrl(fb_slave.ctrl),

        .mem_i(mem_o),
        .wb_o(wb),

        .inst_valid_diff
    );

    assign wb_push_forward.csr_write_en = wb.csr_write.csr_write_en;
    assign wb_push_forward.csr_write_addr = wb.csr_write.csr_write_addr;
    assign wb_push_forward.csr_write_data = wb.csr_write.csr_write_data;

    assign debug0_wb_pc = wb.pc;
    assign debug0_wb_rf_wen = wb.data_write.write_en;
    assign debug0_wb_rf_wnum = wb.data_write.write_addr;
    assign debug0_wb_rf_wdata = wb.data_write.write_data;
    assign debug0_wb_inst = wb.inst;

    ctrl u_ctrl (
        .pause_request(pause_request),
        .mem_i(mem_ctrl),

        .continue_idle(continue_idle),

        .wb_push_forward(wb_push_forward),
        
        .master(ctrl_csr_io.master),

        .ctrl_o(fb_slave.ctrl),
        .ctrl_pc(fb_slave.ctrl_pc),
        .send_inst1_en(fb_slave.send_inst_en)
    );

    assign ertn_flush = mem_ctrl.is_ertn;
    assign excp_flush = fb_slave.ctrl.exception_flush;
    assign ecode = ctrl_csr_io.ecode;

    csr u_csr (
        .clk,
        .rst,

        .mem_slave(mem_csr_io.slave),

        .wb_i(wb.csr_write),

        .is_ertn(mem_ctrl.is_ertn),
        .is_syscall_break(is_syscall_break),

        .is_ipi(1'b0),
        .is_hwi(0),

        .ctrl_slave(ctrl_csr_io.slave),
        .CRMD_PLV(CRMD_PLV),
        .LLbit(LLbit),

        .csr_crmd_diff,
        .csr_prmd_diff,
        .csr_ectl_diff,
        .csr_estat_diff,
        .csr_era_diff,
        .csr_badv_diff,
        .csr_eentry_diff,
        .csr_tlbidx_diff,
        .csr_tlbehi_diff,
        .csr_tlbelo0_diff,
        .csr_tlbelo1_diff,
        .csr_asid_diff,
        .csr_save0_diff,
        .csr_save1_diff,
        .csr_save2_diff,
        .csr_save3_diff,
        .csr_tid_diff,
        .csr_tcfg_diff,
        .csr_tval_diff,
        .csr_ticlr_diff,
        .csr_llbctl_diff,
        .csr_tlbrentry_diff,
        .csr_dmw0_diff,
        .csr_dmw1_diff,
        .csr_pgdl_diff,
        .csr_pgdh_diff
    );

    stable_counter u_stable_counter (
        .clk,
        .rst,

        .cnt(cnt)
    );

endmodule
