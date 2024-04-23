module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input bus32_t rom_inst,
    
    output logic inst_en,
    output bus32_t pc,

    input is_cache_hit,
    input bus32_t ram_read_data,

    output bus32_t ram_addr,
    output bus32_t ram_wirte_data,
    output logic ram_write_en,
    output logic ram_read_en,
    output logic[3: 0] ram_select,
    output logic ram_en
);

    interface regfile_dispatch;
        bus32_t reg1_read_data;
        bus32_t reg2_read_data;

        logic reg1_read_en;
        reg_addr_t reg1_read_addr;
        logic reg2_read_en;
        reg_addr_t reg2_read_addr;

        modport master (
            input reg1_read_data,
            input reg2_read_data,
            output reg1_read_en,
            output reg1_read_addr,
            output reg2_read_en,
            output reg2_read_addr
        );

        modport slave (
            input reg1_read_en,
            input reg1_read_addr,
            input reg2_read_en,
            input reg2_read_addr,
            output reg1_read_data,
            output reg2_read_data
        );
        
    endinterface: regfile_dispatch
        
    interface ex_div;
        bus64_t div_result;
        logic div_done;

        bus32_t div_data1;
        bus32_t div_data2;
        logic div_signed;
        logic div_strat;

        modport slave (
            input div_data1,
            input div_data2,
            input div_signed,
            input div_strat,
            output div_result,
            output div_done
        );

        modport master (
            output div_data1,
            output div_data2,
            output div_signed,
            output div_strat,
            input div_result,
            input div_done
        );
    endinterface:ex_div

    interface mem_csr;
        logic LLbit;
        bus32_t csr_read_data;

        logic csr_read_en;
        csr_addr_t csr_read_addr;

        modport master (
            input LLbit,
            input csr_read_data,
            output csr_read_en,
            output csr_read_addr
        );

        modport slave (
            output LLbit,
            output csr_read_data,
            input csr_read_en,
            input csr_read_addr
        );
        
    endinterface:mem_csr

    interface mem_cache;
        logic is_cache_hit;
        bus32_t cache_data;

        bus32_t cache_addr;
        bus32_t store_data;
        logic write_en;
        logic read_en;

        logic[3: 0] select;

        logic cache_en;

        modport master (
            input cache_data,
            input is_cache_hit,
            output cache_addr,
            output store_data,
            output write_en,
            output read_en,
            output select,
            output cache_en
        );

        modport slave (
            output cache_data,
            output is_cache_hit,
            input cache_addr,
            input store_data,
            input write_en,
            input read_en,
            input select,
            input cache_en
        );
    endinterface:mem_cache

    interface ctrl_csr;
        bus32_t EENTRY_VA;
        bus32_t ERA_PC;
        logic[11: 0] ECFG_LIE;
        logic[11: 0] ESTAT_IS;
        logic CRMD_IE;

        logic is_exception;
        exception_cause_t exception_cause;
        bus32_t exception_pc;
        bus32_t exception_addr;

        modport master (
            input EENTRY_VA,
            input ERA_PC,
            input ECFG_LIE,
            input ESTAT_IS,
            input CRMD_IE,
            output is_exception,
            output exception_cause,
            output exception_pc,
            output exception_addr
        );

        modport slave (
            output EENTRY_VA,
            output ERA_PC,
            output ECFG_LIE,
            output ESTAT_IS,
            output CRMD_IE,
            input is_exception,
            input exception_cause,
            input exception_pc,
            input exception_addr
        );
    endinterface:ctrl_csr


    // branch
    logic is_branch;
    bus32_t branch_target_addr;
    logic branch_flush;

    // regfile
    regfile_dispatch regfile_dispatch_io();

    // pc 
    ctrl_pc_t ctrl_pc;
    pc_id_t pc_o;

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
    id_dispatch_t ex_i;
    ex_div ex_div_io();
    ex_mem_t ex_o;

    // mem
    ex_mem_t mem_i;
    mem_csr mem_csr_io();
    mem_cache mem_cache_io();
    wb_push_forward_t wb_push_forward;
    bus64_t cnt;
    mem_wb_t mem_o;
    mem_ctrl_t mem_ctrl;
    logic is_syscall_break;

    // wb 
    mem_wb_t wb;

    // ctrl
    ctrl_t ctrl;
    ctrl_csr ctrl_csr_io();
    pause_t pause_request;


    pc u_pc (
        .clk,
        .rst,

        .is_branch(is_branch),
        .branch_target_addr(branch_target_addr),

        .ctrl(ctrl),
        .ctrl_pc(ctrl_pc),

        .pc_id(pc_o),

        .inst_en(inst_en)
    );

    assign pc = pc_o.pc;
    assign pc_o.inst = rom_inst;

    if_id u_if_id (
        .clk,
        .rst,

        .branch_flush(branch_flush),

        .ctrl(ctrl),

        .pc_i(pc_o),

        .id_o(id_i)
    );

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

        .branch_flush(branch_flush),

        .ctrl(ctrl),

        .id_i(id_o),

        .dispatch_o(dispatch_i)
    );

    dispatch u_dispatch (
        .id_dispatch(dispatch_i),

        .master(regfile_dispatch_io),

        .ex_push_forward(ex_push_forward),
        .mem_push_forward(mem_push_forward),

        .pause_dispatch(pause_request.pause_dispatch),
        .dispatch_ex(dispatch_o)
    );

    regfile u_regfile (
        .clk,
        .rst,

        .data_write(wb.data_write),

        .slave(regfile_dispatch_io)
    );

    dispatch_ex u_dispatch_ex (
        .clk,
        .rst,

        .ctrl(ctrl),

        .dispatch_i(dispatch_o),
        .ex_o(ex_i)
    );

    ex u_ex (
        .dispatch_ex(ex_i),

        .pause_id(pause_request.pause_ex),
        .ex_mem(ex_o),

        .master(ex_div_io)
    );

    assign ex_push_forward.aluop = ex_o.aluop;
    assign ex_push_forward.reg_write_en = ex_o.reg_write_en;
    assign ex_push_forward.reg_write_addr = ex_o.reg_write_addr;
    assign ex_push_forward.reg_write_data = ex_o.reg_write_data;

    div u_div (
        .clk,
        .rst,

        .slave(ex_div_io)
    );

    ex_mem u_ex_mem (
        .clk,
        .rst,

        .ctrl(ctrl),

        .ex_i(ex_o),
        .mem_o(mem_i)
    );

    mem u_mem (
        .ex_mem(mem_i),

        .csr_master(mem_csr_io),
        .cache_master(mem_cache_io),

        .wb_push_forward(wb_push_forward),
        
        .cnt(cnt),

        .pasue_mem(pause_request.pause_mem),
        .mem_wb(mem_o),
        .mem_ctrl(mem_ctrl),
        .is_syscall_break(is_syscall_break)
    );

    assign mem_push_forward.aluop = mem_o.aluop;
    assign mem_push_forward.reg_write_en = mem_o.reg_write_en;
    assign mem_push_forward.reg_write_addr = mem_o.reg_write_addr;
    assign mem_push_forward.reg_write_data = mem_o.reg_write_data;

    mem_wb u_mem_wb (
        .clk,
        .rst,

        .ctrl(ctrl),

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

        .wb_push_forward(wb_push_forward),
        
        .master(ctrl_csr_io),

        .ctrl_o(ctrl),
        .ctrl_pc(ctrl_pc)
    );

    csr u_csr (
        .clk,
        .rst,

        .mem_slave(mem_csr_io),

        .wb_i(wb.csr_write),

        .is_ertn(mem_ctrl.is_ertn),
        .is_syscall_break(is_syscall_break),

        .is_ipi(0),
        .is_hwi(0),

        .ctrl_slave(ctrl_csr_io),
        .CRMD_PLV(CRMD_PLV)
    );

    stable_counter u_stable_counter (
        .clk,
        .rst,

        .cnt(cnt)
    );
endmodule