`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/11 14:53:36
// Design Name: 
// Module Name: tb_sseg
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


module tb_sseg;
// sseg Inputs
reg   [63:0]  Disp_num                     = 0 ;

// sseg Outputs
wire  [63:0]  Seg_map                      ;


initial
begin
    // Disp_num=32'h3e113616;//ecall   616311e3
    // #50;
    // Disp_num=32'hf113381f;//rupt   f183311f
    // #50; 
    // Disp_num=32'h903e3ef9;//ecall   9fe3e309
    // #50;
    //   Disp_num=32'h7fffffff;
    //  #50;

      Disp_num=32'h5d515511;//ecall  01
     #50;
      Disp_num=32'hdf46542a;//rupt     
     #50;
     Disp_num=32'hd596e94e;//illg     10
    #50;
     Disp_num=32'hDF66542C;
    #50;
end


sseg  u_sseg (
    .Disp_num                ( Disp_num  [63:0] ),

    .Seg_map                 ( Seg_map   [63:0] )
);


endmodule