module backend
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic continue_idle,

    // with front
    frontend_backend fb_slave,

    // with dcache
    mem_dcache dcache_master
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

    // mem
    ex_mem_t mem_i;
    mem_csr mem_csr_io();
    wb_push_forward_t wb_push_forward;
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

        .slave(dispatch_regfile_io.slave)
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

        .pause_ex(pause_request.pause_ex),
        .ex_mem(ex_o),

        .master(ex_div_io.master)
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
        .is_syscall_break(is_syscall_break)
    );

    assign mem_push_forward.reg_write_en = mem_o.data_write.write_en;
    assign mem_push_forward.reg_write_addr = mem_o.data_write.write_addr;
    assign mem_push_forward.reg_write_data = mem_o.data_write.write_data;

    mem_wb u_mem_wb (
        .clk,
        .rst,

        .ctrl(fb_slave.ctrl),

        .mem_i(mem_o),
        .wb_o(wb)
    );

    assign wb_push_forward.LLbit_write_en = wb.csr_write.LLbit_write_en;
    assign wb_push_forward.LLbit_write_data = wb.csr_write.LLbit_write_data;
    assign wb_push_forward.csr_write_en = wb.csr_write.csr_write_en;
    assign wb_push_forward.csr_write_addr = wb.csr_write.csr_write_addr;
    assign wb_push_forward.csr_write_data = wb.csr_write.csr_write_data;

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

    csr u_csr (
        .clk,
        .rst,

        .mem_slave(mem_csr_io.slave),

        .wb_i(wb.csr_write),

        .is_ertn(mem_ctrl.is_ertn),
        .is_syscall_break(is_syscall_break),

        .is_ipi(32'b0),
        .is_hwi(0),

        .ctrl_slave(ctrl_csr_io.slave),
        .CRMD_PLV(CRMD_PLV)
    );

    stable_counter u_stable_counter (
        .clk,
        .rst,

        .cnt(cnt)
    );
endmodule