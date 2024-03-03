`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 20:27:16
// Design Name: 
// Module Name: tb_nor32
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


module tb_nor32;     
reg   [31:0]  A         = 0 ;
reg   [31:0]  B         = 0 ;
wire  [31:0]  res       ;
nor32  u_nor32 (
    .A    ( A    [31:0] ),
    .B    ( B    [31:0] ),
    .res  ( res  [31:0] )
);
initial
begin
A=32'h00ffffcc;
B=32'h0000ff88;
end
endmodule