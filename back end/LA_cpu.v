`include "define.v"

module LA_cpu (
    input wire clk,
    input wire rst,

    input wire[`InstWidth] rom_inst_i,
    input wire is_cache_hit,
    input wire[`RegWidth] ram_data_i,

    output wire[`InstAddrWidth] rom_inst_addr_o,
    output wire rom_inst_en_o,

    output wire[`RegWidth] ram_addr_o,
    output wire[`RegWidth] ram_data_o,
    output wire ram_read_en_o,
    output wire ram_write_en_o,
    output wire[3: 0] ram_select_o,
    output wire ram_en_o
);

    // id to pc
    wire id_is_branch_o;
    wire[`InstAddrWidth] id_branch_target_addr_o;

    // if and if_id
    wire[`InstAddrWidth] pc;
    wire[4: 0] if_is_exception_o;
    wire [`FiveExceptionCauseWidth] if_exception_cause_o;

    // if_id and id
    wire[`InstAddrWidth] id_pc_i;
    wire[`InstWidth] id_inst_i;
    wire id_branch_flush_o;
    wire[4: 0] id_is_exception_i;
    wire[`FiveExceptionCauseWidth] id_exception_cause_i;

    // id and id_ex
    wire[`ALUOpWidth] id_aluop_o;
    wire[`ALUSelWidth] id_alusel_o;
    wire[`RegWidth] id_reg1_o;
    wire[`RegWidth] id_reg2_o;
    wire[`RegAddrWidth] id_reg_write_addr_o;
    wire id_reg_write_en_o;
    wire[`RegWidth] id_reg_write_branch_data_o;
    wire[`InstWidth] id_inst_o;
    wire[`InstAddrWidth] id_pc_o;
    wire id_csr_read_en_o;
    wire id_csr_write_en_o;
    wire[`CSRAddrWidth] id_csr_addr_o;
    wire[4: 0] id_is_exception_o;
    wire[`FiveExceptionCauseWidth] id_exception_cause_o;

    // id_ex and ex
    wire[`ALUOpWidth] ex_aluop_i;
    wire[`ALUSelWidth] ex_alusel_i;
    wire[`RegWidth] ex_reg1_i;
    wire[`RegWidth] ex_reg2_i;
    wire[`RegAddrWidth] ex_reg_write_addr_i;
    wire ex_reg_write_en_i;
    wire[`RegWidth] ex_reg_write_branch_data_i;
    wire[`InstWidth] ex_inst_i;
    wire ex_csr_read_en_i;
    wire ex_csr_write_en_i;
    wire[`CSRAddrWidth] ex_csr_addr_i;
    wire[4: 0] ex_is_exception_i;
    wire[`FiveExceptionCauseWidth] ex_exception_cause_i;
    wire[`InstAddrWidth] ex_pc_i;

    // ex and ex_mem
    wire[`RegAddrWidth] ex_reg_write_addr_o;
    wire[`RegWidth] ex_reg_write_data_o;
    wire ex_reg_write_en_o;
    wire[`ALUOpWidth] ex_aluop_o;
    wire[`RegWidth] ex_mem_addr_o;
    wire[`RegWidth] ex_store_data_o;
    wire ex_csr_read_en_o;
    wire ex_csr_write_en_o;
    wire[`CSRAddrWidth] ex_csr_addr_o;
    wire[`RegWidth] ex_csr_write_data_o;
    wire[`RegWidth] ex_csr_mask_o;
    wire[`InstAddrWidth] ex_pc_o;
    wire[4: 0] ex_is_exception_o;
    wire[`FiveExceptionCauseWidth] ex_exception_cause_o;
 
    // ex_mem and mem
    wire[`RegAddrWidth] mem_reg_write_addr_i;
    wire[`RegWidth] mem_reg_write_data_i;
    wire mem_reg_write_en_i;
    wire[`ALUOpWidth] mem_aluop_i;
    wire[`RegWidth] mem_mem_addr_i;
    wire[`RegWidth] mem_store_data_i;
    wire mem_csr_read_en_i;
    wire mem_csr_write_en_i;
    wire[`CSRAddrWidth] mem_csr_addr_i;
    wire[`RegWidth] mem_csr_write_data_i;
    wire[`RegWidth] mem_csr_mask_i;
    wire[`InstAddrWidth] mem_pc_i;
    wire[4: 0] mem_is_exception_i;
    wire[`FiveExceptionCauseWidth] mem_exception_cause_i;

    // mem and mem_wb
    wire[`RegAddrWidth] mem_reg_write_addr_o;
    wire[`RegWidth] mem_reg_write_data_o;
    wire mem_reg_write_en_o;
    wire mem_LLbit_write_en_o;
    wire mem_LLbit_data_o;
    wire mem_csr_write_en_o;
    wire[`CSRAddrWidth] mem_csr_write_addr_o;
    wire[`RegWidth] mem_csr_write_data_o;


    // mem_wb and wb
    wire[`RegAddrWidth] wb_reg_write_addr_i;
    wire[`RegWidth] wb_reg_write_data_i;
    wire wb_reg_write_en_i;
    wire wb_LLbit_write_en_i;
    wire wb_LLbit_write_data_i;
    wire wb_csr_write_en_i;
    wire[`CSRAddrWidth] wb_csr_write_addr_i;
    wire[`RegWidth] wb_csr_write_data_i;

    // id and regfile
    wire reg1_read_en;
    wire reg2_read_en;
    wire[`RegAddrWidth] reg1_read_addr;
    wire[`RegAddrWidth] reg2_read_addr;
    wire[`RegWidth] reg1_data;
    wire[`RegWidth] reg2_data;

    // mem and csr
    wire LLbit_o;
    wire[`RegWidth] csr_read_data;
    wire csr_read_en;
    wire[`RegWidth] csr_read_addr;
    wire is_ertn;
    wire is_syscall_break;

    // mem and ctrl
    wire[`InstAddrWidth] mem_exception_pc_o;
    wire[`RegWidth] mem_exception_addr_o;
    wire[4: 0] mem_is_exception_o;
    wire[`FiveExceptionCauseWidth] mem_exception_cause_o;
    wire pause_mem;

    // mem and stable counter
    wire[63: 0] cnt;
 
    // ctrl
    wire[5: 0] pause;
    wire pause_id;
    wire pause_ex;
    wire exception_flush;
    wire[`InstAddrWidth] exception_in_pc_o;
    wire is_interrupt_o;

    // ctrl and csr
    wire[`InstAddrWidth] EENTRY_VA;
    wire[`InstAddrWidth] ERA_PC;
    wire[11: 0] ECFG_LIE;
    wire[11: 0] ESTAT_IS;
    wire CRMD_IE;
    wire is_exception;
    wire[`ExceptionCauseWidth] exception_cause;
    wire[`InstAddrWidth] exception_pc;
    wire[`RegWidth] exception_addr;

    // div 
    wire div_start;
    wire div_singed;
    wire[`RegWidth] div_data1;
    wire[`RegWidth] div_data2;
    wire[`DoubleRegWidth] div_result;
    wire div_done;

    // id and csr
    wire[1: 0] CRMD_PLV;

    pc u_pc (
        .clk(clk),
        .rst(rst),

        .pause(pause),
        .is_branch_i(id_is_branch_o),
        .branch_target_addr_i(id_branch_target_addr_o),

        .exception_flush(exception_flush),
        .exception_handle_pc_i(exception_in_pc_o),

        .is_interrupt_i(is_interrupt_o),
        .is_exception_o(if_is_exception_o),
        .exception_cause_o(if_exception_cause_o),
        
        .pc_o(pc),
        .inst_en_o(rom_inst_en_o)
    );

    assign rom_inst_addr_o = pc;

    if_id u_if_id (
        .clk(clk),
        .rst(rst),
        .pause(pause),
        .branch_flush(id_branch_flush_o),
        .if_is_exception(if_is_exception_o),
        .if_exception_cause(if_exception_cause_o),
        .exception_flush(exception_flush),

        .if_pc(pc),
        .if_inst(rom_inst_i),

        .id_pc(id_pc_i),
        .id_inst(id_inst_i),
        .id_is_exception(id_is_exception_i),
        .id_exception_cause(id_exception_cause_i)
    );

    id u_id (
        .rst(rst),
        .pause_id(pause_id),

        .pc_i(id_pc_i),
        .inst_i(id_inst_i),
        .is_exception_i(id_is_exception_i),
        .exception_cause_i(id_exception_cause_i),

        // from regfile
        .reg1_data_i(reg1_data),
        .reg2_data_i(reg2_data),

        // to regfile
        .reg1_read_en_o(reg1_read_en),
        .reg2_read_en_o(reg2_read_en),
        .reg1_read_addr_o(reg1_read_addr),
        .reg2_read_addr_o(reg2_read_addr),

        // to ex
        .aluop_o(id_aluop_o),
        .alusel_o(id_alusel_o),
        .reg1_o(id_reg1_o),
        .reg2_o(id_reg2_o),
        .reg_write_addr_o(id_reg_write_addr_o),
        .reg_write_en_o(id_reg_write_en_o),
        .inst_o(id_inst_o),
        .pc_o(id_pc_o),

        .csr_read_en_o(id_csr_read_en_o),
        .csr_write_en_o(id_csr_write_en_o),
        .csr_addr_o(id_csr_addr_o),

        .is_exception_o(id_is_exception_o),
        .exception_cause_o(id_exception_cause_o),

        // data pushed forward
        .ex_reg_write_en_i(ex_reg_write_en_o),
        .ex_reg_write_addr_i(ex_reg_write_addr_o),
        .ex_reg_write_data_i(ex_reg_write_data_o),
        .mem_reg_write_en_i(mem_reg_write_en_o),
        .mem_reg_write_addr_i(mem_reg_write_addr_o),
        .mem_reg_write_data_i(mem_reg_write_data_o),
        .mem_csr_write_en_i(mem_csr_write_en_o),
        .mem_csr_write_addr_i(mem_csr_write_addr_o),
        .mem_csr_write_data_i(mem_csr_write_data_o),

        // branch
        .is_branch_o(id_is_branch_o),
        .branch_target_addr_o(id_branch_target_addr_o),
        .reg_write_branch_data_o(id_reg_write_branch_data_o),
        .branch_flush_o(id_branch_flush_o),

        // from ex
        .ex_aluop_i(ex_aluop_o),

        // from csr
        .CRMD_PLV(CRMD_PLV)
    );

    regfile u_regfile (
        .clk(clk),
        .rst(rst),

        // from wb
        .write_en(wb_reg_write_en_i),
        .write_addr(wb_reg_write_addr_i),
        .write_data(wb_reg_write_data_i),

        // with id
        .read1_en(reg1_read_en),
        .read1_addr(reg1_read_addr),
        .read1_data(reg1_data),
        .read2_en(reg2_read_en),
        .read2_addr(reg2_read_addr),
        .read2_data(reg2_data)
    );

    id_ex u_id_ex (
        .clk(clk),
        .rst(rst),
        .pause(pause),
        .exception_flush(exception_flush),

        // from id
        .id_alusel(id_alusel_o),
        .id_aluop(id_aluop_o),
        .id_reg1(id_reg1_o),
        .id_reg2(id_reg2_o),
        .id_reg_write_addr(id_reg_write_addr_o),
        .id_reg_write_en(id_reg_write_en_o),
        .id_reg_write_branch_data(id_reg_write_branch_data_o),
        .id_inst(id_inst_o),
        .id_csr_read_en(id_csr_read_en_o),
        .id_csr_write_en(id_csr_write_en_o),
        .id_csr_addr(id_csr_addr_o),
        .id_is_exception(id_is_exception_o),
        .id_exception_cause(id_exception_cause_o),
        .id_pc(id_pc_o),

        // to ex
        .ex_alusel(ex_alusel_i),
        .ex_aluop(ex_aluop_i),
        .ex_reg1(ex_reg1_i),
        .ex_reg2(ex_reg2_i),
        .ex_reg_write_addr(ex_reg_write_addr_i),
        .ex_reg_write_en(ex_reg_write_en_i),
        .ex_reg_write_branch_data(ex_reg_write_branch_data_i),
        .ex_inst(ex_inst_i),
        .ex_csr_read_en(ex_csr_read_en_i),
        .ex_csr_write_en(ex_csr_write_en_i),
        .ex_csr_addr(ex_csr_addr_i),
        .ex_is_exception(ex_is_exception_i),
        .ex_exception_cause(ex_exception_cause_i),
        .ex_pc(ex_pc_i)
    );

    ex u_ex (
        .rst(rst),
        .pause_ex(pause_ex),

        // from id_ex
        .alusel_i(ex_alusel_i),
        .aluop_i(ex_aluop_i),
        .reg1_i(ex_reg1_i),
        .reg2_i(ex_reg2_i),
        .reg_write_addr_i(ex_reg_write_addr_i),
        .reg_write_en_i(ex_reg_write_en_i),
        .inst_i(ex_inst_i),
        .csr_read_en_i(ex_csr_read_en_i),
        .csr_write_en_i(ex_csr_write_en_i),
        .csr_addr_i(ex_csr_addr_i),
        .is_exception_i(ex_is_exception_i),
        .exception_cause_i(ex_exception_cause_i),
        .pc_i(ex_pc_i),

        // to ex_mem
        .reg_write_addr_o(ex_reg_write_addr_o),
        .reg_write_en_o(ex_reg_write_en_o),
        .reg_write_data_o(ex_reg_write_data_o),
        .aluop_o(ex_aluop_o),
        .mem_addr_o(ex_mem_addr_o),
        .store_data_o(ex_store_data_o),
        .csr_read_en_o(ex_csr_read_en_o),
        .csr_write_en_o(ex_csr_write_en_o),
        .csr_addr_o(ex_csr_addr_o),
        .csr_write_data_o(ex_csr_write_data_o),
        .csr_mask_o(ex_csr_mask_o),
        .pc_o(ex_pc_o),
        .is_exception_o(ex_is_exception_o),
        .exception_cause_o(ex_exception_cause_o),

        // div
        .div_result_i(div_result),
        .div_done_i(div_done),
        .div_data1_o(div_data1),
        .div_data2_o(div_data2),
        .div_singed_o(div_singed),
        .div_start_o(div_start),

        // branch
        .reg_write_branch_data_i(ex_reg_write_branch_data_i)
    );

    ex_mem u_ex_mem (
        .clk(clk),
        .rst(rst),
        .pause(pause),
        .exception_flush(exception_flush),

        // from ex
        .ex_reg_write_data(ex_reg_write_data_o),
        .ex_reg_write_addr(ex_reg_write_addr_o),
        .ex_reg_write_en(ex_reg_write_en_o),
        .ex_aluop(ex_aluop_o),
        .ex_mem_addr(ex_mem_addr_o),
        .ex_store_data(ex_store_data_o),
        .ex_csr_read_en(ex_csr_read_en_o),
        .ex_csr_write_en(ex_csr_write_en_o),
        .ex_csr_addr(ex_csr_addr_o),
        .ex_csr_write_data(ex_csr_write_data_o),
        .ex_csr_mask(ex_csr_mask_o),
        .ex_pc(ex_pc_o),
        .ex_is_exception(ex_is_exception_o),
        .ex_exception_cause(ex_exception_cause_o),

        // to mem
        .mem_reg_write_data(mem_reg_write_data_i),
        .mem_reg_write_addr(mem_reg_write_addr_i),
        .mem_reg_write_en(mem_reg_write_en_i),
        .mem_aluop(mem_aluop_i),
        .mem_mem_addr(mem_mem_addr_i),
        .mem_store_data(mem_store_data_i),
        .mem_csr_read_en(mem_csr_read_en_i),
        .mem_csr_write_en(mem_csr_write_en_i),
        .mem_csr_addr(mem_csr_addr_i),
        .mem_csr_write_data(mem_csr_write_data_i),
        .mem_csr_mask(mem_csr_mask_i),
        .mem_pc(mem_pc_i),
        .mem_is_exception(mem_is_exception_i),
        .mem_exception_cause(mem_exception_cause_i)
    );

    mem u_mem (
        .rst(rst),

        // from ex_mem
        .reg_write_data_i(mem_reg_write_data_i),
        .reg_write_addr_i(mem_reg_write_addr_i),
        .reg_write_en_i(mem_reg_write_en_i),
        .aluop_i(mem_aluop_i),
        .mem_addr_i(mem_mem_addr_i),
        .store_data_i(mem_store_data_i),
        .csr_read_en_i(mem_csr_read_en_i),
        .csr_write_en_i(mem_csr_write_en_i),
        .csr_addr_i(mem_csr_addr_i),
        .csr_write_data_i(mem_csr_write_data_i),
        .csr_mask_i(mem_csr_mask_i),
        .pc_i(mem_pc_i),
        .is_exception_i(mem_is_exception_i),
        .exception_cause_i(mem_exception_cause_i),

        // to mem_wb
        .reg_write_data_o(mem_reg_write_data_o),
        .reg_write_addr_o(mem_reg_write_addr_o),
        .reg_write_en_o(mem_reg_write_en_o),
        .LLbit_write_en_o(mem_LLbit_write_en_o),
        .LLbit_write_data_o(mem_LLbit_data_o),
        .csr_write_en_o(mem_csr_write_en_o),
        .csr_write_addr_o(mem_csr_write_addr_o),
        .csr_write_data_o(mem_csr_write_data_o),

        // from wb
        .wb_LLbit_write_en_i(wb_LLbit_write_en_i),
        .wb_LLbit_write_data_i(wb_LLbit_write_data_i),
        .wb_csr_write_en_i(wb_csr_write_en_i),
        .wb_csr_write_addr_i(wb_csr_write_addr_i),
        .wb_csr_write_data_i(wb_csr_write_data_i),

        // from ram
        .ram_data_i(ram_data_i),
        .is_cache_hit_i(is_cache_hit),

        // to ram
        .mem_addr_o(ram_addr_o),
        .store_data_o(ram_data_o),
        .mem_write_en_o(ram_write_en_o),
        .mem_select_o(ram_select_o),
        .ram_en_o(ram_en_o),
        .ram_read_en_o(ram_read_en_o),

        // from csr
        .LLbit_i(LLbit_o),
        .csr_read_data_i(csr_read_data),

        // to csr
        .csr_read_en_o(csr_read_en),
        .csr_read_addr_o(csr_read_addr),
        .is_ertn(is_ertn),

        // to ctrl
        .is_exception_o(mem_is_exception_o),
        .exception_cause_o(mem_exception_cause_o),
        .pc_o(mem_exception_pc_o),
        .exception_addr_o(mem_exception_addr_o),
        .pause_mem(pause_mem),
        .is_syscall_break(is_syscall_break),

        // from stable counter
        .cnt(cnt)
    );

    mem_wb u_mem_wb (
        .clk(clk),
        .rst(rst),
        .pause(pause),
        .exception_flush(exception_flush),

        // from mem
        .mem_reg_write_data(mem_reg_write_data_o),
        .mem_reg_write_addr(mem_reg_write_addr_o),
        .mem_reg_write_en(mem_reg_write_en_o),
        .mem_LLbit_write_en(mem_LLbit_write_en_o),
        .mem_LLbit_write_data(mem_LLbit_data_o),
        .mem_csr_write_en(mem_csr_write_en_o),
        .mem_csr_write_addr(mem_csr_write_addr_o),
        .mem_csr_write_data(mem_csr_write_data_o),

        // to wb
        .wb_reg_write_data(wb_reg_write_data_i),
        .wb_reg_write_addr(wb_reg_write_addr_i),
        .wb_reg_write_en(wb_reg_write_en_i),
        .wb_LLbit_write_en(wb_LLbit_write_en_i),
        .wb_LLbit_write_data(wb_LLbit_write_data_i),
        .wb_csr_write_en(wb_csr_write_en_i),
        .wb_csr_write_addr(wb_csr_write_addr_i),
        .wb_csr_write_data(wb_csr_write_data_i)
    );

    ctrl u_ctrl (
        .rst(rst),

        .pause_id(pause_id),
        .pause_ex(pause_ex),
        .pause_mem(pause_mem),

        .EENTRY_VA(EENTRY_VA),
        .ERA_PC(ERA_PC),
        .ECFG_LIE(ECFG_LIE),
        .ESTAT_IS(ESTAT_IS),
        .CRMD_IE(CRMD_IE),

        .pc(mem_exception_pc_o),
        .exception_addr_i(mem_exception_addr_o),
        .is_exception_i(mem_is_exception_o),
        .exception_cause_i(mem_exception_cause_o),
        .is_ertn(is_ertn),

        .is_exception_o(is_exception),
        .exception_cause_o(exception_cause),
        .exception_pc_o(exception_pc),
        .exception_addr_o(exception_addr),

        .wb_csr_write_en_i(wb_csr_write_en_i),
        .wb_csr_write_addr_i(wb_csr_write_addr_i),
        .wb_csr_write_data_i(wb_csr_write_data_i),

        .pause(pause),
        .exception_flush(exception_flush),
        .exception_in_pc_o(exception_in_pc_o),
        .is_interrupt_o(is_interrupt_o)
    );

    div u_div (
        .clk(clk),
        .rst(rst),

        .start(div_start),
        .cancel(1'b0),

        .signed_op(div_singed),
        .reg1_i(div_data1),
        .reg2_i(div_data2),

        .result(div_result),
        .done(div_done)
    );

    csr u_csr (
        .clk(clk),
        .rst(rst),

        .read_en(csr_read_en),
        .read_addr(csr_read_addr),
        .read_data(csr_read_data),

        .write_en(wb_csr_write_en_i),
        .write_addr(wb_csr_write_addr_i),
        .write_data(wb_csr_write_data_i),

        .is_exception(is_exception),
        .exception_cause(exception_cause),
        .exception_pc(exception_pc),
        .exception_addr(exception_addr),
        .is_ertn(is_ertn),
        .is_syscall_break(is_syscall_break),

        .LLbit_write_en(wb_LLbit_write_en_i),
        .LLbit_i(wb_LLbit_write_data_i),
        .LLbit_o(LLbit_o),

        .CRMD_PLV(CRMD_PLV),
        .EENTRY_VA(EENTRY_VA),
        .ERA_PC(ERA_PC),
        .ECFG_LIE(ECFG_LIE),
        .ESTAT_IS(ESTAT_IS),
        .CRMD_IE(CRMD_IE)
    );

    stable_counter u_stable_counter (
        .clk(clk),
        .rst(rst),

        .cnt(cnt)
    );

endmodule