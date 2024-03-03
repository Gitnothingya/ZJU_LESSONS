`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 22:48:37
// Design Name: 
// Module Name: tb_sgext
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


module tb_sgext;     
reg   S              = 0 ;
wire  [31:0]  So     ;
sgext  u_sgext (
    .S ( S          ),
    .So( So  [31:0] )
);

initial begin
S=0;#50;
S=1;#50;
    $finish;
end
endmodule
