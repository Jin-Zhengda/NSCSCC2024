`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 20:22:42
// Design Name: 
// Module Name: AXI
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

module AXI
(
    // 时钟和复位信号
    input clk,
    input rst,

    // 控制信号
    input flush,
    input stall,
    output reg stallreq,    // 一个输出寄存器，表示是否请求暂停

    // 缓存（Cache）相关信号
    input wire cache_ce,
    input wire cache_wen,
    input wire cache_ren,
    input wire[3:0] cache_wsel,
    input wire[3:0] cache_rsel,
    input wire[`RegBus] cache_raddr,
    input wire[`RegBus] cache_waddr,
    input wire[`RegBus] cache_wdata,
    input wire cache_rready,
    input wire cache_wvalid,
    input wire cache_wlast,

    output reg [`RegBus] rdata_o,
    output reg rdata_valid_o,
    output wire wdata_resp_o,

    // Burst相关信号
    input wire[`AXBURST] cache_burst_type,
    input wire[`AXSIZE] cache_burst_size,
    input wire[`AXLEN] cacher_burst_length,
    input wire[`AXLEN] cachew_burst_length,

    // AXI相关信号
    // AXI read address channel.
    output [3:0] arid,
    output reg[31:0] araddr,
    output reg[7:0] arlen,
    output reg[2:0] arsize,
    output reg[1:0] arburst,
    output [1:0] arlock,
    output reg[3:0] arcache,
    output [2:0] arprot,
    output reg arvalid,
    input arready,

    // AXI read data channel.
    input [3:0] rid,
    input [31:0] rdata,
    input [1:0] rresp,
    input rlast,
    input rvalid,
    output reg rready,

    // AXI write address channel.
    output [3:0] awid,
    output reg[31:0] awaddr,
    output reg[7:0] awlen,
    output reg[2:0] awsize,
    output reg[1:0] awburst,
    output [1:0] awlock,
    output reg[3:0] awcache,
    output [2:0] awprot,
    output reg awvalid,
    input awready,

    // AXI write data channel.
    output [3:0] wid,
    output reg[31:0] wdata,
    output reg[3:0] wstrb,
    output reg wlast,
    output reg wvalid,
    input wready,

    // AXI write response channel.
    input [3:0] bid,
    input [1:0] bresp,
    input bvalid,
    output bready
);

    // Status for read and write channels
    reg [2:0] rcurrent_state;
    reg [2:0] rnext_state;
    reg [2:0] wcurrent_state;
    reg [2:0] wnext_state;

    // Assign default values for AXI IDs and locks
    assign aird = 4'b0000;
    assign arlock = `AXLOCK_NORMAL;
    assign arprot = 3'b000;
    assign awid = 4'b0000;
    assign awlock = `AXLOCK_NORMAL;
    assign awprot = 3'b000;
    assign wid = 4'b0000;
    assign bready = `True_v;

    // Assign write data response based on current state
    assign wdata_resp_o = (wcurrent_state == `WREADY) ? wready : `False_v;

    // State machine for read and write channels
    always @(posedge clk) begin
        if(rst == `RstEnable || flush == `True_v) begin
            rcurrent_state <= `AXI_IDLE;
            wcurrent_state <= `AXI_IDLE;
        end else begin
            rcurrent_state <= rnext_state;
            wcurrent_state <= wnext_state;
        end
    end

    // Next state logic for read channel
    always @(*) begin
        if(rst == `RstEnable || flush == `True_v) begin
            rnext_state = `AXI_IDLE;
        end else begin
            case (rcurrent_state)
                `AXI_IDLE: begin
                    if(cache_ce == `True_v && cache_ren == `True_v && !(cache_raddr == awaddr && wnext_state != `AXI_IDLE)) begin
                        rnext_state = `ARREADY;
                    end else begin
                        rnext_state = `AXI_IDLE;
                    end
                end
                `ARREADY: begin
                    if(arready == `True_v) begin
                        rnext_state = `RVALID;
                    end else begin
                        rnext_state = `ARREADY;
                    end
                end
                `RVALID: begin
                    if(rvalid == `False_v && rready == `False_v && rdata_valid_o == `True_v) begin
                        rnext_state = `AXI_IDLE;
                    end else begin
                        rnext_state = `RVALID;
                    end
                end
                default: rnext_state = `AXI_IDLE;
            endcase
        end
    end

    // Next state logic for write channel
    always @(*) begin
        if(rst == `RstEnable || flush == `True_v) begin
            wnext_state = `AXI_IDLE;
        end else begin
            case (wcurrent_state)
                `AXI_IDLE: begin
                    if(cache_ce == `True_v && cache_wen == `True_v) begin
                        wnext_state = `AWREADY;
                    end else begin
                        wnext_state = `AXI_IDLE;
                    end
                end
                `AWREADY: begin
                    if(awready == `True_v) begin
                        wnext_state = `WREADY;
                    end else begin
                        wnext_state = `AWREADY;
                    end
                end
                `WREADY: begin
                    if(wready == `True_v && wlast == `True_v) begin
                        wnext_state = `BVALID;
                    end else begin
                        wnext_state = `WREADY;
                    end
                end
                `BVALID: begin
                    if(bvalid == `True_v) begin
                        wnext_state = `AXI_IDLE;
                    end else begin
                        wnext_state = `BVALID;
                    end
                end
                default: wnext_state = `AXI_IDLE;
            endcase
        end
    end

    // Output control logic
    always @(posedge clk) begin
        if(rst == `RstEnable || flush == `True_v) begin
            //Reset AXI read address channel
            araddr <= `ZeroWord;
            arlen <= 4'b0000;
            arsize <= `AXSIZE_FOUR_BYTE;
            arburst <= `AXBURST_INCR;
            arcache <= 4'b0000;
            arvalid <= `False_v;

            //Reset AXI read data channel
            rready <= `False_v;
            rdata_o <= `ZeroWord;
            rdata_valid_o <= `False_v;

            //Reset AXI write address channel
            awaddr <= `ZeroWord;
            awlen <= 4'b0000;
            awsize <= `AXSIZE_FOUR_BYTE;
            awburst <= `AXBURST_INCR;
            awcache <= 4'b0000;
            awvalid <= `False_v;

            //Reset AXI write data channel
            wvalid <= `False_v;
            wdata <= `ZeroWord;
            wstrb <= 4'b1111;
            wlast <= `False_v;
        end else begin
            case (rcurrent_state)
                `AXI_IDLE: begin
                    // Update AXI read address channel
                    if(cache_ce == `True_v && cache_ren == `True_v && !(cache_raddr == awaddr && wnext_state != `AXI_IDLE)) begin
                        arlen <= cacher_burst_length;
                        arsize <= (cache_rsel == 4'b0001 || cache_rsel == 4'b0010 || cache_rsel == 4'b0100 || cache_rsel == 4'b1000) ? 3'b000 : (cache_rsel == 4'b0011 || cache_rsel == 4'b1100) ? 3'b001 : cache_burst_size;
                        arburst <= cache_burst_type;
                        arcache <= 4'b0000;
                        arvalid <= `True_v;
                        araddr <= cache_raddr;
                        wstrb <= cache_rsel;
                    end else begin
                        arvalid <= `False_v;
                        araddr <= `ZeroWord;
                        arlen <= 4'b0000;
                        arburst <= `AXBURST_INCR;
                        arcache <= 4'b0000;
                    end
                end
                `ARREADY: begin
                    if(arready == `True_v) begin
                        araddr <= `ZeroWord;
                        arlen <= 4'b0000;
                        arburst <= `AXBURST_INCR;
                        arcache <= 4'b0000;
                        arvalid <= `False_v;
                        rready <= `True_v;
                    end
                end 
                `RVALID: begin
                    rdata_valid_o <= rvalid;
                    if(rvalid == `True_v && rlast == `True_v) begin
                        rdata_o <= rdata;
                        rready <= `False_v;
                    end else if(rvalid == `True_v) begin
                        rdata_o <= rdata;
                    end else if(rvalid == `False_v && rready == `False_v && rdata_valid_o == `True_v) begin
                        wstrb <= 4'b1111;
                        arsize <= 3'b010;
                    end
                end
            endcase

            case (wcurrent_state)

            endcase
        end
    end
endmodule
