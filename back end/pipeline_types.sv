`ifndef PIPELINE_TYPES_SV
`define PIPELINE_TYPES_SV

package pipeline_types;
    
    typedef logic[31: 0] bus32_t;
    typedef logic[63: 0] bus64_t;

    typedef logic[7: 0] alu_op_t;
    typedef logic[2: 0] alu_sel_t;
    typedef logic[13: 0] csr_addr_t;
    typedef logic[4: 0] reg_addr_t;

    typedef logic[6: 0] exception_cause_t;

    typedef struct packed {
        logic pause_id;
        logic pause_dispatch;
        logic pause_ex;
        logic pause_mem;
    } pause_t;

    // from ctrl
    typedef struct packed {
        logic[6: 0] pause;
        logic exception_flush;
    } ctrl_t;

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
        logic write_en;
        reg_addr_t write_addr;
        bus32_t write_data;
    } data_write_t;

    typedef struct packed {
        logic LLbit_write_en;
        logic LLbit_write_data;

        logic csr_write_en;
        csr_addr_t csr_write_addr;
        bus32_t csr_write_data;
    } csr_write_t;

    typedef struct packed {
        bus32_t pc;

        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        logic reg_write_en;
        reg_addr_t reg_write_addr;
        bus32_t reg_write_data;

        alu_op_t aluop;

        bus32_t mem_addr;
        bus32_t store_data;

        logic csr_read_en;
        logic csr_write_en;
        csr_addr_t csr_addr;
        bus32_t csr_write_data;
        bus32_t csr_mask;

        logic[4: 0] cacop_code;
    } ex_mem_t;

    typedef struct packed {
        data_write_t data_write;
        csr_write_t csr_write;
    } mem_wb_t;

    typedef struct packed {
        logic[5: 0] is_exception;
        logic[5: 0][6: 0] exception_cause;

        bus32_t pc;
        bus32_t exception_addr;

        logic is_ertn;

        logic pause_mem;

        alu_op_t aluop;
    } mem_ctrl_t;


    typedef struct packed {
        logic LLbit_write_en;
        logic LLbit_write_data;

        logic csr_write_en;
        csr_addr_t csr_write_addr;
        bus32_t csr_write_data;
    } wb_push_forward_t;
    
endpackage

`endif