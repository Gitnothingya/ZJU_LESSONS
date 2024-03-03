`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 17:15:35
// Design Name: 
// Module Name: csr_tb
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
`include "Defines.vh"
module Csr_tb;

// Csr Inputs
reg   clk                                  = 0 ;
reg   rst                                  = 0 ;
reg   ext_int                              = 0 ;
reg   tim_int                              = 0 ;
reg   wen                                  = 0 ;
reg   [11:0]  ind                          = 0 ;
reg   [1:0]  ctrl                          = 0 ;
reg   [31:0]  i_data                       = 0 ;
reg   [31:0]  Cause                        = 0 ;
reg   [31:0]  inst                         = 0 ;
reg   [31:0]  pc                           = 0 ;
reg   [31:0]  pc_branch                    = 0 ;
reg   [31:0]  alu_res                      = 0 ;

// Csr Outputs
wire  [31:0] r_data                     ;
wire  [2:0] ien                        ;
wire  [31:0] csr_pc                     ;

Csr  u_Csr (
    .clk                     ( clk                      ),
    .rst                     ( rst                      ),
    .ext_int                 ( ext_int                  ),
    .tim_int                 ( tim_int                  ),
    .wen                     ( wen                      ),
    .ind                     ( ind               [11:0] ),
    .ctrl                    ( ctrl              [1:0]  ),
    .i_data                  ( i_data            [31:0] ),
    .Cause                   ( Cause             [31:0] ),
    .inst                    ( inst              [31:0] ),
    .pc                      ( pc                [31:0] ),
    .pc_branch               ( pc_branch         [31:0] ),
    .alu_res                 ( alu_res           [31:0] ),

    .r_data        ( r_data         ),
    .ien           ( ien            ),
    .csr_pc        ( csr_pc         )
);

initial
begin
    clk = 1;
    Cause = `CSR_CAUSE_ECALL_FROM_M;
    #50;
    ext_int = 1;
    #50;


    $finish;
end

endmodule
