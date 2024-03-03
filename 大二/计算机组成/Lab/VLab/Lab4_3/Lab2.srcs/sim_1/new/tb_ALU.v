`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/09 10:13:01
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU;
reg   [31:0]  A                            = 0 ;
reg   [31:0]  B                            = 0 ;
reg   [3:0]  operator                      = 0 ;

// ALUT Outputs
wire  [31:0]  res                          ;
wire  zero                                 ;

initial
begin
    A = 32'hffffffff;
    B = 32'h00000000;
    operator = 4'h7;
    #50;
    operator = 4'h9;
    #50;



    A = 32'h00080004;
    B = 32'h00000003;
    operator = 4'hd;
    #50;
    operator =4'hf;
    #50;
    operator = 4'h5;
end

ALUT  u_ALUT (
    .A                       ( A         [31:0] ),
    .B                       ( B         [31:0] ),
    .operator                ( operator  [3:0]  ),

    .res                     ( res       [31:0] ),
    .zero                    ( zero             )
);

endmodule
