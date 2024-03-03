/*
 * Description:
 *   Some macro definations, contains
 *   1. opcode used in decoder
 *   2. some control signals outputed by decoder
 *   3. CSR related
 *   4. some other definations
 *   This file is included by almost all other files about CPU
 */


// doc says 'nop' is 'addi zero, zero, 0'
`define NOP_INST 32'h00000013

// opcode[6:2]
`define OPCODE_LOAD      5'b00000 //
`define OPCODE_STORE     5'b01000 //
`define OPCODE_FMADD     5'b10000
`define OPCODE_BRANCH    5'b11000 //
`define OPCODE_LOAD_FP   5'b00001
`define OPCODE_STORE_FP  5'b01001
`define OPCODE_FMSUB     5'b10001
`define OPCODE_JALR      5'b11001 //
`define OPCODE_FNMSUB    5'b10010
`define OPCODE_MISC_MEM  5'b00011
`define OPCODE_AMO       5'b01011
`define OPCODE_NMADD     5'b10011
`define OPCODE_JAL       5'b11011 //
`define OPCODE_ALUOP_IMM 5'b00100 //
`define OPCODE_ALUOP     5'b01100 //
`define OPCODE_OP_FP     5'b10100
`define OPCODE_SYSTEM    5'b11100
`define OPCODE_AUIPC     5'b00101
`define OPCODE_LUI       5'b01101
`define OPCODE_OP_IMM_32 5'b00110
`define OPCODE_OP_32     5'b01110

// OP - funct3 + funct7中的inst[30]
`define OP_ADD  4'b0000
`define OP_SUB  4'b0001 
`define OP_SLL  4'b0010
`define OP_SLT  4'b0100
`define OP_SLTU 4'b0110
`define OP_XOR  4'b1000
`define OP_SRL  4'b1010
`define OP_SRA  4'b1011 
`define OP_OR   4'b1100
`define OP_AND  4'b1110

// IMM OP - funct3
`define OP_ADDI  3'b000 
`define OP_SLTI  3'b010 
`define OP_SLTIU 3'b011 
`define OP_XORI  3'b100 
`define OP_ORI   3'b110 
`define OP_ANDI  3'b111 
`define OP_SLLI  3'b001 
`define OP_SRLI  3'b101 //func7 = 0
`define OP_SRAI  3'b101 //func7 = 1 

// BRANCH - funct3
`define OP_BEQ  3'b000
`define OP_BNE  3'b001
`define OP_BLT  3'b100
`define OP_BGE  3'b101
`define OP_BLTU 3'b110
`define OP_BGEU 3'b111

// SYSTEM - funct3
`define SYSTEM_E      3'b000 // ecall & ebreak
`define SYSTEM_RET    3'b000 // mret
`define SYSTEM_CSRRW  3'b001
`define SYSTEM_CSRRS  3'b010
`define SYSTEM_CSRRC  3'b011
`define SYSTEM_CSRRWI 3'b101
`define SYSTEM_CSRRSI 3'b110
`define SYSTEM_CSRRCI 3'b111

// alu_ctrl
`define ALU_CTRL_BITS 4
`define ALU_ADD  `ALU_CTRL_BITS'd0
`define ALU_SUB  `ALU_CTRL_BITS'd1
`define ALU_SLL  `ALU_CTRL_BITS'd2
`define ALU_SLT  `ALU_CTRL_BITS'd3
`define ALU_SLTU `ALU_CTRL_BITS'd4
`define ALU_XOR  `ALU_CTRL_BITS'd5
`define ALU_SRL  `ALU_CTRL_BITS'd6
`define ALU_SRA  `ALU_CTRL_BITS'd7
`define ALU_OR   `ALU_CTRL_BITS'd8
`define ALU_AND  `ALU_CTRL_BITS'd9

