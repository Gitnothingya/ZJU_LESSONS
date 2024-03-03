// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:43:35 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/Counter_x_0/Counter_x_0_sim_netlist.v
// Design      : Counter_x_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Counter_x_0,Counter_x,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "Counter_x,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Counter_x_0
   (clk,
    clk0,
    clk1,
    clk2,
    counter0_OUT,
    counter1_OUT,
    counter2_OUT,
    counter_we,
    rst,
    counter_ch,
    counter_out,
    counter_val);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input clk0;
  input clk1;
  input clk2;
  output counter0_OUT;
  output counter1_OUT;
  output counter2_OUT;
  input counter_we;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [1:0]counter_ch;
  output [31:0]counter_out;
  input [31:0]counter_val;

  wire clk;
  wire clk0;
  wire clk1;
  wire clk2;
  wire counter0_OUT;
  wire counter1_OUT;
  wire counter2_OUT;
  wire [1:0]counter_ch;
  wire [31:0]counter_out;
  wire [31:0]counter_val;
  wire counter_we;
  wire rst;

  (* black_box = "1" *) 
  Counter_x_0_Counter_x inst
       (.clk(clk),
        .clk0(clk0),
        .clk1(clk1),
        .clk2(clk2),
        .counter0_OUT(counter0_OUT),
        .counter1_OUT(counter1_OUT),
        .counter2_OUT(counter2_OUT),
        .counter_ch(counter_ch),
        .counter_out(counter_out),
        .counter_val(counter_val),
        .counter_we(counter_we),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Counter_x" *) 
module Counter_x_0_Counter_x
   (clk,
    clk0,
    clk1,
    clk2,
    counter0_OUT,
    counter1_OUT,
    counter2_OUT,
    counter_we,
    rst,
    counter_ch,
    counter_out,
    counter_val);
  input clk;
  input clk0;
  input clk1;
  input clk2;
  output counter0_OUT;
  output counter1_OUT;
  output counter2_OUT;
  input counter_we;
  input rst;
  input [1:0]counter_ch;
  output [31:0]counter_out;
  input [31:0]counter_val;

  wire M0_i_1_n_0;
  wire M0_reg_n_0;
  wire M1_i_1_n_0;
  wire M1_reg_n_0;
  wire M2_i_1_n_0;
  wire M2_reg_n_0;
  wire clk;
  wire clk0;
  wire clk1;
  wire clk2;
  wire clr0_i_1_n_0;
  wire clr0_reg_n_0;
  wire clr1_i_1_n_0;
  wire clr1_reg_n_0;
  wire clr2_i_1_n_0;
  wire clr2_reg_n_0;
  wire [31:31]counter0;
  wire [32:1]counter00;
  wire \counter0[0]_i_1_n_0 ;
  wire \counter0[10]_i_1_n_0 ;
  wire \counter0[11]_i_1_n_0 ;
  wire \counter0[12]_i_1_n_0 ;
  wire \counter0[12]_i_3_n_0 ;
  wire \counter0[12]_i_4_n_0 ;
  wire \counter0[12]_i_5_n_0 ;
  wire \counter0[12]_i_6_n_0 ;
  wire \counter0[13]_i_1_n_0 ;
  wire \counter0[14]_i_1_n_0 ;
  wire \counter0[15]_i_1_n_0 ;
  wire \counter0[16]_i_1_n_0 ;
  wire \counter0[16]_i_3_n_0 ;
  wire \counter0[16]_i_4_n_0 ;
  wire \counter0[16]_i_5_n_0 ;
  wire \counter0[16]_i_6_n_0 ;
  wire \counter0[17]_i_1_n_0 ;
  wire \counter0[18]_i_1_n_0 ;
  wire \counter0[19]_i_1_n_0 ;
  wire \counter0[1]_i_1_n_0 ;
  wire \counter0[20]_i_1_n_0 ;
  wire \counter0[20]_i_3_n_0 ;
  wire \counter0[20]_i_4_n_0 ;
  wire \counter0[20]_i_5_n_0 ;
  wire \counter0[20]_i_6_n_0 ;
  wire \counter0[21]_i_1_n_0 ;
  wire \counter0[22]_i_1_n_0 ;
  wire \counter0[23]_i_1_n_0 ;
  wire \counter0[24]_i_1_n_0 ;
  wire \counter0[24]_i_3_n_0 ;
  wire \counter0[24]_i_4_n_0 ;
  wire \counter0[24]_i_5_n_0 ;
  wire \counter0[24]_i_6_n_0 ;
  wire \counter0[25]_i_1_n_0 ;
  wire \counter0[26]_i_1_n_0 ;
  wire \counter0[27]_i_1_n_0 ;
  wire \counter0[28]_i_1_n_0 ;
  wire \counter0[28]_i_3_n_0 ;
  wire \counter0[28]_i_4_n_0 ;
  wire \counter0[28]_i_5_n_0 ;
  wire \counter0[28]_i_6_n_0 ;
  wire \counter0[29]_i_1_n_0 ;
  wire \counter0[2]_i_1_n_0 ;
  wire \counter0[30]_i_1_n_0 ;
  wire \counter0[30]_i_2_n_0 ;
  wire \counter0[31]_i_2_n_0 ;
  wire \counter0[31]_i_3_n_0 ;
  wire \counter0[31]_i_4_n_0 ;
  wire \counter0[32]_i_1_n_0 ;
  wire \counter0[32]_i_3_n_0 ;
  wire \counter0[32]_i_4_n_0 ;
  wire \counter0[32]_i_5_n_0 ;
  wire \counter0[32]_i_6_n_0 ;
  wire \counter0[3]_i_1_n_0 ;
  wire \counter0[4]_i_1_n_0 ;
  wire \counter0[4]_i_3_n_0 ;
  wire \counter0[4]_i_4_n_0 ;
  wire \counter0[4]_i_5_n_0 ;
  wire \counter0[4]_i_6_n_0 ;
  wire \counter0[5]_i_1_n_0 ;
  wire \counter0[6]_i_1_n_0 ;
  wire \counter0[7]_i_1_n_0 ;
  wire \counter0[8]_i_1_n_0 ;
  wire \counter0[8]_i_3_n_0 ;
  wire \counter0[8]_i_4_n_0 ;
  wire \counter0[8]_i_5_n_0 ;
  wire \counter0[8]_i_6_n_0 ;
  wire \counter0[9]_i_1_n_0 ;
  wire counter0_Lock;
  wire [31:0]counter0_Lock_reg_n_0_;
  wire counter0_OUT;
  wire \counter0_reg[12]_i_2_n_0 ;
  wire \counter0_reg[12]_i_2_n_1 ;
  wire \counter0_reg[12]_i_2_n_2 ;
  wire \counter0_reg[12]_i_2_n_3 ;
  wire \counter0_reg[16]_i_2_n_0 ;
  wire \counter0_reg[16]_i_2_n_1 ;
  wire \counter0_reg[16]_i_2_n_2 ;
  wire \counter0_reg[16]_i_2_n_3 ;
  wire \counter0_reg[20]_i_2_n_0 ;
  wire \counter0_reg[20]_i_2_n_1 ;
  wire \counter0_reg[20]_i_2_n_2 ;
  wire \counter0_reg[20]_i_2_n_3 ;
  wire \counter0_reg[24]_i_2_n_0 ;
  wire \counter0_reg[24]_i_2_n_1 ;
  wire \counter0_reg[24]_i_2_n_2 ;
  wire \counter0_reg[24]_i_2_n_3 ;
  wire \counter0_reg[28]_i_2_n_0 ;
  wire \counter0_reg[28]_i_2_n_1 ;
  wire \counter0_reg[28]_i_2_n_2 ;
  wire \counter0_reg[28]_i_2_n_3 ;
  wire \counter0_reg[32]_i_2_n_1 ;
  wire \counter0_reg[32]_i_2_n_2 ;
  wire \counter0_reg[32]_i_2_n_3 ;
  wire \counter0_reg[4]_i_2_n_0 ;
  wire \counter0_reg[4]_i_2_n_1 ;
  wire \counter0_reg[4]_i_2_n_2 ;
  wire \counter0_reg[4]_i_2_n_3 ;
  wire \counter0_reg[8]_i_2_n_0 ;
  wire \counter0_reg[8]_i_2_n_1 ;
  wire \counter0_reg[8]_i_2_n_2 ;
  wire \counter0_reg[8]_i_2_n_3 ;
  wire [31:0]counter1;
  wire [32:1]counter10;
  wire \counter1[12]_i_3_n_0 ;
  wire \counter1[12]_i_4_n_0 ;
  wire \counter1[12]_i_5_n_0 ;
  wire \counter1[12]_i_6_n_0 ;
  wire \counter1[16]_i_3_n_0 ;
  wire \counter1[16]_i_4_n_0 ;
  wire \counter1[16]_i_5_n_0 ;
  wire \counter1[16]_i_6_n_0 ;
  wire \counter1[20]_i_3_n_0 ;
  wire \counter1[20]_i_4_n_0 ;
  wire \counter1[20]_i_5_n_0 ;
  wire \counter1[20]_i_6_n_0 ;
  wire \counter1[24]_i_3_n_0 ;
  wire \counter1[24]_i_4_n_0 ;
  wire \counter1[24]_i_5_n_0 ;
  wire \counter1[24]_i_6_n_0 ;
  wire \counter1[28]_i_3_n_0 ;
  wire \counter1[28]_i_4_n_0 ;
  wire \counter1[28]_i_5_n_0 ;
  wire \counter1[28]_i_6_n_0 ;
  wire \counter1[30]_i_2_n_0 ;
  wire \counter1[31]_i_2_n_0 ;
  wire \counter1[31]_i_3_n_0 ;
  wire \counter1[32]_i_1_n_0 ;
  wire \counter1[32]_i_4_n_0 ;
  wire \counter1[32]_i_5_n_0 ;
  wire \counter1[32]_i_6_n_0 ;
  wire \counter1[32]_i_7_n_0 ;
  wire \counter1[4]_i_3_n_0 ;
  wire \counter1[4]_i_4_n_0 ;
  wire \counter1[4]_i_5_n_0 ;
  wire \counter1[4]_i_6_n_0 ;
  wire \counter1[8]_i_3_n_0 ;
  wire \counter1[8]_i_4_n_0 ;
  wire \counter1[8]_i_5_n_0 ;
  wire \counter1[8]_i_6_n_0 ;
  wire counter1_Lock;
  wire [31:0]counter1_Lock_reg_n_0_;
  wire counter1_OUT;
  wire \counter1_reg[12]_i_2_n_0 ;
  wire \counter1_reg[12]_i_2_n_1 ;
  wire \counter1_reg[12]_i_2_n_2 ;
  wire \counter1_reg[12]_i_2_n_3 ;
  wire \counter1_reg[16]_i_2_n_0 ;
  wire \counter1_reg[16]_i_2_n_1 ;
  wire \counter1_reg[16]_i_2_n_2 ;
  wire \counter1_reg[16]_i_2_n_3 ;
  wire \counter1_reg[20]_i_2_n_0 ;
  wire \counter1_reg[20]_i_2_n_1 ;
  wire \counter1_reg[20]_i_2_n_2 ;
  wire \counter1_reg[20]_i_2_n_3 ;
  wire \counter1_reg[24]_i_2_n_0 ;
  wire \counter1_reg[24]_i_2_n_1 ;
  wire \counter1_reg[24]_i_2_n_2 ;
  wire \counter1_reg[24]_i_2_n_3 ;
  wire \counter1_reg[28]_i_2_n_0 ;
  wire \counter1_reg[28]_i_2_n_1 ;
  wire \counter1_reg[28]_i_2_n_2 ;
  wire \counter1_reg[28]_i_2_n_3 ;
  wire \counter1_reg[32]_i_3_n_1 ;
  wire \counter1_reg[32]_i_3_n_2 ;
  wire \counter1_reg[32]_i_3_n_3 ;
  wire \counter1_reg[4]_i_2_n_0 ;
  wire \counter1_reg[4]_i_2_n_1 ;
  wire \counter1_reg[4]_i_2_n_2 ;
  wire \counter1_reg[4]_i_2_n_3 ;
  wire \counter1_reg[8]_i_2_n_0 ;
  wire \counter1_reg[8]_i_2_n_1 ;
  wire \counter1_reg[8]_i_2_n_2 ;
  wire \counter1_reg[8]_i_2_n_3 ;
  wire [31:0]counter2;
  wire [32:1]counter20;
  wire \counter2[0]_i_1_n_0 ;
  wire \counter2[10]_i_1_n_0 ;
  wire \counter2[11]_i_1_n_0 ;
  wire \counter2[12]_i_1_n_0 ;
  wire \counter2[12]_i_3_n_0 ;
  wire \counter2[12]_i_4_n_0 ;
  wire \counter2[12]_i_5_n_0 ;
  wire \counter2[12]_i_6_n_0 ;
  wire \counter2[13]_i_1_n_0 ;
  wire \counter2[14]_i_1_n_0 ;
  wire \counter2[15]_i_1_n_0 ;
  wire \counter2[16]_i_1_n_0 ;
  wire \counter2[16]_i_3_n_0 ;
  wire \counter2[16]_i_4_n_0 ;
  wire \counter2[16]_i_5_n_0 ;
  wire \counter2[16]_i_6_n_0 ;
  wire \counter2[17]_i_1_n_0 ;
  wire \counter2[18]_i_1_n_0 ;
  wire \counter2[19]_i_1_n_0 ;
  wire \counter2[1]_i_1_n_0 ;
  wire \counter2[20]_i_1_n_0 ;
  wire \counter2[20]_i_3_n_0 ;
  wire \counter2[20]_i_4_n_0 ;
  wire \counter2[20]_i_5_n_0 ;
  wire \counter2[20]_i_6_n_0 ;
  wire \counter2[21]_i_1_n_0 ;
  wire \counter2[22]_i_1_n_0 ;
  wire \counter2[23]_i_1_n_0 ;
  wire \counter2[24]_i_1_n_0 ;
  wire \counter2[24]_i_3_n_0 ;
  wire \counter2[24]_i_4_n_0 ;
  wire \counter2[24]_i_5_n_0 ;
  wire \counter2[24]_i_6_n_0 ;
  wire \counter2[25]_i_1_n_0 ;
  wire \counter2[26]_i_1_n_0 ;
  wire \counter2[27]_i_1_n_0 ;
  wire \counter2[28]_i_1_n_0 ;
  wire \counter2[28]_i_3_n_0 ;
  wire \counter2[28]_i_4_n_0 ;
  wire \counter2[28]_i_5_n_0 ;
  wire \counter2[28]_i_6_n_0 ;
  wire \counter2[29]_i_1_n_0 ;
  wire \counter2[2]_i_1_n_0 ;
  wire \counter2[30]_i_1_n_0 ;
  wire \counter2[30]_i_2_n_0 ;
  wire \counter2[31]_i_1_n_0 ;
  wire \counter2[31]_i_2_n_0 ;
  wire \counter2[31]_i_3_n_0 ;
  wire \counter2[32]_i_1_n_0 ;
  wire \counter2[32]_i_2_n_0 ;
  wire \counter2[32]_i_4_n_0 ;
  wire \counter2[32]_i_5_n_0 ;
  wire \counter2[32]_i_6_n_0 ;
  wire \counter2[32]_i_7_n_0 ;
  wire \counter2[3]_i_1_n_0 ;
  wire \counter2[4]_i_1_n_0 ;
  wire \counter2[4]_i_3_n_0 ;
  wire \counter2[4]_i_4_n_0 ;
  wire \counter2[4]_i_5_n_0 ;
  wire \counter2[4]_i_6_n_0 ;
  wire \counter2[5]_i_1_n_0 ;
  wire \counter2[6]_i_1_n_0 ;
  wire \counter2[7]_i_1_n_0 ;
  wire \counter2[8]_i_1_n_0 ;
  wire \counter2[8]_i_3_n_0 ;
  wire \counter2[8]_i_4_n_0 ;
  wire \counter2[8]_i_5_n_0 ;
  wire \counter2[8]_i_6_n_0 ;
  wire \counter2[9]_i_1_n_0 ;
  wire counter2_Lock;
  wire [31:0]counter2_Lock_reg_n_0_;
  wire counter2_OUT;
  wire \counter2_reg[12]_i_2_n_0 ;
  wire \counter2_reg[12]_i_2_n_1 ;
  wire \counter2_reg[12]_i_2_n_2 ;
  wire \counter2_reg[12]_i_2_n_3 ;
  wire \counter2_reg[16]_i_2_n_0 ;
  wire \counter2_reg[16]_i_2_n_1 ;
  wire \counter2_reg[16]_i_2_n_2 ;
  wire \counter2_reg[16]_i_2_n_3 ;
  wire \counter2_reg[20]_i_2_n_0 ;
  wire \counter2_reg[20]_i_2_n_1 ;
  wire \counter2_reg[20]_i_2_n_2 ;
  wire \counter2_reg[20]_i_2_n_3 ;
  wire \counter2_reg[24]_i_2_n_0 ;
  wire \counter2_reg[24]_i_2_n_1 ;
  wire \counter2_reg[24]_i_2_n_2 ;
  wire \counter2_reg[24]_i_2_n_3 ;
  wire \counter2_reg[28]_i_2_n_0 ;
  wire \counter2_reg[28]_i_2_n_1 ;
  wire \counter2_reg[28]_i_2_n_2 ;
  wire \counter2_reg[28]_i_2_n_3 ;
  wire \counter2_reg[32]_i_3_n_1 ;
  wire \counter2_reg[32]_i_3_n_2 ;
  wire \counter2_reg[32]_i_3_n_3 ;
  wire \counter2_reg[4]_i_2_n_0 ;
  wire \counter2_reg[4]_i_2_n_1 ;
  wire \counter2_reg[4]_i_2_n_2 ;
  wire \counter2_reg[4]_i_2_n_3 ;
  wire \counter2_reg[8]_i_2_n_0 ;
  wire \counter2_reg[8]_i_2_n_1 ;
  wire \counter2_reg[8]_i_2_n_2 ;
  wire \counter2_reg[8]_i_2_n_3 ;
  wire counter_Ctrl;
  wire [18:9]counter_Ctrl_reg_n_0_;
  wire [1:0]counter_ch;
  wire [31:0]counter_out;
  wire [31:0]counter_val;
  wire counter_we;
  wire [1:0]p_0_in;
  wire [32:0]p_1_in;
  wire rst;
  wire sq0;
  wire sq0_i_1_n_0;
  wire sq1;
  wire sq1_i_1_n_0;
  wire sq2;
  wire sq2_i_1_n_0;
  wire [3:3]\NLW_counter0_reg[32]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter1_reg[32]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter2_reg[32]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFDDFFDD0000000C)) 
    M0_i_1
       (.I0(clr0_reg_n_0),
        .I1(counter_we),
        .I2(counter_ch[0]),
        .I3(rst),
        .I4(counter_ch[1]),
        .I5(M0_reg_n_0),
        .O(M0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M0_reg
       (.C(clk),
        .CE(1'b1),
        .D(M0_i_1_n_0),
        .Q(M0_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF5500000C00)) 
    M1_i_1
       (.I0(clr1_reg_n_0),
        .I1(counter_ch[0]),
        .I2(counter_ch[1]),
        .I3(counter_we),
        .I4(rst),
        .I5(M1_reg_n_0),
        .O(M1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M1_reg
       (.C(clk),
        .CE(1'b1),
        .D(M1_i_1_n_0),
        .Q(M1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDDDD00000C00)) 
    M2_i_1
       (.I0(clr2_reg_n_0),
        .I1(counter_we),
        .I2(counter_ch[0]),
        .I3(counter_ch[1]),
        .I4(rst),
        .I5(M2_reg_n_0),
        .O(M2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M2_reg
       (.C(clk),
        .CE(1'b1),
        .D(M2_i_1_n_0),
        .Q(M2_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE01010000)) 
    clr0_i_1
       (.I0(rst),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(counter0_OUT),
        .I4(M0_reg_n_0),
        .I5(clr0_reg_n_0),
        .O(clr0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clr0_reg
       (.C(clk0),
        .CE(1'b1),
        .D(clr0_i_1_n_0),
        .Q(clr0_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE01010000)) 
    clr1_i_1
       (.I0(rst),
        .I1(counter_Ctrl_reg_n_0_[9]),
        .I2(counter_Ctrl_reg_n_0_[10]),
        .I3(counter1_OUT),
        .I4(M1_reg_n_0),
        .I5(clr1_reg_n_0),
        .O(clr1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clr1_reg
       (.C(clk1),
        .CE(1'b1),
        .D(clr1_i_1_n_0),
        .Q(clr1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE01010000)) 
    clr2_i_1
       (.I0(rst),
        .I1(counter_Ctrl_reg_n_0_[17]),
        .I2(counter_Ctrl_reg_n_0_[18]),
        .I3(counter2_OUT),
        .I4(M2_reg_n_0),
        .I5(clr2_reg_n_0),
        .O(clr2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clr2_reg
       (.C(clk2),
        .CE(1'b1),
        .D(clr2_i_1_n_0),
        .Q(clr2_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \counter0[0]_i_1 
       (.I0(counter0_Lock_reg_n_0_[0]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[1]),
        .I4(counter_out[0]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[10]_i_1 
       (.I0(counter0_Lock_reg_n_0_[10]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[11]),
        .I4(counter00[10]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[11]_i_1 
       (.I0(counter0_Lock_reg_n_0_[11]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[12]),
        .I4(counter00[11]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[12]_i_1 
       (.I0(counter0_Lock_reg_n_0_[12]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[13]),
        .I4(counter00[12]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[12]_i_3 
       (.I0(counter_out[12]),
        .O(\counter0[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[12]_i_4 
       (.I0(counter_out[11]),
        .O(\counter0[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[12]_i_5 
       (.I0(counter_out[10]),
        .O(\counter0[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[12]_i_6 
       (.I0(counter_out[9]),
        .O(\counter0[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[13]_i_1 
       (.I0(counter0_Lock_reg_n_0_[13]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[14]),
        .I4(counter00[13]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[14]_i_1 
       (.I0(counter0_Lock_reg_n_0_[14]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[15]),
        .I4(counter00[14]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[15]_i_1 
       (.I0(counter0_Lock_reg_n_0_[15]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[16]),
        .I4(counter00[15]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[16]_i_1 
       (.I0(counter0_Lock_reg_n_0_[16]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[17]),
        .I4(counter00[16]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[16]_i_3 
       (.I0(counter_out[16]),
        .O(\counter0[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[16]_i_4 
       (.I0(counter_out[15]),
        .O(\counter0[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[16]_i_5 
       (.I0(counter_out[14]),
        .O(\counter0[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[16]_i_6 
       (.I0(counter_out[13]),
        .O(\counter0[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[17]_i_1 
       (.I0(counter0_Lock_reg_n_0_[17]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[18]),
        .I4(counter00[17]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[18]_i_1 
       (.I0(counter0_Lock_reg_n_0_[18]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[19]),
        .I4(counter00[18]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[19]_i_1 
       (.I0(counter0_Lock_reg_n_0_[19]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[20]),
        .I4(counter00[19]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[1]_i_1 
       (.I0(counter0_Lock_reg_n_0_[1]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[2]),
        .I4(counter00[1]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[20]_i_1 
       (.I0(counter0_Lock_reg_n_0_[20]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[21]),
        .I4(counter00[20]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[20]_i_3 
       (.I0(counter_out[20]),
        .O(\counter0[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[20]_i_4 
       (.I0(counter_out[19]),
        .O(\counter0[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[20]_i_5 
       (.I0(counter_out[18]),
        .O(\counter0[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[20]_i_6 
       (.I0(counter_out[17]),
        .O(\counter0[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[21]_i_1 
       (.I0(counter0_Lock_reg_n_0_[21]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[22]),
        .I4(counter00[21]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[22]_i_1 
       (.I0(counter0_Lock_reg_n_0_[22]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[23]),
        .I4(counter00[22]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[23]_i_1 
       (.I0(counter0_Lock_reg_n_0_[23]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[24]),
        .I4(counter00[23]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[24]_i_1 
       (.I0(counter0_Lock_reg_n_0_[24]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[25]),
        .I4(counter00[24]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[24]_i_3 
       (.I0(counter_out[24]),
        .O(\counter0[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[24]_i_4 
       (.I0(counter_out[23]),
        .O(\counter0[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[24]_i_5 
       (.I0(counter_out[22]),
        .O(\counter0[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[24]_i_6 
       (.I0(counter_out[21]),
        .O(\counter0[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[25]_i_1 
       (.I0(counter0_Lock_reg_n_0_[25]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[26]),
        .I4(counter00[25]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[26]_i_1 
       (.I0(counter0_Lock_reg_n_0_[26]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[27]),
        .I4(counter00[26]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[27]_i_1 
       (.I0(counter0_Lock_reg_n_0_[27]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[28]),
        .I4(counter00[27]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[28]_i_1 
       (.I0(counter0_Lock_reg_n_0_[28]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[29]),
        .I4(counter00[28]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[28]_i_3 
       (.I0(counter_out[28]),
        .O(\counter0[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[28]_i_4 
       (.I0(counter_out[27]),
        .O(\counter0[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[28]_i_5 
       (.I0(counter_out[26]),
        .O(\counter0[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[28]_i_6 
       (.I0(counter_out[25]),
        .O(\counter0[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[29]_i_1 
       (.I0(counter0_Lock_reg_n_0_[29]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[30]),
        .I4(counter00[29]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[2]_i_1 
       (.I0(counter0_Lock_reg_n_0_[2]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[3]),
        .I4(counter00[2]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[30]_i_1 
       (.I0(counter0_Lock_reg_n_0_[30]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[31]),
        .I4(counter00[30]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \counter0[30]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(counter0_OUT),
        .I3(sq0),
        .O(\counter0[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \counter0[31]_i_1 
       (.I0(M0_reg_n_0),
        .I1(counter0_OUT),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(counter0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \counter0[31]_i_2 
       (.I0(counter00[31]),
        .I1(\counter0[31]_i_3_n_0 ),
        .I2(\counter0[31]_i_4_n_0 ),
        .I3(counter0_Lock_reg_n_0_[31]),
        .O(\counter0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFC1DCF1D)) 
    \counter0[31]_i_3 
       (.I0(M0_reg_n_0),
        .I1(p_0_in[0]),
        .I2(counter0_OUT),
        .I3(p_0_in[1]),
        .I4(sq0),
        .O(\counter0[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \counter0[31]_i_4 
       (.I0(M0_reg_n_0),
        .I1(p_0_in[0]),
        .I2(counter0_OUT),
        .I3(p_0_in[1]),
        .O(\counter0[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0A3A0F3AA02AAA2)) 
    \counter0[32]_i_1 
       (.I0(counter00[32]),
        .I1(M0_reg_n_0),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(sq0),
        .I5(counter0_OUT),
        .O(\counter0[32]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[32]_i_3 
       (.I0(counter0_OUT),
        .O(\counter0[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[32]_i_4 
       (.I0(counter_out[31]),
        .O(\counter0[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[32]_i_5 
       (.I0(counter_out[30]),
        .O(\counter0[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[32]_i_6 
       (.I0(counter_out[29]),
        .O(\counter0[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[3]_i_1 
       (.I0(counter0_Lock_reg_n_0_[3]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[4]),
        .I4(counter00[3]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[4]_i_1 
       (.I0(counter0_Lock_reg_n_0_[4]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[5]),
        .I4(counter00[4]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[4]_i_3 
       (.I0(counter_out[4]),
        .O(\counter0[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[4]_i_4 
       (.I0(counter_out[3]),
        .O(\counter0[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[4]_i_5 
       (.I0(counter_out[2]),
        .O(\counter0[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[4]_i_6 
       (.I0(counter_out[1]),
        .O(\counter0[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[5]_i_1 
       (.I0(counter0_Lock_reg_n_0_[5]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[6]),
        .I4(counter00[5]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[6]_i_1 
       (.I0(counter0_Lock_reg_n_0_[6]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[7]),
        .I4(counter00[6]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[7]_i_1 
       (.I0(counter0_Lock_reg_n_0_[7]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[8]),
        .I4(counter00[7]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[8]_i_1 
       (.I0(counter0_Lock_reg_n_0_[8]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[9]),
        .I4(counter00[8]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[8]_i_3 
       (.I0(counter_out[8]),
        .O(\counter0[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[8]_i_4 
       (.I0(counter_out[7]),
        .O(\counter0[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[8]_i_5 
       (.I0(counter_out[6]),
        .O(\counter0[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0[8]_i_6 
       (.I0(counter_out[5]),
        .O(\counter0[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter0[9]_i_1 
       (.I0(counter0_Lock_reg_n_0_[9]),
        .I1(\counter0[31]_i_4_n_0 ),
        .I2(\counter0[30]_i_2_n_0 ),
        .I3(counter0_Lock_reg_n_0_[10]),
        .I4(counter00[9]),
        .I5(\counter0[31]_i_3_n_0 ),
        .O(\counter0[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \counter0_Lock[31]_i_1 
       (.I0(counter_ch[0]),
        .I1(counter_we),
        .I2(counter_ch[1]),
        .O(counter0_Lock));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[0] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[0]),
        .Q(counter0_Lock_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[10] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[10]),
        .Q(counter0_Lock_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[11] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[11]),
        .Q(counter0_Lock_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[12] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[12]),
        .Q(counter0_Lock_reg_n_0_[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[13] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[13]),
        .Q(counter0_Lock_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[14] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[14]),
        .Q(counter0_Lock_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[15] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[15]),
        .Q(counter0_Lock_reg_n_0_[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[16] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[16]),
        .Q(counter0_Lock_reg_n_0_[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[17] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[17]),
        .Q(counter0_Lock_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[18] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[18]),
        .Q(counter0_Lock_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[19] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[19]),
        .Q(counter0_Lock_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[1] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[1]),
        .Q(counter0_Lock_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[20] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[20]),
        .Q(counter0_Lock_reg_n_0_[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[21] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[21]),
        .Q(counter0_Lock_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[22] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[22]),
        .Q(counter0_Lock_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[23] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[23]),
        .Q(counter0_Lock_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[24] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[24]),
        .Q(counter0_Lock_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[25] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[25]),
        .Q(counter0_Lock_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[26] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[26]),
        .Q(counter0_Lock_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[27] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[27]),
        .Q(counter0_Lock_reg_n_0_[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[28] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[28]),
        .Q(counter0_Lock_reg_n_0_[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[29] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[29]),
        .Q(counter0_Lock_reg_n_0_[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[2] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[2]),
        .Q(counter0_Lock_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[30] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[30]),
        .Q(counter0_Lock_reg_n_0_[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[31] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[31]),
        .Q(counter0_Lock_reg_n_0_[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[3] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[3]),
        .Q(counter0_Lock_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[4] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[4]),
        .Q(counter0_Lock_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[5] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[5]),
        .Q(counter0_Lock_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[6] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[6]),
        .Q(counter0_Lock_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[7] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[7]),
        .Q(counter0_Lock_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[8] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[8]),
        .Q(counter0_Lock_reg_n_0_[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_Lock_reg[9] 
       (.C(clk),
        .CE(counter0_Lock),
        .CLR(rst),
        .D(counter_val[9]),
        .Q(counter0_Lock_reg_n_0_[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[0] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[0]_i_1_n_0 ),
        .Q(counter_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[10] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[10]_i_1_n_0 ),
        .Q(counter_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[11] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[11]_i_1_n_0 ),
        .Q(counter_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[12] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[12]_i_1_n_0 ),
        .Q(counter_out[12]));
  CARRY4 \counter0_reg[12]_i_2 
       (.CI(\counter0_reg[8]_i_2_n_0 ),
        .CO({\counter0_reg[12]_i_2_n_0 ,\counter0_reg[12]_i_2_n_1 ,\counter0_reg[12]_i_2_n_2 ,\counter0_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_out[12:9]),
        .O(counter00[12:9]),
        .S({\counter0[12]_i_3_n_0 ,\counter0[12]_i_4_n_0 ,\counter0[12]_i_5_n_0 ,\counter0[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[13] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[13]_i_1_n_0 ),
        .Q(counter_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[14] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[14]_i_1_n_0 ),
        .Q(counter_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[15] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[15]_i_1_n_0 ),
        .Q(counter_out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[16] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[16]_i_1_n_0 ),
        .Q(counter_out[16]));
  CARRY4 \counter0_reg[16]_i_2 
       (.CI(\counter0_reg[12]_i_2_n_0 ),
        .CO({\counter0_reg[16]_i_2_n_0 ,\counter0_reg[16]_i_2_n_1 ,\counter0_reg[16]_i_2_n_2 ,\counter0_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_out[16:13]),
        .O(counter00[16:13]),
        .S({\counter0[16]_i_3_n_0 ,\counter0[16]_i_4_n_0 ,\counter0[16]_i_5_n_0 ,\counter0[16]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[17] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[17]_i_1_n_0 ),
        .Q(counter_out[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[18] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[18]_i_1_n_0 ),
        .Q(counter_out[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[19] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[19]_i_1_n_0 ),
        .Q(counter_out[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[1] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[1]_i_1_n_0 ),
        .Q(counter_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[20] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[20]_i_1_n_0 ),
        .Q(counter_out[20]));
  CARRY4 \counter0_reg[20]_i_2 
       (.CI(\counter0_reg[16]_i_2_n_0 ),
        .CO({\counter0_reg[20]_i_2_n_0 ,\counter0_reg[20]_i_2_n_1 ,\counter0_reg[20]_i_2_n_2 ,\counter0_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_out[20:17]),
        .O(counter00[20:17]),
        .S({\counter0[20]_i_3_n_0 ,\counter0[20]_i_4_n_0 ,\counter0[20]_i_5_n_0 ,\counter0[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[21] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[21]_i_1_n_0 ),
        .Q(counter_out[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[22] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[22]_i_1_n_0 ),
        .Q(counter_out[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[23] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[23]_i_1_n_0 ),
        .Q(counter_out[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[24] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[24]_i_1_n_0 ),
        .Q(counter_out[24]));
  CARRY4 \counter0_reg[24]_i_2 
       (.CI(\counter0_reg[20]_i_2_n_0 ),
        .CO({\counter0_reg[24]_i_2_n_0 ,\counter0_reg[24]_i_2_n_1 ,\counter0_reg[24]_i_2_n_2 ,\counter0_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_out[24:21]),
        .O(counter00[24:21]),
        .S({\counter0[24]_i_3_n_0 ,\counter0[24]_i_4_n_0 ,\counter0[24]_i_5_n_0 ,\counter0[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[25] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[25]_i_1_n_0 ),
        .Q(counter_out[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[26] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[26]_i_1_n_0 ),
        .Q(counter_out[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[27] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[27]_i_1_n_0 ),
        .Q(counter_out[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[28] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[28]_i_1_n_0 ),
        .Q(counter_out[28]));
  CARRY4 \counter0_reg[28]_i_2 
       (.CI(\counter0_reg[24]_i_2_n_0 ),
        .CO({\counter0_reg[28]_i_2_n_0 ,\counter0_reg[28]_i_2_n_1 ,\counter0_reg[28]_i_2_n_2 ,\counter0_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_out[28:25]),
        .O(counter00[28:25]),
        .S({\counter0[28]_i_3_n_0 ,\counter0[28]_i_4_n_0 ,\counter0[28]_i_5_n_0 ,\counter0[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[29] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[29]_i_1_n_0 ),
        .Q(counter_out[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[2] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[2]_i_1_n_0 ),
        .Q(counter_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[30] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[30]_i_1_n_0 ),
        .Q(counter_out[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[31] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[31]_i_2_n_0 ),
        .Q(counter_out[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[32] 
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter0[32]_i_1_n_0 ),
        .Q(counter0_OUT));
  CARRY4 \counter0_reg[32]_i_2 
       (.CI(\counter0_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter0_reg[32]_i_2_CO_UNCONNECTED [3],\counter0_reg[32]_i_2_n_1 ,\counter0_reg[32]_i_2_n_2 ,\counter0_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,counter_out[31:29]}),
        .O(counter00[32:29]),
        .S({\counter0[32]_i_3_n_0 ,\counter0[32]_i_4_n_0 ,\counter0[32]_i_5_n_0 ,\counter0[32]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[3] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[3]_i_1_n_0 ),
        .Q(counter_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[4] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[4]_i_1_n_0 ),
        .Q(counter_out[4]));
  CARRY4 \counter0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter0_reg[4]_i_2_n_0 ,\counter0_reg[4]_i_2_n_1 ,\counter0_reg[4]_i_2_n_2 ,\counter0_reg[4]_i_2_n_3 }),
        .CYINIT(counter_out[0]),
        .DI(counter_out[4:1]),
        .O(counter00[4:1]),
        .S({\counter0[4]_i_3_n_0 ,\counter0[4]_i_4_n_0 ,\counter0[4]_i_5_n_0 ,\counter0[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[5] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[5]_i_1_n_0 ),
        .Q(counter_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[6] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[6]_i_1_n_0 ),
        .Q(counter_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[7] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[7]_i_1_n_0 ),
        .Q(counter_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[8] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[8]_i_1_n_0 ),
        .Q(counter_out[8]));
  CARRY4 \counter0_reg[8]_i_2 
       (.CI(\counter0_reg[4]_i_2_n_0 ),
        .CO({\counter0_reg[8]_i_2_n_0 ,\counter0_reg[8]_i_2_n_1 ,\counter0_reg[8]_i_2_n_2 ,\counter0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_out[8:5]),
        .O(counter00[8:5]),
        .S({\counter0[8]_i_3_n_0 ,\counter0[8]_i_4_n_0 ,\counter0[8]_i_5_n_0 ,\counter0[8]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter0_reg[9] 
       (.C(clk0),
        .CE(counter0),
        .CLR(rst),
        .D(\counter0[9]_i_1_n_0 ),
        .Q(counter_out[9]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter1[0]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter1[0]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[0]),
        .I4(counter1_Lock_reg_n_0_[1]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[10]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[10]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[10]),
        .I4(counter1_Lock_reg_n_0_[11]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[11]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[11]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[11]),
        .I4(counter1_Lock_reg_n_0_[12]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[12]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[12]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[12]),
        .I4(counter1_Lock_reg_n_0_[13]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[12]_i_3 
       (.I0(counter1[12]),
        .O(\counter1[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[12]_i_4 
       (.I0(counter1[11]),
        .O(\counter1[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[12]_i_5 
       (.I0(counter1[10]),
        .O(\counter1[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[12]_i_6 
       (.I0(counter1[9]),
        .O(\counter1[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[13]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[13]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[13]),
        .I4(counter1_Lock_reg_n_0_[14]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[14]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[14]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[14]),
        .I4(counter1_Lock_reg_n_0_[15]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[15]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[15]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[15]),
        .I4(counter1_Lock_reg_n_0_[16]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[16]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[16]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[16]),
        .I4(counter1_Lock_reg_n_0_[17]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[16]_i_3 
       (.I0(counter1[16]),
        .O(\counter1[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[16]_i_4 
       (.I0(counter1[15]),
        .O(\counter1[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[16]_i_5 
       (.I0(counter1[14]),
        .O(\counter1[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[16]_i_6 
       (.I0(counter1[13]),
        .O(\counter1[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[17]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[17]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[17]),
        .I4(counter1_Lock_reg_n_0_[18]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[18]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[18]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[18]),
        .I4(counter1_Lock_reg_n_0_[19]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[19]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[19]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[19]),
        .I4(counter1_Lock_reg_n_0_[20]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[1]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[1]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[1]),
        .I4(counter1_Lock_reg_n_0_[2]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[20]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[20]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[20]),
        .I4(counter1_Lock_reg_n_0_[21]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[20]_i_3 
       (.I0(counter1[20]),
        .O(\counter1[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[20]_i_4 
       (.I0(counter1[19]),
        .O(\counter1[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[20]_i_5 
       (.I0(counter1[18]),
        .O(\counter1[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[20]_i_6 
       (.I0(counter1[17]),
        .O(\counter1[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[21]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[21]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[21]),
        .I4(counter1_Lock_reg_n_0_[22]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[22]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[22]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[22]),
        .I4(counter1_Lock_reg_n_0_[23]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[23]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[23]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[23]),
        .I4(counter1_Lock_reg_n_0_[24]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[24]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[24]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[24]),
        .I4(counter1_Lock_reg_n_0_[25]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[24]_i_3 
       (.I0(counter1[24]),
        .O(\counter1[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[24]_i_4 
       (.I0(counter1[23]),
        .O(\counter1[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[24]_i_5 
       (.I0(counter1[22]),
        .O(\counter1[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[24]_i_6 
       (.I0(counter1[21]),
        .O(\counter1[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[25]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[25]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[25]),
        .I4(counter1_Lock_reg_n_0_[26]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[26]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[26]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[26]),
        .I4(counter1_Lock_reg_n_0_[27]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[27]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[27]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[27]),
        .I4(counter1_Lock_reg_n_0_[28]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[28]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[28]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[28]),
        .I4(counter1_Lock_reg_n_0_[29]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[28]_i_3 
       (.I0(counter1[28]),
        .O(\counter1[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[28]_i_4 
       (.I0(counter1[27]),
        .O(\counter1[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[28]_i_5 
       (.I0(counter1[26]),
        .O(\counter1[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[28]_i_6 
       (.I0(counter1[25]),
        .O(\counter1[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[29]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[29]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[29]),
        .I4(counter1_Lock_reg_n_0_[30]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[2]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[2]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[2]),
        .I4(counter1_Lock_reg_n_0_[3]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[30]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[30]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[30]),
        .I4(counter1_Lock_reg_n_0_[31]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h0440)) 
    \counter1[30]_i_2 
       (.I0(counter_Ctrl_reg_n_0_[9]),
        .I1(counter_Ctrl_reg_n_0_[10]),
        .I2(counter1_OUT),
        .I3(sq1),
        .O(\counter1[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter1[31]_i_1 
       (.I0(counter1_Lock_reg_n_0_[31]),
        .I1(\counter1[31]_i_2_n_0 ),
        .I2(counter10[31]),
        .I3(\counter1[31]_i_3_n_0 ),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h002E)) 
    \counter1[31]_i_2 
       (.I0(M1_reg_n_0),
        .I1(counter_Ctrl_reg_n_0_[9]),
        .I2(counter1_OUT),
        .I3(counter_Ctrl_reg_n_0_[10]),
        .O(\counter1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBA1ABF1)) 
    \counter1[31]_i_3 
       (.I0(counter_Ctrl_reg_n_0_[9]),
        .I1(M1_reg_n_0),
        .I2(counter_Ctrl_reg_n_0_[10]),
        .I3(counter1_OUT),
        .I4(sq1),
        .O(\counter1[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter1[32]_i_1 
       (.I0(counter_Ctrl_reg_n_0_[10]),
        .I1(counter_Ctrl_reg_n_0_[9]),
        .I2(counter1_OUT),
        .I3(M1_reg_n_0),
        .O(\counter1[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9F0F9FF00300030)) 
    \counter1[32]_i_2 
       (.I0(sq1),
        .I1(counter1_OUT),
        .I2(counter_Ctrl_reg_n_0_[9]),
        .I3(counter_Ctrl_reg_n_0_[10]),
        .I4(M1_reg_n_0),
        .I5(counter10[32]),
        .O(p_1_in[32]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[32]_i_4 
       (.I0(counter1_OUT),
        .O(\counter1[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[32]_i_5 
       (.I0(counter1[31]),
        .O(\counter1[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[32]_i_6 
       (.I0(counter1[30]),
        .O(\counter1[32]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[32]_i_7 
       (.I0(counter1[29]),
        .O(\counter1[32]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[3]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[3]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[3]),
        .I4(counter1_Lock_reg_n_0_[4]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[4]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[4]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[4]),
        .I4(counter1_Lock_reg_n_0_[5]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[4]_i_3 
       (.I0(counter1[4]),
        .O(\counter1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[4]_i_4 
       (.I0(counter1[3]),
        .O(\counter1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[4]_i_5 
       (.I0(counter1[2]),
        .O(\counter1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[4]_i_6 
       (.I0(counter1[1]),
        .O(\counter1[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[5]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[5]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[5]),
        .I4(counter1_Lock_reg_n_0_[6]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[6]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[6]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[6]),
        .I4(counter1_Lock_reg_n_0_[7]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[7]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[7]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[7]),
        .I4(counter1_Lock_reg_n_0_[8]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[8]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[8]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[8]),
        .I4(counter1_Lock_reg_n_0_[9]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[8]_i_3 
       (.I0(counter1[8]),
        .O(\counter1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[8]_i_4 
       (.I0(counter1[7]),
        .O(\counter1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[8]_i_5 
       (.I0(counter1[6]),
        .O(\counter1[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1[8]_i_6 
       (.I0(counter1[5]),
        .O(\counter1[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter1[9]_i_1 
       (.I0(\counter1[31]_i_3_n_0 ),
        .I1(counter10[9]),
        .I2(\counter1[31]_i_2_n_0 ),
        .I3(counter1_Lock_reg_n_0_[9]),
        .I4(counter1_Lock_reg_n_0_[10]),
        .I5(\counter1[30]_i_2_n_0 ),
        .O(p_1_in[9]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter1_Lock[31]_i_1 
       (.I0(counter_ch[1]),
        .I1(counter_ch[0]),
        .I2(counter_we),
        .O(counter1_Lock));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[0] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[0]),
        .Q(counter1_Lock_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[10] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[10]),
        .Q(counter1_Lock_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[11] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[11]),
        .Q(counter1_Lock_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[12] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[12]),
        .Q(counter1_Lock_reg_n_0_[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[13] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[13]),
        .Q(counter1_Lock_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[14] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[14]),
        .Q(counter1_Lock_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[15] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[15]),
        .Q(counter1_Lock_reg_n_0_[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[16] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[16]),
        .Q(counter1_Lock_reg_n_0_[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[17] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[17]),
        .Q(counter1_Lock_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[18] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[18]),
        .Q(counter1_Lock_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[19] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[19]),
        .Q(counter1_Lock_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[1] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[1]),
        .Q(counter1_Lock_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[20] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[20]),
        .Q(counter1_Lock_reg_n_0_[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[21] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[21]),
        .Q(counter1_Lock_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[22] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[22]),
        .Q(counter1_Lock_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[23] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[23]),
        .Q(counter1_Lock_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[24] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[24]),
        .Q(counter1_Lock_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[25] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[25]),
        .Q(counter1_Lock_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[26] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[26]),
        .Q(counter1_Lock_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[27] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[27]),
        .Q(counter1_Lock_reg_n_0_[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[28] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[28]),
        .Q(counter1_Lock_reg_n_0_[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[29] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[29]),
        .Q(counter1_Lock_reg_n_0_[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[2] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[2]),
        .Q(counter1_Lock_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[30] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[30]),
        .Q(counter1_Lock_reg_n_0_[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[31] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[31]),
        .Q(counter1_Lock_reg_n_0_[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[3] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[3]),
        .Q(counter1_Lock_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[4] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[4]),
        .Q(counter1_Lock_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[5] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[5]),
        .Q(counter1_Lock_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[6] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[6]),
        .Q(counter1_Lock_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[7] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[7]),
        .Q(counter1_Lock_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[8] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[8]),
        .Q(counter1_Lock_reg_n_0_[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_Lock_reg[9] 
       (.C(clk),
        .CE(counter1_Lock),
        .CLR(rst),
        .D(counter_val[9]),
        .Q(counter1_Lock_reg_n_0_[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[0] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[0]),
        .Q(counter1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[10] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[10]),
        .Q(counter1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[11] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[11]),
        .Q(counter1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[12] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[12]),
        .Q(counter1[12]));
  CARRY4 \counter1_reg[12]_i_2 
       (.CI(\counter1_reg[8]_i_2_n_0 ),
        .CO({\counter1_reg[12]_i_2_n_0 ,\counter1_reg[12]_i_2_n_1 ,\counter1_reg[12]_i_2_n_2 ,\counter1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter1[12:9]),
        .O(counter10[12:9]),
        .S({\counter1[12]_i_3_n_0 ,\counter1[12]_i_4_n_0 ,\counter1[12]_i_5_n_0 ,\counter1[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[13] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[13]),
        .Q(counter1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[14] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[14]),
        .Q(counter1[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[15] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[15]),
        .Q(counter1[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[16] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[16]),
        .Q(counter1[16]));
  CARRY4 \counter1_reg[16]_i_2 
       (.CI(\counter1_reg[12]_i_2_n_0 ),
        .CO({\counter1_reg[16]_i_2_n_0 ,\counter1_reg[16]_i_2_n_1 ,\counter1_reg[16]_i_2_n_2 ,\counter1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter1[16:13]),
        .O(counter10[16:13]),
        .S({\counter1[16]_i_3_n_0 ,\counter1[16]_i_4_n_0 ,\counter1[16]_i_5_n_0 ,\counter1[16]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[17] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[17]),
        .Q(counter1[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[18] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[18]),
        .Q(counter1[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[19] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[19]),
        .Q(counter1[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[1] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(counter1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[20] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[20]),
        .Q(counter1[20]));
  CARRY4 \counter1_reg[20]_i_2 
       (.CI(\counter1_reg[16]_i_2_n_0 ),
        .CO({\counter1_reg[20]_i_2_n_0 ,\counter1_reg[20]_i_2_n_1 ,\counter1_reg[20]_i_2_n_2 ,\counter1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter1[20:17]),
        .O(counter10[20:17]),
        .S({\counter1[20]_i_3_n_0 ,\counter1[20]_i_4_n_0 ,\counter1[20]_i_5_n_0 ,\counter1[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[21] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[21]),
        .Q(counter1[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[22] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[22]),
        .Q(counter1[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[23] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[23]),
        .Q(counter1[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[24] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[24]),
        .Q(counter1[24]));
  CARRY4 \counter1_reg[24]_i_2 
       (.CI(\counter1_reg[20]_i_2_n_0 ),
        .CO({\counter1_reg[24]_i_2_n_0 ,\counter1_reg[24]_i_2_n_1 ,\counter1_reg[24]_i_2_n_2 ,\counter1_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter1[24:21]),
        .O(counter10[24:21]),
        .S({\counter1[24]_i_3_n_0 ,\counter1[24]_i_4_n_0 ,\counter1[24]_i_5_n_0 ,\counter1[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[25] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[25]),
        .Q(counter1[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[26] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[26]),
        .Q(counter1[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[27] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[27]),
        .Q(counter1[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[28] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[28]),
        .Q(counter1[28]));
  CARRY4 \counter1_reg[28]_i_2 
       (.CI(\counter1_reg[24]_i_2_n_0 ),
        .CO({\counter1_reg[28]_i_2_n_0 ,\counter1_reg[28]_i_2_n_1 ,\counter1_reg[28]_i_2_n_2 ,\counter1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter1[28:25]),
        .O(counter10[28:25]),
        .S({\counter1[28]_i_3_n_0 ,\counter1[28]_i_4_n_0 ,\counter1[28]_i_5_n_0 ,\counter1[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[29] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[29]),
        .Q(counter1[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[2] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(counter1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[30] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[30]),
        .Q(counter1[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[31] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[31]),
        .Q(counter1[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[32] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[32]),
        .Q(counter1_OUT));
  CARRY4 \counter1_reg[32]_i_3 
       (.CI(\counter1_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter1_reg[32]_i_3_CO_UNCONNECTED [3],\counter1_reg[32]_i_3_n_1 ,\counter1_reg[32]_i_3_n_2 ,\counter1_reg[32]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,counter1[31:29]}),
        .O(counter10[32:29]),
        .S({\counter1[32]_i_4_n_0 ,\counter1[32]_i_5_n_0 ,\counter1[32]_i_6_n_0 ,\counter1[32]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[3] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[3]),
        .Q(counter1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[4] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[4]),
        .Q(counter1[4]));
  CARRY4 \counter1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter1_reg[4]_i_2_n_0 ,\counter1_reg[4]_i_2_n_1 ,\counter1_reg[4]_i_2_n_2 ,\counter1_reg[4]_i_2_n_3 }),
        .CYINIT(counter1[0]),
        .DI(counter1[4:1]),
        .O(counter10[4:1]),
        .S({\counter1[4]_i_3_n_0 ,\counter1[4]_i_4_n_0 ,\counter1[4]_i_5_n_0 ,\counter1[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[5] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[5]),
        .Q(counter1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[6] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[6]),
        .Q(counter1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[7] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[7]),
        .Q(counter1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[8] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[8]),
        .Q(counter1[8]));
  CARRY4 \counter1_reg[8]_i_2 
       (.CI(\counter1_reg[4]_i_2_n_0 ),
        .CO({\counter1_reg[8]_i_2_n_0 ,\counter1_reg[8]_i_2_n_1 ,\counter1_reg[8]_i_2_n_2 ,\counter1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter1[8:5]),
        .O(counter10[8:5]),
        .S({\counter1[8]_i_3_n_0 ,\counter1[8]_i_4_n_0 ,\counter1[8]_i_5_n_0 ,\counter1[8]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[9] 
       (.C(clk1),
        .CE(\counter1[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[9]),
        .Q(counter1[9]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \counter2[0]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter2[0]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[0]),
        .I4(counter2_Lock_reg_n_0_[1]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[10]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[10]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[10]),
        .I4(counter2_Lock_reg_n_0_[11]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[11]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[11]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[11]),
        .I4(counter2_Lock_reg_n_0_[12]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[12]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[12]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[12]),
        .I4(counter2_Lock_reg_n_0_[13]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[12]_i_3 
       (.I0(counter2[12]),
        .O(\counter2[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[12]_i_4 
       (.I0(counter2[11]),
        .O(\counter2[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[12]_i_5 
       (.I0(counter2[10]),
        .O(\counter2[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[12]_i_6 
       (.I0(counter2[9]),
        .O(\counter2[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[13]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[13]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[13]),
        .I4(counter2_Lock_reg_n_0_[14]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[14]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[14]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[14]),
        .I4(counter2_Lock_reg_n_0_[15]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[15]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[15]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[15]),
        .I4(counter2_Lock_reg_n_0_[16]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[16]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[16]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[16]),
        .I4(counter2_Lock_reg_n_0_[17]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[16]_i_3 
       (.I0(counter2[16]),
        .O(\counter2[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[16]_i_4 
       (.I0(counter2[15]),
        .O(\counter2[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[16]_i_5 
       (.I0(counter2[14]),
        .O(\counter2[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[16]_i_6 
       (.I0(counter2[13]),
        .O(\counter2[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[17]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[17]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[17]),
        .I4(counter2_Lock_reg_n_0_[18]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[18]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[18]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[18]),
        .I4(counter2_Lock_reg_n_0_[19]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[19]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[19]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[19]),
        .I4(counter2_Lock_reg_n_0_[20]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[1]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[1]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[1]),
        .I4(counter2_Lock_reg_n_0_[2]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[20]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[20]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[20]),
        .I4(counter2_Lock_reg_n_0_[21]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[20]_i_3 
       (.I0(counter2[20]),
        .O(\counter2[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[20]_i_4 
       (.I0(counter2[19]),
        .O(\counter2[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[20]_i_5 
       (.I0(counter2[18]),
        .O(\counter2[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[20]_i_6 
       (.I0(counter2[17]),
        .O(\counter2[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[21]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[21]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[21]),
        .I4(counter2_Lock_reg_n_0_[22]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[22]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[22]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[22]),
        .I4(counter2_Lock_reg_n_0_[23]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[23]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[23]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[23]),
        .I4(counter2_Lock_reg_n_0_[24]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[24]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[24]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[24]),
        .I4(counter2_Lock_reg_n_0_[25]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[24]_i_3 
       (.I0(counter2[24]),
        .O(\counter2[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[24]_i_4 
       (.I0(counter2[23]),
        .O(\counter2[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[24]_i_5 
       (.I0(counter2[22]),
        .O(\counter2[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[24]_i_6 
       (.I0(counter2[21]),
        .O(\counter2[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[25]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[25]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[25]),
        .I4(counter2_Lock_reg_n_0_[26]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[26]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[26]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[26]),
        .I4(counter2_Lock_reg_n_0_[27]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[27]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[27]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[27]),
        .I4(counter2_Lock_reg_n_0_[28]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[28]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[28]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[28]),
        .I4(counter2_Lock_reg_n_0_[29]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[28]_i_3 
       (.I0(counter2[28]),
        .O(\counter2[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[28]_i_4 
       (.I0(counter2[27]),
        .O(\counter2[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[28]_i_5 
       (.I0(counter2[26]),
        .O(\counter2[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[28]_i_6 
       (.I0(counter2[25]),
        .O(\counter2[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[29]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[29]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[29]),
        .I4(counter2_Lock_reg_n_0_[30]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[2]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[2]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[2]),
        .I4(counter2_Lock_reg_n_0_[3]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[30]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[30]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[30]),
        .I4(counter2_Lock_reg_n_0_[31]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \counter2[30]_i_2 
       (.I0(counter_Ctrl_reg_n_0_[17]),
        .I1(counter_Ctrl_reg_n_0_[18]),
        .I2(counter2_OUT),
        .I3(sq2),
        .O(\counter2[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \counter2[31]_i_1 
       (.I0(counter2_Lock_reg_n_0_[31]),
        .I1(\counter2[31]_i_2_n_0 ),
        .I2(counter20[31]),
        .I3(\counter2[31]_i_3_n_0 ),
        .O(\counter2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h002E)) 
    \counter2[31]_i_2 
       (.I0(M2_reg_n_0),
        .I1(counter_Ctrl_reg_n_0_[17]),
        .I2(counter2_OUT),
        .I3(counter_Ctrl_reg_n_0_[18]),
        .O(\counter2[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBA1ABF1)) 
    \counter2[31]_i_3 
       (.I0(counter_Ctrl_reg_n_0_[17]),
        .I1(M2_reg_n_0),
        .I2(counter_Ctrl_reg_n_0_[18]),
        .I3(counter2_OUT),
        .I4(sq2),
        .O(\counter2[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter2[32]_i_1 
       (.I0(counter_Ctrl_reg_n_0_[18]),
        .I1(counter_Ctrl_reg_n_0_[17]),
        .I2(counter2_OUT),
        .I3(M2_reg_n_0),
        .O(\counter2[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9F0F9FF00300030)) 
    \counter2[32]_i_2 
       (.I0(sq2),
        .I1(counter2_OUT),
        .I2(counter_Ctrl_reg_n_0_[17]),
        .I3(counter_Ctrl_reg_n_0_[18]),
        .I4(M2_reg_n_0),
        .I5(counter20[32]),
        .O(\counter2[32]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[32]_i_4 
       (.I0(counter2_OUT),
        .O(\counter2[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[32]_i_5 
       (.I0(counter2[31]),
        .O(\counter2[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[32]_i_6 
       (.I0(counter2[30]),
        .O(\counter2[32]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[32]_i_7 
       (.I0(counter2[29]),
        .O(\counter2[32]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[3]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[3]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[3]),
        .I4(counter2_Lock_reg_n_0_[4]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[4]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[4]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[4]),
        .I4(counter2_Lock_reg_n_0_[5]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[4]_i_3 
       (.I0(counter2[4]),
        .O(\counter2[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[4]_i_4 
       (.I0(counter2[3]),
        .O(\counter2[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[4]_i_5 
       (.I0(counter2[2]),
        .O(\counter2[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[4]_i_6 
       (.I0(counter2[1]),
        .O(\counter2[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[5]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[5]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[5]),
        .I4(counter2_Lock_reg_n_0_[6]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[6]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[6]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[6]),
        .I4(counter2_Lock_reg_n_0_[7]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[7]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[7]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[7]),
        .I4(counter2_Lock_reg_n_0_[8]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[8]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[8]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[8]),
        .I4(counter2_Lock_reg_n_0_[9]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[8]_i_3 
       (.I0(counter2[8]),
        .O(\counter2[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[8]_i_4 
       (.I0(counter2[7]),
        .O(\counter2[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[8]_i_5 
       (.I0(counter2[6]),
        .O(\counter2[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter2[8]_i_6 
       (.I0(counter2[5]),
        .O(\counter2[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter2[9]_i_1 
       (.I0(\counter2[31]_i_3_n_0 ),
        .I1(counter20[9]),
        .I2(\counter2[31]_i_2_n_0 ),
        .I3(counter2_Lock_reg_n_0_[9]),
        .I4(counter2_Lock_reg_n_0_[10]),
        .I5(\counter2[30]_i_2_n_0 ),
        .O(\counter2[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \counter2_Lock[31]_i_1 
       (.I0(counter_ch[0]),
        .I1(counter_we),
        .I2(counter_ch[1]),
        .O(counter2_Lock));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[0] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[0]),
        .Q(counter2_Lock_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[10] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[10]),
        .Q(counter2_Lock_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[11] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[11]),
        .Q(counter2_Lock_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[12] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[12]),
        .Q(counter2_Lock_reg_n_0_[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[13] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[13]),
        .Q(counter2_Lock_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[14] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[14]),
        .Q(counter2_Lock_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[15] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[15]),
        .Q(counter2_Lock_reg_n_0_[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[16] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[16]),
        .Q(counter2_Lock_reg_n_0_[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[17] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[17]),
        .Q(counter2_Lock_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[18] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[18]),
        .Q(counter2_Lock_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[19] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[19]),
        .Q(counter2_Lock_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[1] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[1]),
        .Q(counter2_Lock_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[20] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[20]),
        .Q(counter2_Lock_reg_n_0_[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[21] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[21]),
        .Q(counter2_Lock_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[22] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[22]),
        .Q(counter2_Lock_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[23] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[23]),
        .Q(counter2_Lock_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[24] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[24]),
        .Q(counter2_Lock_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[25] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[25]),
        .Q(counter2_Lock_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[26] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[26]),
        .Q(counter2_Lock_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[27] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[27]),
        .Q(counter2_Lock_reg_n_0_[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[28] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[28]),
        .Q(counter2_Lock_reg_n_0_[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[29] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[29]),
        .Q(counter2_Lock_reg_n_0_[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[2] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[2]),
        .Q(counter2_Lock_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[30] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[30]),
        .Q(counter2_Lock_reg_n_0_[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[31] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[31]),
        .Q(counter2_Lock_reg_n_0_[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[3] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[3]),
        .Q(counter2_Lock_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[4] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[4]),
        .Q(counter2_Lock_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[5] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[5]),
        .Q(counter2_Lock_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[6] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[6]),
        .Q(counter2_Lock_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[7] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[7]),
        .Q(counter2_Lock_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[8] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[8]),
        .Q(counter2_Lock_reg_n_0_[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_Lock_reg[9] 
       (.C(clk),
        .CE(counter2_Lock),
        .CLR(rst),
        .D(counter_val[9]),
        .Q(counter2_Lock_reg_n_0_[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[0] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[0]_i_1_n_0 ),
        .Q(counter2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[10] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[10]_i_1_n_0 ),
        .Q(counter2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[11] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[11]_i_1_n_0 ),
        .Q(counter2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[12] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[12]_i_1_n_0 ),
        .Q(counter2[12]));
  CARRY4 \counter2_reg[12]_i_2 
       (.CI(\counter2_reg[8]_i_2_n_0 ),
        .CO({\counter2_reg[12]_i_2_n_0 ,\counter2_reg[12]_i_2_n_1 ,\counter2_reg[12]_i_2_n_2 ,\counter2_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter2[12:9]),
        .O(counter20[12:9]),
        .S({\counter2[12]_i_3_n_0 ,\counter2[12]_i_4_n_0 ,\counter2[12]_i_5_n_0 ,\counter2[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[13] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[13]_i_1_n_0 ),
        .Q(counter2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[14] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[14]_i_1_n_0 ),
        .Q(counter2[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[15] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[15]_i_1_n_0 ),
        .Q(counter2[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[16] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[16]_i_1_n_0 ),
        .Q(counter2[16]));
  CARRY4 \counter2_reg[16]_i_2 
       (.CI(\counter2_reg[12]_i_2_n_0 ),
        .CO({\counter2_reg[16]_i_2_n_0 ,\counter2_reg[16]_i_2_n_1 ,\counter2_reg[16]_i_2_n_2 ,\counter2_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter2[16:13]),
        .O(counter20[16:13]),
        .S({\counter2[16]_i_3_n_0 ,\counter2[16]_i_4_n_0 ,\counter2[16]_i_5_n_0 ,\counter2[16]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[17] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[17]_i_1_n_0 ),
        .Q(counter2[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[18] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[18]_i_1_n_0 ),
        .Q(counter2[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[19] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[19]_i_1_n_0 ),
        .Q(counter2[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[1] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[1]_i_1_n_0 ),
        .Q(counter2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[20] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[20]_i_1_n_0 ),
        .Q(counter2[20]));
  CARRY4 \counter2_reg[20]_i_2 
       (.CI(\counter2_reg[16]_i_2_n_0 ),
        .CO({\counter2_reg[20]_i_2_n_0 ,\counter2_reg[20]_i_2_n_1 ,\counter2_reg[20]_i_2_n_2 ,\counter2_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter2[20:17]),
        .O(counter20[20:17]),
        .S({\counter2[20]_i_3_n_0 ,\counter2[20]_i_4_n_0 ,\counter2[20]_i_5_n_0 ,\counter2[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[21] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[21]_i_1_n_0 ),
        .Q(counter2[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[22] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[22]_i_1_n_0 ),
        .Q(counter2[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[23] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[23]_i_1_n_0 ),
        .Q(counter2[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[24] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[24]_i_1_n_0 ),
        .Q(counter2[24]));
  CARRY4 \counter2_reg[24]_i_2 
       (.CI(\counter2_reg[20]_i_2_n_0 ),
        .CO({\counter2_reg[24]_i_2_n_0 ,\counter2_reg[24]_i_2_n_1 ,\counter2_reg[24]_i_2_n_2 ,\counter2_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter2[24:21]),
        .O(counter20[24:21]),
        .S({\counter2[24]_i_3_n_0 ,\counter2[24]_i_4_n_0 ,\counter2[24]_i_5_n_0 ,\counter2[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[25] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[25]_i_1_n_0 ),
        .Q(counter2[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[26] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[26]_i_1_n_0 ),
        .Q(counter2[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[27] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[27]_i_1_n_0 ),
        .Q(counter2[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[28] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[28]_i_1_n_0 ),
        .Q(counter2[28]));
  CARRY4 \counter2_reg[28]_i_2 
       (.CI(\counter2_reg[24]_i_2_n_0 ),
        .CO({\counter2_reg[28]_i_2_n_0 ,\counter2_reg[28]_i_2_n_1 ,\counter2_reg[28]_i_2_n_2 ,\counter2_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter2[28:25]),
        .O(counter20[28:25]),
        .S({\counter2[28]_i_3_n_0 ,\counter2[28]_i_4_n_0 ,\counter2[28]_i_5_n_0 ,\counter2[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[29] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[29]_i_1_n_0 ),
        .Q(counter2[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[2] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[2]_i_1_n_0 ),
        .Q(counter2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[30] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[30]_i_1_n_0 ),
        .Q(counter2[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[31] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[31]_i_1_n_0 ),
        .Q(counter2[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[32] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[32]_i_2_n_0 ),
        .Q(counter2_OUT));
  CARRY4 \counter2_reg[32]_i_3 
       (.CI(\counter2_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter2_reg[32]_i_3_CO_UNCONNECTED [3],\counter2_reg[32]_i_3_n_1 ,\counter2_reg[32]_i_3_n_2 ,\counter2_reg[32]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,counter2[31:29]}),
        .O(counter20[32:29]),
        .S({\counter2[32]_i_4_n_0 ,\counter2[32]_i_5_n_0 ,\counter2[32]_i_6_n_0 ,\counter2[32]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[3] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[3]_i_1_n_0 ),
        .Q(counter2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[4] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[4]_i_1_n_0 ),
        .Q(counter2[4]));
  CARRY4 \counter2_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter2_reg[4]_i_2_n_0 ,\counter2_reg[4]_i_2_n_1 ,\counter2_reg[4]_i_2_n_2 ,\counter2_reg[4]_i_2_n_3 }),
        .CYINIT(counter2[0]),
        .DI(counter2[4:1]),
        .O(counter20[4:1]),
        .S({\counter2[4]_i_3_n_0 ,\counter2[4]_i_4_n_0 ,\counter2[4]_i_5_n_0 ,\counter2[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[5] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[5]_i_1_n_0 ),
        .Q(counter2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[6] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[6]_i_1_n_0 ),
        .Q(counter2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[7] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[7]_i_1_n_0 ),
        .Q(counter2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[8] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[8]_i_1_n_0 ),
        .Q(counter2[8]));
  CARRY4 \counter2_reg[8]_i_2 
       (.CI(\counter2_reg[4]_i_2_n_0 ),
        .CO({\counter2_reg[8]_i_2_n_0 ,\counter2_reg[8]_i_2_n_1 ,\counter2_reg[8]_i_2_n_2 ,\counter2_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(counter2[8:5]),
        .O(counter20[8:5]),
        .S({\counter2[8]_i_3_n_0 ,\counter2[8]_i_4_n_0 ,\counter2[8]_i_5_n_0 ,\counter2[8]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter2_reg[9] 
       (.C(clk2),
        .CE(\counter2[32]_i_1_n_0 ),
        .CLR(rst),
        .D(\counter2[9]_i_1_n_0 ),
        .Q(counter2[9]));
  LUT3 #(
    .INIT(8'h80)) 
    \counter_Ctrl[18]_i_1 
       (.I0(counter_ch[1]),
        .I1(counter_ch[0]),
        .I2(counter_we),
        .O(counter_Ctrl));
  FDCE #(
    .INIT(1'b0)) 
    \counter_Ctrl_reg[10] 
       (.C(clk),
        .CE(counter_Ctrl),
        .CLR(rst),
        .D(counter_val[10]),
        .Q(counter_Ctrl_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_Ctrl_reg[17] 
       (.C(clk),
        .CE(counter_Ctrl),
        .CLR(rst),
        .D(counter_val[17]),
        .Q(counter_Ctrl_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_Ctrl_reg[18] 
       (.C(clk),
        .CE(counter_Ctrl),
        .CLR(rst),
        .D(counter_val[18]),
        .Q(counter_Ctrl_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_Ctrl_reg[1] 
       (.C(clk),
        .CE(counter_Ctrl),
        .CLR(rst),
        .D(counter_val[1]),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_Ctrl_reg[2] 
       (.C(clk),
        .CE(counter_Ctrl),
        .CLR(rst),
        .D(counter_val[2]),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_Ctrl_reg[9] 
       (.C(clk),
        .CE(counter_Ctrl),
        .CLR(rst),
        .D(counter_val[9]),
        .Q(counter_Ctrl_reg_n_0_[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    sq0_i_1
       (.I0(counter0_OUT),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(sq0),
        .O(sq0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sq0_reg
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(sq0_i_1_n_0),
        .Q(sq0));
  LUT4 #(
    .INIT(16'hFB08)) 
    sq1_i_1
       (.I0(counter1_OUT),
        .I1(counter_Ctrl_reg_n_0_[10]),
        .I2(counter_Ctrl_reg_n_0_[9]),
        .I3(sq1),
        .O(sq1_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sq1_reg
       (.C(clk1),
        .CE(1'b1),
        .CLR(rst),
        .D(sq1_i_1_n_0),
        .Q(sq1));
  LUT4 #(
    .INIT(16'hFB08)) 
    sq2_i_1
       (.I0(counter2_OUT),
        .I1(counter_Ctrl_reg_n_0_[18]),
        .I2(counter_Ctrl_reg_n_0_[17]),
        .I3(sq2),
        .O(sq2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sq2_reg
       (.C(clk2),
        .CE(1'b1),
        .CLR(rst),
        .D(sq2_i_1_n_0),
        .Q(sq2));
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
