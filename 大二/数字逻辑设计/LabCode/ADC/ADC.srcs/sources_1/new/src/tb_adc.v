`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 17:30:44
// Design Name: 
// Module Name: tb_adc
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


module tb_adc;       
// adc Inputs
reg   [31:0]  A                            = 0 ;
reg   [31:0]  B                            = 0 ;
reg   C0                                   = 0 ;

// adc Outputs
wire  [32:0]  S                            ;


initial
begin
    A=32'd123456789;
    B=32'd15698134;
    C0=0;#50;
    C0=1;#50;
    B=32'd235468255;
    #50;
    C0=1;#50;

end

adc  u_adc (
    .A                       ( A   [31:0] ),
    .B                       ( B   [31:0] ),
    .C0                      ( C0         ),

    .S                       ( S   [32:0] )
);


endmodule
