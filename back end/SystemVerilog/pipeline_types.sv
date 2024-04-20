`ifndef PIPELINE_TYPES_SV
`define PIPELINE_TYPES_SV

package pipeline_types;
    
    typedef logic[31: 0] bus32_t;
    typedef logic[7: 0] alu_op_t;
    typedef logic[2: 0] alu_sel_t;
    typedef logic[13: 0] csr_addr_t;
    typedef logic[4: 0] reg_addr_t;

    // from ctrl
    typedef struct packed {
        logic[5: 0] pause;
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

        logic[4: 0] is_exception;
        logic[34: 0] exception_cause;
    } pc_id_t;

    // id and dispatch
    typedef struct packed {
        bus32_t pc;
        bus32_t inst;

        logic[4: 0] is_exception;
        logic[34: 0] exception_cause;

        alu_op_t alu_op;
        alu_sel_t alu_sel;

        logic reg1_read_en;
        reg_addr_t reg1_read_addr;
        logic reg2_read_en;
        reg_addr_t reg2_read_addr;

        logic reg_write_en;
        reg_addr_t reg_write_addr;

        logic csr_read_en;
        logic csr_write_en;
        csr_addr_t csr_read_addr;
    } id_dispatch_t;

    // csr push forward
    typedef struct packed {
        logic csr_write_en;
        csr_addr_t csr_wirte_addr;
        bus32_t csr_write_data;
    } csr_push_forward_t;

    
endpackage

`endif