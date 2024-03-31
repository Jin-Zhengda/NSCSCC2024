
`define InstAddrWidth 31: 0 // Instruction address width
`define InstWidth 31: 0 // Instruction width

`define RegAddrWidth 4: 0 // Register address width
`define RegWidth 31: 0 // Register width

`define ALUOpWidth 7: 0 // ALU operation width
`define ALUSelWidth 2: 0 // ALU width

// Opcodes 
`define NOP_OPCODE 10'b0000000000
`define ORI_OPCODE 10'b0000001110

// ALU operations
`define ALU_NOP 8'b00000000
`define ALU_ORI 8'b00100101

// ALU sel operations 
`define ALU_SEL_NOP 3'b000
`define ALU_RES_LOGIC 3'b001


