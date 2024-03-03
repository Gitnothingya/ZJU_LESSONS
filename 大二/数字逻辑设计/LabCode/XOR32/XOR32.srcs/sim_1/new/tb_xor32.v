`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 20:01:06
// Design Name: 
// Module Name: tb_xor32
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


module tb_xor32;       
reg   [31:0]  A       = 0 ;
reg   [31:0]  B       = 0 ;
wire  [31:0]  res     ;
xor32  u_xor32 (
    .A  ( A    [31:0] ),
    .B  ( B    [31:0] ),

    .res( res  [31:0] )
);
initial
begin
    A=32'hff00cc33;
    B=32'hf0f0c3c3;
end
endmodule