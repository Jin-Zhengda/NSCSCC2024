`ifndef PIPELINE_TYPES_SV
`define PIPELINE_TYPES_SV

package pipeline_types;
    
    typedef logic[31: 0] bus32_t;
    typedef logic[63: 0] bus64_t;
    typedef logic[255: 0] bus256_t;

    typedef logic[7: 0] alu_op_t;
    typedef logic[2: 0] alu_sel_t;
    typedef logic[13: 0] csr_addr_t;
    typedef logic[4: 0] reg_addr_t;

    typedef logic[6: 0] exception_cause_t;

    typedef struct packed {
        logic pause_if;
        logic pause_id;
        logic pause_dispatch;
        logic pause_ex;
        logic pause_mem;
    } pause_t;

    // from ctrl
    typedef struct packed {
        logic[7: 0] pause;
        logic exception_flush;
    } ctrl_t;

    typedef struct packed {
        bus32_t inst_o_1;
        bus32_t inst_o_2;
        bus32_t pc_o_1;
        bus32_t pc_o_2;
        logic [5:0] is_exception;
        logic [5:0][6:0] exception_cause;
    } inst_and_pc_t;

    typedef struct packed {
        bus32_t pc_o_1;
        bus32_t pc_o_2;
        logic [5:0] is_exception;
        logic [5:0][6:0] exception_cause;
    } pc_out_t;

    typedef struct packed {
        logic is_branch;
        logic pre_taken_or_not;
        bus32_t pre_branch_addr;
    } branch_info_t;

    typedef struct packed {
        logic branch_flush;
        logic update_en;
        logic taken_or_not_actual;
        bus32_t branch_actual_addr;
    } branch_update;

    // ctrl and pc
    typedef struct packed {
        bus32_t exception_new_pc;
        logic is_interrupt;
    } ctrl_pc_t;

    // pc and id
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        logic pre_is_branch;
        logic pre_is_branch_taken;
        bus32_t pre_branch_addr;
    } pc_id_t;

    // id and dispatch
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        alu_op_t aluop;
        alu_sel_t alusel;
        bus32_t imm;

        logic reg1_read_en;
        reg_addr_t reg1_read_addr;
        logic reg2_read_en;
        reg_addr_t reg2_read_addr;

        logic reg_write_en;
        reg_addr_t reg_write_addr;

        logic csr_read_en;
        logic csr_write_en;
        csr_addr_t csr_addr;

        logic[4: 0] cacop_code;

        logic pre_is_branch;
        logic pre_is_branch_taken;
        bus32_t pre_branch_addr;
    } id_dispatch_t;

    // csr push forward
    typedef struct packed {
        logic csr_write_en;
        csr_addr_t csr_write_addr;
        bus32_t csr_write_data;
    } csr_push_forward_t;


    // pineline push forward
    typedef struct packed {
        logic reg_write_en;
        reg_addr_t reg_write_addr;
        bus32_t reg_write_data;
    } pipeline_push_forward_t;

    // dispatch and ex
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        alu_op_t aluop;
        alu_sel_t alusel;

        bus32_t reg1;
        bus32_t reg2;

        logic reg_write_en;
        reg_addr_t reg_write_addr;

        logic csr_read_en;
        logic csr_write_en;
        csr_addr_t csr_addr;

        bus32_t reg_write_branch_data;

        logic[4: 0] cacop_code;
    } dispatch_ex_t;

    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        logic reg_write_en;
        reg_addr_t reg_write_addr;
        bus32_t reg_write_data;

        alu_op_t aluop;

        bus32_t mem_addr;

        logic csr_read_en;
        logic csr_write_en;
        csr_addr_t csr_addr;
        bus32_t csr_write_data;
        bus32_t csr_mask;
        logic is_llw_scw;
    } ex_mem_t;

    typedef struct packed {
        logic write_en;
        reg_addr_t write_addr;
        bus32_t write_data;
    } data_write_t;

    typedef struct packed {
        logic is_llw_scw;
        logic csr_write_en;
        csr_addr_t csr_write_addr;
        bus32_t csr_write_data;
    } csr_write_t;

    typedef struct packed {
        bus32_t pc;
        bus32_t inst;
        data_write_t data_write;
        csr_write_t csr_write;
    } mem_wb_t;

    typedef struct packed {
        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        bus32_t pc;
        bus32_t exception_addr;

        logic is_ertn;
        logic is_idle;

        logic pause_mem;
    } mem_ctrl_t;

    typedef struct packed {
        logic is_cacop;
        logic[4: 0] cacop_code;
        logic is_preld;
        logic hint;
        bus32_t addr; 
    } cache_inst_t;
    
endpackage

`endif
