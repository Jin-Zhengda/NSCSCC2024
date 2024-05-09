import pipeline_types::*;

    interface mem_dcache;
        logic valid;                // 请求有效
        logic op;                   // 操作类型，读-0，写-1
        // logic[2:0] size;           // 数据大小，3’b000——字节，3’b001——半字，3’b010——字
        bus32_t virtual_addr;   // 虚拟地址
        logic tlb_excp_cancel_req;
        logic[3:0]  wstrb;          //写使能，1表示对应的8位数据需要写
        bus32_t wdata;          //需要写的数据
        
        logic addr_ok;              //该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
        logic data_ok;              //该次请求的数据传输OK，读：数据返回；写：数据写入完成
        bus32_t rdata;          //读DCache的结果
        logic cache_miss;           //cache未命中

        modport master (
            input addr_ok, data_ok, rdata, cache_miss,
            output valid, op, virtual_addr, tlb_excp_cancel_req, wstrb, wdata
        );

        modport slave (
            output addr_ok, data_ok, rdata, cache_miss,
            input valid, op, virtual_addr, tlb_excp_cancel_req, wstrb, wdata
        );
    endinterface: mem_dcache

    interface frontend_backend;
        ctrl_t ctrl;
        ctrl_pc_t ctrl_pc;
        logic send_inst_en;
        branch_info branch_info;
        inst_and_pc_t inst_and_pc_o;
        branch_update update_info;

        modport master (
            input ctrl, ctrl_pc,send_inst_en, update_info,
            output branch_info,inst_and_pc_o
        );

        modport slave (
            output ctrl, ctrl_pc,send_inst_en, 
            input branch_info,inst_and_pc_o, update_info
        );
    endinterface: frontend_backend

    interface pc_icache;
        bus32_t pc; // 读 icache 的地址
        logic inst_en; // 读 icache 使能
        bus32_t inst; // 读 icache 的结果，即给出的指令
        logic stall_for_buffer;
        bus32_t pc_out;
        logic front_is_valid;
        logic icache_is_valid;
        logic [5:0] front_is_exception;
        logic [5:0][6:0] front_exception_cause;
        logic [5:0] icache_is_exception;
        logic [5:0][6:0] icache_exception_cause;
        logic stall;

        modport master (
            input inst, stall, icache_is_valid,icache_is_exception,icache_exception_cause,pc_out, stall_for_buffer,
            output pc, inst_en,front_is_valid,front_is_exception,front_exception_cause
        );

        modport slave (
            output inst, stall,icache_is_valid,icache_is_exception,icache_exception_cause,pc_out, stall_for_buffer,
            input pc, inst_en,front_is_valid,front_is_exception,front_exception_cause
        );
    endinterface: pc_icache

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
        bus32_t csr_read_data;
        logic csr_read_en;
        csr_addr_t csr_read_addr;

        modport master (
            input csr_read_data,
            output csr_read_en,
            output csr_read_addr
        );

        modport slave (
            output csr_read_data,
            input csr_read_en,
            input csr_read_addr
        );
        
    endinterface:mem_csr

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

    interface icache_mem;
        logic rd_req,ret_valid;
        bus32_t rd_addr;
        bus256_t ret_data;
        modport master (
            input ret_valid,ret_data,
            output rd_req,rd_addr
        );
        modport slave (
            input rd_req,rd_addr,
            output ret_valid,ret_data
        );
    endinterface //icache_mem
