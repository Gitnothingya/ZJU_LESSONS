`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/03 15:54:06
// Design Name: 
// Module Name: tb_DataPath
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


module tb_ALUT;
// ALUT Inputs
reg   [31:0]  A                            = 0 ;
reg   [31:0]  B                            = 0 ;
reg   [2:0]  operator                      = 0 ;

// ALUT Outputs
wire  [31:0]  res                          ;
wire  zero                                 ;


initial
begin
    A = 32'hffffffff;
    B = 32'h0;
    operator = 3'h7;
    #50;
    B = 32'h1;
    #50;
    A = 32'h2;

    A=32'h602a0115;
    B=32'h602a0115;
    operator = 3'h2;
    #50;
end

ALUT  u_ALUT (
    .A                       ( A         [31:0] ),
    .B                       ( B         [31:0] ),
    .operator                ( operator  [2:0]  ),

    .res                     ( res       [31:0] ),
    .zero                    ( zero             )
);

endmodule


// module tb_DataPath;
// // DataPath Inputs
// reg   Branch                               = 0 ;
// reg   Jump                                 = 0 ;
// reg   [31:0]  Data_in                      = 0 ;
// reg   [1:0]  MemtoReg                      = 0 ;
// reg   ALUSrc_B                             = 0 ;
// reg   [1:0]  ImmSel                        = 0 ;
// reg   [31:0]  inst_field                   = 0 ;
// reg   [2:0]  ALU_operation                 = 0 ;
// reg   clk                                  = 0 ;
// reg   rst                                  = 0 ;
// reg   RegWrite                             = 0 ;

// // DataPath Outputs
// wire  [31:0]  ALU_out                      ;
// wire  [31:0]  Data_out                     ;
// wire  [31:0]  PC_out                       ;
// wire  [31:0]  x0                           ;
// wire  [31:0]  x1                           ;
// wire  [31:0]  x2                           ;
// wire  [31:0]  x3                           ;
// wire  [31:0]  x4                           ;
// wire  [31:0]  x5                           ;
// wire  [31:0]  x6                           ;
// wire  [31:0]  x7                           ;
// wire  [31:0]  x8                           ;
// wire  [31:0]  x9                           ;
// wire  [31:0]  x10                          ;
// wire  [31:0]  x11                          ;
// wire  [31:0]  x12                          ;
// wire  [31:0]  x13                          ;
// wire  [31:0]  x14                          ;
// wire  [31:0]  x15                          ;
// wire  [31:0]  x16                          ;
// wire  [31:0]  x17                          ;
// wire  [31:0]  x18                          ;
// wire  [31:0]  x19                          ;
// wire  [31:0]  x20                          ;
// wire  [31:0]  x21                          ;
// wire  [31:0]  x22                          ;
// wire  [31:0]  x23                          ;
// wire  [31:0]  x24                          ;
// wire  [31:0]  x25                          ;
// wire  [31:0]  x26                          ;
// wire  [31:0]  x27                          ;
// wire  [31:0]  x28                          ;
// wire  [31:0]  x29                          ;
// wire  [31:0]  x30                          ;
// wire  [31:0]  x31                          ;


// initial begin
//     rst = 1;#20;
//     rst=0;
//     Branch = 0;Jump = 0;Data_in = 32'h00000001;
//     MemtoReg = 2'b00;ALUSrc_B = 1;
//     ImmSel = 0;
//     inst_field = 32'h00100093;
//     ALU_operation = 3'h2;
//     RegWrite = 1'b1;
//     #20;


//     // Branch = 0;Jump = 0;Data_in = ;
//     // MemtoReg = ;ALUSrc_B = ;
//     // ImmSel = ;
//     // inst_field = ;
//     // ALU_operation = ;
//     // RegWrite = ;
// end
 
// initial  clk = 0;  
// always #10 clk = ~clk; 

// DataPath  u_DataPath (
//     .Branch                  ( Branch                ),
//     .Jump                    ( Jump                  ),
//     .Data_in                 ( Data_in        [31:0] ),
//     .MemtoReg                ( MemtoReg       [1:0]  ),
//     .ALUSrc_B                ( ALUSrc_B              ),
//     .ImmSel                  ( ImmSel         [1:0]  ),
//     .inst_field              ( inst_field     [31:0] ),
//     .ALU_operation           ( ALU_operation  [2:0]  ),
//     .clk                     ( clk                   ),
//     .rst                     ( rst                   ),
//     .RegWrite                ( RegWrite              ),

//     .ALU_out                 ( ALU_out        [31:0] ),
//     .Data_out                ( Data_out       [31:0] ),
//     .PC_out                  ( PC_out         [31:0] ),
//     .x0                      ( x0             [31:0] ),
//     .x1                      ( x1             [31:0] ),
//     .x2                      ( x2             [31:0] ),
//     .x3                      ( x3             [31:0] ),
//     .x4                      ( x4             [31:0] ),
//     .x5                      ( x5             [31:0] ),
//     .x6                      ( x6             [31:0] ),
//     .x7                      ( x7             [31:0] ),
//     .x8                      ( x8             [31:0] ),
//     .x9                      ( x9             [31:0] ),
//     .x10                     ( x10            [31:0] ),
//     .x11                     ( x11            [31:0] ),
//     .x12                     ( x12            [31:0] ),
//     .x13                     ( x13            [31:0] ),
//     .x14                     ( x14            [31:0] ),
//     .x15                     ( x15            [31:0] ),
//     .x16                     ( x16            [31:0] ),
//     .x17                     ( x17            [31:0] ),
//     .x18                     ( x18            [31:0] ),
//     .x19                     ( x19            [31:0] ),
//     .x20                     ( x20            [31:0] ),
//     .x21                     ( x21            [31:0] ),
//     .x22                     ( x22            [31:0] ),
//     .x23                     ( x23            [31:0] ),
//     .x24                     ( x24            [31:0] ),
//     .x25                     ( x25            [31:0] ),
//     .x26                     ( x26            [31:0] ),
//     .x27                     ( x27            [31:0] ),
//     .x28                     ( x28            [31:0] ),
//     .x29                     ( x29            [31:0] ),
//     .x30                     ( x30            [31:0] ),
//     .x31                     ( x31            [31:0] )
// );



// endmodule