// cmp_ctrl
`define CMP_CTRL_BITS 3
`define CMP_EQ  `CMP_CTRL_BITS'd0
`define CMP_NE  `CMP_CTRL_BITS'd1
`define CMP_LT  `CMP_CTRL_BITS'd2
`define CMP_LTU `CMP_CTRL_BITS'd3
`define CMP_GE  `CMP_CTRL_BITS'd4
`define CMP_GEU `CMP_CTRL_BITS'd5

// csr_ctrl
`define CSR_CTRL_BITS 2
`define CSR_CTRL_W `CSR_CTRL_BITS'd0
`define CSR_CTRL_S `CSR_CTRL_BITS'd1
`define CSR_CTRL_C `CSR_CTRL_BITS'd2

// csr index
`define	CSR_MSTATUS       12'h300
`define CSR_MIE           12'h304
`define CSR_MIP           12'h344
`define CSR_MEPC          12'h341
`define CSR_MCAUSE        12'h342
`define CSR_MTVAL         12'h343
`define CSR_MTVEC         12'h305

// interrupt cause
`define CSR_CAUSE_M_SOFT_INT              32'h8000_0003 // 这个可以忽略
`define CSR_CAUSE_M_TIMER_INT             32'h8000_0007
`define CSR_CAUSE_M_EXTERNAL_INT          32'h8000_000b
// exception cause
`define CSR_CAUSE_INST_ADDR_MISALIGN      32'h0000_0000
`define CSR_CAUSE_ILLEGAL_INST            32'h0000_0002
`define CSR_CAUSE_LOAD_ADDR_MISALIGN      32'h0000_0004
`define CSR_CAUSE_STORE_ADDR_MISALIGN     32'h0000_0006
`define CSR_CAUSE_ECALL_FROM_M            32'h0000_000B
`define CSR_CAUSE_INST_PAGE_FAULT         32'h0000_000C //忽略
`define CSR_CAUSE_LOAD_PAGE_FAULT         32'h0000_000D //忽略
`define CSR_CAUSE_STORE_PAGE_FAULT        32'h0000_000F //忽略
`define CSR_MRET                          32'h0F00_0000
`define CSR_NORMAL                        32'h0FFF_FFFF

//cause part1
`define NORMAL 2'b00
`define ILLINS 2'b01
`define ECALL  2'b10
`define MRET   2'b11


// csr write mask
`define CSR_MSTATUS_WRITE_MASK 32'h0000_0088
`define CSR_MIE_WRITE_MASK     32'h0000_0888
`define CSR_MIP_WRITE_MASK     32'h0000_0888
`define CSR_MEPC_WRITE_MASK    32'hffff_fffc
`define CSR_MCAUSE_WRITE_MASK  32'hffff_ffff
`define CSR_MTVAL_WRITE_MASK   32'hffff_ffff
`define CSR_MTVEC_WRITE_MASK   32'hffff_fffc

//我新加的
//ImmSel
`define IMM_I  3'b001
`define IMM_S  3'b010
`define IMM_B  3'b011
`define IMM_J  3'b100
`define IMM_U  3'b000
`define IMM_Z  3'b101 //中断指令零拓�?
`define IMM_N  3'b111 //无需立即�?

//MemToReg
`define ALU_TO_REG    3'b000 //ALUOp
`define DMEM_TO_REG   3'b001 //load
`define PCP4_TO_REG   3'b010 //jal,to x1
`define IMM_TO_REG    3'b011 //lui
`define IMMPPC_TO_REG 3'b100 //auipc
`define CSR_TO_REG    3'b101 //csr

//ALUSrc_B ALU第二个操作数
`define RS2_TO_ALU 1'b0
`define IMM_TO_ALU 1'b1

//RegWrite
`define REG_BAN_WRITE 1'b0
`define REG_EN_WRITE  1'b1

//MemRead
`define MEM_BAN_READ  1'b0
`define MEM_EN_READ 1'b1

//MemWrite
`define MEM_BAN_WRITE 1'b0
`define MEM_EN_WRITE  1'b1


//ALUop，一级解码结果，二级解码分类标准
`define ALUOP_LSJ 2'b00
`define ALUOP_BRANCH 2'b01
`define ALUOP_ALU 2'b10
`define ALUOP_ALUIMM 2'b11

