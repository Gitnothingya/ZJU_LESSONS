// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:44:12 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/Multi_8CH32_0/Multi_8CH32_0_sim_netlist.v
// Design      : Multi_8CH32_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Multi_8CH32_0,Multi_8CH32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "Multi_8CH32,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Multi_8CH32_0
   (EN,
    clk,
    rst,
    Data0,
    Disp_num,
    LES,
    LE_out,
    Test,
    data1,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    point_in,
    point_out);
  input EN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]Data0;
  output [31:0]Disp_num;
  input [63:0]LES;
  output [7:0]LE_out;
  input [2:0]Test;
  input [31:0]data1;
  input [31:0]data2;
  input [31:0]data3;
  input [31:0]data4;
  input [31:0]data5;
  input [31:0]data6;
  input [31:0]data7;
  input [63:0]point_in;
  output [7:0]point_out;

  wire [31:0]Data0;
  wire [31:0]Disp_num;
  wire EN;
  wire [63:0]LES;
  wire [7:0]LE_out;
  wire [2:0]Test;
  wire clk;
  wire [31:0]data1;
  wire [31:0]data2;
  wire [31:0]data3;
  wire [31:0]data4;
  wire [31:0]data5;
  wire [31:0]data6;
  wire [31:0]data7;
  wire [63:0]point_in;
  wire [7:0]point_out;
  wire rst;

  (* black_box = "1" *) 
  Multi_8CH32_0_Multi_8CH32 inst
       (.Data0(Data0),
        .Disp_num(Disp_num),
        .EN(EN),
        .LES(LES),
        .LE_out(LE_out),
        .Test(Test),
        .clk(clk),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .point_in(point_in),
        .point_out(point_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Multi_8CH32" *) 
module Multi_8CH32_0_Multi_8CH32
   (EN,
    clk,
    rst,
    Data0,
    Disp_num,
    LES,
    LE_out,
    Test,
    data1,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    point_in,
    point_out);
  input EN;
  input clk;
  input rst;
  input [31:0]Data0;
  output [31:0]Disp_num;
  input [63:0]LES;
  output [7:0]LE_out;
  input [2:0]Test;
  input [31:0]data1;
  input [31:0]data2;
  input [31:0]data3;
  input [31:0]data4;
  input [31:0]data5;
  input [31:0]data6;
  input [31:0]data7;
  input [63:0]point_in;
  output [7:0]point_out;

  wire [31:0]Data0;
  wire [31:0]Disp_num;
  wire \Disp_num[0]_INST_0_i_1_n_0 ;
  wire \Disp_num[0]_INST_0_i_2_n_0 ;
  wire \Disp_num[10]_INST_0_i_1_n_0 ;
  wire \Disp_num[10]_INST_0_i_2_n_0 ;
  wire \Disp_num[11]_INST_0_i_1_n_0 ;
  wire \Disp_num[11]_INST_0_i_2_n_0 ;
  wire \Disp_num[12]_INST_0_i_1_n_0 ;
  wire \Disp_num[12]_INST_0_i_2_n_0 ;
  wire \Disp_num[13]_INST_0_i_1_n_0 ;
  wire \Disp_num[13]_INST_0_i_2_n_0 ;
  wire \Disp_num[14]_INST_0_i_1_n_0 ;
  wire \Disp_num[14]_INST_0_i_2_n_0 ;
  wire \Disp_num[15]_INST_0_i_1_n_0 ;
  wire \Disp_num[15]_INST_0_i_2_n_0 ;
  wire \Disp_num[16]_INST_0_i_1_n_0 ;
  wire \Disp_num[16]_INST_0_i_2_n_0 ;
  wire \Disp_num[17]_INST_0_i_1_n_0 ;
  wire \Disp_num[17]_INST_0_i_2_n_0 ;
  wire \Disp_num[18]_INST_0_i_1_n_0 ;
  wire \Disp_num[18]_INST_0_i_2_n_0 ;
  wire \Disp_num[19]_INST_0_i_1_n_0 ;
  wire \Disp_num[19]_INST_0_i_2_n_0 ;
  wire \Disp_num[1]_INST_0_i_1_n_0 ;
  wire \Disp_num[1]_INST_0_i_2_n_0 ;
  wire \Disp_num[20]_INST_0_i_1_n_0 ;
  wire \Disp_num[20]_INST_0_i_2_n_0 ;
  wire \Disp_num[21]_INST_0_i_1_n_0 ;
  wire \Disp_num[21]_INST_0_i_2_n_0 ;
  wire \Disp_num[22]_INST_0_i_1_n_0 ;
  wire \Disp_num[22]_INST_0_i_2_n_0 ;
  wire \Disp_num[23]_INST_0_i_1_n_0 ;
  wire \Disp_num[23]_INST_0_i_2_n_0 ;
  wire \Disp_num[24]_INST_0_i_1_n_0 ;
  wire \Disp_num[24]_INST_0_i_2_n_0 ;
  wire \Disp_num[25]_INST_0_i_1_n_0 ;
  wire \Disp_num[25]_INST_0_i_2_n_0 ;
  wire \Disp_num[26]_INST_0_i_1_n_0 ;
  wire \Disp_num[26]_INST_0_i_2_n_0 ;
  wire \Disp_num[27]_INST_0_i_1_n_0 ;
  wire \Disp_num[27]_INST_0_i_2_n_0 ;
  wire \Disp_num[28]_INST_0_i_1_n_0 ;
  wire \Disp_num[28]_INST_0_i_2_n_0 ;
  wire \Disp_num[29]_INST_0_i_1_n_0 ;
  wire \Disp_num[29]_INST_0_i_2_n_0 ;
  wire \Disp_num[2]_INST_0_i_1_n_0 ;
  wire \Disp_num[2]_INST_0_i_2_n_0 ;
  wire \Disp_num[30]_INST_0_i_1_n_0 ;
  wire \Disp_num[30]_INST_0_i_2_n_0 ;
  wire \Disp_num[31]_INST_0_i_1_n_0 ;
  wire \Disp_num[31]_INST_0_i_2_n_0 ;
  wire \Disp_num[3]_INST_0_i_1_n_0 ;
  wire \Disp_num[3]_INST_0_i_2_n_0 ;
  wire \Disp_num[4]_INST_0_i_1_n_0 ;
  wire \Disp_num[4]_INST_0_i_2_n_0 ;
  wire \Disp_num[5]_INST_0_i_1_n_0 ;
  wire \Disp_num[5]_INST_0_i_2_n_0 ;
  wire \Disp_num[6]_INST_0_i_1_n_0 ;
  wire \Disp_num[6]_INST_0_i_2_n_0 ;
  wire \Disp_num[7]_INST_0_i_1_n_0 ;
  wire \Disp_num[7]_INST_0_i_2_n_0 ;
  wire \Disp_num[8]_INST_0_i_1_n_0 ;
  wire \Disp_num[8]_INST_0_i_2_n_0 ;
  wire \Disp_num[9]_INST_0_i_1_n_0 ;
  wire \Disp_num[9]_INST_0_i_2_n_0 ;
  wire EN;
  wire [63:0]LES;
  wire [7:0]LE_out;
  wire \LE_out[0]_INST_0_i_1_n_0 ;
  wire \LE_out[0]_INST_0_i_2_n_0 ;
  wire \LE_out[1]_INST_0_i_1_n_0 ;
  wire \LE_out[1]_INST_0_i_2_n_0 ;
  wire \LE_out[2]_INST_0_i_1_n_0 ;
  wire \LE_out[2]_INST_0_i_2_n_0 ;
  wire \LE_out[3]_INST_0_i_1_n_0 ;
  wire \LE_out[3]_INST_0_i_2_n_0 ;
  wire \LE_out[4]_INST_0_i_1_n_0 ;
  wire \LE_out[4]_INST_0_i_2_n_0 ;
  wire \LE_out[5]_INST_0_i_1_n_0 ;
  wire \LE_out[5]_INST_0_i_2_n_0 ;
  wire \LE_out[6]_INST_0_i_1_n_0 ;
  wire \LE_out[6]_INST_0_i_2_n_0 ;
  wire \LE_out[7]_INST_0_i_1_n_0 ;
  wire \LE_out[7]_INST_0_i_2_n_0 ;
  wire [2:0]Test;
  wire clk;
  wire [7:0]cpu_blink;
  wire [7:0]cpu_point;
  wire [31:0]data1;
  wire [31:0]data2;
  wire [31:0]data3;
  wire [31:0]data4;
  wire [31:0]data5;
  wire [31:0]data6;
  wire [31:0]data7;
  wire [31:0]disp_data;
  wire [63:0]point_in;
  wire [7:0]point_out;
  wire \point_out[0]_INST_0_i_1_n_0 ;
  wire \point_out[0]_INST_0_i_2_n_0 ;
  wire \point_out[1]_INST_0_i_1_n_0 ;
  wire \point_out[1]_INST_0_i_2_n_0 ;
  wire \point_out[2]_INST_0_i_1_n_0 ;
  wire \point_out[2]_INST_0_i_2_n_0 ;
  wire \point_out[3]_INST_0_i_1_n_0 ;
  wire \point_out[3]_INST_0_i_2_n_0 ;
  wire \point_out[4]_INST_0_i_1_n_0 ;
  wire \point_out[4]_INST_0_i_2_n_0 ;
  wire \point_out[5]_INST_0_i_1_n_0 ;
  wire \point_out[5]_INST_0_i_2_n_0 ;
  wire \point_out[6]_INST_0_i_1_n_0 ;
  wire \point_out[6]_INST_0_i_2_n_0 ;
  wire \point_out[7]_INST_0_i_1_n_0 ;
  wire \point_out[7]_INST_0_i_2_n_0 ;

  MUXF7 \Disp_num[0]_INST_0 
       (.I0(\Disp_num[0]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[0]_INST_0_i_2_n_0 ),
        .O(Disp_num[0]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[0]_INST_0_i_1 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(Test[1]),
        .I3(data1[0]),
        .I4(Test[0]),
        .I5(disp_data[0]),
        .O(\Disp_num[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[0]_INST_0_i_2 
       (.I0(data7[0]),
        .I1(data6[0]),
        .I2(Test[1]),
        .I3(data5[0]),
        .I4(Test[0]),
        .I5(data4[0]),
        .O(\Disp_num[0]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[10]_INST_0 
       (.I0(\Disp_num[10]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[10]_INST_0_i_2_n_0 ),
        .O(Disp_num[10]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[10]_INST_0_i_1 
       (.I0(data3[10]),
        .I1(data2[10]),
        .I2(Test[1]),
        .I3(data1[10]),
        .I4(Test[0]),
        .I5(disp_data[10]),
        .O(\Disp_num[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[10]_INST_0_i_2 
       (.I0(data7[10]),
        .I1(data6[10]),
        .I2(Test[1]),
        .I3(data5[10]),
        .I4(Test[0]),
        .I5(data4[10]),
        .O(\Disp_num[10]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[11]_INST_0 
       (.I0(\Disp_num[11]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[11]_INST_0_i_2_n_0 ),
        .O(Disp_num[11]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[11]_INST_0_i_1 
       (.I0(data3[11]),
        .I1(data2[11]),
        .I2(Test[1]),
        .I3(data1[11]),
        .I4(Test[0]),
        .I5(disp_data[11]),
        .O(\Disp_num[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[11]_INST_0_i_2 
       (.I0(data7[11]),
        .I1(data6[11]),
        .I2(Test[1]),
        .I3(data5[11]),
        .I4(Test[0]),
        .I5(data4[11]),
        .O(\Disp_num[11]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[12]_INST_0 
       (.I0(\Disp_num[12]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[12]_INST_0_i_2_n_0 ),
        .O(Disp_num[12]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[12]_INST_0_i_1 
       (.I0(data3[12]),
        .I1(data2[12]),
        .I2(Test[1]),
        .I3(data1[12]),
        .I4(Test[0]),
        .I5(disp_data[12]),
        .O(\Disp_num[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[12]_INST_0_i_2 
       (.I0(data7[12]),
        .I1(data6[12]),
        .I2(Test[1]),
        .I3(data5[12]),
        .I4(Test[0]),
        .I5(data4[12]),
        .O(\Disp_num[12]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[13]_INST_0 
       (.I0(\Disp_num[13]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[13]_INST_0_i_2_n_0 ),
        .O(Disp_num[13]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[13]_INST_0_i_1 
       (.I0(data3[13]),
        .I1(data2[13]),
        .I2(Test[1]),
        .I3(data1[13]),
        .I4(Test[0]),
        .I5(disp_data[13]),
        .O(\Disp_num[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[13]_INST_0_i_2 
       (.I0(data7[13]),
        .I1(data6[13]),
        .I2(Test[1]),
        .I3(data5[13]),
        .I4(Test[0]),
        .I5(data4[13]),
        .O(\Disp_num[13]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[14]_INST_0 
       (.I0(\Disp_num[14]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[14]_INST_0_i_2_n_0 ),
        .O(Disp_num[14]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[14]_INST_0_i_1 
       (.I0(data3[14]),
        .I1(data2[14]),
        .I2(Test[1]),
        .I3(data1[14]),
        .I4(Test[0]),
        .I5(disp_data[14]),
        .O(\Disp_num[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[14]_INST_0_i_2 
       (.I0(data7[14]),
        .I1(data6[14]),
        .I2(Test[1]),
        .I3(data5[14]),
        .I4(Test[0]),
        .I5(data4[14]),
        .O(\Disp_num[14]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[15]_INST_0 
       (.I0(\Disp_num[15]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[15]_INST_0_i_2_n_0 ),
        .O(Disp_num[15]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[15]_INST_0_i_1 
       (.I0(data3[15]),
        .I1(data2[15]),
        .I2(Test[1]),
        .I3(data1[15]),
        .I4(Test[0]),
        .I5(disp_data[15]),
        .O(\Disp_num[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[15]_INST_0_i_2 
       (.I0(data7[15]),
        .I1(data6[15]),
        .I2(Test[1]),
        .I3(data5[15]),
        .I4(Test[0]),
        .I5(data4[15]),
        .O(\Disp_num[15]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[16]_INST_0 
       (.I0(\Disp_num[16]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[16]_INST_0_i_2_n_0 ),
        .O(Disp_num[16]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[16]_INST_0_i_1 
       (.I0(data3[16]),
        .I1(data2[16]),
        .I2(Test[1]),
        .I3(data1[16]),
        .I4(Test[0]),
        .I5(disp_data[16]),
        .O(\Disp_num[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[16]_INST_0_i_2 
       (.I0(data7[16]),
        .I1(data6[16]),
        .I2(Test[1]),
        .I3(data5[16]),
        .I4(Test[0]),
        .I5(data4[16]),
        .O(\Disp_num[16]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[17]_INST_0 
       (.I0(\Disp_num[17]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[17]_INST_0_i_2_n_0 ),
        .O(Disp_num[17]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[17]_INST_0_i_1 
       (.I0(data3[17]),
        .I1(data2[17]),
        .I2(Test[1]),
        .I3(data1[17]),
        .I4(Test[0]),
        .I5(disp_data[17]),
        .O(\Disp_num[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[17]_INST_0_i_2 
       (.I0(data7[17]),
        .I1(data6[17]),
        .I2(Test[1]),
        .I3(data5[17]),
        .I4(Test[0]),
        .I5(data4[17]),
        .O(\Disp_num[17]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[18]_INST_0 
       (.I0(\Disp_num[18]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[18]_INST_0_i_2_n_0 ),
        .O(Disp_num[18]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[18]_INST_0_i_1 
       (.I0(data3[18]),
        .I1(data2[18]),
        .I2(Test[1]),
        .I3(data1[18]),
        .I4(Test[0]),
        .I5(disp_data[18]),
        .O(\Disp_num[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[18]_INST_0_i_2 
       (.I0(data7[18]),
        .I1(data6[18]),
        .I2(Test[1]),
        .I3(data5[18]),
        .I4(Test[0]),
        .I5(data4[18]),
        .O(\Disp_num[18]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[19]_INST_0 
       (.I0(\Disp_num[19]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[19]_INST_0_i_2_n_0 ),
        .O(Disp_num[19]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[19]_INST_0_i_1 
       (.I0(data3[19]),
        .I1(data2[19]),
        .I2(Test[1]),
        .I3(data1[19]),
        .I4(Test[0]),
        .I5(disp_data[19]),
        .O(\Disp_num[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[19]_INST_0_i_2 
       (.I0(data7[19]),
        .I1(data6[19]),
        .I2(Test[1]),
        .I3(data5[19]),
        .I4(Test[0]),
        .I5(data4[19]),
        .O(\Disp_num[19]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[1]_INST_0 
       (.I0(\Disp_num[1]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[1]_INST_0_i_2_n_0 ),
        .O(Disp_num[1]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[1]_INST_0_i_1 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(Test[1]),
        .I3(data1[1]),
        .I4(Test[0]),
        .I5(disp_data[1]),
        .O(\Disp_num[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[1]_INST_0_i_2 
       (.I0(data7[1]),
        .I1(data6[1]),
        .I2(Test[1]),
        .I3(data5[1]),
        .I4(Test[0]),
        .I5(data4[1]),
        .O(\Disp_num[1]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[20]_INST_0 
       (.I0(\Disp_num[20]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[20]_INST_0_i_2_n_0 ),
        .O(Disp_num[20]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[20]_INST_0_i_1 
       (.I0(data3[20]),
        .I1(data2[20]),
        .I2(Test[1]),
        .I3(data1[20]),
        .I4(Test[0]),
        .I5(disp_data[20]),
        .O(\Disp_num[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[20]_INST_0_i_2 
       (.I0(data7[20]),
        .I1(data6[20]),
        .I2(Test[1]),
        .I3(data5[20]),
        .I4(Test[0]),
        .I5(data4[20]),
        .O(\Disp_num[20]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[21]_INST_0 
       (.I0(\Disp_num[21]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[21]_INST_0_i_2_n_0 ),
        .O(Disp_num[21]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[21]_INST_0_i_1 
       (.I0(data3[21]),
        .I1(data2[21]),
        .I2(Test[1]),
        .I3(data1[21]),
        .I4(Test[0]),
        .I5(disp_data[21]),
        .O(\Disp_num[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[21]_INST_0_i_2 
       (.I0(data7[21]),
        .I1(data6[21]),
        .I2(Test[1]),
        .I3(data5[21]),
        .I4(Test[0]),
        .I5(data4[21]),
        .O(\Disp_num[21]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[22]_INST_0 
       (.I0(\Disp_num[22]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[22]_INST_0_i_2_n_0 ),
        .O(Disp_num[22]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[22]_INST_0_i_1 
       (.I0(data3[22]),
        .I1(data2[22]),
        .I2(Test[1]),
        .I3(data1[22]),
        .I4(Test[0]),
        .I5(disp_data[22]),
        .O(\Disp_num[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[22]_INST_0_i_2 
       (.I0(data7[22]),
        .I1(data6[22]),
        .I2(Test[1]),
        .I3(data5[22]),
        .I4(Test[0]),
        .I5(data4[22]),
        .O(\Disp_num[22]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[23]_INST_0 
       (.I0(\Disp_num[23]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[23]_INST_0_i_2_n_0 ),
        .O(Disp_num[23]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[23]_INST_0_i_1 
       (.I0(data3[23]),
        .I1(data2[23]),
        .I2(Test[1]),
        .I3(data1[23]),
        .I4(Test[0]),
        .I5(disp_data[23]),
        .O(\Disp_num[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[23]_INST_0_i_2 
       (.I0(data7[23]),
        .I1(data6[23]),
        .I2(Test[1]),
        .I3(data5[23]),
        .I4(Test[0]),
        .I5(data4[23]),
        .O(\Disp_num[23]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[24]_INST_0 
       (.I0(\Disp_num[24]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[24]_INST_0_i_2_n_0 ),
        .O(Disp_num[24]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[24]_INST_0_i_1 
       (.I0(data3[24]),
        .I1(data2[24]),
        .I2(Test[1]),
        .I3(data1[24]),
        .I4(Test[0]),
        .I5(disp_data[24]),
        .O(\Disp_num[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[24]_INST_0_i_2 
       (.I0(data7[24]),
        .I1(data6[24]),
        .I2(Test[1]),
        .I3(data5[24]),
        .I4(Test[0]),
        .I5(data4[24]),
        .O(\Disp_num[24]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[25]_INST_0 
       (.I0(\Disp_num[25]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[25]_INST_0_i_2_n_0 ),
        .O(Disp_num[25]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[25]_INST_0_i_1 
       (.I0(data3[25]),
        .I1(data2[25]),
        .I2(Test[1]),
        .I3(data1[25]),
        .I4(Test[0]),
        .I5(disp_data[25]),
        .O(\Disp_num[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[25]_INST_0_i_2 
       (.I0(data7[25]),
        .I1(data6[25]),
        .I2(Test[1]),
        .I3(data5[25]),
        .I4(Test[0]),
        .I5(data4[25]),
        .O(\Disp_num[25]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[26]_INST_0 
       (.I0(\Disp_num[26]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[26]_INST_0_i_2_n_0 ),
        .O(Disp_num[26]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[26]_INST_0_i_1 
       (.I0(data3[26]),
        .I1(data2[26]),
        .I2(Test[1]),
        .I3(data1[26]),
        .I4(Test[0]),
        .I5(disp_data[26]),
        .O(\Disp_num[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[26]_INST_0_i_2 
       (.I0(data7[26]),
        .I1(data6[26]),
        .I2(Test[1]),
        .I3(data5[26]),
        .I4(Test[0]),
        .I5(data4[26]),
        .O(\Disp_num[26]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[27]_INST_0 
       (.I0(\Disp_num[27]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[27]_INST_0_i_2_n_0 ),
        .O(Disp_num[27]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[27]_INST_0_i_1 
       (.I0(data3[27]),
        .I1(data2[27]),
        .I2(Test[1]),
        .I3(data1[27]),
        .I4(Test[0]),
        .I5(disp_data[27]),
        .O(\Disp_num[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[27]_INST_0_i_2 
       (.I0(data7[27]),
        .I1(data6[27]),
        .I2(Test[1]),
        .I3(data5[27]),
        .I4(Test[0]),
        .I5(data4[27]),
        .O(\Disp_num[27]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[28]_INST_0 
       (.I0(\Disp_num[28]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[28]_INST_0_i_2_n_0 ),
        .O(Disp_num[28]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[28]_INST_0_i_1 
       (.I0(data3[28]),
        .I1(data2[28]),
        .I2(Test[1]),
        .I3(data1[28]),
        .I4(Test[0]),
        .I5(disp_data[28]),
        .O(\Disp_num[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[28]_INST_0_i_2 
       (.I0(data7[28]),
        .I1(data6[28]),
        .I2(Test[1]),
        .I3(data5[28]),
        .I4(Test[0]),
        .I5(data4[28]),
        .O(\Disp_num[28]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[29]_INST_0 
       (.I0(\Disp_num[29]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[29]_INST_0_i_2_n_0 ),
        .O(Disp_num[29]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[29]_INST_0_i_1 
       (.I0(data3[29]),
        .I1(data2[29]),
        .I2(Test[1]),
        .I3(data1[29]),
        .I4(Test[0]),
        .I5(disp_data[29]),
        .O(\Disp_num[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[29]_INST_0_i_2 
       (.I0(data7[29]),
        .I1(data6[29]),
        .I2(Test[1]),
        .I3(data5[29]),
        .I4(Test[0]),
        .I5(data4[29]),
        .O(\Disp_num[29]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[2]_INST_0 
       (.I0(\Disp_num[2]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[2]_INST_0_i_2_n_0 ),
        .O(Disp_num[2]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[2]_INST_0_i_1 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(Test[1]),
        .I3(data1[2]),
        .I4(Test[0]),
        .I5(disp_data[2]),
        .O(\Disp_num[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[2]_INST_0_i_2 
       (.I0(data7[2]),
        .I1(data6[2]),
        .I2(Test[1]),
        .I3(data5[2]),
        .I4(Test[0]),
        .I5(data4[2]),
        .O(\Disp_num[2]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[30]_INST_0 
       (.I0(\Disp_num[30]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[30]_INST_0_i_2_n_0 ),
        .O(Disp_num[30]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[30]_INST_0_i_1 
       (.I0(data3[30]),
        .I1(data2[30]),
        .I2(Test[1]),
        .I3(data1[30]),
        .I4(Test[0]),
        .I5(disp_data[30]),
        .O(\Disp_num[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[30]_INST_0_i_2 
       (.I0(data7[30]),
        .I1(data6[30]),
        .I2(Test[1]),
        .I3(data5[30]),
        .I4(Test[0]),
        .I5(data4[30]),
        .O(\Disp_num[30]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[31]_INST_0 
       (.I0(\Disp_num[31]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[31]_INST_0_i_2_n_0 ),
        .O(Disp_num[31]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[31]_INST_0_i_1 
       (.I0(data3[31]),
        .I1(data2[31]),
        .I2(Test[1]),
        .I3(data1[31]),
        .I4(Test[0]),
        .I5(disp_data[31]),
        .O(\Disp_num[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[31]_INST_0_i_2 
       (.I0(data7[31]),
        .I1(data6[31]),
        .I2(Test[1]),
        .I3(data5[31]),
        .I4(Test[0]),
        .I5(data4[31]),
        .O(\Disp_num[31]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[3]_INST_0 
       (.I0(\Disp_num[3]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[3]_INST_0_i_2_n_0 ),
        .O(Disp_num[3]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[3]_INST_0_i_1 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(Test[1]),
        .I3(data1[3]),
        .I4(Test[0]),
        .I5(disp_data[3]),
        .O(\Disp_num[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[3]_INST_0_i_2 
       (.I0(data7[3]),
        .I1(data6[3]),
        .I2(Test[1]),
        .I3(data5[3]),
        .I4(Test[0]),
        .I5(data4[3]),
        .O(\Disp_num[3]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[4]_INST_0 
       (.I0(\Disp_num[4]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[4]_INST_0_i_2_n_0 ),
        .O(Disp_num[4]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[4]_INST_0_i_1 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(Test[1]),
        .I3(data1[4]),
        .I4(Test[0]),
        .I5(disp_data[4]),
        .O(\Disp_num[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[4]_INST_0_i_2 
       (.I0(data7[4]),
        .I1(data6[4]),
        .I2(Test[1]),
        .I3(data5[4]),
        .I4(Test[0]),
        .I5(data4[4]),
        .O(\Disp_num[4]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[5]_INST_0 
       (.I0(\Disp_num[5]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[5]_INST_0_i_2_n_0 ),
        .O(Disp_num[5]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[5]_INST_0_i_1 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(Test[1]),
        .I3(data1[5]),
        .I4(Test[0]),
        .I5(disp_data[5]),
        .O(\Disp_num[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[5]_INST_0_i_2 
       (.I0(data7[5]),
        .I1(data6[5]),
        .I2(Test[1]),
        .I3(data5[5]),
        .I4(Test[0]),
        .I5(data4[5]),
        .O(\Disp_num[5]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[6]_INST_0 
       (.I0(\Disp_num[6]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[6]_INST_0_i_2_n_0 ),
        .O(Disp_num[6]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[6]_INST_0_i_1 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(Test[1]),
        .I3(data1[6]),
        .I4(Test[0]),
        .I5(disp_data[6]),
        .O(\Disp_num[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[6]_INST_0_i_2 
       (.I0(data7[6]),
        .I1(data6[6]),
        .I2(Test[1]),
        .I3(data5[6]),
        .I4(Test[0]),
        .I5(data4[6]),
        .O(\Disp_num[6]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[7]_INST_0 
       (.I0(\Disp_num[7]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[7]_INST_0_i_2_n_0 ),
        .O(Disp_num[7]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[7]_INST_0_i_1 
       (.I0(data3[7]),
        .I1(data2[7]),
        .I2(Test[1]),
        .I3(data1[7]),
        .I4(Test[0]),
        .I5(disp_data[7]),
        .O(\Disp_num[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[7]_INST_0_i_2 
       (.I0(data7[7]),
        .I1(data6[7]),
        .I2(Test[1]),
        .I3(data5[7]),
        .I4(Test[0]),
        .I5(data4[7]),
        .O(\Disp_num[7]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[8]_INST_0 
       (.I0(\Disp_num[8]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[8]_INST_0_i_2_n_0 ),
        .O(Disp_num[8]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[8]_INST_0_i_1 
       (.I0(data3[8]),
        .I1(data2[8]),
        .I2(Test[1]),
        .I3(data1[8]),
        .I4(Test[0]),
        .I5(disp_data[8]),
        .O(\Disp_num[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[8]_INST_0_i_2 
       (.I0(data7[8]),
        .I1(data6[8]),
        .I2(Test[1]),
        .I3(data5[8]),
        .I4(Test[0]),
        .I5(data4[8]),
        .O(\Disp_num[8]_INST_0_i_2_n_0 ));
  MUXF7 \Disp_num[9]_INST_0 
       (.I0(\Disp_num[9]_INST_0_i_1_n_0 ),
        .I1(\Disp_num[9]_INST_0_i_2_n_0 ),
        .O(Disp_num[9]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[9]_INST_0_i_1 
       (.I0(data3[9]),
        .I1(data2[9]),
        .I2(Test[1]),
        .I3(data1[9]),
        .I4(Test[0]),
        .I5(disp_data[9]),
        .O(\Disp_num[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Disp_num[9]_INST_0_i_2 
       (.I0(data7[9]),
        .I1(data6[9]),
        .I2(Test[1]),
        .I3(data5[9]),
        .I4(Test[0]),
        .I5(data4[9]),
        .O(\Disp_num[9]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[0]_INST_0 
       (.I0(\LE_out[0]_INST_0_i_1_n_0 ),
        .I1(\LE_out[0]_INST_0_i_2_n_0 ),
        .O(LE_out[0]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[0]_INST_0_i_1 
       (.I0(LES[24]),
        .I1(LES[16]),
        .I2(Test[1]),
        .I3(LES[8]),
        .I4(Test[0]),
        .I5(cpu_blink[0]),
        .O(\LE_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[0]_INST_0_i_2 
       (.I0(LES[56]),
        .I1(LES[48]),
        .I2(Test[1]),
        .I3(LES[40]),
        .I4(Test[0]),
        .I5(LES[32]),
        .O(\LE_out[0]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[1]_INST_0 
       (.I0(\LE_out[1]_INST_0_i_1_n_0 ),
        .I1(\LE_out[1]_INST_0_i_2_n_0 ),
        .O(LE_out[1]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[1]_INST_0_i_1 
       (.I0(LES[25]),
        .I1(LES[17]),
        .I2(Test[1]),
        .I3(LES[9]),
        .I4(Test[0]),
        .I5(cpu_blink[1]),
        .O(\LE_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[1]_INST_0_i_2 
       (.I0(LES[57]),
        .I1(LES[49]),
        .I2(Test[1]),
        .I3(LES[41]),
        .I4(Test[0]),
        .I5(LES[33]),
        .O(\LE_out[1]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[2]_INST_0 
       (.I0(\LE_out[2]_INST_0_i_1_n_0 ),
        .I1(\LE_out[2]_INST_0_i_2_n_0 ),
        .O(LE_out[2]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[2]_INST_0_i_1 
       (.I0(LES[26]),
        .I1(LES[18]),
        .I2(Test[1]),
        .I3(LES[10]),
        .I4(Test[0]),
        .I5(cpu_blink[2]),
        .O(\LE_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[2]_INST_0_i_2 
       (.I0(LES[58]),
        .I1(LES[50]),
        .I2(Test[1]),
        .I3(LES[42]),
        .I4(Test[0]),
        .I5(LES[34]),
        .O(\LE_out[2]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[3]_INST_0 
       (.I0(\LE_out[3]_INST_0_i_1_n_0 ),
        .I1(\LE_out[3]_INST_0_i_2_n_0 ),
        .O(LE_out[3]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[3]_INST_0_i_1 
       (.I0(LES[27]),
        .I1(LES[19]),
        .I2(Test[1]),
        .I3(LES[11]),
        .I4(Test[0]),
        .I5(cpu_blink[3]),
        .O(\LE_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[3]_INST_0_i_2 
       (.I0(LES[59]),
        .I1(LES[51]),
        .I2(Test[1]),
        .I3(LES[43]),
        .I4(Test[0]),
        .I5(LES[35]),
        .O(\LE_out[3]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[4]_INST_0 
       (.I0(\LE_out[4]_INST_0_i_1_n_0 ),
        .I1(\LE_out[4]_INST_0_i_2_n_0 ),
        .O(LE_out[4]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[4]_INST_0_i_1 
       (.I0(LES[28]),
        .I1(LES[20]),
        .I2(Test[1]),
        .I3(LES[12]),
        .I4(Test[0]),
        .I5(cpu_blink[4]),
        .O(\LE_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[4]_INST_0_i_2 
       (.I0(LES[60]),
        .I1(LES[52]),
        .I2(Test[1]),
        .I3(LES[44]),
        .I4(Test[0]),
        .I5(LES[36]),
        .O(\LE_out[4]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[5]_INST_0 
       (.I0(\LE_out[5]_INST_0_i_1_n_0 ),
        .I1(\LE_out[5]_INST_0_i_2_n_0 ),
        .O(LE_out[5]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[5]_INST_0_i_1 
       (.I0(LES[29]),
        .I1(LES[21]),
        .I2(Test[1]),
        .I3(LES[13]),
        .I4(Test[0]),
        .I5(cpu_blink[5]),
        .O(\LE_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[5]_INST_0_i_2 
       (.I0(LES[61]),
        .I1(LES[53]),
        .I2(Test[1]),
        .I3(LES[45]),
        .I4(Test[0]),
        .I5(LES[37]),
        .O(\LE_out[5]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[6]_INST_0 
       (.I0(\LE_out[6]_INST_0_i_1_n_0 ),
        .I1(\LE_out[6]_INST_0_i_2_n_0 ),
        .O(LE_out[6]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[6]_INST_0_i_1 
       (.I0(LES[30]),
        .I1(LES[22]),
        .I2(Test[1]),
        .I3(LES[14]),
        .I4(Test[0]),
        .I5(cpu_blink[6]),
        .O(\LE_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[6]_INST_0_i_2 
       (.I0(LES[62]),
        .I1(LES[54]),
        .I2(Test[1]),
        .I3(LES[46]),
        .I4(Test[0]),
        .I5(LES[38]),
        .O(\LE_out[6]_INST_0_i_2_n_0 ));
  MUXF7 \LE_out[7]_INST_0 
       (.I0(\LE_out[7]_INST_0_i_1_n_0 ),
        .I1(\LE_out[7]_INST_0_i_2_n_0 ),
        .O(LE_out[7]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[7]_INST_0_i_1 
       (.I0(LES[31]),
        .I1(LES[23]),
        .I2(Test[1]),
        .I3(LES[15]),
        .I4(Test[0]),
        .I5(cpu_blink[7]),
        .O(\LE_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LE_out[7]_INST_0_i_2 
       (.I0(LES[63]),
        .I1(LES[55]),
        .I2(Test[1]),
        .I3(LES[47]),
        .I4(Test[0]),
        .I5(LES[39]),
        .O(\LE_out[7]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[0] 
       (.C(clk),
        .CE(EN),
        .D(LES[0]),
        .Q(cpu_blink[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[1] 
       (.C(clk),
        .CE(EN),
        .D(LES[1]),
        .Q(cpu_blink[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[2] 
       (.C(clk),
        .CE(EN),
        .D(LES[2]),
        .Q(cpu_blink[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[3] 
       (.C(clk),
        .CE(EN),
        .D(LES[3]),
        .Q(cpu_blink[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[4] 
       (.C(clk),
        .CE(EN),
        .D(LES[4]),
        .Q(cpu_blink[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[5] 
       (.C(clk),
        .CE(EN),
        .D(LES[5]),
        .Q(cpu_blink[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[6] 
       (.C(clk),
        .CE(EN),
        .D(LES[6]),
        .Q(cpu_blink[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cpu_blink_reg[7] 
       (.C(clk),
        .CE(EN),
        .D(LES[7]),
        .Q(cpu_blink[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[0] 
       (.C(clk),
        .CE(EN),
        .D(point_in[0]),
        .Q(cpu_point[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[1] 
       (.C(clk),
        .CE(EN),
        .D(point_in[1]),
        .Q(cpu_point[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[2] 
       (.C(clk),
        .CE(EN),
        .D(point_in[2]),
        .Q(cpu_point[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[3] 
       (.C(clk),
        .CE(EN),
        .D(point_in[3]),
        .Q(cpu_point[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[4] 
       (.C(clk),
        .CE(EN),
        .D(point_in[4]),
        .Q(cpu_point[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[5] 
       (.C(clk),
        .CE(EN),
        .D(point_in[5]),
        .Q(cpu_point[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[6] 
       (.C(clk),
        .CE(EN),
        .D(point_in[6]),
        .Q(cpu_point[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_point_reg[7] 
       (.C(clk),
        .CE(EN),
        .D(point_in[7]),
        .Q(cpu_point[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[0] 
       (.C(clk),
        .CE(EN),
        .D(Data0[0]),
        .Q(disp_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[10] 
       (.C(clk),
        .CE(EN),
        .D(Data0[10]),
        .Q(disp_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[11] 
       (.C(clk),
        .CE(EN),
        .D(Data0[11]),
        .Q(disp_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[12] 
       (.C(clk),
        .CE(EN),
        .D(Data0[12]),
        .Q(disp_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[13] 
       (.C(clk),
        .CE(EN),
        .D(Data0[13]),
        .Q(disp_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[14] 
       (.C(clk),
        .CE(EN),
        .D(Data0[14]),
        .Q(disp_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[15] 
       (.C(clk),
        .CE(EN),
        .D(Data0[15]),
        .Q(disp_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[16] 
       (.C(clk),
        .CE(EN),
        .D(Data0[16]),
        .Q(disp_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[17] 
       (.C(clk),
        .CE(EN),
        .D(Data0[17]),
        .Q(disp_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[18] 
       (.C(clk),
        .CE(EN),
        .D(Data0[18]),
        .Q(disp_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[19] 
       (.C(clk),
        .CE(EN),
        .D(Data0[19]),
        .Q(disp_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[1] 
       (.C(clk),
        .CE(EN),
        .D(Data0[1]),
        .Q(disp_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[20] 
       (.C(clk),
        .CE(EN),
        .D(Data0[20]),
        .Q(disp_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[21] 
       (.C(clk),
        .CE(EN),
        .D(Data0[21]),
        .Q(disp_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[22] 
       (.C(clk),
        .CE(EN),
        .D(Data0[22]),
        .Q(disp_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[23] 
       (.C(clk),
        .CE(EN),
        .D(Data0[23]),
        .Q(disp_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[24] 
       (.C(clk),
        .CE(EN),
        .D(Data0[24]),
        .Q(disp_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[25] 
       (.C(clk),
        .CE(EN),
        .D(Data0[25]),
        .Q(disp_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[26] 
       (.C(clk),
        .CE(EN),
        .D(Data0[26]),
        .Q(disp_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[27] 
       (.C(clk),
        .CE(EN),
        .D(Data0[27]),
        .Q(disp_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[28] 
       (.C(clk),
        .CE(EN),
        .D(Data0[28]),
        .Q(disp_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[29] 
       (.C(clk),
        .CE(EN),
        .D(Data0[29]),
        .Q(disp_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[2] 
       (.C(clk),
        .CE(EN),
        .D(Data0[2]),
        .Q(disp_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[30] 
       (.C(clk),
        .CE(EN),
        .D(Data0[30]),
        .Q(disp_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[31] 
       (.C(clk),
        .CE(EN),
        .D(Data0[31]),
        .Q(disp_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[3] 
       (.C(clk),
        .CE(EN),
        .D(Data0[3]),
        .Q(disp_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[4] 
       (.C(clk),
        .CE(EN),
        .D(Data0[4]),
        .Q(disp_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[5] 
       (.C(clk),
        .CE(EN),
        .D(Data0[5]),
        .Q(disp_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[6] 
       (.C(clk),
        .CE(EN),
        .D(Data0[6]),
        .Q(disp_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[7] 
       (.C(clk),
        .CE(EN),
        .D(Data0[7]),
        .Q(disp_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \disp_data_reg[8] 
       (.C(clk),
        .CE(EN),
        .D(Data0[8]),
        .Q(disp_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_data_reg[9] 
       (.C(clk),
        .CE(EN),
        .D(Data0[9]),
        .Q(disp_data[9]),
        .R(1'b0));
  MUXF7 \point_out[0]_INST_0 
       (.I0(\point_out[0]_INST_0_i_1_n_0 ),
        .I1(\point_out[0]_INST_0_i_2_n_0 ),
        .O(point_out[0]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[0]_INST_0_i_1 
       (.I0(point_in[24]),
        .I1(point_in[16]),
        .I2(Test[1]),
        .I3(point_in[8]),
        .I4(Test[0]),
        .I5(cpu_point[0]),
        .O(\point_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[0]_INST_0_i_2 
       (.I0(point_in[56]),
        .I1(point_in[48]),
        .I2(Test[1]),
        .I3(point_in[40]),
        .I4(Test[0]),
        .I5(point_in[32]),
        .O(\point_out[0]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[1]_INST_0 
       (.I0(\point_out[1]_INST_0_i_1_n_0 ),
        .I1(\point_out[1]_INST_0_i_2_n_0 ),
        .O(point_out[1]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[1]_INST_0_i_1 
       (.I0(point_in[25]),
        .I1(point_in[17]),
        .I2(Test[1]),
        .I3(point_in[9]),
        .I4(Test[0]),
        .I5(cpu_point[1]),
        .O(\point_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[1]_INST_0_i_2 
       (.I0(point_in[57]),
        .I1(point_in[49]),
        .I2(Test[1]),
        .I3(point_in[41]),
        .I4(Test[0]),
        .I5(point_in[33]),
        .O(\point_out[1]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[2]_INST_0 
       (.I0(\point_out[2]_INST_0_i_1_n_0 ),
        .I1(\point_out[2]_INST_0_i_2_n_0 ),
        .O(point_out[2]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[2]_INST_0_i_1 
       (.I0(point_in[26]),
        .I1(point_in[18]),
        .I2(Test[1]),
        .I3(point_in[10]),
        .I4(Test[0]),
        .I5(cpu_point[2]),
        .O(\point_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[2]_INST_0_i_2 
       (.I0(point_in[58]),
        .I1(point_in[50]),
        .I2(Test[1]),
        .I3(point_in[42]),
        .I4(Test[0]),
        .I5(point_in[34]),
        .O(\point_out[2]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[3]_INST_0 
       (.I0(\point_out[3]_INST_0_i_1_n_0 ),
        .I1(\point_out[3]_INST_0_i_2_n_0 ),
        .O(point_out[3]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[3]_INST_0_i_1 
       (.I0(point_in[27]),
        .I1(point_in[19]),
        .I2(Test[1]),
        .I3(point_in[11]),
        .I4(Test[0]),
        .I5(cpu_point[3]),
        .O(\point_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[3]_INST_0_i_2 
       (.I0(point_in[59]),
        .I1(point_in[51]),
        .I2(Test[1]),
        .I3(point_in[43]),
        .I4(Test[0]),
        .I5(point_in[35]),
        .O(\point_out[3]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[4]_INST_0 
       (.I0(\point_out[4]_INST_0_i_1_n_0 ),
        .I1(\point_out[4]_INST_0_i_2_n_0 ),
        .O(point_out[4]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[4]_INST_0_i_1 
       (.I0(point_in[28]),
        .I1(point_in[20]),
        .I2(Test[1]),
        .I3(point_in[12]),
        .I4(Test[0]),
        .I5(cpu_point[4]),
        .O(\point_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[4]_INST_0_i_2 
       (.I0(point_in[60]),
        .I1(point_in[52]),
        .I2(Test[1]),
        .I3(point_in[44]),
        .I4(Test[0]),
        .I5(point_in[36]),
        .O(\point_out[4]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[5]_INST_0 
       (.I0(\point_out[5]_INST_0_i_1_n_0 ),
        .I1(\point_out[5]_INST_0_i_2_n_0 ),
        .O(point_out[5]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[5]_INST_0_i_1 
       (.I0(point_in[29]),
        .I1(point_in[21]),
        .I2(Test[1]),
        .I3(point_in[13]),
        .I4(Test[0]),
        .I5(cpu_point[5]),
        .O(\point_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[5]_INST_0_i_2 
       (.I0(point_in[61]),
        .I1(point_in[53]),
        .I2(Test[1]),
        .I3(point_in[45]),
        .I4(Test[0]),
        .I5(point_in[37]),
        .O(\point_out[5]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[6]_INST_0 
       (.I0(\point_out[6]_INST_0_i_1_n_0 ),
        .I1(\point_out[6]_INST_0_i_2_n_0 ),
        .O(point_out[6]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[6]_INST_0_i_1 
       (.I0(point_in[30]),
        .I1(point_in[22]),
        .I2(Test[1]),
        .I3(point_in[14]),
        .I4(Test[0]),
        .I5(cpu_point[6]),
        .O(\point_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[6]_INST_0_i_2 
       (.I0(point_in[62]),
        .I1(point_in[54]),
        .I2(Test[1]),
        .I3(point_in[46]),
        .I4(Test[0]),
        .I5(point_in[38]),
        .O(\point_out[6]_INST_0_i_2_n_0 ));
  MUXF7 \point_out[7]_INST_0 
       (.I0(\point_out[7]_INST_0_i_1_n_0 ),
        .I1(\point_out[7]_INST_0_i_2_n_0 ),
        .O(point_out[7]),
        .S(Test[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[7]_INST_0_i_1 
       (.I0(point_in[31]),
        .I1(point_in[23]),
        .I2(Test[1]),
        .I3(point_in[15]),
        .I4(Test[0]),
        .I5(cpu_point[7]),
        .O(\point_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \point_out[7]_INST_0_i_2 
       (.I0(point_in[63]),
        .I1(point_in[55]),
        .I2(Test[1]),
        .I3(point_in[47]),
        .I4(Test[0]),
        .I5(point_in[39]),
        .O(\point_out[7]_INST_0_i_2_n_0 ));
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
