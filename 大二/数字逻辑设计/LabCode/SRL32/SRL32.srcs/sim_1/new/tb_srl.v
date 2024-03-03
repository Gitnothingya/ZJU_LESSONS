`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 22:15:49
// Design Name: 
// Module Name: tb_srl
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


module tb_srl;
reg   [31:0]  A       = 0 ;
reg   [31:0]  B       = 0 ;
wire  [31:0]  res     ;    
srl  u_srl (
    .A  ( A    [31:0] ),
    .B  ( B    [31:0] ),
    .res( res  [31:0] )
);
initial begin
A=32'hffffffff;
B=32'h00000008;
#50;
A=32'hcccccc00;
end
endmodule
