`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 22:38:14
// Design Name: 
// Module Name: tb_orl
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


module tb_orl;
reg   [31:0]  A = 0 ;
wire  S    ;
orl  u_orl (
    .A( A  [31:0] ),
    .S( S         )
);
initial begin
A=32'h00000000;#50;
A=32'hffffffff;#50;
A=32'h80000000;#50;
    $finish;
end
endmodule
