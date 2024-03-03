`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/03 14:24:25
// Design Name: 
// Module Name: tb_cpu_ctrl
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


module tb_cpu_ctrl ;
// cpu_ctrl Inputs
reg   [4:0]  OPcode                        = 0 ;
reg   [2:0]  Fun3                          = 0 ;
reg   Fun7                                 = 0 ;
reg   MIO_ready                            = 0 ;

// cpu_ctrl Outputs
wire  [1:0]  ImmSel                        ;
wire  ALUSrc_B                             ;
wire  [1:0]  MemtoReg                      ;
wire  Jump                                 ;
wire  Branch                               ;
wire  RegWrite                             ;
wire  MemRW                                ;
wire  [2:0]  ALU_Control                   ;
wire  CPU_MIO                              ;
wire  [1:0] ALUop;


initial begin //Initialize Inputs
OPcode = 0;
//Fun = 0;
MIO_ready = 0;
#40;
//Wait 40 ns for global reset to finish 。 以上是测试模板代码 。
//Add stimulus here
//检查输出信号和关键信号输出是否满足真值表
OPcode=5'b01100;//ALU 指令 检查 ALUop 2 ’b 10 RegWrite 1
Fun3 = 3'b000;Fun7=1'b0;//add, 检查 ALU_Control 3 'b 010
#20;
Fun3 = 3'b000;Fun7=1'b1;//sub, 检查 ALU_Control 3 'b 110
#20;
Fun3 = 3'b111;Fun7=1'b0;//and, 检查 ALU_Control 3 'b 000
#20;
Fun3 = 3'b110;Fun7=1'b0;//or, 检查 ALU_Control 3 'b 001
#20;
Fun3 = 3'b010;Fun7=1'b0;//slt, 检查 ALU_Control 3 'b 111
#20;
Fun3 = 3'b101;Fun7=1'b0;//srl, 检查 ALU_Control 3 'b 101
#20;
Fun3 = 3'b100;Fun7=1'b0;//xor, 检查 ALU_Control 3 'b 011
#20;
Fun3 = 3'b111; Fun7 = 1'b1;
#1;

OPcode = 5'b00000;
#20;
OPcode = 5'b01000;
#20;
OPcode = 5'b11000;
#20;
OPcode = 5'b11011;
#20;
OPcode = 5'b00100;
Fun3 = 3'h0;
#20;
Fun3 = 3'h7;
#20;
Fun3 = 3'h6;
#20;
Fun3 = 3'h2;
#20;
Fun3 = 3'h5;
#20;
Fun3 = 3'h4;
#20;
end
    cpu_ctrl  u_cpu_ctrl (
    .OPcode                  ( OPcode       [4:0] ),
    .Fun3                    ( Fun3         [2:0] ),
    .Fun7                    ( Fun7               ),
    .MIO_ready               ( MIO_ready          ),

    .ImmSel                  ( ImmSel       [1:0] ),
    .ALUSrc_B                ( ALUSrc_B           ),
    .MemtoReg                ( MemtoReg     [1:0] ),
    .Jump                    ( Jump               ),
    .Branch                  ( Branch             ),
    .RegWrite                ( RegWrite           ),
    .MemRW                   ( MemRW              ),
    .ALU_Control             ( ALU_Control  [2:0] ),
    .CPU_MIO                 ( CPU_MIO            ));

endmodule