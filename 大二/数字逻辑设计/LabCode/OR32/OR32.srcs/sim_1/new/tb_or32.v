`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 19:53:36
// Design Name: 
// Module Name: tb_or32
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


module tb_or32;
reg   [31:0]  A  = 0 ;
reg   [31:0]  B  = 0 ;
wire  [31:0]  res;
or32  u_or32 (
    .A  ( A    [31:0] ),
    .B  ( B    [31:0] ),
    .res( res  [31:0] )
);
initial
begin
    A=32'hcccc0000;
    B=32'hcc33ff00;
end
endmodule