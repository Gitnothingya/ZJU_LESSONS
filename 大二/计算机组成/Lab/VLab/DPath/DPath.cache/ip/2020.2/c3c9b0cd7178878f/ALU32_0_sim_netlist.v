// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 17:06:48 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ALU32_0_sim_netlist.v
// Design      : ALU32_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU32
   (res,
    zero,
    A,
    B,
    operator);
  output [31:0]res;
  output zero;
  input [31:0]A;
  input [31:0]B;
  input [2:0]operator;

  wire [31:0]A;
  wire [31:0]B;
  wire [32:0]addc;
  wire [31:0]and_res;
  wire [31:0]nor_res;
  wire [2:0]operator;
  wire [31:0]or_res;
  wire [31:0]res;
  wire [31:0]srl_res;
  wire [31:0]xor_res;
  wire zero;

  (* CHECK_LICENSE_TYPE = "adc_1,adc,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adc,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 adc_ins
       (.A(A),
        .B(B),
        .C0(operator[2]),
        .S(addc));
  (* CHECK_LICENSE_TYPE = "and32_0,and32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "and32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 and_ins
       (.A(A),
        .B(B),
        .res(and_res));
  (* CHECK_LICENSE_TYPE = "mux8132_0,mux8132,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "mux8132,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 mux
       (.I0(and_res),
        .I1(or_res),
        .I2(addc[31:0]),
        .I3(xor_res),
        .I4(nor_res),
        .I5(srl_res),
        .I6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addc[32]}),
        .o(res),
        .s(operator));
  (* CHECK_LICENSE_TYPE = "nor32_0,nor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "nor32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 nor_ins
       (.A(A),
        .B(B),
        .res(nor_res));
  (* CHECK_LICENSE_TYPE = "or32_0,or32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "or32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 or_ins
       (.A(A),
        .B(B),
        .res(or_res));
  (* CHECK_LICENSE_TYPE = "orl_0,orl,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "orl,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 orl_ins
       (.A(res),
        .S(zero));
  (* CHECK_LICENSE_TYPE = "srl_0,srl,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "srl,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 srl_ins
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B[4:0]}),
        .res(srl_res));
  (* CHECK_LICENSE_TYPE = "xor32_0,xor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 xor_ins
       (.A(A),
        .B(B),
        .res(xor_res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU32_0,ALU32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ALU32,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    operator,
    res,
    zero);
  input [31:0]A;
  input [31:0]B;
  input [2:0]operator;
  output [31:0]res;
  output zero;

  wire [31:0]A;
  wire [31:0]B;
  wire [2:0]operator;
  wire [31:0]res;
  wire zero;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU32 inst
       (.A(A),
        .B(B),
        .operator(operator),
        .res(res),
        .zero(zero));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc
   (S,
    A,
    C0,
    B);
  output [32:0]S;
  input [31:0]A;
  input C0;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire C0;
  wire [32:0]S;
  wire \S[0]_INST_0_i_1_n_0 ;
  wire \S[0]_INST_0_i_2_n_0 ;
  wire \S[0]_INST_0_i_3_n_0 ;
  wire \S[0]_INST_0_i_4_n_0 ;
  wire \S[0]_INST_0_n_0 ;
  wire \S[0]_INST_0_n_1 ;
  wire \S[0]_INST_0_n_2 ;
  wire \S[0]_INST_0_n_3 ;
  wire \S[12]_INST_0_i_1_n_0 ;
  wire \S[12]_INST_0_i_2_n_0 ;
  wire \S[12]_INST_0_i_3_n_0 ;
  wire \S[12]_INST_0_i_4_n_0 ;
  wire \S[12]_INST_0_n_0 ;
  wire \S[12]_INST_0_n_1 ;
  wire \S[12]_INST_0_n_2 ;
  wire \S[12]_INST_0_n_3 ;
  wire \S[16]_INST_0_i_1_n_0 ;
  wire \S[16]_INST_0_i_2_n_0 ;
  wire \S[16]_INST_0_i_3_n_0 ;
  wire \S[16]_INST_0_i_4_n_0 ;
  wire \S[16]_INST_0_n_0 ;
  wire \S[16]_INST_0_n_1 ;
  wire \S[16]_INST_0_n_2 ;
  wire \S[16]_INST_0_n_3 ;
  wire \S[20]_INST_0_i_1_n_0 ;
  wire \S[20]_INST_0_i_2_n_0 ;
  wire \S[20]_INST_0_i_3_n_0 ;
  wire \S[20]_INST_0_i_4_n_0 ;
  wire \S[20]_INST_0_n_0 ;
  wire \S[20]_INST_0_n_1 ;
  wire \S[20]_INST_0_n_2 ;
  wire \S[20]_INST_0_n_3 ;
  wire \S[24]_INST_0_i_1_n_0 ;
  wire \S[24]_INST_0_i_2_n_0 ;
  wire \S[24]_INST_0_i_3_n_0 ;
  wire \S[24]_INST_0_i_4_n_0 ;
  wire \S[24]_INST_0_n_0 ;
  wire \S[24]_INST_0_n_1 ;
  wire \S[24]_INST_0_n_2 ;
  wire \S[24]_INST_0_n_3 ;
  wire \S[28]_INST_0_i_1_n_0 ;
  wire \S[28]_INST_0_i_2_n_0 ;
  wire \S[28]_INST_0_i_3_n_0 ;
  wire \S[28]_INST_0_i_4_n_0 ;
  wire \S[28]_INST_0_n_0 ;
  wire \S[28]_INST_0_n_1 ;
  wire \S[28]_INST_0_n_2 ;
  wire \S[28]_INST_0_n_3 ;
  wire \S[4]_INST_0_i_1_n_0 ;
  wire \S[4]_INST_0_i_2_n_0 ;
  wire \S[4]_INST_0_i_3_n_0 ;
  wire \S[4]_INST_0_i_4_n_0 ;
  wire \S[4]_INST_0_n_0 ;
  wire \S[4]_INST_0_n_1 ;
  wire \S[4]_INST_0_n_2 ;
  wire \S[4]_INST_0_n_3 ;
  wire \S[8]_INST_0_i_1_n_0 ;
  wire \S[8]_INST_0_i_2_n_0 ;
  wire \S[8]_INST_0_i_3_n_0 ;
  wire \S[8]_INST_0_i_4_n_0 ;
  wire \S[8]_INST_0_n_0 ;
  wire \S[8]_INST_0_n_1 ;
  wire \S[8]_INST_0_n_2 ;
  wire \S[8]_INST_0_n_3 ;
  wire [3:0]\NLW_S[32]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_S[32]_INST_0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[0]_INST_0 
       (.CI(1'b0),
        .CO({\S[0]_INST_0_n_0 ,\S[0]_INST_0_n_1 ,\S[0]_INST_0_n_2 ,\S[0]_INST_0_n_3 }),
        .CYINIT(C0),
        .DI(A[3:0]),
        .O(S[3:0]),
        .S({\S[0]_INST_0_i_1_n_0 ,\S[0]_INST_0_i_2_n_0 ,\S[0]_INST_0_i_3_n_0 ,\S[0]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_1 
       (.I0(A[3]),
        .I1(C0),
        .I2(B[3]),
        .O(\S[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_2 
       (.I0(A[2]),
        .I1(C0),
        .I2(B[2]),
        .O(\S[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_3 
       (.I0(A[1]),
        .I1(C0),
        .I2(B[1]),
        .O(\S[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_4 
       (.I0(A[0]),
        .I1(C0),
        .I2(B[0]),
        .O(\S[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[12]_INST_0 
       (.CI(\S[8]_INST_0_n_0 ),
        .CO({\S[12]_INST_0_n_0 ,\S[12]_INST_0_n_1 ,\S[12]_INST_0_n_2 ,\S[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(S[15:12]),
        .S({\S[12]_INST_0_i_1_n_0 ,\S[12]_INST_0_i_2_n_0 ,\S[12]_INST_0_i_3_n_0 ,\S[12]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_1 
       (.I0(A[15]),
        .I1(C0),
        .I2(B[15]),
        .O(\S[12]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_2 
       (.I0(A[14]),
        .I1(C0),
        .I2(B[14]),
        .O(\S[12]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_3 
       (.I0(A[13]),
        .I1(C0),
        .I2(B[13]),
        .O(\S[12]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_4 
       (.I0(A[12]),
        .I1(C0),
        .I2(B[12]),
        .O(\S[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[16]_INST_0 
       (.CI(\S[12]_INST_0_n_0 ),
        .CO({\S[16]_INST_0_n_0 ,\S[16]_INST_0_n_1 ,\S[16]_INST_0_n_2 ,\S[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(S[19:16]),
        .S({\S[16]_INST_0_i_1_n_0 ,\S[16]_INST_0_i_2_n_0 ,\S[16]_INST_0_i_3_n_0 ,\S[16]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_1 
       (.I0(A[19]),
        .I1(C0),
        .I2(B[19]),
        .O(\S[16]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_2 
       (.I0(A[18]),
        .I1(C0),
        .I2(B[18]),
        .O(\S[16]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_3 
       (.I0(A[17]),
        .I1(C0),
        .I2(B[17]),
        .O(\S[16]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_4 
       (.I0(A[16]),
        .I1(C0),
        .I2(B[16]),
        .O(\S[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[20]_INST_0 
       (.CI(\S[16]_INST_0_n_0 ),
        .CO({\S[20]_INST_0_n_0 ,\S[20]_INST_0_n_1 ,\S[20]_INST_0_n_2 ,\S[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(S[23:20]),
        .S({\S[20]_INST_0_i_1_n_0 ,\S[20]_INST_0_i_2_n_0 ,\S[20]_INST_0_i_3_n_0 ,\S[20]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_1 
       (.I0(A[23]),
        .I1(C0),
        .I2(B[23]),
        .O(\S[20]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_2 
       (.I0(A[22]),
        .I1(C0),
        .I2(B[22]),
        .O(\S[20]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_3 
       (.I0(A[21]),
        .I1(C0),
        .I2(B[21]),
        .O(\S[20]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_4 
       (.I0(A[20]),
        .I1(C0),
        .I2(B[20]),
        .O(\S[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[24]_INST_0 
       (.CI(\S[20]_INST_0_n_0 ),
        .CO({\S[24]_INST_0_n_0 ,\S[24]_INST_0_n_1 ,\S[24]_INST_0_n_2 ,\S[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(S[27:24]),
        .S({\S[24]_INST_0_i_1_n_0 ,\S[24]_INST_0_i_2_n_0 ,\S[24]_INST_0_i_3_n_0 ,\S[24]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_1 
       (.I0(A[27]),
        .I1(C0),
        .I2(B[27]),
        .O(\S[24]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_2 
       (.I0(A[26]),
        .I1(C0),
        .I2(B[26]),
        .O(\S[24]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_3 
       (.I0(A[25]),
        .I1(C0),
        .I2(B[25]),
        .O(\S[24]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_4 
       (.I0(A[24]),
        .I1(C0),
        .I2(B[24]),
        .O(\S[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[28]_INST_0 
       (.CI(\S[24]_INST_0_n_0 ),
        .CO({\S[28]_INST_0_n_0 ,\S[28]_INST_0_n_1 ,\S[28]_INST_0_n_2 ,\S[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O(S[31:28]),
        .S({\S[28]_INST_0_i_1_n_0 ,\S[28]_INST_0_i_2_n_0 ,\S[28]_INST_0_i_3_n_0 ,\S[28]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_1 
       (.I0(A[31]),
        .I1(C0),
        .I2(B[31]),
        .O(\S[28]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_2 
       (.I0(A[30]),
        .I1(C0),
        .I2(B[30]),
        .O(\S[28]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_3 
       (.I0(A[29]),
        .I1(C0),
        .I2(B[29]),
        .O(\S[28]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_4 
       (.I0(A[28]),
        .I1(C0),
        .I2(B[28]),
        .O(\S[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[32]_INST_0 
       (.CI(\S[28]_INST_0_n_0 ),
        .CO(\NLW_S[32]_INST_0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_S[32]_INST_0_O_UNCONNECTED [3:1],S[32]}),
        .S({1'b0,1'b0,1'b0,C0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[4]_INST_0 
       (.CI(\S[0]_INST_0_n_0 ),
        .CO({\S[4]_INST_0_n_0 ,\S[4]_INST_0_n_1 ,\S[4]_INST_0_n_2 ,\S[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(S[7:4]),
        .S({\S[4]_INST_0_i_1_n_0 ,\S[4]_INST_0_i_2_n_0 ,\S[4]_INST_0_i_3_n_0 ,\S[4]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_1 
       (.I0(A[7]),
        .I1(C0),
        .I2(B[7]),
        .O(\S[4]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_2 
       (.I0(A[6]),
        .I1(C0),
        .I2(B[6]),
        .O(\S[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_3 
       (.I0(A[5]),
        .I1(C0),
        .I2(B[5]),
        .O(\S[4]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_4 
       (.I0(A[4]),
        .I1(C0),
        .I2(B[4]),
        .O(\S[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[8]_INST_0 
       (.CI(\S[4]_INST_0_n_0 ),
        .CO({\S[8]_INST_0_n_0 ,\S[8]_INST_0_n_1 ,\S[8]_INST_0_n_2 ,\S[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(S[11:8]),
        .S({\S[8]_INST_0_i_1_n_0 ,\S[8]_INST_0_i_2_n_0 ,\S[8]_INST_0_i_3_n_0 ,\S[8]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_1 
       (.I0(A[11]),
        .I1(C0),
        .I2(B[11]),
        .O(\S[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_2 
       (.I0(A[10]),
        .I1(C0),
        .I2(B[10]),
        .O(\S[8]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_3 
       (.I0(A[9]),
        .I1(C0),
        .I2(B[9]),
        .O(\S[8]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_4 
       (.I0(A[8]),
        .I1(C0),
        .I2(B[8]),
        .O(\S[8]_INST_0_i_4_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adc_1,adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adc,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1
   (A,
    B,
    C0,
    S);
  input [31:0]A;
  input [31:0]B;
  input C0;
  output [32:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire C0;
  wire [32:0]S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc inst
       (.A(A),
        .B(B),
        .C0(C0),
        .S(S));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32
   (res,
    A,
    B);
  output [31:0]res;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'h8)) 
    \res[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[10]_INST_0 
       (.I0(A[10]),
        .I1(B[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[11]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[12]_INST_0 
       (.I0(A[12]),
        .I1(B[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[13]_INST_0 
       (.I0(A[13]),
        .I1(B[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[14]_INST_0 
       (.I0(A[14]),
        .I1(B[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[15]_INST_0 
       (.I0(A[15]),
        .I1(B[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[16]_INST_0 
       (.I0(A[16]),
        .I1(B[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[17]_INST_0 
       (.I0(A[17]),
        .I1(B[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[18]_INST_0 
       (.I0(A[18]),
        .I1(B[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[19]_INST_0 
       (.I0(A[19]),
        .I1(B[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[1]_INST_0 
       (.I0(A[1]),
        .I1(B[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[20]_INST_0 
       (.I0(A[20]),
        .I1(B[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[21]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[22]_INST_0 
       (.I0(A[22]),
        .I1(B[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[23]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[24]_INST_0 
       (.I0(A[24]),
        .I1(B[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[25]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[26]_INST_0 
       (.I0(A[26]),
        .I1(B[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[27]_INST_0 
       (.I0(A[27]),
        .I1(B[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[28]_INST_0 
       (.I0(A[28]),
        .I1(B[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[29]_INST_0 
       (.I0(A[29]),
        .I1(B[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[2]_INST_0 
       (.I0(A[2]),
        .I1(B[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[30]_INST_0 
       (.I0(A[30]),
        .I1(B[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[31]_INST_0 
       (.I0(A[31]),
        .I1(B[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[3]_INST_0 
       (.I0(A[3]),
        .I1(B[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[4]_INST_0 
       (.I0(A[4]),
        .I1(B[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[5]_INST_0 
       (.I0(A[5]),
        .I1(B[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[6]_INST_0 
       (.I0(A[6]),
        .I1(B[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[7]_INST_0 
       (.I0(A[7]),
        .I1(B[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[8]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[9]_INST_0 
       (.I0(A[9]),
        .I1(B[9]),
        .O(res[9]));
endmodule

(* CHECK_LICENSE_TYPE = "and32_0,and32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "and32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32 inst
       (.A(A),
        .B(B),
        .res(res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132
   (o,
    s,
    I3,
    I2,
    I1,
    I0,
    I7,
    I5,
    I4);
  output [31:0]o;
  input [2:0]s;
  input [31:0]I3;
  input [31:0]I2;
  input [31:0]I1;
  input [31:0]I0;
  input [0:0]I7;
  input [31:0]I5;
  input [31:0]I4;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]I4;
  wire [31:0]I5;
  wire [0:0]I7;
  wire [31:0]o;
  wire \o[0]_INST_0_i_1_n_0 ;
  wire \o[0]_INST_0_i_2_n_0 ;
  wire \o[10]_INST_0_i_1_n_0 ;
  wire \o[10]_INST_0_i_2_n_0 ;
  wire \o[11]_INST_0_i_1_n_0 ;
  wire \o[11]_INST_0_i_2_n_0 ;
  wire \o[12]_INST_0_i_1_n_0 ;
  wire \o[12]_INST_0_i_2_n_0 ;
  wire \o[13]_INST_0_i_1_n_0 ;
  wire \o[13]_INST_0_i_2_n_0 ;
  wire \o[14]_INST_0_i_1_n_0 ;
  wire \o[14]_INST_0_i_2_n_0 ;
  wire \o[15]_INST_0_i_1_n_0 ;
  wire \o[15]_INST_0_i_2_n_0 ;
  wire \o[16]_INST_0_i_1_n_0 ;
  wire \o[16]_INST_0_i_2_n_0 ;
  wire \o[17]_INST_0_i_1_n_0 ;
  wire \o[17]_INST_0_i_2_n_0 ;
  wire \o[18]_INST_0_i_1_n_0 ;
  wire \o[18]_INST_0_i_2_n_0 ;
  wire \o[19]_INST_0_i_1_n_0 ;
  wire \o[19]_INST_0_i_2_n_0 ;
  wire \o[1]_INST_0_i_1_n_0 ;
  wire \o[1]_INST_0_i_2_n_0 ;
  wire \o[20]_INST_0_i_1_n_0 ;
  wire \o[20]_INST_0_i_2_n_0 ;
  wire \o[21]_INST_0_i_1_n_0 ;
  wire \o[21]_INST_0_i_2_n_0 ;
  wire \o[22]_INST_0_i_1_n_0 ;
  wire \o[22]_INST_0_i_2_n_0 ;
  wire \o[23]_INST_0_i_1_n_0 ;
  wire \o[23]_INST_0_i_2_n_0 ;
  wire \o[24]_INST_0_i_1_n_0 ;
  wire \o[24]_INST_0_i_2_n_0 ;
  wire \o[25]_INST_0_i_1_n_0 ;
  wire \o[25]_INST_0_i_2_n_0 ;
  wire \o[26]_INST_0_i_1_n_0 ;
  wire \o[26]_INST_0_i_2_n_0 ;
  wire \o[27]_INST_0_i_1_n_0 ;
  wire \o[27]_INST_0_i_2_n_0 ;
  wire \o[28]_INST_0_i_1_n_0 ;
  wire \o[28]_INST_0_i_2_n_0 ;
  wire \o[29]_INST_0_i_1_n_0 ;
  wire \o[29]_INST_0_i_2_n_0 ;
  wire \o[2]_INST_0_i_1_n_0 ;
  wire \o[2]_INST_0_i_2_n_0 ;
  wire \o[30]_INST_0_i_1_n_0 ;
  wire \o[30]_INST_0_i_2_n_0 ;
  wire \o[31]_INST_0_i_1_n_0 ;
  wire \o[31]_INST_0_i_2_n_0 ;
  wire \o[3]_INST_0_i_1_n_0 ;
  wire \o[3]_INST_0_i_2_n_0 ;
  wire \o[4]_INST_0_i_1_n_0 ;
  wire \o[4]_INST_0_i_2_n_0 ;
  wire \o[5]_INST_0_i_1_n_0 ;
  wire \o[5]_INST_0_i_2_n_0 ;
  wire \o[6]_INST_0_i_1_n_0 ;
  wire \o[6]_INST_0_i_2_n_0 ;
  wire \o[7]_INST_0_i_1_n_0 ;
  wire \o[7]_INST_0_i_2_n_0 ;
  wire \o[8]_INST_0_i_1_n_0 ;
  wire \o[8]_INST_0_i_2_n_0 ;
  wire \o[9]_INST_0_i_1_n_0 ;
  wire \o[9]_INST_0_i_2_n_0 ;
  wire [2:0]s;

  MUXF7 \o[0]_INST_0 
       (.I0(\o[0]_INST_0_i_1_n_0 ),
        .I1(\o[0]_INST_0_i_2_n_0 ),
        .O(o[0]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[0]_INST_0_i_1 
       (.I0(I3[0]),
        .I1(I2[0]),
        .I2(s[1]),
        .I3(I1[0]),
        .I4(s[0]),
        .I5(I0[0]),
        .O(\o[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[0]_INST_0_i_2 
       (.I0(I7),
        .I1(I2[0]),
        .I2(s[1]),
        .I3(I5[0]),
        .I4(s[0]),
        .I5(I4[0]),
        .O(\o[0]_INST_0_i_2_n_0 ));
  MUXF7 \o[10]_INST_0 
       (.I0(\o[10]_INST_0_i_1_n_0 ),
        .I1(\o[10]_INST_0_i_2_n_0 ),
        .O(o[10]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[10]_INST_0_i_1 
       (.I0(I3[10]),
        .I1(I2[10]),
        .I2(s[1]),
        .I3(I1[10]),
        .I4(s[0]),
        .I5(I0[10]),
        .O(\o[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[10]_INST_0_i_2 
       (.I0(I2[10]),
        .I1(s[1]),
        .I2(I5[10]),
        .I3(s[0]),
        .I4(I4[10]),
        .O(\o[10]_INST_0_i_2_n_0 ));
  MUXF7 \o[11]_INST_0 
       (.I0(\o[11]_INST_0_i_1_n_0 ),
        .I1(\o[11]_INST_0_i_2_n_0 ),
        .O(o[11]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[11]_INST_0_i_1 
       (.I0(I3[11]),
        .I1(I2[11]),
        .I2(s[1]),
        .I3(I1[11]),
        .I4(s[0]),
        .I5(I0[11]),
        .O(\o[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[11]_INST_0_i_2 
       (.I0(I2[11]),
        .I1(s[1]),
        .I2(I5[11]),
        .I3(s[0]),
        .I4(I4[11]),
        .O(\o[11]_INST_0_i_2_n_0 ));
  MUXF7 \o[12]_INST_0 
       (.I0(\o[12]_INST_0_i_1_n_0 ),
        .I1(\o[12]_INST_0_i_2_n_0 ),
        .O(o[12]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[12]_INST_0_i_1 
       (.I0(I3[12]),
        .I1(I2[12]),
        .I2(s[1]),
        .I3(I1[12]),
        .I4(s[0]),
        .I5(I0[12]),
        .O(\o[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[12]_INST_0_i_2 
       (.I0(I2[12]),
        .I1(s[1]),
        .I2(I5[12]),
        .I3(s[0]),
        .I4(I4[12]),
        .O(\o[12]_INST_0_i_2_n_0 ));
  MUXF7 \o[13]_INST_0 
       (.I0(\o[13]_INST_0_i_1_n_0 ),
        .I1(\o[13]_INST_0_i_2_n_0 ),
        .O(o[13]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[13]_INST_0_i_1 
       (.I0(I3[13]),
        .I1(I2[13]),
        .I2(s[1]),
        .I3(I1[13]),
        .I4(s[0]),
        .I5(I0[13]),
        .O(\o[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[13]_INST_0_i_2 
       (.I0(I2[13]),
        .I1(s[1]),
        .I2(I5[13]),
        .I3(s[0]),
        .I4(I4[13]),
        .O(\o[13]_INST_0_i_2_n_0 ));
  MUXF7 \o[14]_INST_0 
       (.I0(\o[14]_INST_0_i_1_n_0 ),
        .I1(\o[14]_INST_0_i_2_n_0 ),
        .O(o[14]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[14]_INST_0_i_1 
       (.I0(I3[14]),
        .I1(I2[14]),
        .I2(s[1]),
        .I3(I1[14]),
        .I4(s[0]),
        .I5(I0[14]),
        .O(\o[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[14]_INST_0_i_2 
       (.I0(I2[14]),
        .I1(s[1]),
        .I2(I5[14]),
        .I3(s[0]),
        .I4(I4[14]),
        .O(\o[14]_INST_0_i_2_n_0 ));
  MUXF7 \o[15]_INST_0 
       (.I0(\o[15]_INST_0_i_1_n_0 ),
        .I1(\o[15]_INST_0_i_2_n_0 ),
        .O(o[15]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[15]_INST_0_i_1 
       (.I0(I3[15]),
        .I1(I2[15]),
        .I2(s[1]),
        .I3(I1[15]),
        .I4(s[0]),
        .I5(I0[15]),
        .O(\o[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[15]_INST_0_i_2 
       (.I0(I2[15]),
        .I1(s[1]),
        .I2(I5[15]),
        .I3(s[0]),
        .I4(I4[15]),
        .O(\o[15]_INST_0_i_2_n_0 ));
  MUXF7 \o[16]_INST_0 
       (.I0(\o[16]_INST_0_i_1_n_0 ),
        .I1(\o[16]_INST_0_i_2_n_0 ),
        .O(o[16]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[16]_INST_0_i_1 
       (.I0(I3[16]),
        .I1(I2[16]),
        .I2(s[1]),
        .I3(I1[16]),
        .I4(s[0]),
        .I5(I0[16]),
        .O(\o[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[16]_INST_0_i_2 
       (.I0(I2[16]),
        .I1(s[1]),
        .I2(I5[16]),
        .I3(s[0]),
        .I4(I4[16]),
        .O(\o[16]_INST_0_i_2_n_0 ));
  MUXF7 \o[17]_INST_0 
       (.I0(\o[17]_INST_0_i_1_n_0 ),
        .I1(\o[17]_INST_0_i_2_n_0 ),
        .O(o[17]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[17]_INST_0_i_1 
       (.I0(I3[17]),
        .I1(I2[17]),
        .I2(s[1]),
        .I3(I1[17]),
        .I4(s[0]),
        .I5(I0[17]),
        .O(\o[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[17]_INST_0_i_2 
       (.I0(I2[17]),
        .I1(s[1]),
        .I2(I5[17]),
        .I3(s[0]),
        .I4(I4[17]),
        .O(\o[17]_INST_0_i_2_n_0 ));
  MUXF7 \o[18]_INST_0 
       (.I0(\o[18]_INST_0_i_1_n_0 ),
        .I1(\o[18]_INST_0_i_2_n_0 ),
        .O(o[18]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[18]_INST_0_i_1 
       (.I0(I3[18]),
        .I1(I2[18]),
        .I2(s[1]),
        .I3(I1[18]),
        .I4(s[0]),
        .I5(I0[18]),
        .O(\o[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[18]_INST_0_i_2 
       (.I0(I2[18]),
        .I1(s[1]),
        .I2(I5[18]),
        .I3(s[0]),
        .I4(I4[18]),
        .O(\o[18]_INST_0_i_2_n_0 ));
  MUXF7 \o[19]_INST_0 
       (.I0(\o[19]_INST_0_i_1_n_0 ),
        .I1(\o[19]_INST_0_i_2_n_0 ),
        .O(o[19]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[19]_INST_0_i_1 
       (.I0(I3[19]),
        .I1(I2[19]),
        .I2(s[1]),
        .I3(I1[19]),
        .I4(s[0]),
        .I5(I0[19]),
        .O(\o[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[19]_INST_0_i_2 
       (.I0(I2[19]),
        .I1(s[1]),
        .I2(I5[19]),
        .I3(s[0]),
        .I4(I4[19]),
        .O(\o[19]_INST_0_i_2_n_0 ));
  MUXF7 \o[1]_INST_0 
       (.I0(\o[1]_INST_0_i_1_n_0 ),
        .I1(\o[1]_INST_0_i_2_n_0 ),
        .O(o[1]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[1]_INST_0_i_1 
       (.I0(I3[1]),
        .I1(I2[1]),
        .I2(s[1]),
        .I3(I1[1]),
        .I4(s[0]),
        .I5(I0[1]),
        .O(\o[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[1]_INST_0_i_2 
       (.I0(I2[1]),
        .I1(s[1]),
        .I2(I5[1]),
        .I3(s[0]),
        .I4(I4[1]),
        .O(\o[1]_INST_0_i_2_n_0 ));
  MUXF7 \o[20]_INST_0 
       (.I0(\o[20]_INST_0_i_1_n_0 ),
        .I1(\o[20]_INST_0_i_2_n_0 ),
        .O(o[20]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[20]_INST_0_i_1 
       (.I0(I3[20]),
        .I1(I2[20]),
        .I2(s[1]),
        .I3(I1[20]),
        .I4(s[0]),
        .I5(I0[20]),
        .O(\o[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[20]_INST_0_i_2 
       (.I0(I2[20]),
        .I1(s[1]),
        .I2(I5[20]),
        .I3(s[0]),
        .I4(I4[20]),
        .O(\o[20]_INST_0_i_2_n_0 ));
  MUXF7 \o[21]_INST_0 
       (.I0(\o[21]_INST_0_i_1_n_0 ),
        .I1(\o[21]_INST_0_i_2_n_0 ),
        .O(o[21]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[21]_INST_0_i_1 
       (.I0(I3[21]),
        .I1(I2[21]),
        .I2(s[1]),
        .I3(I1[21]),
        .I4(s[0]),
        .I5(I0[21]),
        .O(\o[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[21]_INST_0_i_2 
       (.I0(I2[21]),
        .I1(s[1]),
        .I2(I5[21]),
        .I3(s[0]),
        .I4(I4[21]),
        .O(\o[21]_INST_0_i_2_n_0 ));
  MUXF7 \o[22]_INST_0 
       (.I0(\o[22]_INST_0_i_1_n_0 ),
        .I1(\o[22]_INST_0_i_2_n_0 ),
        .O(o[22]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[22]_INST_0_i_1 
       (.I0(I3[22]),
        .I1(I2[22]),
        .I2(s[1]),
        .I3(I1[22]),
        .I4(s[0]),
        .I5(I0[22]),
        .O(\o[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[22]_INST_0_i_2 
       (.I0(I2[22]),
        .I1(s[1]),
        .I2(I5[22]),
        .I3(s[0]),
        .I4(I4[22]),
        .O(\o[22]_INST_0_i_2_n_0 ));
  MUXF7 \o[23]_INST_0 
       (.I0(\o[23]_INST_0_i_1_n_0 ),
        .I1(\o[23]_INST_0_i_2_n_0 ),
        .O(o[23]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[23]_INST_0_i_1 
       (.I0(I3[23]),
        .I1(I2[23]),
        .I2(s[1]),
        .I3(I1[23]),
        .I4(s[0]),
        .I5(I0[23]),
        .O(\o[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[23]_INST_0_i_2 
       (.I0(I2[23]),
        .I1(s[1]),
        .I2(I5[23]),
        .I3(s[0]),
        .I4(I4[23]),
        .O(\o[23]_INST_0_i_2_n_0 ));
  MUXF7 \o[24]_INST_0 
       (.I0(\o[24]_INST_0_i_1_n_0 ),
        .I1(\o[24]_INST_0_i_2_n_0 ),
        .O(o[24]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[24]_INST_0_i_1 
       (.I0(I3[24]),
        .I1(I2[24]),
        .I2(s[1]),
        .I3(I1[24]),
        .I4(s[0]),
        .I5(I0[24]),
        .O(\o[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[24]_INST_0_i_2 
       (.I0(I2[24]),
        .I1(s[1]),
        .I2(I5[24]),
        .I3(s[0]),
        .I4(I4[24]),
        .O(\o[24]_INST_0_i_2_n_0 ));
  MUXF7 \o[25]_INST_0 
       (.I0(\o[25]_INST_0_i_1_n_0 ),
        .I1(\o[25]_INST_0_i_2_n_0 ),
        .O(o[25]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[25]_INST_0_i_1 
       (.I0(I3[25]),
        .I1(I2[25]),
        .I2(s[1]),
        .I3(I1[25]),
        .I4(s[0]),
        .I5(I0[25]),
        .O(\o[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[25]_INST_0_i_2 
       (.I0(I2[25]),
        .I1(s[1]),
        .I2(I5[25]),
        .I3(s[0]),
        .I4(I4[25]),
        .O(\o[25]_INST_0_i_2_n_0 ));
  MUXF7 \o[26]_INST_0 
       (.I0(\o[26]_INST_0_i_1_n_0 ),
        .I1(\o[26]_INST_0_i_2_n_0 ),
        .O(o[26]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[26]_INST_0_i_1 
       (.I0(I3[26]),
        .I1(I2[26]),
        .I2(s[1]),
        .I3(I1[26]),
        .I4(s[0]),
        .I5(I0[26]),
        .O(\o[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[26]_INST_0_i_2 
       (.I0(I2[26]),
        .I1(s[1]),
        .I2(I5[26]),
        .I3(s[0]),
        .I4(I4[26]),
        .O(\o[26]_INST_0_i_2_n_0 ));
  MUXF7 \o[27]_INST_0 
       (.I0(\o[27]_INST_0_i_1_n_0 ),
        .I1(\o[27]_INST_0_i_2_n_0 ),
        .O(o[27]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[27]_INST_0_i_1 
       (.I0(I3[27]),
        .I1(I2[27]),
        .I2(s[1]),
        .I3(I1[27]),
        .I4(s[0]),
        .I5(I0[27]),
        .O(\o[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[27]_INST_0_i_2 
       (.I0(I2[27]),
        .I1(s[1]),
        .I2(I5[27]),
        .I3(s[0]),
        .I4(I4[27]),
        .O(\o[27]_INST_0_i_2_n_0 ));
  MUXF7 \o[28]_INST_0 
       (.I0(\o[28]_INST_0_i_1_n_0 ),
        .I1(\o[28]_INST_0_i_2_n_0 ),
        .O(o[28]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[28]_INST_0_i_1 
       (.I0(I3[28]),
        .I1(I2[28]),
        .I2(s[1]),
        .I3(I1[28]),
        .I4(s[0]),
        .I5(I0[28]),
        .O(\o[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[28]_INST_0_i_2 
       (.I0(I2[28]),
        .I1(s[1]),
        .I2(I5[28]),
        .I3(s[0]),
        .I4(I4[28]),
        .O(\o[28]_INST_0_i_2_n_0 ));
  MUXF7 \o[29]_INST_0 
       (.I0(\o[29]_INST_0_i_1_n_0 ),
        .I1(\o[29]_INST_0_i_2_n_0 ),
        .O(o[29]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[29]_INST_0_i_1 
       (.I0(I3[29]),
        .I1(I2[29]),
        .I2(s[1]),
        .I3(I1[29]),
        .I4(s[0]),
        .I5(I0[29]),
        .O(\o[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[29]_INST_0_i_2 
       (.I0(I2[29]),
        .I1(s[1]),
        .I2(I5[29]),
        .I3(s[0]),
        .I4(I4[29]),
        .O(\o[29]_INST_0_i_2_n_0 ));
  MUXF7 \o[2]_INST_0 
       (.I0(\o[2]_INST_0_i_1_n_0 ),
        .I1(\o[2]_INST_0_i_2_n_0 ),
        .O(o[2]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[2]_INST_0_i_1 
       (.I0(I3[2]),
        .I1(I2[2]),
        .I2(s[1]),
        .I3(I1[2]),
        .I4(s[0]),
        .I5(I0[2]),
        .O(\o[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[2]_INST_0_i_2 
       (.I0(I2[2]),
        .I1(s[1]),
        .I2(I5[2]),
        .I3(s[0]),
        .I4(I4[2]),
        .O(\o[2]_INST_0_i_2_n_0 ));
  MUXF7 \o[30]_INST_0 
       (.I0(\o[30]_INST_0_i_1_n_0 ),
        .I1(\o[30]_INST_0_i_2_n_0 ),
        .O(o[30]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[30]_INST_0_i_1 
       (.I0(I3[30]),
        .I1(I2[30]),
        .I2(s[1]),
        .I3(I1[30]),
        .I4(s[0]),
        .I5(I0[30]),
        .O(\o[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[30]_INST_0_i_2 
       (.I0(I2[30]),
        .I1(s[1]),
        .I2(I5[30]),
        .I3(s[0]),
        .I4(I4[30]),
        .O(\o[30]_INST_0_i_2_n_0 ));
  MUXF7 \o[31]_INST_0 
       (.I0(\o[31]_INST_0_i_1_n_0 ),
        .I1(\o[31]_INST_0_i_2_n_0 ),
        .O(o[31]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[31]_INST_0_i_1 
       (.I0(I3[31]),
        .I1(I2[31]),
        .I2(s[1]),
        .I3(I1[31]),
        .I4(s[0]),
        .I5(I0[31]),
        .O(\o[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[31]_INST_0_i_2 
       (.I0(I2[31]),
        .I1(s[1]),
        .I2(I5[31]),
        .I3(s[0]),
        .I4(I4[31]),
        .O(\o[31]_INST_0_i_2_n_0 ));
  MUXF7 \o[3]_INST_0 
       (.I0(\o[3]_INST_0_i_1_n_0 ),
        .I1(\o[3]_INST_0_i_2_n_0 ),
        .O(o[3]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[3]_INST_0_i_1 
       (.I0(I3[3]),
        .I1(I2[3]),
        .I2(s[1]),
        .I3(I1[3]),
        .I4(s[0]),
        .I5(I0[3]),
        .O(\o[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[3]_INST_0_i_2 
       (.I0(I2[3]),
        .I1(s[1]),
        .I2(I5[3]),
        .I3(s[0]),
        .I4(I4[3]),
        .O(\o[3]_INST_0_i_2_n_0 ));
  MUXF7 \o[4]_INST_0 
       (.I0(\o[4]_INST_0_i_1_n_0 ),
        .I1(\o[4]_INST_0_i_2_n_0 ),
        .O(o[4]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[4]_INST_0_i_1 
       (.I0(I3[4]),
        .I1(I2[4]),
        .I2(s[1]),
        .I3(I1[4]),
        .I4(s[0]),
        .I5(I0[4]),
        .O(\o[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[4]_INST_0_i_2 
       (.I0(I2[4]),
        .I1(s[1]),
        .I2(I5[4]),
        .I3(s[0]),
        .I4(I4[4]),
        .O(\o[4]_INST_0_i_2_n_0 ));
  MUXF7 \o[5]_INST_0 
       (.I0(\o[5]_INST_0_i_1_n_0 ),
        .I1(\o[5]_INST_0_i_2_n_0 ),
        .O(o[5]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[5]_INST_0_i_1 
       (.I0(I3[5]),
        .I1(I2[5]),
        .I2(s[1]),
        .I3(I1[5]),
        .I4(s[0]),
        .I5(I0[5]),
        .O(\o[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[5]_INST_0_i_2 
       (.I0(I2[5]),
        .I1(s[1]),
        .I2(I5[5]),
        .I3(s[0]),
        .I4(I4[5]),
        .O(\o[5]_INST_0_i_2_n_0 ));
  MUXF7 \o[6]_INST_0 
       (.I0(\o[6]_INST_0_i_1_n_0 ),
        .I1(\o[6]_INST_0_i_2_n_0 ),
        .O(o[6]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[6]_INST_0_i_1 
       (.I0(I3[6]),
        .I1(I2[6]),
        .I2(s[1]),
        .I3(I1[6]),
        .I4(s[0]),
        .I5(I0[6]),
        .O(\o[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[6]_INST_0_i_2 
       (.I0(I2[6]),
        .I1(s[1]),
        .I2(I5[6]),
        .I3(s[0]),
        .I4(I4[6]),
        .O(\o[6]_INST_0_i_2_n_0 ));
  MUXF7 \o[7]_INST_0 
       (.I0(\o[7]_INST_0_i_1_n_0 ),
        .I1(\o[7]_INST_0_i_2_n_0 ),
        .O(o[7]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[7]_INST_0_i_1 
       (.I0(I3[7]),
        .I1(I2[7]),
        .I2(s[1]),
        .I3(I1[7]),
        .I4(s[0]),
        .I5(I0[7]),
        .O(\o[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[7]_INST_0_i_2 
       (.I0(I2[7]),
        .I1(s[1]),
        .I2(I5[7]),
        .I3(s[0]),
        .I4(I4[7]),
        .O(\o[7]_INST_0_i_2_n_0 ));
  MUXF7 \o[8]_INST_0 
       (.I0(\o[8]_INST_0_i_1_n_0 ),
        .I1(\o[8]_INST_0_i_2_n_0 ),
        .O(o[8]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[8]_INST_0_i_1 
       (.I0(I3[8]),
        .I1(I2[8]),
        .I2(s[1]),
        .I3(I1[8]),
        .I4(s[0]),
        .I5(I0[8]),
        .O(\o[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[8]_INST_0_i_2 
       (.I0(I2[8]),
        .I1(s[1]),
        .I2(I5[8]),
        .I3(s[0]),
        .I4(I4[8]),
        .O(\o[8]_INST_0_i_2_n_0 ));
  MUXF7 \o[9]_INST_0 
       (.I0(\o[9]_INST_0_i_1_n_0 ),
        .I1(\o[9]_INST_0_i_2_n_0 ),
        .O(o[9]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[9]_INST_0_i_1 
       (.I0(I3[9]),
        .I1(I2[9]),
        .I2(s[1]),
        .I3(I1[9]),
        .I4(s[0]),
        .I5(I0[9]),
        .O(\o[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o[9]_INST_0_i_2 
       (.I0(I2[9]),
        .I1(s[1]),
        .I2(I5[9]),
        .I3(s[0]),
        .I4(I4[9]),
        .O(\o[9]_INST_0_i_2_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "mux8132_0,mux8132,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mux8132,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0
   (I0,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    s,
    o);
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  input [31:0]I4;
  input [31:0]I5;
  input [31:0]I6;
  input [31:0]I7;
  input [2:0]s;
  output [31:0]o;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]I4;
  wire [31:0]I5;
  wire [31:0]I7;
  wire [31:0]o;
  wire [2:0]s;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132 inst
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I7(I7[0]),
        .o(o),
        .s(s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32
   (res,
    A,
    B);
  output [31:0]res;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'h1)) 
    \res[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[10]_INST_0 
       (.I0(A[10]),
        .I1(B[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[11]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[12]_INST_0 
       (.I0(A[12]),
        .I1(B[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[13]_INST_0 
       (.I0(A[13]),
        .I1(B[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[14]_INST_0 
       (.I0(A[14]),
        .I1(B[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[15]_INST_0 
       (.I0(A[15]),
        .I1(B[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[16]_INST_0 
       (.I0(A[16]),
        .I1(B[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[17]_INST_0 
       (.I0(A[17]),
        .I1(B[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[18]_INST_0 
       (.I0(A[18]),
        .I1(B[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[19]_INST_0 
       (.I0(A[19]),
        .I1(B[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[1]_INST_0 
       (.I0(A[1]),
        .I1(B[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[20]_INST_0 
       (.I0(A[20]),
        .I1(B[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[21]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[22]_INST_0 
       (.I0(A[22]),
        .I1(B[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[23]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[24]_INST_0 
       (.I0(A[24]),
        .I1(B[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[25]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[26]_INST_0 
       (.I0(A[26]),
        .I1(B[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[27]_INST_0 
       (.I0(A[27]),
        .I1(B[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[28]_INST_0 
       (.I0(A[28]),
        .I1(B[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[29]_INST_0 
       (.I0(A[29]),
        .I1(B[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[2]_INST_0 
       (.I0(A[2]),
        .I1(B[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[30]_INST_0 
       (.I0(A[30]),
        .I1(B[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[31]_INST_0 
       (.I0(A[31]),
        .I1(B[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[3]_INST_0 
       (.I0(A[3]),
        .I1(B[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[4]_INST_0 
       (.I0(A[4]),
        .I1(B[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[5]_INST_0 
       (.I0(A[5]),
        .I1(B[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[6]_INST_0 
       (.I0(A[6]),
        .I1(B[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[7]_INST_0 
       (.I0(A[7]),
        .I1(B[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[8]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[9]_INST_0 
       (.I0(A[9]),
        .I1(B[9]),
        .O(res[9]));
endmodule

(* CHECK_LICENSE_TYPE = "nor32_0,nor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "nor32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32 inst
       (.A(A),
        .B(B),
        .res(res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32
   (res,
    A,
    B);
  output [31:0]res;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'hE)) 
    \res[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[10]_INST_0 
       (.I0(A[10]),
        .I1(B[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[11]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[12]_INST_0 
       (.I0(A[12]),
        .I1(B[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[13]_INST_0 
       (.I0(A[13]),
        .I1(B[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[14]_INST_0 
       (.I0(A[14]),
        .I1(B[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[15]_INST_0 
       (.I0(A[15]),
        .I1(B[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[16]_INST_0 
       (.I0(A[16]),
        .I1(B[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[17]_INST_0 
       (.I0(A[17]),
        .I1(B[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[18]_INST_0 
       (.I0(A[18]),
        .I1(B[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[19]_INST_0 
       (.I0(A[19]),
        .I1(B[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[1]_INST_0 
       (.I0(A[1]),
        .I1(B[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[20]_INST_0 
       (.I0(A[20]),
        .I1(B[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[21]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[22]_INST_0 
       (.I0(A[22]),
        .I1(B[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[23]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[24]_INST_0 
       (.I0(A[24]),
        .I1(B[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[25]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[26]_INST_0 
       (.I0(A[26]),
        .I1(B[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[27]_INST_0 
       (.I0(A[27]),
        .I1(B[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[28]_INST_0 
       (.I0(A[28]),
        .I1(B[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[29]_INST_0 
       (.I0(A[29]),
        .I1(B[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[2]_INST_0 
       (.I0(A[2]),
        .I1(B[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[30]_INST_0 
       (.I0(A[30]),
        .I1(B[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[31]_INST_0 
       (.I0(A[31]),
        .I1(B[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[3]_INST_0 
       (.I0(A[3]),
        .I1(B[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[4]_INST_0 
       (.I0(A[4]),
        .I1(B[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[5]_INST_0 
       (.I0(A[5]),
        .I1(B[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[6]_INST_0 
       (.I0(A[6]),
        .I1(B[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[7]_INST_0 
       (.I0(A[7]),
        .I1(B[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[8]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[9]_INST_0 
       (.I0(A[9]),
        .I1(B[9]),
        .O(res[9]));
endmodule

(* CHECK_LICENSE_TYPE = "or32_0,or32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "or32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32 inst
       (.A(A),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "orl_0,orl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "orl,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0
   (A,
    S);
  input [31:0]A;
  output S;

  wire [31:0]A;
  wire S;
  wire S_INST_0_i_1_n_0;
  wire S_INST_0_i_2_n_0;
  wire S_INST_0_i_3_n_0;
  wire S_INST_0_i_4_n_0;
  wire S_INST_0_i_5_n_0;
  wire S_INST_0_i_6_n_0;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    S_INST_0
       (.I0(S_INST_0_i_1_n_0),
        .I1(S_INST_0_i_2_n_0),
        .I2(S_INST_0_i_3_n_0),
        .I3(S_INST_0_i_4_n_0),
        .I4(S_INST_0_i_5_n_0),
        .I5(S_INST_0_i_6_n_0),
        .O(S));
  LUT2 #(
    .INIT(4'h1)) 
    S_INST_0_i_1
       (.I0(A[0]),
        .I1(A[1]),
        .O(S_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    S_INST_0_i_2
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[2]),
        .I3(A[3]),
        .I4(A[7]),
        .I5(A[6]),
        .O(S_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    S_INST_0_i_3
       (.I0(A[10]),
        .I1(A[11]),
        .I2(A[8]),
        .I3(A[9]),
        .I4(A[13]),
        .I5(A[12]),
        .O(S_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    S_INST_0_i_4
       (.I0(A[16]),
        .I1(A[17]),
        .I2(A[14]),
        .I3(A[15]),
        .I4(A[19]),
        .I5(A[18]),
        .O(S_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    S_INST_0_i_5
       (.I0(A[22]),
        .I1(A[23]),
        .I2(A[20]),
        .I3(A[21]),
        .I4(A[25]),
        .I5(A[24]),
        .O(S_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    S_INST_0_i_6
       (.I0(A[28]),
        .I1(A[29]),
        .I2(A[26]),
        .I3(A[27]),
        .I4(A[31]),
        .I5(A[30]),
        .O(S_INST_0_i_6_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl
   (res,
    B,
    A);
  output [30:0]res;
  input [4:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire [4:0]B;
  wire [30:0]res;
  wire \res[0]_INST_0_i_1_n_0 ;
  wire \res[0]_INST_0_i_2_n_0 ;
  wire \res[0]_INST_0_i_3_n_0 ;
  wire \res[10]_INST_0_i_1_n_0 ;
  wire \res[10]_INST_0_i_2_n_0 ;
  wire \res[11]_INST_0_i_1_n_0 ;
  wire \res[11]_INST_0_i_2_n_0 ;
  wire \res[12]_INST_0_i_1_n_0 ;
  wire \res[12]_INST_0_i_2_n_0 ;
  wire \res[13]_INST_0_i_1_n_0 ;
  wire \res[13]_INST_0_i_2_n_0 ;
  wire \res[14]_INST_0_i_1_n_0 ;
  wire \res[14]_INST_0_i_2_n_0 ;
  wire \res[15]_INST_0_i_1_n_0 ;
  wire \res[15]_INST_0_i_2_n_0 ;
  wire \res[16]_INST_0_i_1_n_0 ;
  wire \res[16]_INST_0_i_2_n_0 ;
  wire \res[16]_INST_0_i_3_n_0 ;
  wire \res[17]_INST_0_i_1_n_0 ;
  wire \res[17]_INST_0_i_2_n_0 ;
  wire \res[17]_INST_0_i_3_n_0 ;
  wire \res[18]_INST_0_i_1_n_0 ;
  wire \res[18]_INST_0_i_2_n_0 ;
  wire \res[18]_INST_0_i_3_n_0 ;
  wire \res[19]_INST_0_i_1_n_0 ;
  wire \res[19]_INST_0_i_2_n_0 ;
  wire \res[19]_INST_0_i_3_n_0 ;
  wire \res[1]_INST_0_i_1_n_0 ;
  wire \res[1]_INST_0_i_2_n_0 ;
  wire \res[20]_INST_0_i_1_n_0 ;
  wire \res[21]_INST_0_i_1_n_0 ;
  wire \res[22]_INST_0_i_1_n_0 ;
  wire \res[23]_INST_0_i_1_n_0 ;
  wire \res[24]_INST_0_i_1_n_0 ;
  wire \res[24]_INST_0_i_2_n_0 ;
  wire \res[25]_INST_0_i_1_n_0 ;
  wire \res[25]_INST_0_i_2_n_0 ;
  wire \res[26]_INST_0_i_1_n_0 ;
  wire \res[27]_INST_0_i_1_n_0 ;
  wire \res[28]_INST_0_i_1_n_0 ;
  wire \res[29]_INST_0_i_1_n_0 ;
  wire \res[2]_INST_0_i_1_n_0 ;
  wire \res[2]_INST_0_i_2_n_0 ;
  wire \res[30]_INST_0_i_1_n_0 ;
  wire \res[30]_INST_0_i_2_n_0 ;
  wire \res[3]_INST_0_i_1_n_0 ;
  wire \res[3]_INST_0_i_2_n_0 ;
  wire \res[4]_INST_0_i_1_n_0 ;
  wire \res[4]_INST_0_i_2_n_0 ;
  wire \res[5]_INST_0_i_1_n_0 ;
  wire \res[5]_INST_0_i_2_n_0 ;
  wire \res[6]_INST_0_i_1_n_0 ;
  wire \res[6]_INST_0_i_2_n_0 ;
  wire \res[7]_INST_0_i_1_n_0 ;
  wire \res[7]_INST_0_i_2_n_0 ;
  wire \res[8]_INST_0_i_1_n_0 ;
  wire \res[8]_INST_0_i_2_n_0 ;
  wire \res[9]_INST_0_i_1_n_0 ;
  wire \res[9]_INST_0_i_2_n_0 ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \res[0]_INST_0 
       (.I0(\res[1]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[0]_INST_0_i_1_n_0 ),
        .I3(B[1]),
        .I4(\res[0]_INST_0_i_2_n_0 ),
        .O(res[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[0]_INST_0_i_1 
       (.I0(\res[6]_INST_0_i_2_n_0 ),
        .I1(B[2]),
        .I2(\res[2]_INST_0_i_2_n_0 ),
        .O(\res[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[0]_INST_0_i_2 
       (.I0(\res[4]_INST_0_i_2_n_0 ),
        .I1(B[2]),
        .I2(\res[0]_INST_0_i_3_n_0 ),
        .O(\res[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[0]_INST_0_i_3 
       (.I0(A[24]),
        .I1(A[8]),
        .I2(B[3]),
        .I3(A[16]),
        .I4(B[4]),
        .I5(A[0]),
        .O(\res[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[10]_INST_0 
       (.I0(\res[11]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[10]_INST_0_i_1_n_0 ),
        .O(res[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[10]_INST_0_i_1 
       (.I0(\res[16]_INST_0_i_3_n_0 ),
        .I1(\res[12]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[14]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[10]_INST_0_i_2_n_0 ),
        .O(\res[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[10]_INST_0_i_2 
       (.I0(A[18]),
        .I1(B[3]),
        .I2(A[26]),
        .I3(B[4]),
        .I4(A[10]),
        .O(\res[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[11]_INST_0 
       (.I0(\res[12]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[11]_INST_0_i_1_n_0 ),
        .O(res[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[11]_INST_0_i_1 
       (.I0(\res[17]_INST_0_i_3_n_0 ),
        .I1(\res[13]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[15]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[11]_INST_0_i_2_n_0 ),
        .O(\res[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[11]_INST_0_i_2 
       (.I0(A[19]),
        .I1(B[3]),
        .I2(A[27]),
        .I3(B[4]),
        .I4(A[11]),
        .O(\res[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[12]_INST_0 
       (.I0(\res[13]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[12]_INST_0_i_1_n_0 ),
        .O(res[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[12]_INST_0_i_1 
       (.I0(\res[18]_INST_0_i_3_n_0 ),
        .I1(\res[14]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[16]_INST_0_i_3_n_0 ),
        .I4(B[2]),
        .I5(\res[12]_INST_0_i_2_n_0 ),
        .O(\res[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[12]_INST_0_i_2 
       (.I0(A[20]),
        .I1(B[3]),
        .I2(A[28]),
        .I3(B[4]),
        .I4(A[12]),
        .O(\res[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[13]_INST_0 
       (.I0(\res[14]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[13]_INST_0_i_1_n_0 ),
        .O(res[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[13]_INST_0_i_1 
       (.I0(\res[19]_INST_0_i_3_n_0 ),
        .I1(\res[15]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[17]_INST_0_i_3_n_0 ),
        .I4(B[2]),
        .I5(\res[13]_INST_0_i_2_n_0 ),
        .O(\res[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[13]_INST_0_i_2 
       (.I0(A[21]),
        .I1(B[3]),
        .I2(A[29]),
        .I3(B[4]),
        .I4(A[13]),
        .O(\res[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[14]_INST_0 
       (.I0(\res[15]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[14]_INST_0_i_1_n_0 ),
        .O(res[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[14]_INST_0_i_1 
       (.I0(\res[16]_INST_0_i_2_n_0 ),
        .I1(\res[16]_INST_0_i_3_n_0 ),
        .I2(B[1]),
        .I3(\res[18]_INST_0_i_3_n_0 ),
        .I4(B[2]),
        .I5(\res[14]_INST_0_i_2_n_0 ),
        .O(\res[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[14]_INST_0_i_2 
       (.I0(A[22]),
        .I1(B[3]),
        .I2(A[30]),
        .I3(B[4]),
        .I4(A[14]),
        .O(\res[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[15]_INST_0 
       (.I0(\res[16]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[15]_INST_0_i_1_n_0 ),
        .O(res[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[15]_INST_0_i_1 
       (.I0(\res[17]_INST_0_i_2_n_0 ),
        .I1(\res[17]_INST_0_i_3_n_0 ),
        .I2(B[1]),
        .I3(\res[19]_INST_0_i_3_n_0 ),
        .I4(B[2]),
        .I5(\res[15]_INST_0_i_2_n_0 ),
        .O(\res[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[15]_INST_0_i_2 
       (.I0(A[23]),
        .I1(B[3]),
        .I2(A[31]),
        .I3(B[4]),
        .I4(A[15]),
        .O(\res[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[16]_INST_0 
       (.I0(\res[17]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[16]_INST_0_i_1_n_0 ),
        .O(res[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[16]_INST_0_i_1 
       (.I0(\res[18]_INST_0_i_2_n_0 ),
        .I1(\res[18]_INST_0_i_3_n_0 ),
        .I2(B[1]),
        .I3(\res[16]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[16]_INST_0_i_3_n_0 ),
        .O(\res[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[16]_INST_0_i_2 
       (.I0(A[28]),
        .I1(B[3]),
        .I2(A[20]),
        .I3(B[4]),
        .O(\res[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[16]_INST_0_i_3 
       (.I0(A[24]),
        .I1(B[3]),
        .I2(A[16]),
        .I3(B[4]),
        .O(\res[16]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[17]_INST_0 
       (.I0(\res[18]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[17]_INST_0_i_1_n_0 ),
        .O(res[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[17]_INST_0_i_1 
       (.I0(\res[19]_INST_0_i_2_n_0 ),
        .I1(\res[19]_INST_0_i_3_n_0 ),
        .I2(B[1]),
        .I3(\res[17]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[17]_INST_0_i_3_n_0 ),
        .O(\res[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[17]_INST_0_i_2 
       (.I0(A[29]),
        .I1(B[3]),
        .I2(A[21]),
        .I3(B[4]),
        .O(\res[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[17]_INST_0_i_3 
       (.I0(A[25]),
        .I1(B[3]),
        .I2(A[17]),
        .I3(B[4]),
        .O(\res[17]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[18]_INST_0 
       (.I0(\res[19]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[18]_INST_0_i_1_n_0 ),
        .O(res[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \res[18]_INST_0_i_1 
       (.I0(\res[20]_INST_0_i_1_n_0 ),
        .I1(B[1]),
        .I2(\res[18]_INST_0_i_2_n_0 ),
        .I3(B[2]),
        .I4(\res[18]_INST_0_i_3_n_0 ),
        .O(\res[18]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[18]_INST_0_i_2 
       (.I0(A[30]),
        .I1(B[3]),
        .I2(A[22]),
        .I3(B[4]),
        .O(\res[18]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[18]_INST_0_i_3 
       (.I0(A[26]),
        .I1(B[3]),
        .I2(A[18]),
        .I3(B[4]),
        .O(\res[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \res[19]_INST_0 
       (.I0(\res[22]_INST_0_i_1_n_0 ),
        .I1(B[1]),
        .I2(\res[20]_INST_0_i_1_n_0 ),
        .I3(B[0]),
        .I4(\res[19]_INST_0_i_1_n_0 ),
        .O(res[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \res[19]_INST_0_i_1 
       (.I0(\res[21]_INST_0_i_1_n_0 ),
        .I1(B[1]),
        .I2(\res[19]_INST_0_i_2_n_0 ),
        .I3(B[2]),
        .I4(\res[19]_INST_0_i_3_n_0 ),
        .O(\res[19]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[19]_INST_0_i_2 
       (.I0(A[31]),
        .I1(B[3]),
        .I2(A[23]),
        .I3(B[4]),
        .O(\res[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res[19]_INST_0_i_3 
       (.I0(A[27]),
        .I1(B[3]),
        .I2(A[19]),
        .I3(B[4]),
        .O(\res[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[1]_INST_0 
       (.I0(\res[2]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[1]_INST_0_i_1_n_0 ),
        .O(res[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[1]_INST_0_i_1 
       (.I0(\res[7]_INST_0_i_2_n_0 ),
        .I1(\res[3]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[5]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[1]_INST_0_i_2_n_0 ),
        .O(\res[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[1]_INST_0_i_2 
       (.I0(A[25]),
        .I1(A[9]),
        .I2(B[3]),
        .I3(A[17]),
        .I4(B[4]),
        .I5(A[1]),
        .O(\res[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[20]_INST_0 
       (.I0(\res[23]_INST_0_i_1_n_0 ),
        .I1(\res[21]_INST_0_i_1_n_0 ),
        .I2(B[0]),
        .I3(\res[22]_INST_0_i_1_n_0 ),
        .I4(B[1]),
        .I5(\res[20]_INST_0_i_1_n_0 ),
        .O(res[20]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res[20]_INST_0_i_1 
       (.I0(A[24]),
        .I1(B[2]),
        .I2(A[28]),
        .I3(B[3]),
        .I4(A[20]),
        .I5(B[4]),
        .O(\res[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[21]_INST_0 
       (.I0(\res[24]_INST_0_i_2_n_0 ),
        .I1(\res[22]_INST_0_i_1_n_0 ),
        .I2(B[0]),
        .I3(\res[23]_INST_0_i_1_n_0 ),
        .I4(B[1]),
        .I5(\res[21]_INST_0_i_1_n_0 ),
        .O(res[21]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res[21]_INST_0_i_1 
       (.I0(A[25]),
        .I1(B[2]),
        .I2(A[29]),
        .I3(B[3]),
        .I4(A[21]),
        .I5(B[4]),
        .O(\res[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[22]_INST_0 
       (.I0(\res[25]_INST_0_i_2_n_0 ),
        .I1(\res[23]_INST_0_i_1_n_0 ),
        .I2(B[0]),
        .I3(\res[24]_INST_0_i_2_n_0 ),
        .I4(B[1]),
        .I5(\res[22]_INST_0_i_1_n_0 ),
        .O(res[22]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res[22]_INST_0_i_1 
       (.I0(A[26]),
        .I1(B[2]),
        .I2(A[30]),
        .I3(B[3]),
        .I4(A[22]),
        .I5(B[4]),
        .O(\res[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[23]_INST_0 
       (.I0(\res[24]_INST_0_i_1_n_0 ),
        .I1(\res[24]_INST_0_i_2_n_0 ),
        .I2(B[0]),
        .I3(\res[25]_INST_0_i_2_n_0 ),
        .I4(B[1]),
        .I5(\res[23]_INST_0_i_1_n_0 ),
        .O(res[23]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res[23]_INST_0_i_1 
       (.I0(A[27]),
        .I1(B[2]),
        .I2(A[31]),
        .I3(B[3]),
        .I4(A[23]),
        .I5(B[4]),
        .O(\res[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[24]_INST_0 
       (.I0(\res[25]_INST_0_i_1_n_0 ),
        .I1(\res[25]_INST_0_i_2_n_0 ),
        .I2(B[0]),
        .I3(\res[24]_INST_0_i_1_n_0 ),
        .I4(B[1]),
        .I5(\res[24]_INST_0_i_2_n_0 ),
        .O(res[24]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res[24]_INST_0_i_1 
       (.I0(A[30]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[26]),
        .I4(B[3]),
        .O(\res[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res[24]_INST_0_i_2 
       (.I0(A[28]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[24]),
        .I4(B[3]),
        .O(\res[24]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \res[25]_INST_0 
       (.I0(\res[25]_INST_0_i_1_n_0 ),
        .I1(B[1]),
        .I2(\res[25]_INST_0_i_2_n_0 ),
        .I3(\res[26]_INST_0_i_1_n_0 ),
        .I4(B[0]),
        .O(res[25]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res[25]_INST_0_i_1 
       (.I0(A[31]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[27]),
        .I4(B[3]),
        .O(\res[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res[25]_INST_0_i_2 
       (.I0(A[29]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[25]),
        .I4(B[3]),
        .O(\res[25]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[26]_INST_0 
       (.I0(\res[27]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[26]_INST_0_i_1_n_0 ),
        .O(res[26]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \res[26]_INST_0_i_1 
       (.I0(B[3]),
        .I1(A[28]),
        .I2(B[4]),
        .I3(B[2]),
        .I4(B[1]),
        .I5(\res[24]_INST_0_i_1_n_0 ),
        .O(\res[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[27]_INST_0 
       (.I0(\res[28]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[27]_INST_0_i_1_n_0 ),
        .O(res[27]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \res[27]_INST_0_i_1 
       (.I0(B[3]),
        .I1(A[29]),
        .I2(B[4]),
        .I3(B[2]),
        .I4(B[1]),
        .I5(\res[25]_INST_0_i_1_n_0 ),
        .O(\res[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[28]_INST_0 
       (.I0(\res[29]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[28]_INST_0_i_1_n_0 ),
        .O(res[28]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \res[28]_INST_0_i_1 
       (.I0(A[30]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[28]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\res[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[29]_INST_0 
       (.I0(\res[30]_INST_0_i_2_n_0 ),
        .I1(B[0]),
        .I2(\res[29]_INST_0_i_1_n_0 ),
        .O(res[29]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \res[29]_INST_0_i_1 
       (.I0(A[31]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[29]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\res[29]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[2]_INST_0 
       (.I0(\res[3]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[2]_INST_0_i_1_n_0 ),
        .O(res[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[2]_INST_0_i_1 
       (.I0(\res[8]_INST_0_i_2_n_0 ),
        .I1(\res[4]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[6]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[2]_INST_0_i_2_n_0 ),
        .O(\res[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[2]_INST_0_i_2 
       (.I0(A[26]),
        .I1(A[10]),
        .I2(B[3]),
        .I3(A[18]),
        .I4(B[4]),
        .I5(A[2]),
        .O(\res[2]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \res[30]_INST_0 
       (.I0(\res[30]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[30]_INST_0_i_2_n_0 ),
        .O(res[30]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \res[30]_INST_0_i_1 
       (.I0(B[2]),
        .I1(B[4]),
        .I2(A[31]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\res[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \res[30]_INST_0_i_2 
       (.I0(B[2]),
        .I1(B[4]),
        .I2(A[30]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\res[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[3]_INST_0 
       (.I0(\res[4]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[3]_INST_0_i_1_n_0 ),
        .O(res[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[3]_INST_0_i_1 
       (.I0(\res[9]_INST_0_i_2_n_0 ),
        .I1(\res[5]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[7]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[3]_INST_0_i_2_n_0 ),
        .O(\res[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[3]_INST_0_i_2 
       (.I0(A[27]),
        .I1(A[11]),
        .I2(B[3]),
        .I3(A[19]),
        .I4(B[4]),
        .I5(A[3]),
        .O(\res[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[4]_INST_0 
       (.I0(\res[5]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[4]_INST_0_i_1_n_0 ),
        .O(res[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[4]_INST_0_i_1 
       (.I0(\res[10]_INST_0_i_2_n_0 ),
        .I1(\res[6]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[8]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[4]_INST_0_i_2_n_0 ),
        .O(\res[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[4]_INST_0_i_2 
       (.I0(A[28]),
        .I1(A[12]),
        .I2(B[3]),
        .I3(A[20]),
        .I4(B[4]),
        .I5(A[4]),
        .O(\res[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[5]_INST_0 
       (.I0(\res[6]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[5]_INST_0_i_1_n_0 ),
        .O(res[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[5]_INST_0_i_1 
       (.I0(\res[11]_INST_0_i_2_n_0 ),
        .I1(\res[7]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[9]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[5]_INST_0_i_2_n_0 ),
        .O(\res[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[5]_INST_0_i_2 
       (.I0(A[29]),
        .I1(A[13]),
        .I2(B[3]),
        .I3(A[21]),
        .I4(B[4]),
        .I5(A[5]),
        .O(\res[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[6]_INST_0 
       (.I0(\res[7]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[6]_INST_0_i_1_n_0 ),
        .O(res[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[6]_INST_0_i_1 
       (.I0(\res[12]_INST_0_i_2_n_0 ),
        .I1(\res[8]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[10]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[6]_INST_0_i_2_n_0 ),
        .O(\res[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[6]_INST_0_i_2 
       (.I0(A[30]),
        .I1(A[14]),
        .I2(B[3]),
        .I3(A[22]),
        .I4(B[4]),
        .I5(A[6]),
        .O(\res[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[7]_INST_0 
       (.I0(\res[8]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[7]_INST_0_i_1_n_0 ),
        .O(res[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[7]_INST_0_i_1 
       (.I0(\res[13]_INST_0_i_2_n_0 ),
        .I1(\res[9]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[11]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[7]_INST_0_i_2_n_0 ),
        .O(\res[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[7]_INST_0_i_2 
       (.I0(A[31]),
        .I1(A[15]),
        .I2(B[3]),
        .I3(A[23]),
        .I4(B[4]),
        .I5(A[7]),
        .O(\res[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[8]_INST_0 
       (.I0(\res[9]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[8]_INST_0_i_1_n_0 ),
        .O(res[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[8]_INST_0_i_1 
       (.I0(\res[14]_INST_0_i_2_n_0 ),
        .I1(\res[10]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[12]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[8]_INST_0_i_2_n_0 ),
        .O(\res[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[8]_INST_0_i_2 
       (.I0(A[16]),
        .I1(B[3]),
        .I2(A[24]),
        .I3(B[4]),
        .I4(A[8]),
        .O(\res[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res[9]_INST_0 
       (.I0(\res[10]_INST_0_i_1_n_0 ),
        .I1(B[0]),
        .I2(\res[9]_INST_0_i_1_n_0 ),
        .O(res[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res[9]_INST_0_i_1 
       (.I0(\res[15]_INST_0_i_2_n_0 ),
        .I1(\res[11]_INST_0_i_2_n_0 ),
        .I2(B[1]),
        .I3(\res[13]_INST_0_i_2_n_0 ),
        .I4(B[2]),
        .I5(\res[9]_INST_0_i_2_n_0 ),
        .O(\res[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res[9]_INST_0_i_2 
       (.I0(A[17]),
        .I1(B[3]),
        .I2(A[25]),
        .I3(B[4]),
        .I4(A[9]),
        .O(\res[9]_INST_0_i_2_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "srl_0,srl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "srl,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl inst
       (.A(A),
        .B(B[4:0]),
        .res(res[30:0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \res[31]_INST_0 
       (.I0(B[1]),
        .I1(B[3]),
        .I2(A[31]),
        .I3(B[4]),
        .I4(B[2]),
        .I5(B[0]),
        .O(res[31]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32
   (res,
    B,
    A);
  output [31:0]res;
  input [31:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'h6)) 
    \res[0]_INST_0 
       (.I0(B[0]),
        .I1(A[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[10]_INST_0 
       (.I0(B[10]),
        .I1(A[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[11]_INST_0 
       (.I0(B[11]),
        .I1(A[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[12]_INST_0 
       (.I0(B[12]),
        .I1(A[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[13]_INST_0 
       (.I0(B[13]),
        .I1(A[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[14]_INST_0 
       (.I0(B[14]),
        .I1(A[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[15]_INST_0 
       (.I0(B[15]),
        .I1(A[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[16]_INST_0 
       (.I0(B[16]),
        .I1(A[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[17]_INST_0 
       (.I0(B[17]),
        .I1(A[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[18]_INST_0 
       (.I0(B[18]),
        .I1(A[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[19]_INST_0 
       (.I0(B[19]),
        .I1(A[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[1]_INST_0 
       (.I0(B[1]),
        .I1(A[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[20]_INST_0 
       (.I0(B[20]),
        .I1(A[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[21]_INST_0 
       (.I0(B[21]),
        .I1(A[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[22]_INST_0 
       (.I0(B[22]),
        .I1(A[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_INST_0 
       (.I0(B[23]),
        .I1(A[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[24]_INST_0 
       (.I0(B[24]),
        .I1(A[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[25]_INST_0 
       (.I0(B[25]),
        .I1(A[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[26]_INST_0 
       (.I0(B[26]),
        .I1(A[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[27]_INST_0 
       (.I0(B[27]),
        .I1(A[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[28]_INST_0 
       (.I0(B[28]),
        .I1(A[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[29]_INST_0 
       (.I0(B[29]),
        .I1(A[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[2]_INST_0 
       (.I0(B[2]),
        .I1(A[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[30]_INST_0 
       (.I0(B[30]),
        .I1(A[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_INST_0 
       (.I0(B[31]),
        .I1(A[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[3]_INST_0 
       (.I0(B[3]),
        .I1(A[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[4]_INST_0 
       (.I0(B[4]),
        .I1(A[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[5]_INST_0 
       (.I0(B[5]),
        .I1(A[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[6]_INST_0 
       (.I0(B[6]),
        .I1(A[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[7]_INST_0 
       (.I0(B[7]),
        .I1(A[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[8]_INST_0 
       (.I0(B[8]),
        .I1(A[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[9]_INST_0 
       (.I0(B[9]),
        .I1(A[9]),
        .O(res[9]));
endmodule

(* CHECK_LICENSE_TYPE = "xor32_0,xor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 inst
       (.A(A),
        .B(B),
        .res(res));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
