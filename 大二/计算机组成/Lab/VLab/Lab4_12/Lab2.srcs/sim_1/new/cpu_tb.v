`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/03 14:16:31
// Design Name: 
// Module Name: cpu_tb
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
reg clk_ram                 =0;
// CPUT Inputs
reg   clk                                  = 0 ;
reg   [31:0]  inst_in                      = 0 ;
reg   rst                                  = 0 ;
reg   [31:0]  Data_in                      = 0 ;
reg   MIO_ready                            = 0 ;

// CPUT Outputs
wire  MemRW                                ;
wire  [31:0]  PC_out                       ;
wire  [31:0]  Addr_out                     ;
wire  CPU_MIO                              ;
wire  [31:0]  Data_out                     ;
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
wire  [4:0]  rs1                           ;
wire  [4:0]  rs2                           ;
wire  [4:0]  rd                            ;
wire  reg_wen                              ;
wire  is_imm                               ;
wire  is_branch                            ;
wire  is_jal                               ;
wire  [31:0]  Imm_out                      ;
wire  [31:0]  pc_branch                    ;
wire  [31:0]  a_val                        ;
wire  [31:0]  b_val                        ;


wire[31:0] spo;
wire[31:0] douta;


always #2 clk_ram = ~clk_ram;
always #10 clk =~clk;
always @* begin 
    inst_in = spo;
    Data_in = douta;
end

initial begin
    clk=0;
    clk_ram = 0;
    rst=1;
    #1;
    rst=0;
    //inst_in= 32'h0200006F;

end


CPUT  u_CPUT (
    .clk                     ( clk               ),
    .inst_in                 ( inst_in    [31:0] ),
    .rst                     ( rst               ),
    .Data_in                 ( Data_in    [31:0] ),
    .MIO_ready               ( MIO_ready         ),

    .MemRW                   ( MemRW             ),
    .PC_out                  ( PC_out     [31:0] ),
    .Addr_out                ( Addr_out   [31:0] ),
    .CPU_MIO                 ( CPU_MIO           ),
    .Data_out                ( Data_out   [31:0] ),
    .x0                      ( x0         [31:0] ),
    .x1                      ( x1         [31:0] ),
    .x2                      ( x2         [31:0] ),
    .x3                      ( x3         [31:0] ),
    .x4                      ( x4         [31:0] ),
    .x5                      ( x5         [31:0] ),
    .x6                      ( x6         [31:0] ),
    .x7                      ( x7         [31:0] ),
    .x8                      ( x8         [31:0] ),
    .x9                      ( x9         [31:0] ),
    .x10                     ( x10        [31:0] ),
    .x11                     ( x11        [31:0] ),
    .x12                     ( x12        [31:0] ),
    .x13                     ( x13        [31:0] ),
    .x14                     ( x14        [31:0] ),
    .x15                     ( x15        [31:0] ),
    .x16                     ( x16        [31:0] ),
    .x17                     ( x17        [31:0] ),
    .x18                     ( x18        [31:0] ),
    .x19                     ( x19        [31:0] ),
    .x20                     ( x20        [31:0] ),
    .x21                     ( x21        [31:0] ),
    .x22                     ( x22        [31:0] ),
    .x23                     ( x23        [31:0] ),
    .x24                     ( x24        [31:0] ),
    .x25                     ( x25        [31:0] ),
    .x26                     ( x26        [31:0] ),
    .x27                     ( x27        [31:0] ),
    .x28                     ( x28        [31:0] ),
    .x29                     ( x29        [31:0] ),
    .x30                     ( x30        [31:0] ),
    .x31                     ( x31        [31:0] ),
    .rs1                     ( rs1        [4:0]  ),
    .rs2                     ( rs2        [4:0]  ),
    .rd                      ( rd         [4:0]  ),
    .reg_wen                 ( reg_wen           ),
    .is_imm                  ( is_imm            ),
    .is_branch               ( is_branch         ),
    .is_jal                  ( is_jal            ),
    .Imm_out                 ( Imm_out    [31:0] ),
    .pc_branch               ( pc_branch  [31:0] ),
    .a_val                   ( a_val      [31:0] ),
    .b_val                   ( b_val      [31:0] )
);

ram_b u_ram(
        .clka(clk_ram),
        .wea(MemRW),
        .addra(Addr_out[9:0]),
        .dina(Data_out),
        .douta(douta)
);

rom_d u_rom(
        .a(PC_out[11:2]),
        .spo(spo)
);

endmodule