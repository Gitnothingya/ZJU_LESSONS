`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 19:47:52
// Design Name: 
// Module Name: tb_and32
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

module tb_and32;
reg   [31:0]  A  = 0 ;
reg   [31:0]  B  = 0 ;
wire  [31:0]  res;

initial
begin
    A=32'hcccccccc;
    B=32'h3333cccc;
end
and32  u_and32 (
    .A  ( A    [31:0] ),
    .B  ( B    [31:0] ),
    .res( res  [31:0] )
);
endmodule
