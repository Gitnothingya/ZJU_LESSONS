`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/01 11:10:32
// Design Name: 
// Module Name: cpu_ctrl
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


module cpu_ctrl(
input [4:0] OPcode,
input [2:0] Fun3,
input Fun7,
input MIO_ready,
input inst29,

output reg [2:0] ImmSel,
output reg ALUSrc_B,
output reg [1:0] MemtoReg,
output reg [1:0] Jump,
output reg [5:0] Branch,
output reg RegWrite,
output reg MemRW,
output reg [3:0] ALU_Control,
output reg ecall,
output reg mret,
output reg ill_instr,
output reg CPU_MIO
    );
    reg [1:0] ALUop;
    `define CPU_ctrl_signals {ALUSrc_B,MemtoReg,MemRW,RegWrite,Branch,Jump,ALUop,ImmSel}
    always @* begin
        case(OPcode)
        5'b01100:begin//R-type add
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b0;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;//////////
            Jump     = 2'b00;/////////
            ALUop    = 2'b10;
            ImmSel   = 3'b000;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b00000:begin//lw   i–Õ
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b01;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;////////
            Jump     = 2'b00;///////
            ALUop    = 2'b00;
            ImmSel   = 3'b001;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b01000:begin//sw
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b1;
            RegWrite = 1'b0;
            Branch   = 6'b000000;////
            Jump     = 2'b00;/////
            ALUop    = 2'b00;
            ImmSel   = 3'b010;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b11000:begin//beq
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b0;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b0;
            //Branch   = 1'b1;///////
            case(Fun3)
                3'h0:Branch = 6'b000001;//beq  rs1=rs2
                3'h1:Branch = 6'b000010;//bne  rs1!=rs2
                3'h4:Branch = 6'b000100;//blt  rs1<rs2
                3'h5:Branch = 6'b001000;//bge  rs1>=rs2
                3'h6:Branch = 6'b010000;//bltu rs1<rs2 unsigned
                3'h7:Branch = 6'b100000;//bgeu rs1>=rs2 unsigned
                default: Branch = 6'hx ;
            endcase
            Jump     = 2'b00;///////
            ALUop    = 2'b01;
            ImmSel   = 3'b011;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b11011:begin//jal
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b0;
            MemtoReg = 2'b10;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;///////
            Jump     = 2'b01;///////
            ALUop    = 2'b10;
            ImmSel   = 3'b100;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b00100:begin//addi
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;////////
            Jump     = 2'b00;////////
            ALUop    = 2'b11;
            ImmSel   = 3'b001;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end


        5'b11001:begin//jalr
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b10;//ALU_out
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;//
            Jump     = 2'b10;//
            ALUop    = 2'b11;
            ImmSel   = 3'b001;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b01101:begin//lui
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b11;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;//
            Jump     = 2'b00;//
            ALUop    = 2'b11;
            ImmSel   = 3'b000;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end
        5'b00101:begin//auipc
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b11;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 6'b000000;//
            Jump     = 2'b00;//
            ALUop    = 2'b11;
            ImmSel   = 3'b000;
            ecall    = 0;
            mret     = 0;
            ill_instr= 0;
            end


        5'b11100:begin//ecall
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b0;
            Branch   = 6'b000000;
            Jump     = 2'b00;
            ALUop    = 2'b11;
            ImmSel   = 3'b000;
            case(inst29)
                1'b0:begin
                    ecall = 1;
                    mret = 0;
                end
                1'b1:begin
                    ecall = 0;
                    mret = 1;
                end
            endcase
            ill_instr= 0;

        end
        default:begin
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b0;
            Branch   = 6'b000000;
            Jump     = 2'b00;
            ALUop    = 2'b11;
            ImmSel   = 3'b000;
            ecall    = 0;
            mret     = 0;
            ill_instr= 1;
            end
         endcase
    end

    wire [3:0] Fun;
    assign Fun = {Fun3,Fun7};
    always @* begin
        case(ALUop)
            2'b00:ALU_Control=4'h2;
            2'b01://ALU_Control=3'h6;
                case(Fun3)//B–Õ÷∏¡Ó 
                    4'h0:ALU_Control = 4'h6;//beq
                    4'h1:ALU_Control = 4'h6;//bne
                    4'h4:ALU_Control = 4'h7;//blt
                    4'h5:ALU_Control = 4'h7;//bge
                    4'h6:ALU_Control = 4'h9;//bltu
                    4'h7:ALU_Control = 4'h9;//bgeu
                endcase
            2'b10:
                case(Fun)
                    4'b0000:ALU_Control=4'h2;//add
                    4'b0001:ALU_Control=4'h6;//sub
                    4'b0010:ALU_Control=4'he;//sll
                    4'b0100:ALU_Control=4'h7;//slt
                    4'b0110:ALU_Control=4'h9;//sltu
                    4'b1000:ALU_Control=4'hc;//xor
                    4'b1010:ALU_Control=4'hd;//srl
                    4'b1011:ALU_Control=4'hf;//sra
                    4'b1100:ALU_Control=4'h1;//or
                    4'b1110:ALU_Control=4'h0;//and
                    default: ALU_Control=4;
                endcase
            2'b11:
                case(Fun3)
                    3'b000:ALU_Control=4'h2;//addi jalr
                    3'b010:ALU_Control=4'h7;//slti
                    3'b011:ALU_Control=4'h9;//sltiu
                    3'b100:ALU_Control=4'hc;//xori
                    3'b110:ALU_Control=4'h1;//ori
                    3'b111:ALU_Control=4'h0;//andi
                    3'b001:ALU_Control=4'he;//slli
                    3'b101:
                        case(Fun7)
                            1'b0:ALU_Control = 4'hd;//srli
                            1'b1:ALU_Control = 4'hf;//srai
                        endcase
                    default: ALU_Control=4'hx;
                endcase
        endcase 
    end
endmodule
