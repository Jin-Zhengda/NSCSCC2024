`define InstAddrWidth 31: 0 // Instruction address width
`define InstWidth 31: 0 // Instruction width

`define RegAddrWidth 4: 0 // Register address width
`define RegWidth 31: 0 // Register width
`define ByteWidth 7: 0 // Byte width
`define DoubleRegWidth 63: 0 // Double register width

`define ALUOpWidth 7: 0 // ALU operation width
`define ALUSelWidth 2: 0 // ALU width

// Opcodes 
`define NOP_OPCODE 10'b0000000000

`define SLTI_OPCODE 10'b0000001000
`define SLTUI_OPCODE 10'b0000001001
`define ADDIW_OPCODE 10'b0000001010
`define ANDI_OPCODE 10'b0000001101
`define ORI_OPCODE 10'b0000001110
`define XORI_OPCODE 10'b0000001111

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
`define SLLIW_OPCODE 17'b00000000010000001
`define SRLIW_OPCODE 17'b00000000010001001
`define SRAIW_OPCODE 17'b00000000010010001


`define BREAK_OPCODE 17'b00000000001010100
`define SYSCALL_OPCODE 17'b00000000001010110

`define LU12I_OPCODE 7'b0001010
`define PCADDU12I_OPCODE 7'b0001110


`define JIRL_OPCODE 6'b010011
`define B_OPCODE 6'b010100
`define BL_OPCODE 6'b010101
`define BEQ_OPCODE 6'b010110
`define BNE_OPCODE 6'b010111
`define BLT_OPCODE 6'b011000
`define BGE_OPCODE 6'b011001
`define BLTU_OPCODE 6'b011010
`define BGEU_OPCODE 6'b011011

`define LLW_OPCODE 8'b00100000
`define SCW_OPCODE 8'b00100001

`define LDB_OPCODE 10'b0010100000
`define LDH_OPCODE 10'b0010100001
`define LDW_OPCODE 10'b0010100010
`define STB_OPCODE 10'b0010100100
`define STH_OPCODE 10'b0010100101
`define STW_OPCODE 10'b0010100110
`define LDBU_OPCODE 10'b0010101000
`define LDHU_OPCODE 10'b0010101001

// ALU operations
`define ALU_NOP 8'b00000000

`define ALU_SLTI 8'b00001000
`define ALU_SLTUI 8'b00001001
`define ALU_ADDIW 8'b00001010
`define ALU_ANDI 8'b00001011
`define ALU_ORI 8'b00001110
`define ALU_XORI 8'b00001111

`define ALU_ADDW 8'b00100000
`define ALU_SUBW 8'b00100010
`define ALU_SLT 8'b00100100
`define ALU_SLTU 8'b00100101
`define ALU_NOR 8'b00101000
`define ALU_AND 8'b00101001
`define ALU_OR 8'b00101010
`define ALU_XOR 8'b00101011
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
`define ALU_SLLIW 8'b10000001
`define ALU_SRLIW 8'b10001001
`define ALU_SRAIW 8'b10010001

`define ALU_LU12I 8'b00010100
`define ALU_PCADDU12I 8'b00011100

`define ALU_JIRL 8'b01001100
`define ALU_B 8'b01010000
`define ALU_BL 8'b01010100
`define ALU_BEQ 8'b01011000
`define ALU_BNE 8'b01011100  
`define ALU_BLT 8'b01100000
`define ALU_BGE 8'b01100100
`define ALU_BLTU 8'b01101000
`define ALU_BGEU 8'b01101100

`define ALU_LLW 8'b11100000
`define ALU_SCW 8'b00100001
`define ALU_LDB 8'b10100000
`define ALU_LDH 8'b10100001
`define ALU_LDW 8'b10100010
`define ALU_STB 8'b10100100
`define ALU_STH 8'b10100101
`define ALU_STW 8'b10100110
`define ALU_LDBU 8'b10101000
`define ALU_LDHU 8'b10101001

// ALU sel operations 
`define ALU_SEL_NOP 3'b000
`define ALU_SEL_LOGIC 3'b001
`define ALU_SEL_SHIFT 3'b010
`define ALU_SEL_ARITHMETIC 3'b100
`define ALU_SEL_MOVE 3'b011
`define ALU_SEL_JUMP_BRANCH 3'b101
`define ALU_SEL_LOAD_STORE 3'b110