//Branch
`define NOBRANCH 1'b0
`define BRANCH   1'b1

//Jump
`define NOJUMP    2'b00
`define JUMP_JAL  2'b01
`define JUMP_JALR 2'b10

//CSRSrc
`define REG_TO_CSR 1'b0
`define IMM_TO_CSR 1'b1
//csr_wen
`define CSR_BAN_WRITE 1'b0
`define CSR_EN_WRITE  1'b1

//Forward
`define NOFORWARD 2'b00
`define FORWARD_EXMEM 2'b10
`define FORWARD_MEMWB 2'b01

// generated code

`define VGA_DBG_VgaDebugger_Arguments \
    .pc(dbg_pc), \
    .inst(dbg_inst), \
    .IfId_pc(dbg_IfId_pc), \
    .IfId_inst(dbg_IfId_inst), \
    .IfId_valid(dbg_IfId_valid), \
    .IdEx_pc(dbg_IdEx_pc), \
    .IdEx_inst(dbg_IdEx_inst), \
    .IdEx_valid(dbg_IdEx_valid), \
    .IdEx_rd(dbg_IdEx_rd), \
    .IdEx_rs1(dbg_IdEx_rs1), \
    .IdEx_rs2(dbg_IdEx_rs2), \
    .IdEx_rs1_val(dbg_IdEx_rs1_val), \
    .IdEx_rs2_val(dbg_IdEx_rs2_val), \
    .IdEx_reg_wen(dbg_IdEx_reg_wen), \
    .IdEx_is_imm(dbg_IdEx_is_imm), \
    .IdEx_imm(dbg_IdEx_imm), \
    .IdEx_mem_wen(dbg_IdEx_mem_wen), \
    .IdEx_mem_ren(dbg_IdEx_mem_ren), \
    .IdEx_is_branch(dbg_IdEx_is_branch), \
    .IdEx_is_jal(dbg_IdEx_is_jal), \
    .IdEx_is_jalr(dbg_IdEx_is_jalr), \
    .IdEx_is_auipc(dbg_IdEx_is_auipc), \
    .IdEx_is_lui(dbg_IdEx_is_lui), \
    .IdEx_alu_ctrl(dbg_IdEx_alu_ctrl), \
    .IdEx_cmp_ctrl(dbg_IdEx_cmp_ctrl), \
    .ExMa_pc(dbg_ExMa_pc), \
    .ExMa_inst(dbg_ExMa_inst), \
    .ExMa_valid(dbg_ExMa_valid), \
    .ExMa_rd(dbg_ExMa_rd), \
    .ExMa_reg_wen(dbg_ExMa_reg_wen), \
    .ExMa_mem_w_data(dbg_ExMa_mem_w_data), \
    .ExMa_alu_res(dbg_ExMa_alu_res), \
    .ExMa_mem_wen(dbg_ExMa_mem_wen), \
    .ExMa_mem_ren(dbg_ExMa_mem_ren), \
    .ExMa_is_jal(dbg_ExMa_is_jal), \
    .ExMa_is_jalr(dbg_ExMa_is_jalr), \
    .MaWb_pc(dbg_MaWb_pc), \
    .MaWb_inst(dbg_MaWb_inst), \
    .MaWb_valid(dbg_MaWb_valid), \
    .MaWb_rd(dbg_MaWb_rd), \
    .MaWb_reg_wen(dbg_MaWb_reg_wen), \
    .MaWb_reg_w_data(dbg_MaWb_reg_w_data), \
    .x0(dbg_x0), \
    .ra(dbg_ra), \
    .sp(dbg_sp), \
    .gp(dbg_gp), \
    .tp(dbg_tp), \
    .t0(dbg_t0), \
    .t1(dbg_t1), \
    .t2(dbg_t2), \
    .s0(dbg_s0), \
    .s1(dbg_s1), \
    .a0(dbg_a0), \
    .a1(dbg_a1), \
    .a2(dbg_a2), \
    .a3(dbg_a3), \
    .a4(dbg_a4), \
    .a5(dbg_a5), \
    .a6(dbg_a6), \
    .a7(dbg_a7), \
    .s2(dbg_s2), \
    .s3(dbg_s3), \
    .s4(dbg_s4), \
    .s5(dbg_s5), \
    .s6(dbg_s6), \
    .s7(dbg_s7), \
    .s8(dbg_s8), \
    .s9(dbg_s9), \
    .s10(dbg_s10), \
    .s11(dbg_s11), \
    .t3(dbg_t3), \
    .t4(dbg_t4), \
    .t5(dbg_t5), \
    .t6(dbg_t6),

`define VGA_DBG_Core_Outputs \
    output wire [31:0] dbg_pc, \
    output wire [31:0] dbg_inst, \
    output wire [31:0] dbg_IfId_pc, \
    output wire [31:0] dbg_IfId_inst, \
    output wire dbg_IfId_valid, \
    output wire [31:0] dbg_IdEx_pc, \
    output wire [31:0] dbg_IdEx_inst, \
    output wire dbg_IdEx_valid, \
    output wire [4:0] dbg_IdEx_rd, \
    output wire [4:0] dbg_IdEx_rs1, \
    output wire [4:0] dbg_IdEx_rs2, \
    output wire [31:0] dbg_IdEx_rs1_val, \
    output wire [31:0] dbg_IdEx_rs2_val, \
    output wire dbg_IdEx_reg_wen, \
    output wire dbg_IdEx_is_imm, \
    output wire [31:0] dbg_IdEx_imm, \
    output wire dbg_IdEx_mem_wen, \
    output wire dbg_IdEx_mem_ren, \
    output wire dbg_IdEx_is_branch, \
    output wire dbg_IdEx_is_jal, \
    output wire dbg_IdEx_is_jalr, \
    output wire dbg_IdEx_is_auipc, \
    output wire dbg_IdEx_is_lui, \
    output wire [3:0] dbg_IdEx_alu_ctrl, \
    output wire [2:0] dbg_IdEx_cmp_ctrl, \
    output wire [31:0] dbg_ExMa_pc, \
    output wire [31:0] dbg_ExMa_inst, \
    output wire dbg_ExMa_valid, \
    output wire [4:0] dbg_ExMa_rd, \
    output wire dbg_ExMa_reg_wen, \
    output wire [31:0] dbg_ExMa_mem_w_data, \
    output wire [31:0] dbg_ExMa_alu_res, \
    output wire dbg_ExMa_mem_wen, \
    output wire dbg_ExMa_mem_ren, \
    output wire dbg_ExMa_is_jal, \
    output wire dbg_ExMa_is_jalr, \
    output wire [31:0] dbg_MaWb_pc, \
    output wire [31:0] dbg_MaWb_inst, \
    output wire dbg_MaWb_valid, \
    output wire [4:0] dbg_MaWb_rd, \
    output wire dbg_MaWb_reg_wen, \
    output wire [31:0] dbg_MaWb_reg_w_data, \
    output wire [31:0] dbg_x0, \
    output wire [31:0] dbg_ra, \
    output wire [31:0] dbg_sp, \
    output wire [31:0] dbg_gp, \
    output wire [31:0] dbg_tp, \
    output wire [31:0] dbg_t0, \
    output wire [31:0] dbg_t1, \
    output wire [31:0] dbg_t2, \
    output wire [31:0] dbg_s0, \
    output wire [31:0] dbg_s1, \
    output wire [31:0] dbg_a0, \
    output wire [31:0] dbg_a1, \
    output wire [31:0] dbg_a2, \
    output wire [31:0] dbg_a3, \
    output wire [31:0] dbg_a4, \
    output wire [31:0] dbg_a5, \
    output wire [31:0] dbg_a6, \
    output wire [31:0] dbg_a7, \
    output wire [31:0] dbg_s2, \
    output wire [31:0] dbg_s3, \
    output wire [31:0] dbg_s4, \
    output wire [31:0] dbg_s5, \
    output wire [31:0] dbg_s6, \
    output wire [31:0] dbg_s7, \
    output wire [31:0] dbg_s8, \
    output wire [31:0] dbg_s9, \
    output wire [31:0] dbg_s10, \
    output wire [31:0] dbg_s11, \
    output wire [31:0] dbg_t3, \
    output wire [31:0] dbg_t4, \
    output wire [31:0] dbg_t5, \
    output wire [31:0] dbg_t6,

