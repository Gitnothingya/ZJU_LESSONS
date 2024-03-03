`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/15 21:50:21
// Design Name: 
// Module Name: tb_ALU32
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


module tb_ALU32;     

// ALU32 Parameters
parameter PERIOD  = 10;


// ALU32 Inputs
reg   [31:0]  A                            = 0 ;
reg   [31:0]  B                            = 0 ;
reg   [2:0]  operator                      = 0 ;

// ALU32 Outputs
wire  [31:0]  res                          ;
wire  zero                                 ;

initial
begin
    A=32'ha5a5a5a5;
    B=32'h5a5a5a5a;
    operator = 3'b000;#50;
    operator = 3'b001;#50;
    operator = 3'b010;#50;
    operator = 3'b011;#50;
    operator = 3'b100;#50;
    operator = 3'b101;#50;
    operator = 3'b110;#50;
    operator = 3'b111;#50;
    B=32'ha5a5a5a5;
    operator = 3'b000;#50;
    operator = 3'b001;#50;
    operator = 3'b010;#50;
    operator = 3'b011;#50;
    operator = 3'b100;#50;
    operator = 3'b101;#50;
    operator = 3'b110;#50;
    operator = 3'b111;#50;

end

ALU32  u_ALU32 (
    .A                       ( A         [31:0] ),
    .B                       ( B         [31:0] ),
    .operator                ( operator  [2:0]  ),

    .res                     ( res       [31:0] ),
    .zero                    ( zero             )
);

endmodule