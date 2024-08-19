module uart_wrap(
    input          aclk,
    input          aresetn,     

    //ar
    input   [3 :0] arid   ,
    input   [31:0] araddr ,
    input   [7 :0] arlen  ,
    input   [2 :0] arsize ,
    input   [1 :0] arburst,
    input   [1 :0] arlock ,
    input   [3 :0] arcache,
    input   [2 :0] arprot ,
    input          arvalid,
    output         arready,
    //r
    output  [3 :0] rid    ,
    output  [31:0] rdata  ,
    output  [1 :0] rresp  ,
    output         rlast  ,
    output         rvalid ,
    input          rready ,
    //aw
    input   [3 :0] awid   ,
    input   [31:0] awaddr ,
    input   [7 :0] awlen  ,
    input   [2 :0] awsize ,
    input   [1 :0] awburst,
    input   [1 :0] awlock ,
    input   [3 :0] awcache,
    input   [2 :0] awprot ,
    input          awvalid,
    output         awready,
    //w
    input   [3 :0] wid    ,
    input   [31:0] wdata  ,
    input   [3 :0] wstrb  ,
    input          wlast  ,
    input          wvalid ,
    output         wready ,
    //b
    output  [3 :0] bid    ,
    output  [1 :0] bresp  ,
    output         bvalid ,
    input          bready ,

    output         irq_rx ,

    output         tx_pin ,
    input          rx_pin

);

wire [31:0] ram_raddr;
wire [31:0] ram_rdata;
wire        ram_ren  ;
wire [31:0] ram_waddr;
wire [31:0] ram_wdata;
wire [3 :0] ram_wen  ;

uart  u_uart (
    .clk                    ( aclk              ),
    .rst                    ( aresetn           ),
    .we_i                   ( ram_wen           ),
    .waddr_i                ( ram_waddr         ),
    .raddr_i                ( ram_raddr         ),
    .data_i                 ( ram_wdata         ),
    .data_o                 ( ram_rdata         ),
    .irq_rx                 ( irq_rx            ),

    .rx_pin                 ( rx_pin            ),
    .tx_pin                 ( tx_pin            )
);

soc_axi_sram_bridge #(
    .BUS_WIDTH  ( 32 ),
    .DATA_WIDTH ( 32 ),
    .CPU_WIDTH  ( 32 ))
 u_uart_bridge (
    .aclk                    ( aclk         ),
    .aresetn                 ( aresetn      ),
    .ram_rdata               ( ram_rdata    ),
    .m_araddr                ( araddr       ),
    .m_arburst               ( arburst      ),
    .m_arcache               ( arcache      ),
    .m_arid                  ( arid         ),
    .m_arlen                 ( arlen        ),
    .m_arlock                ( arlock       ),
    .m_arprot                ( arprot       ),
    .m_arsize                ( arsize       ),
    .m_arvalid               ( arvalid      ),
    .m_awaddr                ( awaddr       ),
    .m_awburst               ( awburst      ),
    .m_awcache               ( awcache      ),
    .m_awid                  ( awid         ),
    .m_awlen                 ( awlen        ),
    .m_awlock                ( awlock       ),
    .m_awprot                ( awprot       ),
    .m_awsize                ( awsize       ),
    .m_awvalid               ( awvalid      ),
    .m_bready                ( bready       ),
    .m_rready                ( rready       ),
    .m_wdata                 ( wdata        ),
    .m_wid                   ( wid          ),
    .m_wlast                 ( wlast        ),
    .m_wstrb                 ( wstrb        ),
    .m_wvalid                ( wvalid       ),

    .ram_raddr               ( ram_raddr    ),
    .ram_ren                 ( ram_ren      ),
    .ram_waddr               ( ram_waddr    ),
    .ram_wdata               ( ram_wdata    ),
    .ram_wen                 ( ram_wen      ),
    .m_arready               ( arready      ),
    .m_awready               ( awready      ),
    .m_bid                   ( bid          ),
    .m_bresp                 ( bresp        ),
    .m_bvalid                ( bvalid       ),
    .m_rdata                 ( rdata        ),
    .m_rid                   ( rid          ),
    .m_rlast                 ( rlast        ),
    .m_rresp                 ( rresp        ),
    .m_rvalid                ( rvalid       ),
    .m_wready                ( wready       )
);

endmodule