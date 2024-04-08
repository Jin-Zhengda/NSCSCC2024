// Number of AXI inputs (slave interfaces)
`define AXI_S_COUNT 4

// Number of AXI outputs (master interfaces)
`define AXI_M_COUNT 4

// Width of data bus in bits
`define AXI_DATA_WIDTH 32

// Width of address bus in bits
`define AXI_ADDR_WIDTH 32

// Width of wstrb (width of data bus in words)
`define AXI_STRB_WIDTH (AXI_DATA_WIDTH/8)

// Width of ID signal
`define AXI_ID_WIDTH 8

// Propagate awuser signal
`define AXI_AWUSER_ENABLE 0

// Width of awuser signal
`define AXI_AWUSER_WIDTH 1

// Propagate wuser signal
`define AXI_WUSER_ENABLE 0

// Width of wuser signal
`define AXI_WUSER_WIDTH 1

// Propagate buser signal
`define AXI_BUSER_ENABLE 0

// Width of buser signal
`define AXI_BUSER_WIDTH 1

// Propagate aruser signal
`define AXI_ARUSER_ENABLE 0

// Width of aruser signal
`define AXI_ARUSER_WIDTH 1

// Propagate ruser signal
`define AXI_RUSER_ENABLE 0

// Width of ruser signal
`define AXI_RUSER_WIDTH 1

// Propagate ID field
`define AXI_FORWARD_ID 0

// Number of regions per master interface
`define AXI_M_REGIONS 1

// Master interface base addresses
// M_COUNT concatenated fields of M_REGIONS concatenated fields of ADDR_WIDTH bits
// set to zero for default addressing based on M_ADDR_WIDTH
`define AXI_M_BASE_ADDR 0

// Master interface address widths
// M_COUNT concatenated fields of M_REGIONS concatenated fields of 32 bits
`define AXI_M_ADDR_WIDTH {AXI_M_COUNT{{AXI_M_REGIONS{32'd24}}}}

// Read connections between interfaces
// M_COUNT concatenated fields of S_COUNT bits
`define AXI_M_CONNECT_READ {AXI_M_COUNT{{AXI_S_COUNT{1'b1}}}}

// Write connections between interfaces
// M_COUNT concatenated fields of S_COUNT bits
`define AXI_M_CONNECT_WRITE {AXI_M_COUNT{{AXI_S_COUNT{1'b1}}}}

// Secure master (fail operations based on awprot/arprot)
// M_COUNT bits
`define AXI_M_SECURE {AXI_M_COUNT{1'b0}}