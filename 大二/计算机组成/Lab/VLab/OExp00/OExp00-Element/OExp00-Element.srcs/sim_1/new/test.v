`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 17:30:34
// Design Name: 
// Module Name: test
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


module test();
// TEST Inputs
reg   [31:0]  A                            = 0 ;
reg   [31:0]  B                            = 0 ;

// TEST Outputs
wire  [31:0]  res                          ;


initial
begin
    A=32'ha5a5a5a5;
    B=32'h5a5a5a5a;
end

TESTs  u_TEST (
    .A                       ( A    [31:0] ),
    .B                       ( B    [31:0] ),
    .res                     ( res  [31:0] )
);

endmodule