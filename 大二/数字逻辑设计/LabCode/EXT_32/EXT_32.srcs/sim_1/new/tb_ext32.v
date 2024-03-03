`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 22:23:16
// Design Name: 
// Module Name: tb_ext32
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

module tb_ext32;
reg   [15:0]  A     = 0 ;
wire  [31:0]  res   ;
ext32  u_ext32 (
    .A  ( A    [15:0] ),
    .res( res  [31:0] )
);
initial begin
A=16'h8001;#50;
A=16'h7fff;
end
endmodule
