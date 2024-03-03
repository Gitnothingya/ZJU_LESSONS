`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/14 17:21:17
// Design Name: 
// Module Name: sim
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

module tb_CPUT;

// CPUT Inputs
reg   clk                                  = 0 ;
reg   rst                                  = 0 ;
reg   [31:0]  Data_in                      = 0 ;
reg   [31:0]  inst_IF                      = 0 ;

// CPUT Outputs
wire  [31:0]  PC_out_IF                    ;
wire  [31:0]  inst_out_IF                  ;
wire  [31:0]  PC_out_ID                    ;
wire  [31:0]  inst_ID                      ;
wire  [31:0]  PC_out_EX                    ;
wire  [31:0]  inst_Ex                      ;
wire  [4:0]  Rd_Ex                         ;
wire  [4:0]  Rs1_Ex                        ;
wire  [4:0]  Rs2_Ex                        ;
wire  [31:0]  Rs1_val_Ex                   ;
wire  [31:0]  Rs2_val_Ex                   ;
wire  reg_wen_Ex                           ;
wire  is_imm                               ;
wire  [31:0]  imm                          ;
wire  is_branch                            ;
wire  is_jal                               ;
wire  is_jalr                              ;
wire  is_auipc                             ;
wire  is_lui                               ;
wire  MemRW_Ex                             ;
wire  MemRW_Mem                            ;
wire  [31:0]  PC_out_Mem                   ;
wire  [31:0]  Addr_out                     ;
wire  [31:0]  Data_out                     ;
wire  [31:0]  inst_Mem                     ;
wire  [4:0]  Rd_Mem                        ;
wire  reg_wen_Mem                          ;
wire  [31:0]  mem_i_data                   ;
wire  [31:0]  alu_res                      ;
wire  [2:0]  Store_T                       ;
wire  [31:0]  PC_out_WB                    ;
wire  [31:0]  inst_out_WB                  ;
wire  [31:0]  Data_out_WB                  ;
wire  [4:0]  Rd_WB                         ;
wire  reg_wen_WB                           ;
wire  en_IF                                ;
wire  en_IFID                              ;
wire  [31:0]  x0                           ;
wire  [31:0]  x1                           ;
wire  [31:0]  x2                           ;
wire  [31:0]  x3                           ;
wire  [31:0]  x4                           ;
wire  [31:0]  x5                           ;
wire  [31:0]  x6                           ;
wire  [31:0]  x7                           ;
wire  [31:0]  x8                           ;
wire  [31:0]  x9                           ;
wire  [31:0]  x10                          ;
wire  [31:0]  x11                          ;
wire  [31:0]  x12                          ;
wire  [31:0]  x13                          ;
wire  [31:0]  x14                          ;
wire  [31:0]  x15                          ;
wire  [31:0]  x16                          ;
wire  [31:0]  x17                          ;
wire  [31:0]  x18                          ;
wire  [31:0]  x19                          ;
wire  [31:0]  x20                          ;
wire  [31:0]  x21                          ;
wire  [31:0]  x22                          ;
wire  [31:0]  x23                          ;
wire  [31:0]  x24                          ;
wire  [31:0]  x25                          ;
wire  [31:0]  x26                          ;
wire  [31:0]  x27                          ;
wire  [31:0]  x28                          ;
wire  [31:0]  x29                          ;
wire  [31:0]  x30                          ;
wire  [31:0]  x31                          ;



CPUT  u_CPUT (
    .clk                     ( clk                 ),
    .rst                     ( rst                 ),
    .Data_in                 ( Data_in      [31:0] ),
    .inst_IF                 ( inst_IF      [31:0] ),

    .PC_out_IF               ( PC_out_IF    [31:0] ),
    .inst_out_IF             ( inst_out_IF  [31:0] ),
    .PC_out_ID               ( PC_out_ID    [31:0] ),
    .inst_ID                 ( inst_ID      [31:0] ),
    .PC_out_EX               ( PC_out_EX    [31:0] ),
    .inst_Ex                 ( inst_Ex      [31:0] ),
    .Rd_Ex                   ( Rd_Ex        [4:0]  ),
    .Rs1_Ex                  ( Rs1_Ex       [4:0]  ),
    .Rs2_Ex                  ( Rs2_Ex       [4:0]  ),
    .Rs1_val_Ex              ( Rs1_val_Ex   [31:0] ),
    .Rs2_val_Ex              ( Rs2_val_Ex   [31:0] ),
    .reg_wen_Ex              ( reg_wen_Ex          ),
    .is_imm                  ( is_imm              ),
    .imm                     ( imm          [31:0] ),
    .is_branch               ( is_branch           ),
    .is_jal                  ( is_jal              ),
    .is_jalr                 ( is_jalr             ),
    .is_auipc                ( is_auipc            ),
    .is_lui                  ( is_lui              ),
    .MemRW_Ex                ( MemRW_Ex            ),
    .MemRW_Mem               ( MemRW_Mem           ),
    .PC_out_Mem              ( PC_out_Mem   [31:0] ),
    .Addr_out                ( Addr_out     [31:0] ),
    .Data_out                ( Data_out     [31:0] ),
    .inst_Mem                ( inst_Mem     [31:0] ),
    .Rd_Mem                  ( Rd_Mem       [4:0]  ),
    .reg_wen_Mem             ( reg_wen_Mem         ),
    .mem_i_data              ( mem_i_data   [31:0] ),
    .alu_res                 ( alu_res      [31:0] ),
    .Store_T                 ( Store_T      [2:0]  ),
    .PC_out_WB               ( PC_out_WB    [31:0] ),
    .inst_out_WB             ( inst_out_WB  [31:0] ),
    .Data_out_WB             ( Data_out_WB  [31:0] ),
    .Rd_WB                   ( Rd_WB        [4:0]  ),
    .reg_wen_WB              ( reg_wen_WB          ),
    .en_IF                   ( en_IF               ),
    .en_IFID                 ( en_IFID             ),
    .x0                      ( x0           [31:0] ),
    .x1                      ( x1           [31:0] ),
    .x2                      ( x2           [31:0] ),
    .x3                      ( x3           [31:0] ),
    .x4                      ( x4           [31:0] ),
    .x5                      ( x5           [31:0] ),
    .x6                      ( x6           [31:0] ),
    .x7                      ( x7           [31:0] ),
    .x8                      ( x8           [31:0] ),
    .x9                      ( x9           [31:0] ),
    .x10                     ( x10          [31:0] ),
    .x11                     ( x11          [31:0] ),
    .x12                     ( x12          [31:0] ),
    .x13                     ( x13          [31:0] ),
    .x14                     ( x14          [31:0] ),
    .x15                     ( x15          [31:0] ),
    .x16                     ( x16          [31:0] ),
    .x17                     ( x17          [31:0] ),
    .x18                     ( x18          [31:0] ),
    .x19                     ( x19          [31:0] ),
    .x20                     ( x20          [31:0] ),
    .x21                     ( x21          [31:0] ),
    .x22                     ( x22          [31:0] ),
    .x23                     ( x23          [31:0] ),
    .x24                     ( x24          [31:0] ),
    .x25                     ( x25          [31:0] ),
    .x26                     ( x26          [31:0] ),
    .x27                     ( x27          [31:0] ),
    .x28                     ( x28          [31:0] ),
    .x29                     ( x29          [31:0] ),
    .x30                     ( x30          [31:0] ),
    .x31                     ( x31          [31:0] )
);

initial
begin

    $finish;
end

endmodule