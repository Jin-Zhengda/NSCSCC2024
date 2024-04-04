`define InstAddrWidth 31: 0 // Instruction address width
`define InstWidth 31: 0 // Instruction width

`define RegAddrWidth 4: 0 // Register address width
`define RegWidth 31: 0 // Register width
`define DoubleRegWidth 63: 0 // Double register width

`define ALUOpWidth 7: 0 // ALU operation width
`define ALUSelWidth 2: 0 // ALU width

// Opcodes 
`define NOP_OPCODE 10'b0000000000
`define ORI_OPCODE 10'b0000001110
`define ADDW_OPCODE 17'b00000000000100000
`define SUBW_OPCODE 17'b00000000000100010
`define SLT_OPCODE 17'b00000000000100100
`define SLTU_OPCODE 17'b00000000000100101
`define NOR_OPCODE 17'b00000000000101000
`define AND_OPCODE 17'b00000000000101001
`define OR_OPCODE 17'b00000000000101010
`define XOR_OPCODE 17'b00000000000101011
`define SLLW_OPCODE 17'b00000000000101110
`define SRLW_OPCODE 17'b00000000000101111
`define SRAW_OPCODE 17'b00000000000110000
`define MULW_OPCODE 17'b00000000000111000
`define MULHW_OPCODE 17'b00000000000111001
`define MULHWU_OPCODE 17'b00000000000111010
`define DIVW_OPCODE 17'b00000000001000000
`define MODW_OPCODE 17'b00000000001000001
`define DIVWU_OPCODE 17'b00000000001000010
`define MODWU_OPCODE 17'b00000000001000011

// ALU operations
`define ALU_NOP 8'b00000000
`define ALU_ADDW 8'b00100000
`define ALU_SUBW 8'b00100010
`define ALU_SLT 8'b00100100
`define ALU_SLTU 8'b00100101
`define ALU_NOR 8'b00101000
`define ALU_AND 8'b00101001
`define ALU_OR 8'b00101010
`define ALU_XOR 8'b00101011
`define ALU_ORI 8'b00001110
`define ALU_SLLW 8'b00101110
`define ALU_SRLW 8'b00101111
`define ALU_SRAW 8'b00110000
`define ALU_MULW 8'b00111000
`define ALU_MULHW 8'b00111001
`define ALU_MULHWU 8'b001110101
`define ALU_DIVW 8'b01000000
`define ALU_MODW 8'b01000001
`define ALU_DIVWU 8'b01000010
`define ALU_MODWU 8'b01000011

// ALU sel operations 
`define ALU_SEL_NOP 3'b000
`define ALU_SEL_LOGIC 3'b001
`define ALU_SEL_SHIFT 3'b010
`define ALU_SEL_ARITHMETIC 3'b100
`define ALU_SEL_MOVE 3'b011
