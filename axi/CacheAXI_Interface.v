`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/10 08:57:57
// Design Name: 
// Module Name: CacheAXI_Interface
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "CacheAXI_defines.v"

module CacheAXI_Interface
(
    input clk,
    input rst,
    // 用于选择缓存接口中的不同内存模块，以便对相应的模块进行读写操�????
    input wire[3:0] mem_sel_i,

    // ICache
    input wire inst_ren_i,
    input wire[`InstAddrBus] inst_araddr_i,
    input wire iucache_ren_i,
    input wire[`DataAddrBus] iucache_addr_i,

    output reg inst_rvalid_o,
    output reg[`WayBus] inst_rdata_o,
    output reg iucache_rvalid_o,
    output reg[`RegBus] iucache_rdata_o,

    // DCache
    input wire data_ren_i,
    input wire[`DataAddrBus] data_araddr_i,
    input wire data_uncached,
    input wire data_wen_i,
    input wire[`WayBus] data_wdata_i,
    input wire[`DataAddrBus] data_awaddr_i,
    input wire ducache_ren_i,
    input wire[`DataAddrBus] ducache_araddr_i,
    input wire ducache_wen_i,
    input wire[`RegBus] ducache_wdata_i,
    input wire[`DataAddrBus] ducache_awaddr_i,

    output reg data_rvalid_o,
    output reg[`WayBus] data_rdata_o,
    output reg data_bvalid_o,
    output reg ducache_rvalid_o,
    output reg[`RegBus] ducache_rdata_o,
    output reg ducache_bvalid_o,

    // AXI
    input wire[`RegBus] rdata_i,
    input wire rdata_valid_i,
    input wire wdata_resp_i,

    output wire axi_ce_o,
    output wire axi_ren_o,
    output wire axi_wen_o,
    output wire[3:0] axi_wsel_o,
    output wire[3:0] axi_rsel_o,
    output wire axi_rready_o,
    output wire[`RegBus] axi_raddr_o,
    output wire[3:0] axi_rlen_o,
    output wire[`RegBus] axi_waddr_o,
    output reg[`RegBus] axi_wdata_o,
    output wire axi_wvalid_o,
    output wire axi_wlast_o,
    output wire[3:0] axi_wlen_o 
);

    assign axi_ce_o = rst ? `ChipDisable : `ChipEnable;

    ///////////////////////////////////////////////////////////////
    /////////// Data Handling Module with Concealed Logic //////////
    ///////////////////////////////////////////////////////////////

    // Declare registers for memory read and write selection
    reg [3:0] mem_read_sel;
    reg [3:0] mem_write_sel;

    // Register for instruction cache read address - ICache
    reg [`InstAddrBus] instruction_cache_read_address;

    // Register for uncached instruction read address - I-uncached
    reg [`DataAddrBus] uncached_instruction_read_address;

    // Register for data cache read address - DCache
    reg [`DataAddrBus] data_cache_read_address;

    // Registers for data cache write channel - DCache
    reg [`WayBus] data_cache_write_data;
    reg [`DataAddrBus] data_cache_write_address;

    // Register for uncached data read address - D-uncached
    reg [`DataAddrBus] uncached_data_read_address;

    // Registers for uncached data write channel - D-uncached
    reg [`RegBus] uncached_data_write_data;
    reg [`DataAddrBus] uncached_data_write_address;
    

    // Sequential logic for data hanling
    always @(posedge clk) begin
        // If in read free state, update read related registers
        if(read_state == `STATE_READ_FREE) begin
            mem_read_sel <= mem_sel_i;
            instruction_cache_read_address <= inst_araddr_i;
            uncached_instruction_read_address <= iucache_addr_i;
            data_cache_read_address <= data_araddr_i;
            uncached_data_read_address <= ducache_araddr_i;
        end

        // If in write free state, update write related registers
        if(write_state == `STATE_WRITE_FREE) begin
            mem_write_sel <= mem_sel_i;
            data_cache_write_data <= data_wdata_i;
            data_cache_write_address <= data_araddr_i;
            uncached_data_write_data <= ducache_wdata_i;
            uncached_data_write_address <= ducache_awaddr_i;
        end
    end

    ///////////////////////////////////////////////////////////////
    ////////////////////////// Main Body //////////////////////////
    ///////////////////////////////////////////////////////////////
    /***
        状�?�机实现(读操�????)�????
            STATE_READ_FREE：空闲状态，准备接受读取请求�????
            STATE_READ_DUNCACHED：正在从未缓存的数据中读取�??
            STATE_READ_DCACHE：正在从数据缓存中读取数据�??
            STATE_READ_IUNCACHED：正在从未缓存的指令中读取�??
            STATE_READ_ICACHE：正在从指令缓存中读取指令�??
    ***/

    // READ Operation (DCache first, Uncache first)
    // State and counter for read operation
    reg[`READ_STATE_WIDTH] read_state;
    reg[2:0] read_count;

    // Indicator for processing cached instructions
    assign is_process_cached_inst_o = (read_state == `STATE_READ_ICACHE);

    always @(posedge clk) begin
        if(rst) begin
            read_state <= `STATE_READ_FREE;
        end else begin
            case (read_state)
                `STATE_READ_FREE:
                    if(ducache_ren_i == `ReadEnable) begin
                        read_state <= `STATE_READ_DUNCACHED; // Data uncached
                    end else if (data_ren_i == `ReadEnable) begin
                        read_state <= `STATE_READ_DCACHE;    // Data cache
                    end else if (iucache_ren_i == `ReadEnable) begin
                        read_state <= `STATE_READ_IUNCACHED;    // Instruction uncached
                    end else if (inst_ren_i == `STATE_READ_ICACHE) begin
                        read_state <= `STATE_READ_ICACHE; // Instruction cache
                    end
                `STATE_READ_DUNCACHED:
                    if(rdata_valid_i == `Valid) begin   // data uncached finish
                        read_state <= `STATE_READ_FREE;
                    end
                `STATE_READ_ICACHE:  
                    if(rdata_valid_i == `Valid && read_count == 3'b111) begin   // last read successful
                       read_state <= `STATE_READ_FREE; 
                    end
                `STATE_READ_IUNCACHED:
                    if(rdata_valid_i == `Valid) begin   // instruction uncached finish
                        read_state <= `STATE_READ_FREE;
                    end
                `STATE_READ_ICACHE:
                    if(rdata_valid_i == `Valid && read_count == 3'b111) begin   //last read successful
                        read_state <= `STATE_READ_FREE;
                    end
            endcase
        end
    end

      
    // Counter for read operation
    always @(posedge clk) begin
        if(read_state == `STATE_READ_FREE) begin
            read_count <= 3'b000;
        end else if (rdata_valid_i == `Valid) begin
            read_count <= read_count + 1;
        end else begin
            read_count <= read_count;
        end
    end

    // AXI Interface
    assign axi_ce_o = rst ? `ChipDisable : `ChipEnable;
    assign axi_ren_o = (read_state == `STATE_READ_FREE) ? `ReadDisable : `ReadEnable;
    assign axi_rready_o = axi_ren_o; // ready when start reading;
    assign axi_raddr_o = (read_state == `STATE_READ_DUNCACHED) ? uncached_data_read_address :
                        (read_state == `STATE_READ_DCACHE) ? {data_cache_read_address[31:5], read_count, 2'b00} : 
                        (read_state == `STATE_READ_IUNCACHED) ? uncached_instruction_read_address : 
                        (read_state == `STATE_READ_ICACHE) ? {instruction_cache_read_address[31:5], read_count, 2'b00} : 
                        `ZeroWord;
    assign axi_rsel_o = (read_state == `STATE_READ_DUNCACHED) ? mem_read_sel : 4;
    assign axi_rlen_o  = (read_state == `STATE_READ_IUNCACHED || read_state == `STATE_READ_DUNCACHED )? 4'h0 : 4'h7;//byte(单位) select
    
    // Instruction cache, Instruction uncached, and Data cache, Data uncached
    always @(posedge clk) begin
        if(read_state == `STATE_READ_ICACHE && rdata_valid_i == `Valid && read_count == 3'b111) begin
            inst_rvalid_o <= `Valid;
        end else begin
            inst_rvalid_o <= `Invalid;
        end
    end

    always @(posedge clk) begin
        if(read_state == `STATE_READ_IUNCACHED && rdata_valid_i ==`Valid) begin
            iucache_rvalid_o <= `Valid;
        end else begin
            iucache_rvalid_o <= `Invalid;
        end
    end

    always @(posedge clk) begin
        if(read_state == `STATE_READ_DCACHE && rdata_valid_i == `Valid && read_count == 3'b111) begin
            data_rvalid_o <= `Valid;
        end else begin
            data_rvalid_o <= `Invalid;
        end
    end

    always @(posedge clk) begin
        if(read_state == `STATE_READ_DUNCACHED && rdata_valid_i == `Valid) begin
            ducache_rvalid_o <= `Valid;
        end else begin
            ducache_rvalid_o <= `Invalid;
        end
    end

    // Read operation for instruction data
    always @(posedge clk) begin
        if(rst) begin
            // Reset the output register to 0 during reset
            inst_rdata_o <= 256'h0;
        end else if(rdata_valid_i) begin
            // When valid data is available, assign it to the output register based on the read count
            case (read_count)
                3'h0: inst_rdata_o[32 * 1 - 1 : 32 * 0] <= rdata_i; // First word
                3'h1: inst_rdata_o[32 * 2 - 1 : 32 * 1] <= rdata_i; // Second word
                3'h2: inst_rdata_o[32 * 3 - 1 : 32 * 2] <= rdata_i; // Third word
                3'h3: inst_rdata_o[32 * 4 - 1 : 32 * 3] <= rdata_i; // Fourth word
                3'h4: inst_rdata_o[32 * 5 - 1 : 32 * 4] <= rdata_i; // Fifth word
                3'h5: inst_rdata_o[32 * 6 - 1 : 32 * 5] <= rdata_i; // Sixth word
                3'h6: inst_rdata_o[32 * 7 - 1 : 32 * 6] <= rdata_i; // Seventh word
                3'h7: inst_rdata_o[32 * 8 - 1 : 32 * 7] <= rdata_i; // Eight word
                default: inst_rdata_o <= inst_rdata_o; // No change if read count is invalid
            endcase
        end
    end

    // Read operation for data
    always @(posedge clk) begin
        if (rdata_valid_i) begin
            // When valid data is available, assign it to the output register based on the read count
            case (read_count)
                3'h0: data_rdata_o[32*1-1:32*0] <= rdata_i; // First word
                3'h1: data_rdata_o[32*2-1:32*1] <= rdata_i; // Second word
                3'h2: data_rdata_o[32*3-1:32*2] <= rdata_i; // Third word
                3'h3: data_rdata_o[32*4-1:32*3] <= rdata_i; // Fourth word
                3'h4: data_rdata_o[32*5-1:32*4] <= rdata_i; // Fifth word
                3'h5: data_rdata_o[32*6-1:32*5] <= rdata_i; // Sixth word
                3'h6: data_rdata_o[32*7-1:32*6] <= rdata_i; // Seventh word
                3'h7: data_rdata_o[32*8-1:32*7] <= rdata_i; // Eighth word
                default: data_rdata_o <= data_rdata_o; // No change if read count is invalid
            endcase
        end
    end

    // Uncached rdata_o
    always @(posedge clk) begin
        if(rst) begin
            iucache_rdata_o <= 32'h0;
            ducache_rdata_o <= 32'h0;
        end else begin
            if(rdata_valid_i && read_state == `STATE_READ_DUNCACHED) begin
                ducache_rdata_o <= rdata_i;
            end 
            if(rdata_valid_i && read_state == `STATE_READ_IUNCACHED) begin
                iucache_rdata_o <= rdata_i;
            end
        end
    end




    /***
        状�?�机实现(写操�????)�????
            STATE_WRITE_FREE：空闲状态，准备接受写入请求�????
            STATE_WRITE_DUNCACHED：正在写入未缓存的数据�??
            STATE_WRITE_BUSY：正在处理写入操作中�????
    ***/

    // WRITE Operation 
    // State and counter for write operation
    reg[`WRITE_STATE_WIDTH] write_state;
    reg[2:0] write_count;
    always @(posedge clk) begin
        if(rst) begin
            write_state <= `STATE_WRITE_FREE;
        end else begin
            case (write_state)
                `STATE_WRITE_FREE:
                    if(ducache_wen_i == `WriteEnable) begin // write uncache
                        write_state <= `STATE_WRITE_DUNCACHED;
                    end else if (data_wen_i == `WriteEnable) begin  // write
                        write_state <= `STATE_WRITE_BUSY;
                    end
                `STATE_WRITE_DUNCACHED:
                    if(wdata_resp_i == `Valid) begin
                        write_state <= `STATE_WRITE_FREE;
                    end
                `STATE_WRITE_BUSY:
                    if(wdata_resp_i == `Valid && write_count == 3'b111) begin
                        write_state <= `STATE_WRITE_FREE;
                    end
                default: write_state <= write_state;
            endcase
        end
    end

    // Counter for write operation
    always @(posedge clk) begin
        if(write_state == `STATE_WRITE_FREE) begin
            write_count <= 3'b000;
        end else if (write_state == `STATE_WRITE_BUSY && wdata_resp_i == `Valid) begin
            write_count <= write_count + 1;
        end else begin
            write_count <= write_count;
        end
    end

    // AXI Interface
    assign axi_wen_o = (write_state == `STATE_WRITE_FREE) ? `WriteDisable : `WriteEnable;
    assign axi_wsel_o = (write_state == `STATE_WRITE_DUNCACHED) ? mem_write_sel : 4'b1111;
    assign axi_wvalid_o = (write_state == `STATE_WRITE_FREE) ? `Invalid : `Valid;
    assign axi_waddr_o = (write_state == `STATE_WRITE_DUNCACHED) ? uncached_data_write_address : {uncached_data_write_address[31:5], write_count, 2'b00};
    assign axi_wlast_o = (write_state == `STATE_WRITE_BUSY && write_count == 3'b111) ? `Valid : (write_state == `STATE_WRITE_DUNCACHED) ? `Valid : `Invalid;    // Write last word
    assign axi_wlen_o = (write_state == `STATE_WRITE_DUNCACHED) ? 4'b0000 : 4'b0111;

    // DCache
    always @(posedge clk) begin
        if(write_state == `STATE_WRITE_BUSY && wdata_resp_i == `Valid && write_count == 3'b111) begin
            data_bvalid_o <= `Valid;
        end else begin
            data_bvalid_o <= `Invalid;
        end
    end

    // D-uncached
    always @(posedge clk) begin
        if(write_state == `STATE_WRITE_DUNCACHED && wdata_resp_i == `Valid) begin
            ducache_bvalid_o <= `Valid;
        end else begin
            ducache_bvalid_o <= `Invalid;
        end
    end

    // Data assignment based on write count
    always @( *) begin
        if(rst) begin
            axi_wdata_o <= 32'h0;
        end
        case (write_count)
            3'h0: axi_wdata_o <= data_cache_write_data[32 * 1 - 1 : 32 * 0];
            3'h1: axi_wdata_o <= data_cache_write_data[32 * 2 - 1 : 32 * 1];
            3'h2: axi_wdata_o <= data_cache_write_data[32 * 3 - 1 : 32 * 2];
            3'h3: axi_wdata_o <= data_cache_write_data[32 * 4 - 1 : 32 * 3];
            3'h4: axi_wdata_o <= data_cache_write_data[32 * 5 - 1 : 32 * 4];
            3'h5: axi_wdata_o <= data_cache_write_data[32 * 6 - 1 : 32 * 5];
            3'h6: axi_wdata_o <= data_cache_write_data[32 * 7 - 1 : 32 * 6];
            3'h7: axi_wdata_o <= data_cache_write_data[32 * 8 - 1 : 32 * 7];
            default: axi_wdata_o <= `ZeroWord;
        endcase
    end

    // Uncached wdata_o
    always @(*) begin
        if(rst) begin
            axi_wdata_o <= 32'h0;
        end else begin
            if(write_state == `STATE_WRITE_DUNCACHED) begin
                axi_wdata_o <= uncached_data_write_data;
            end
        end
    end
endmodule
