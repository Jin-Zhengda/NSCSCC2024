`ifndef PIPELINE_TYPES_SV
`define PIPELINE_TYPES_SV

package pipeline_types;

    parameter REG_WIDTH = 32;
    parameter REG_ADDR_WIDTH = 5;
    parameter CSR_ADDR_WIDTH = 12;
    parameter ALU_OP_WIDTH = 8;
    parameter ALU_SEL_WIDTH = 3;

    parameter PIPE_WIDTH = 8;
    parameter EXC_CAUSE_WIDTH = 7;

    parameter DECODER_WIDTH = 2;
    parameter ISSUE_WIDTH = 2;

    parameter READ_PORTS = DECODER_WIDTH * 2;
    parameter WRITE_PORTS = DECODER_WIDTH;


    typedef logic [REG_WIDTH - 1:0] bus32_t;
    typedef logic [REG_WIDTH * 2 - 1:0] bus64_t;
    typedef logic [REG_WIDTH * 8 - 1:0] bus256_t;

    typedef logic [ALU_OP_WIDTH - 1:0] alu_op_t;
    typedef logic [ALU_SEL_WIDTH - 1:0] alu_sel_t;
    typedef logic [CSR_ADDR_WIDTH - 1:0] csr_addr_t;
    typedef logic [REG_ADDR_WIDTH - 1:0] reg_addr_t;

    typedef logic [EXC_CAUSE_WIDTH - 1:0] exception_cause_t;

    typedef struct packed {
        logic pause_if;
        logic pause_icache;
        logic pause_buffer;
        logic pause_decoder;
        logic pause_dispatch;
        logic pause_execute;
        logic pause_mem;
    } pause_t;

    typedef struct packed {
        bus32_t [1:0] inst_o;
        bus32_t [1:0] pc_o;
        logic [1:0] valid;
        logic [1:0][5:0] is_exception;
        logic [1:0][5:0][6:0] exception_cause;
    } inst_and_pc_t;

    typedef struct packed {
        bus32_t pc_o;
        logic [5:0] is_exception;
        logic [5:0][6:0] exception_cause;
    } pc_out_t;

    typedef struct packed {
        logic   is_branch;
        logic   pre_taken_or_not;
        bus32_t pre_branch_addr;
    } branch_info_t;

    typedef struct packed {
        logic   branch_flush;
        logic   update_en;
        logic   taken_or_not_actual;
        bus32_t branch_actual_addr;
        bus32_t pc_dispatch;
    } branch_update;

    // pc and id
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic [5:0] is_exception;
        logic [5:0][EXC_CAUSE_WIDTH - 1 : 0] exception_cause;

        logic   pre_is_branch;
        logic   pre_is_branch_taken;
        bus32_t pre_branch_addr;
    } pc_id_t;

    // id and dispatch
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic [5:0] is_exception;
        logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause;
        logic inst_valid;
        logic is_privilege;

        alu_op_t  aluop;
        alu_sel_t alusel;
        bus32_t   imm;

        logic [1:0] reg_read_en;
        logic [1:0][REG_ADDR_WIDTH - 1:0] reg_read_addr;

        logic reg_write_en;
        logic [REG_ADDR_WIDTH - 1:0] reg_write_addr;

        logic csr_read_en;
        logic csr_write_en;
        csr_addr_t csr_addr;

        logic [4:0] cacop_code;

        logic   pre_is_branch;
        logic   pre_is_branch_taken;
        bus32_t pre_branch_addr;
    } id_dispatch_t;

    // pineline push forward
    typedef struct packed {
        logic reg_write_en;
        reg_addr_t reg_write_addr;
        bus32_t reg_write_data;
    } pipeline_push_forward_t;

    // csr push forward
    typedef struct packed {
        logic csr_write_en;
        csr_addr_t csr_write_addr;
        bus32_t csr_write_data;
    } csr_push_forward_t;

    // dispatch and ex
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic [5:0] is_exception;
        logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause;
        logic inst_valid;
        logic is_privilege;

        alu_op_t  aluop;
        alu_sel_t alusel;

        logic [1:0][REG_WIDTH - 1:0] reg_data;

        logic reg_write_en;
        reg_addr_t reg_write_addr;

        bus32_t csr_read_data;

        logic csr_write_en;
        csr_addr_t csr_addr;

        logic [4:0] cacop_code;

        logic   pre_is_branch;
        logic   pre_is_branch_taken;
        bus32_t pre_branch_addr;
    } dispatch_ex_t;

    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic [5:0] is_exception;
        logic [5:0][6:0] exception_cause;
        logic inst_valid;
        logic is_privilege;

        logic reg_write_en;
        reg_addr_t reg_write_addr;
        bus32_t reg_write_data;

        alu_op_t aluop;

        bus32_t mem_addr;

        logic csr_write_en;
        csr_addr_t csr_addr;
        bus32_t csr_write_data;

        logic is_llw_scw;

    } ex_mem_t;

    typedef struct packed {
        logic reg_write_en;
        reg_addr_t reg_write_addr;
        bus32_t reg_write_data;

        logic is_llw_scw;
        logic csr_write_en;
        csr_addr_t csr_write_addr;
        bus32_t csr_write_data;
    } mem_wb_t;

    typedef struct packed {
        logic [5:0] is_exception;
        logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause;

        bus32_t pc;
        bus32_t mem_addr;

        alu_op_t aluop;

        logic is_privilege;
    } commit_ctrl_t;

    typedef struct packed {
        logic is_cacop;
        logic [4:0] cacop_code;
        logic is_preld;
        logic hint;
        bus32_t addr;
    } cache_inst_t;

    typedef struct packed {
        logic [31:0] debug_wb_pc;
        logic [31:0] debug_wb_inst;
        logic [3:0]  debug_wb_rf_wen;
        logic [4:0]  debug_wb_rf_wnum;
        logic [31:0] debug_wb_rf_wdata;

        logic inst_valid;
        logic cnt_inst;
        logic csr_rstat_en;
        logic [31:0] csr_data;

        logic excp_flush;
        logic ertn_flush;
        logic [5:0] ecode;

        logic [7:0] inst_st_en;
        bus32_t st_paddr;
        bus32_t st_vaddr;

        logic [7:0] inst_ld_en;
        bus32_t ld_paddr;
        bus32_t ld_vaddr;
    } diff_t;

endpackage

`endif
