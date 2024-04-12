// CacheAXI_Interface模块涉及的全部常�??
`define RstEnable 1'b0
`define RstDisable 1'b1
`define ZeroWord 32'h00000000
`define WriteEnable 1'b1
`define WriteDisable 1'b0
`define ReadEnable 1'b1
`define ReadDisable 1'b0
`define ChipEnable 1'b1
`define ChipDisable 1'b0
`define Valid 1'b1
`define Invalid 1'b0
`define True_v 1'b1
`define False_v 1'b0
`define InstAddrBus 31:0
`define InstBus 31:0
`define DataAddrBus 31:0
`define DataBus 31:0
`define BlockNum 8
`define WaySize `BlockNum*32
`define WayBus `BlockNum*32-1:0
`define RegBus 31:0

//CacheAXI_Interface
`define WRITE_STATE_WIDTH      1:0
`define STATE_WRITE_FREE       2'b00
`define STATE_WRITE_BUSY       2'b01
`define STATE_WRITE_DUNCACHED  2'b10

`define READ_STATE_WIDTH       2:0
`define STATE_READ_FREE        3'b000
`define STATE_READ_ICACHE      3'b001
`define STATE_READ_DCACHE      3'b010
`define STATE_READ_IUNCACHED   3'b011
`define STATE_READ_DUNCACHED   3'b100

//burst
`define AXSIZE   2:0
`define AXLEN    3:0
`define AXBURST  1:0

//AXI
`define AXRESP_OKAY   2'b00
`define AXRESP_EXOKAY 2'b01
`define AXRESP_SLVERR 2'b10
`define AXRESP_DECERR 2'b11

`define AXLOCK_NORMAL     2'b00
`define AXLOCK_EXCLUSIVE  2'b01
`define AXLOCK_LOCKED     2'b10

`define AXBURST_FIXED  2'b00
`define AXBURST_INCR   2'b01
`define AXBURST_WRAP   2'b10

`define AXSIZE_FOUR_BYTE        3'b010

`define AXCACHE_REG_BUFFER      2'b00
`define AXCACHE_REG_CACHE       2'b01
`define AXCACHE_REG_READ_ALCT   2'b10
`define AXCACHE_REG_WRITE_ALCT  2'b11

`define AXPROT_REG_NORM_OR_PRI  2'b00
`define AXPROT_REG_SEC_OR_NSEC  2'b10
`define AXPROT_REG_INST_OR_DATA 2'b01

`define AXI_IDLE 3'b000
`define ARREADY  3'b001   //wait for arready
`define RVALID   3'b010   //wait for rvalid
`define RLAST    3'b011   //wait for rlast
`define AWREADY  3'b100   //wait for awready
`define WREADY   3'b101   //wair for wready    
`define BVALID   3'b110   //wait for bvalid


// AXI_MEM
`define DATA_WIDTH 32
`define ADDR_WIDTH 32
`define STRB_WIDTH `DATA_WIDTH/8
`define ID_WIDTH 4
`define PIPELINE_OUTPUT 0
/***
    // Width of data bus in bits
    parameter DATA_WIDTH = 32,
    // Width of address bus in bits
    parameter ADDR_WIDTH = 32,
    // Width of wstrb (width of data bus in words)
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    // Width of ID signal
    parameter ID_WIDTH = 4,
    // Extra pipeline register on output
    parameter PIPELINE_OUTPUT = 0
***/