`define VGA_DBG_Core_Assignments \
    assign dbg_pc = PC_IF; \
    assign dbg_inst = inst; \
    assign dbg_IfId_pc = PC_IFID; \
    assign dbg_IfId_inst = inst_IFID; \
    assign dbg_IfId_valid = valid_IFID; \
    assign dbg_IdEx_pc = 0; \
    assign dbg_IdEx_inst = inst_IDEX; \
    assign dbg_IdEx_valid = valid_IDEX; \
    assign dbg_IdEx_rd = rd_IDEX; \
    assign dbg_IdEx_rs1 = rs1_IDEX; \
    assign dbg_IdEx_rs2 = rs2_IDEX; \
    assign dbg_IdEx_rs1_val = rs1_val_IDEX; \
    assign dbg_IdEx_rs2_val = rs2_val_IDEX; \
    assign dbg_IdEx_reg_wen = reg_wen_IDEX; \
    assign dbg_IdEx_is_imm = ALUSrc_B_IDEX; \
    assign dbg_IdEx_imm = imm_IDEX; \
    assign dbg_IdEx_mem_wen = mem_wen_IDEX; \
    assign dbg_IdEx_mem_ren = mem_ren_IDEX; \
    assign dbg_IdEx_is_branch = 0; \
    assign dbg_IdEx_is_jal = 0; \
    assign dbg_IdEx_is_jalr = 0; \
    assign dbg_IdEx_is_auipc = 0; \
    assign dbg_IdEx_is_lui = 0; \
    assign dbg_IdEx_alu_ctrl = alu_ctrl_IDEX; \
    assign dbg_IdEx_cmp_ctrl = 0; \
    assign dbg_ExMa_pc = 0; \
    assign dbg_ExMa_inst = inst_EXMEM; \
    assign dbg_ExMa_valid = valid_EXMEM; \
    assign dbg_ExMa_rd = rd_EXMEM; \
    assign dbg_ExMa_reg_wen = reg_wen_EXMEM; \
    assign dbg_ExMa_mem_w_data = dmem_i_data; \
    assign dbg_ExMa_alu_res = alu_res_EXMEM; \
    assign dbg_ExMa_mem_wen = mem_wen_EXMEM; \
    assign dbg_ExMa_mem_ren = mem_ren_EXMEM; \
    assign dbg_ExMa_is_jal = 0; \
    assign dbg_ExMa_is_jalr = 0; \
    assign dbg_MaWb_pc = 0; \
    assign dbg_MaWb_inst = inst_MEMWB; \
    assign dbg_MaWb_valid = valid_MEMWB; \
    assign dbg_MaWb_rd = rd_MEMWB; \
    assign dbg_MaWb_reg_wen = reg_wen_MEMWB; \
    assign dbg_MaWb_reg_w_data = reg_i_data_WB;

`define VGA_DBG_Core_Declaration \
    wire [31:0] dbg_pc; \
    wire [31:0] dbg_inst; \
    wire [31:0] dbg_IfId_pc; \
    wire [31:0] dbg_IfId_inst; \
    wire dbg_IfId_valid; \
    wire [31:0] dbg_IdEx_pc; \
    wire [31:0] dbg_IdEx_inst; \
    wire dbg_IdEx_valid; \
    wire [4:0] dbg_IdEx_rd; \
    wire [4:0] dbg_IdEx_rs1; \
    wire [4:0] dbg_IdEx_rs2; \
    wire [31:0] dbg_IdEx_rs1_val; \
    wire [31:0] dbg_IdEx_rs2_val; \
    wire dbg_IdEx_reg_wen; \
    wire dbg_IdEx_is_imm; \
    wire [31:0] dbg_IdEx_imm; \
    wire dbg_IdEx_mem_wen; \
    wire dbg_IdEx_mem_ren; \
    wire dbg_IdEx_is_branch; \
    wire dbg_IdEx_is_jal; \
    wire dbg_IdEx_is_jalr; \
    wire dbg_IdEx_is_auipc; \
    wire dbg_IdEx_is_lui; \
    wire [3:0] dbg_IdEx_alu_ctrl; \
    wire [2:0] dbg_IdEx_cmp_ctrl; \
    wire [31:0] dbg_ExMa_pc; \
    wire [31:0] dbg_ExMa_inst; \
    wire dbg_ExMa_valid; \
    wire [4:0] dbg_ExMa_rd; \
    wire dbg_ExMa_reg_wen; \
    wire [31:0] dbg_ExMa_mem_w_data; \
    wire [31:0] dbg_ExMa_alu_res; \
    wire dbg_ExMa_mem_wen; \
    wire dbg_ExMa_mem_ren; \
    wire dbg_ExMa_is_jal; \
    wire dbg_ExMa_is_jalr; \
    wire [31:0] dbg_MaWb_pc; \
    wire [31:0] dbg_MaWb_inst; \
    wire dbg_MaWb_valid; \
    wire [4:0] dbg_MaWb_rd; \
    wire dbg_MaWb_reg_wen; \
    wire [31:0] dbg_MaWb_reg_w_data;

