`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/12 16:26:24
// Design Name: 
// Module Name: ALU
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


module ALU(
  input  [31:0]A,
  input  [2:0] ALU_operation,
  input  [31:0]B,
  output [31:0]res,
  output zero
  );
  
  wire [31:0]MUX8T1_32_0_o;
  wire [31:0]SignalExt_32_0_So;
  wire [32:0]addc_32_0_S;
  wire [31:0]and32_0_res;
  wire [31:0]nor32_0_res;
  wire [31:0]or32_0_res;
  wire [31:0]srl32_0_res;
  wire [31:0]xor32_0_res;
  wire [31:0]xor32_1_res;

  assign res = MUX8T1_32_0_o;
  MUX8T1_32_0 MUX8T1_32_0
       (.I0(and32_0_res),
        .I1(or32_0_res),
        .I2(addc_32_0_S[31:0]),
        .I3(xor32_0_res),
        .I4(nor32_0_res),
        .I5(srl32_0_res),
        .I6(addc_32_0_S[31:0]),
        .I7({31'b0,addc_32_0_S[32]}),
        .o(MUX8T1_32_0_o),
        .s(ALU_operation));
  SignalExt_32_0 SignalExt_32_0
       (.S(ALU_operation[2]),
        .So(SignalExt_32_0_So));
  addc_32_0 addc_32_0
       (.A(A),
        .B(xor32_1_res),
        .C0(ALU_operation[2]),
        .S(addc_32_0_S));
  and32_0 and32_0
       (.A(A),
        .B(B),
        .res(and32_0_res));
  nor32_0 nor32_0
       (.A(A),
        .B(B),
        .res(nor32_0_res));
  or32_0 or32_0
       (.A(A),
        .B(B),
        .res(or32_0_res));
  or_bit_32_0 or_bit_32_0
       (.A(MUX8T1_32_0_o),
        .o(zero));
  srl32_0 srl32_0
       (.A(A),
        .B(B),
        .res(srl32_0_res));
  xor32_0 xor32_0
       (.A(A),
        .B(B),
        .res(xor32_0_res));
  xor32_0 xor32_1
       (.A(SignalExt_32_0_So),
        .B(B),
        .res(xor32_1_res));
endmodule
