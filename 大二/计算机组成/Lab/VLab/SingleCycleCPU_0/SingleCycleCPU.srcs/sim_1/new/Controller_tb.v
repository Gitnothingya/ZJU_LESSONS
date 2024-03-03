`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/14 14:24:01
// Design Name: 
// Module Name: Controller_tb
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
module Controller_tb;

// Controller Inputs
reg   [4:0]  OPcode                        = 0 ;
reg   [2:0]  Fun3                          = 0 ;
reg   Fun7                                 = 0 ;

// Controller Outputs
wire  [2:0]  ImmSel                        ;
wire  ALUSrc_B                             ;
wire  [2:0]  MemtoReg                      ;
wire  [1:0]  Jump                          ;
wire  Branch                               ;
wire  RegWrite                             ;
wire  MemRead                              ;
wire  MemWrite                             ;
wire  [3:0]  ALU_Control                   ;
wire  [2:0]  cmp_ctrl                      ;

Controller  u_Controller (
    .OPcode                  ( OPcode       [4:0] ),
    .Fun3                    ( Fun3         [2:0] ),
    .Fun7                    ( Fun7               ),

    .ImmSel                  ( ImmSel       [2:0] ),
    .ALUSrc_B                ( ALUSrc_B           ),
    .MemtoReg                ( MemtoReg     [2:0] ),
    .Jump                    ( Jump         [1:0] ),
    .Branch                  ( Branch             ),
    .RegWrite                ( RegWrite           ),
    .MemRead                 ( MemRead            ),
    .MemWrite                ( MemWrite           ),
    .ALU_Control             ( ALU_Control  [3:0] ),
    .cmp_ctrl                ( cmp_ctrl     [2:0] )
);

initial
begin
    OPcode = 5'b11000; //BRANCH 011
    Fun3 = 3'd0; //EQ 0
    #50;
    Fun3 = 3'd1; //NE 1
    #50;
    Fun3 = 3'd4; //LT   2
    #50;
    Fun3 = 3'd5; //LTU 3
    #50;
    Fun3 = 3'd6; //GE  4
    #50;
    Fun3 = 3'd7; //GEU 5
    #50;

    $finish;
end

endmodule