`define VGA_DBG_Core_Arguments \
    .dbg_pc(dbg_pc), \
    .dbg_inst(dbg_inst), \
    .dbg_IfId_pc(dbg_IfId_pc), \
    .dbg_IfId_inst(dbg_IfId_inst), \
    .dbg_IfId_valid(dbg_IfId_valid), \
    .dbg_IdEx_pc(dbg_IdEx_pc), \
    .dbg_IdEx_inst(dbg_IdEx_inst), \
    .dbg_IdEx_valid(dbg_IdEx_valid), \
    .dbg_IdEx_rd(dbg_IdEx_rd), \
    .dbg_IdEx_rs1(dbg_IdEx_rs1), \
    .dbg_IdEx_rs2(dbg_IdEx_rs2), \
    .dbg_IdEx_rs1_val(dbg_IdEx_rs1_val), \
    .dbg_IdEx_rs2_val(dbg_IdEx_rs2_val), \
    .dbg_IdEx_reg_wen(dbg_IdEx_reg_wen), \
    .dbg_IdEx_is_imm(dbg_IdEx_is_imm), \
    .dbg_IdEx_imm(dbg_IdEx_imm), \
    .dbg_IdEx_mem_wen(dbg_IdEx_mem_wen), \
    .dbg_IdEx_mem_ren(dbg_IdEx_mem_ren), \
    .dbg_IdEx_is_branch(dbg_IdEx_is_branch), \
    .dbg_IdEx_is_jal(dbg_IdEx_is_jal), \
    .dbg_IdEx_is_jalr(dbg_IdEx_is_jalr), \
    .dbg_IdEx_is_auipc(dbg_IdEx_is_auipc), \
    .dbg_IdEx_is_lui(dbg_IdEx_is_lui), \
    .dbg_IdEx_alu_ctrl(dbg_IdEx_alu_ctrl), \
    .dbg_IdEx_cmp_ctrl(dbg_IdEx_cmp_ctrl), \
    .dbg_ExMa_pc(dbg_ExMa_pc), \
    .dbg_ExMa_inst(dbg_ExMa_inst), \
    .dbg_ExMa_valid(dbg_ExMa_valid), \
    .dbg_ExMa_rd(dbg_ExMa_rd), \
    .dbg_ExMa_reg_wen(dbg_ExMa_reg_wen), \
    .dbg_ExMa_mem_w_data(dbg_ExMa_mem_w_data), \
    .dbg_ExMa_alu_res(dbg_ExMa_alu_res), \
    .dbg_ExMa_mem_wen(dbg_ExMa_mem_wen), \
    .dbg_ExMa_mem_ren(dbg_ExMa_mem_ren), \
    .dbg_ExMa_is_jal(dbg_ExMa_is_jal), \
    .dbg_ExMa_is_jalr(dbg_ExMa_is_jalr), \
    .dbg_MaWb_pc(dbg_MaWb_pc), \
    .dbg_MaWb_inst(dbg_MaWb_inst), \
    .dbg_MaWb_valid(dbg_MaWb_valid), \
    .dbg_MaWb_rd(dbg_MaWb_rd), \
    .dbg_MaWb_reg_wen(dbg_MaWb_reg_wen), \
    .dbg_MaWb_reg_w_data(dbg_MaWb_reg_w_data), \
    .dbg_x0(dbg_x0), \
    .dbg_ra(dbg_ra), \
    .dbg_sp(dbg_sp), \
    .dbg_gp(dbg_gp), \
    .dbg_tp(dbg_tp), \
    .dbg_t0(dbg_t0), \
    .dbg_t1(dbg_t1), \
    .dbg_t2(dbg_t2), \
    .dbg_s0(dbg_s0), \
    .dbg_s1(dbg_s1), \
    .dbg_a0(dbg_a0), \
    .dbg_a1(dbg_a1), \
    .dbg_a2(dbg_a2), \
    .dbg_a3(dbg_a3), \
    .dbg_a4(dbg_a4), \
    .dbg_a5(dbg_a5), \
    .dbg_a6(dbg_a6), \
    .dbg_a7(dbg_a7), \
    .dbg_s2(dbg_s2), \
    .dbg_s3(dbg_s3), \
    .dbg_s4(dbg_s4), \
    .dbg_s5(dbg_s5), \
    .dbg_s6(dbg_s6), \
    .dbg_s7(dbg_s7), \
    .dbg_s8(dbg_s8), \
    .dbg_s9(dbg_s9), \
    .dbg_s10(dbg_s10), \
    .dbg_s11(dbg_s11), \
    .dbg_t3(dbg_t3), \
    .dbg_t4(dbg_t4), \
    .dbg_t5(dbg_t5), \
    .dbg_t6(dbg_t6),

`define VGA_DBG_RegFile_Outputs \
    output wire [31:0] dbg_x0, \
    output wire [31:0] dbg_ra, \
    output wire [31:0] dbg_sp, \
    output wire [31:0] dbg_gp, \
    output wire [31:0] dbg_tp, \
    output wire [31:0] dbg_t0, \
    output wire [31:0] dbg_t1, \
    output wire [31:0] dbg_t2, \
    output wire [31:0] dbg_s0, \
    output wire [31:0] dbg_s1, \
    output wire [31:0] dbg_a0, \
    output wire [31:0] dbg_a1, \
    output wire [31:0] dbg_a2, \
    output wire [31:0] dbg_a3, \
    output wire [31:0] dbg_a4, \
    output wire [31:0] dbg_a5, \
    output wire [31:0] dbg_a6, \
    output wire [31:0] dbg_a7, \
    output wire [31:0] dbg_s2, \
    output wire [31:0] dbg_s3, \
    output wire [31:0] dbg_s4, \
    output wire [31:0] dbg_s5, \
    output wire [31:0] dbg_s6, \
    output wire [31:0] dbg_s7, \
    output wire [31:0] dbg_s8, \
    output wire [31:0] dbg_s9, \
    output wire [31:0] dbg_s10, \
    output wire [31:0] dbg_s11, \
    output wire [31:0] dbg_t3, \
    output wire [31:0] dbg_t4, \
    output wire [31:0] dbg_t5, \
    output wire [31:0] dbg_t6,

