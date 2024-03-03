`include "Defines.vh"

module Controller (
    input [4:0]OPcode, //inst[6:2], 因为末两位全是11
    input [2:0]Fun3,   //inst[14:12]
    input Fun7,        //inst[30]
    input Ins29,       //inst[29]
    //input MIO_ready,
    output reg [2:0]ImmSel,
    output reg ALUSrc_B, 
    output reg [2:0]MemtoReg,
    output reg [1:0]Jump, //jal
    output reg Branch,
    output reg RegWrite,
    output reg MemRead,
    output reg MemWrite,
    output reg [3:0]ALU_Control,
    output reg [2:0]cmp_ctrl,
    output reg [1:0]csr_ctrl,
    output reg CSRSrc,
    output reg csr_wen,
    output reg [1:0] cause_p1
    //output reg CPU_MIO
);

    //`define CPU_ctrl_signals {ImmSel, ALUSrc_B, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, ALUop}

    reg [1:0] ALUop;

    //分两级解码，第一级根据操作码分指令类型，确定大部分控制信号，第二级确定ALU的控制信号(因为不同指令类型的ALU操作可能相同)

    always @(*) begin
        cause_p1 = `NORMAL;
        csr_wen = `CSR_BAN_WRITE; 
        case (OPcode)
            `OPCODE_ALUOP: begin
                ImmSel = `IMM_N;
                ALUSrc_B = `RS2_TO_ALU;
                MemtoReg = `ALU_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_ALU;
                //`CPU_ctrl_signals = {`IMM_N, `RS2_TO_ALU, `ALU_TO_REG, `REG_EN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE , `NOBRANCH, `NOJUMP, `ALUOP_ALU };
            end
            `OPCODE_ALUOP_IMM: begin
                ImmSel = `IMM_I;
                ALUSrc_B = `IMM_TO_ALU;
                MemtoReg = `ALU_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_ALUIMM;
                //`CPU_ctrl_signals = {`IMM_I, `IMM_TO_ALU, `ALU_TO_REG, `REG_EN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE,  `NOBRANCH, `NOJUMP, `ALUOP_ALUIMM};
            end
            `OPCODE_LOAD: begin
                ImmSel = `IMM_I;
                ALUSrc_B = `IMM_TO_ALU;
                MemtoReg = `DMEM_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_EN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_LSJ;
                //`CPU_ctrl_signals = {{`IMM_I}, {`IMM_TO_ALU}, {`DMEM_TO_REG}, {`REG_EN_WRITE}, {`MEM_EN_READ}, {`MEM_BAN_WRITE}, {`NOBRANCH}, {`NOJUMP}, {`ALUOP_LSJ} };
            end
            `OPCODE_JALR: begin
                ImmSel = `IMM_I;
                ALUSrc_B = `IMM_TO_ALU;
                MemtoReg = `PCP4_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `JUMP_JALR; 
                ALUop = `ALUOP_LSJ;
                //`CPU_ctrl_signals = {`IMM_I, `IMM_TO_ALU, `PCP4_TO_REG, `REG_EN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE, `NOBRANCH, `JUMP_JALR, `ALUOP_LSJ};
            end
            `OPCODE_STORE: begin
                ImmSel = `IMM_S;
                ALUSrc_B = `IMM_TO_ALU;
                MemtoReg = `ALU_TO_REG;
                RegWrite = `REG_BAN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_EN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_LSJ;
                //`CPU_ctrl_signals = {`IMM_S, `IMM_TO_ALU, `ALU_TO_REG, `REG_BAN_WRITE, `MEM_BAN_READ, `MEM_EN_WRITE, `NOBRANCH, `NOJUMP, `ALUOP_LSJ};
            end
            `OPCODE_BRANCH: begin
                ImmSel = `IMM_B;
                ALUSrc_B = `RS2_TO_ALU;
                MemtoReg = `ALU_TO_REG;
                RegWrite = `REG_BAN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `BRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_BRANCH;
                //`CPU_ctrl_signals = {`IMM_B, `RS2_TO_ALU, `ALU_TO_REG, `REG_BAN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE, `BRANCH, `NOJUMP, `ALUOP_BRANCH};
            end
            `OPCODE_JAL: begin
                ImmSel = `IMM_J;
                ALUSrc_B = `IMM_TO_ALU;
                MemtoReg = `PCP4_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `JUMP_JAL; 
                ALUop = `ALUOP_ALU;
                //`CPU_ctrl_signals = {`IMM_J, `IMM_TO_ALU, `PCP4_TO_REG, `REG_EN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE, `NOBRANCH, `JUMP_JAL, `ALUOP_ALU};
            end
            `OPCODE_LUI: begin
                ImmSel = `IMM_U;
                ALUSrc_B = `RS2_TO_ALU;
                MemtoReg = `IMM_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_ALU; 
                //`CPU_ctrl_signals = {`IMM_U, `RS2_TO_ALU, `IMM_TO_REG, `REG_EN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE, `NOBRANCH, `NOJUMP, `ALUOP_ALU};
            end
            `OPCODE_AUIPC: begin
                ImmSel = `IMM_U;
                ALUSrc_B = `RS2_TO_ALU;
                MemtoReg = `IMMPPC_TO_REG;
                RegWrite = `REG_EN_WRITE;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP; 
                ALUop = `ALUOP_ALU;
                //`CPU_ctrl_signals = {`IMM_U, `RS2_TO_ALU, `IMMPPC_TO_REG, `REG_EN_WRITE, `MEM_BAN_READ, `MEM_BAN_WRITE, `NOBRANCH, `NOJUMP, `ALUOP_ALU};
            end 
            `OPCODE_SYSTEM: begin
                ImmSel = `IMM_Z;
                MemtoReg = `CSR_TO_REG;
                MemRead = `MEM_BAN_READ;
                MemWrite = `MEM_BAN_WRITE;
                Branch = `NOBRANCH;
                Jump = `NOJUMP;
                ALUSrc_B = `RS2_TO_ALU;
                ALUop = `ALUOP_ALU;

                case (Fun3)
                    `SYSTEM_E: begin
                        if(Ins29) begin //mret
                            RegWrite = `REG_BAN_WRITE;
                            csr_ctrl = `CSR_CTRL_W;
                            cause_p1 = `MRET; 
                        end
                        else begin
                            RegWrite = `REG_BAN_WRITE;
                            csr_ctrl = `CSR_CTRL_W;
                            cause_p1 = `ECALL;
                        end
                    end
                    `SYSTEM_CSRRW: begin
                        RegWrite = `REG_EN_WRITE;
                        csr_ctrl = `CSR_CTRL_W;
                        csr_wen = `CSR_EN_WRITE;
                        CSRSrc = `REG_TO_CSR;
                    end
                    `SYSTEM_CSRRWI: begin
                        RegWrite = `REG_EN_WRITE;
                        csr_ctrl = `CSR_CTRL_W;
                        csr_wen = `CSR_EN_WRITE;
                        CSRSrc = `IMM_TO_CSR;
                    end
                    `SYSTEM_CSRRS: begin
                        RegWrite = `REG_EN_WRITE;
                        csr_ctrl = `CSR_CTRL_S;
                        csr_wen = `CSR_EN_WRITE;
                        CSRSrc = `REG_TO_CSR;
                    end
                    `SYSTEM_CSRRSI: begin
                        RegWrite = `REG_EN_WRITE;
                        csr_ctrl = `CSR_CTRL_S;
                        csr_wen = `CSR_EN_WRITE;
                        CSRSrc = `IMM_TO_CSR;
                    end
                    `SYSTEM_CSRRC: begin
                        RegWrite = `REG_EN_WRITE;
                        csr_ctrl = `CSR_CTRL_C;
                        csr_wen = `CSR_EN_WRITE;
                        CSRSrc = `REG_TO_CSR;
                    end
                    `SYSTEM_CSRRCI: begin
                        RegWrite = `REG_EN_WRITE;
                        csr_ctrl = `CSR_CTRL_C;
                        csr_wen = `CSR_EN_WRITE;
                        CSRSrc = `IMM_TO_CSR;
                    end
                endcase
            end
            default: cause_p1 = `ILLINS;
        endcase
    end

    wire [3:0] Fun;
    assign Fun = {Fun3, Fun7};
    always @(*) begin
        case (ALUop)
            `ALUOP_LSJ: ALU_Control = `ALU_ADD; //基寄存器 + IMM 计算地址
            `ALUOP_BRANCH: ALU_Control = `ALU_SUB; //减法，比较是否等于0
            `ALUOP_ALU: begin
                case (Fun)
                    `OP_ADD:  ALU_Control = `ALU_ADD; 
                    `OP_SUB:  ALU_Control = `ALU_SUB;
                    `OP_SLL:  ALU_Control = `ALU_SLL;
                    `OP_SLT:  ALU_Control = `ALU_SLT;
                    `OP_SLTU: ALU_Control = `ALU_SLTU;
                    `OP_XOR:  ALU_Control = `ALU_XOR;
                    `OP_SRL:  ALU_Control = `ALU_SRL;
                    `OP_SRA:  ALU_Control = `ALU_SRA;
                    `OP_OR:   ALU_Control = `ALU_OR;
                    `OP_AND:  ALU_Control = `ALU_AND;
                    default:  ALU_Control = 4'bx; 
                endcase
            end
            `ALUOP_ALUIMM: begin
                case (Fun3)
                    `OP_ADDI:  ALU_Control = `ALU_ADD;
                    `OP_SLTI:  ALU_Control = `ALU_SLT;
                    `OP_SLTIU: ALU_Control = `ALU_SLTU;
                    `OP_XORI:  ALU_Control = `ALU_XOR;              
                    `OP_ORI:   ALU_Control = `ALU_OR;
                    `OP_ANDI:  ALU_Control = `ALU_AND;
                    `OP_SLLI:  ALU_Control = `ALU_SLL; //也有Fun6，但没人和它的Fun3一样，所以只用Fun3即可
                    `OP_SRLI: begin
                        case (Fun7) //Fun3一样，判断Fun6
                            1'b0: ALU_Control = `ALU_SRL;
                            1'b1: ALU_Control = `ALU_SRA;
                        endcase
                    end
                    default: ALU_Control = 4'bx;
                endcase
            end
            default: ALU_Control = 4'bx;
        endcase
    end

    //比较器控制信号，仅当BRANCH类指令时有效
    always @(*) begin
        if(OPcode == `OPCODE_BRANCH) begin
            case (Fun3)
                `OP_BEQ: cmp_ctrl = `CMP_EQ;
                `OP_BNE: cmp_ctrl = `CMP_NE;
                `OP_BLT: cmp_ctrl = `CMP_LT;
                `OP_BGE: cmp_ctrl = `CMP_GE;
                `OP_BLTU: cmp_ctrl = `CMP_LTU;
                `OP_BGEU: cmp_ctrl = `CMP_GEU;                 
                default: cmp_ctrl = 3'bx;
            endcase
        end
    end

endmodule