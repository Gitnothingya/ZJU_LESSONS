`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 19:39:41
// Design Name: 
// Module Name: tb_add
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


module tb_add;
reg   [31:0]  a = 0 ;
reg   [31:0]  b = 0 ;
wire  [31:0]  c;

initial
begin
    a=32'hffffcccc;
    b=32'h00003333;
    #50;
    b=32'h00003335;
end
add  u_add (
    .a( a  [31:0] ),
    .b( b  [31:0] ),

    .c( c  [31:0] )
);
endmodule