`define VGA_DBG_RegFile_Assignments \
    assign dbg_x0 = 0; \
    assign dbg_ra = regs[1]; \
    assign dbg_sp = regs[2]; \
    assign dbg_gp = regs[3]; \
    assign dbg_tp = regs[4]; \
    assign dbg_t0 = regs[5]; \
    assign dbg_t1 = regs[6]; \
    assign dbg_t2 = regs[7]; \
    assign dbg_s0 = regs[8]; \
    assign dbg_s1 = regs[9]; \
    assign dbg_a0 = regs[10]; \
    assign dbg_a1 = regs[11]; \
    assign dbg_a2 = regs[12]; \
    assign dbg_a3 = regs[13]; \
    assign dbg_a4 = regs[14]; \
    assign dbg_a5 = regs[15]; \
    assign dbg_a6 = regs[16]; \
    assign dbg_a7 = regs[17]; \
    assign dbg_s2 = regs[18]; \
    assign dbg_s3 = regs[19]; \
    assign dbg_s4 = regs[20]; \
    assign dbg_s5 = regs[21]; \
    assign dbg_s6 = regs[22]; \
    assign dbg_s7 = regs[23]; \
    assign dbg_s8 = regs[24]; \
    assign dbg_s9 = regs[25]; \
    assign dbg_s10 = regs[26]; \
    assign dbg_s11 = regs[27]; \
    assign dbg_t3 = regs[28]; \
    assign dbg_t4 = regs[29]; \
    assign dbg_t5 = regs[30]; \
    assign dbg_t6 = regs[31];

`define VGA_DBG_RegFile_Declaration \
    wire [31:0] dbg_x0; \
    wire [31:0] dbg_ra; \
    wire [31:0] dbg_sp; \
    wire [31:0] dbg_gp; \
    wire [31:0] dbg_tp; \
    wire [31:0] dbg_t0; \
    wire [31:0] dbg_t1; \
    wire [31:0] dbg_t2; \
    wire [31:0] dbg_s0; \
    wire [31:0] dbg_s1; \
    wire [31:0] dbg_a0; \
    wire [31:0] dbg_a1; \
    wire [31:0] dbg_a2; \
    wire [31:0] dbg_a3; \
    wire [31:0] dbg_a4; \
    wire [31:0] dbg_a5; \
    wire [31:0] dbg_a6; \
    wire [31:0] dbg_a7; \
    wire [31:0] dbg_s2; \
    wire [31:0] dbg_s3; \
    wire [31:0] dbg_s4; \
    wire [31:0] dbg_s5; \
    wire [31:0] dbg_s6; \
    wire [31:0] dbg_s7; \
    wire [31:0] dbg_s8; \
    wire [31:0] dbg_s9; \
    wire [31:0] dbg_s10; \
    wire [31:0] dbg_s11; \
    wire [31:0] dbg_t3; \
    wire [31:0] dbg_t4; \
    wire [31:0] dbg_t5; \
    wire [31:0] dbg_t6;

