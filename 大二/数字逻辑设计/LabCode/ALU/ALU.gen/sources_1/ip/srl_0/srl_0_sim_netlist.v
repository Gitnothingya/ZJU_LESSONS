// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 15 11:49:19 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top srl_0 -prefix
//               srl_0_ srl_0_sim_netlist.v
// Design      : srl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module srl_0_srl
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
(* NotValidForBitStream *)
module srl_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  srl_0_srl inst
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
