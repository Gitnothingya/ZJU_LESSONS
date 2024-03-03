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

output reg [1:0] ImmSel,
output reg ALUSrc_B,
output reg [1:0] MemtoReg,
output reg Jump,
output reg Branch,
output reg RegWrite,
output reg MemRW,
output reg [2:0] ALU_Control,
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
            Branch   = 1'b0;
            Jump     = 1'b0;
            ALUop    = 2'b10;
            ImmSel   = 2'b00;
            end
        5'b00000:begin//lw
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b01;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 1'b0;
            Jump     = 1'b0;
            ALUop    = 2'b00;
            ImmSel   = 2'b00;
            end
        5'b01000:begin//sw
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b1;
            RegWrite = 1'b0;
            Branch   = 1'b0;
            Jump     = 1'b0;
            ALUop    = 2'b00;
            ImmSel   = 2'b01;
            end
        5'b11000:begin//beq
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b0;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b0;
            Branch   = 1'b1;
            Jump     = 1'b0;
            ALUop    = 2'b01;
            ImmSel   = 2'b10;
            end
        5'b11011:begin//jal
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b0;
            MemtoReg = 2'b10;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 1'b0;
            Jump     = 1'b1;
            ALUop    = 2'b10;
            ImmSel   = 2'b11;
            end
        5'b00100:begin//addi
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b1;
            Branch   = 1'b0;
            Jump     = 1'b0;
            ALUop    = 2'b11;
            ImmSel   = 2'b00;
            end
        default:begin
            //`CPU_ctrl_signals = 7'b0;
            ALUSrc_B = 1'b1;
            MemtoReg = 2'b00;
            MemRW    = 1'b0;
            RegWrite = 1'b0;
            Branch   = 1'b0;
            Jump     = 1'b0;
            ALUop    = 2'b11;
            ImmSel   = 2'b00;
            end
        endcase
    end

    wire [3:0] Fun;
    assign Fun = {Fun3,Fun7};
    always @* begin
        case(ALUop)
            2'b00:ALU_Control=3'h2;
            2'b01:ALU_Control=3'h6;
            2'b10:
                case(Fun)
                    4'b0000:ALU_Control=3'h2;
                    4'b0001:ALU_Control=3'h6;
                    4'b1110:ALU_Control=3'h0;
                    4'b1100:ALU_Control=3'h1;
                    4'b0100:ALU_Control=3'h7;
                    4'b1010:ALU_Control=3'h5;
                    4'b1000:ALU_Control=3'h3;
                    default: ALU_Control=4;
                endcase
            2'b11:
                case(Fun3)
                    3'b000:ALU_Control=3'h2;//addi
                    3'b111:ALU_Control=3'h0;//andi
                    3'b110:ALU_Control=3'h1;//ori
                    3'b010:ALU_Control=3'h7;//slti
                    3'b101:ALU_Control=3'h5;//srli;
                    3'b100:ALU_Control=3'h3;//xori
                    default: ALU_Control=4;
                endcase
        endcase 
    end
endmodule