`define VGA_DBG_RegFile_Arguments \
    .dbg_x0(dbg_x0), \
    .dbg_ra(dbg_ra), \
    .dbg_sp(dbg_sp), \
    .dbg_gp(dbg_gp), \
    .dbg_tp(dbg_tp), \
    .dbg_t0(dbg_t0), \
    .dbg_t1(dbg_t1), \
    .dbg_t2(dbg_t2), \
    .dbg_s0(dbg_s0), \
    .dbg_s1(dbg_s1), \
    .dbg_a0(dbg_a0), \
    .dbg_a1(dbg_a1), \
    .dbg_a2(dbg_a2), \
    .dbg_a3(dbg_a3), \
    .dbg_a4(dbg_a4), \
    .dbg_a5(dbg_a5), \
    .dbg_a6(dbg_a6), \
    .dbg_a7(dbg_a7), \
    .dbg_s2(dbg_s2), \
    .dbg_s3(dbg_s3), \
    .dbg_s4(dbg_s4), \
    .dbg_s5(dbg_s5), \
    .dbg_s6(dbg_s6), \
    .dbg_s7(dbg_s7), \
    .dbg_s8(dbg_s8), \
    .dbg_s9(dbg_s9), \
    .dbg_s10(dbg_s10), \
    .dbg_s11(dbg_s11), \
    .dbg_t3(dbg_t3), \
    .dbg_t4(dbg_t4), \
    .dbg_t5(dbg_t5), \
    .dbg_t6(dbg_t6),