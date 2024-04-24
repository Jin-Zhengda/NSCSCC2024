import pipeline_types::*;

    interface dispatch_regfile;
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
        
    endinterface: dispatch_regfile
        
    interface ex_div;
        bus64_t div_result;
        logic div_done;

        bus32_t div_data1;
        bus32_t div_data2;
        logic div_signed;
        logic div_start;

        modport slave (
            input div_data1,
            input div_data2,
            input div_signed,
            input div_start,
            output div_result,
            output div_done
        );

        modport master (
            output div_data1,
            output div_data2,
            output div_signed,
            output div_start,
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
