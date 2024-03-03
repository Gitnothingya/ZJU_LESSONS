// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:44:44 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SPIO_0/SPIO_0_sim_netlist.v
// Design      : SPIO_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPIO_0,SPIO,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SPIO,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SPIO_0
   (EN,
    LED_PEN,
    Start,
    clk,
    led_clk,
    led_clrn,
    led_sout,
    rst,
    GPIOf0,
    LED_out,
    P_Data,
    counter_set);
  input EN;
  output LED_PEN;
  input Start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 led_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME led_clk, ASSOCIATED_BUSIF led_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) output led_clk;
  output led_clrn;
  output led_sout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  output [13:0]GPIOf0;
  output [15:0]LED_out;
  input [31:0]P_Data;
  output [1:0]counter_set;

  wire EN;
  wire [13:0]GPIOf0;
  wire LED_PEN;
  wire [15:0]LED_out;
  wire [31:0]P_Data;
  wire Start;
  wire clk;
  wire [1:0]counter_set;
  wire led_clk;
  wire led_clrn;
  wire led_sout;
  wire rst;

  (* black_box = "1" *) 
  SPIO_0_SPIO inst
       (.EN(EN),
        .GPIOf0(GPIOf0),
        .LED_PEN(LED_PEN),
        .LED_out(LED_out),
        .P_Data(P_Data),
        .Start(Start),
        .clk(clk),
        .counter_set(counter_set),
        .led_clk(led_clk),
        .led_clrn(led_clrn),
        .led_sout(led_sout),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "LED_P2S" *) 
module SPIO_0_LED_P2S
   (LED_PEN,
    Start,
    clk,
    led_clk,
    led_sout,
    rst,
    LED_out);
  output LED_PEN;
  input Start;
  input clk;
  output led_clk;
  output led_sout;
  input rst;
  input [15:0]LED_out;

  wire EN_i_1_n_0;
  wire LED_PEN;
  wire [15:0]LED_out;
  wire Start;
  wire \buffer[0]_i_1_n_0 ;
  wire \buffer[0]_i_2_n_0 ;
  wire \buffer[0]_i_3_n_0 ;
  wire \buffer[10]_i_1_n_0 ;
  wire \buffer[11]_i_1_n_0 ;
  wire \buffer[12]_i_1_n_0 ;
  wire \buffer[13]_i_1_n_0 ;
  wire \buffer[14]_i_1_n_0 ;
  wire \buffer[15]_i_1_n_0 ;
  wire \buffer[1]_i_1_n_0 ;
  wire \buffer[2]_i_1_n_0 ;
  wire \buffer[3]_i_1_n_0 ;
  wire \buffer[4]_i_1_n_0 ;
  wire \buffer[5]_i_1_n_0 ;
  wire \buffer[6]_i_1_n_0 ;
  wire \buffer[7]_i_1_n_0 ;
  wire \buffer[8]_i_1_n_0 ;
  wire \buffer[9]_i_1_n_0 ;
  wire clk;
  wire led_clk;
  wire led_sout;
  wire [14:0]p_0_in;
  wire rst;
  wire s_clk_i_1_n_0;
  wire [3:0]shift_count;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_count[3]_i_1_n_0 ;
  wire \shift_count[3]_i_2_n_0 ;
  wire [1:0]start;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFB000B)) 
    EN_i_1
       (.I0(start[1]),
        .I1(start[0]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(LED_PEN),
        .O(EN_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    EN_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(EN_i_1_n_0),
        .Q(LED_PEN));
  LUT6 #(
    .INIT(64'h00000000FF10AA10)) 
    \buffer[0]_i_1 
       (.I0(state[1]),
        .I1(start[1]),
        .I2(start[0]),
        .I3(state[0]),
        .I4(\buffer[0]_i_3_n_0 ),
        .I5(rst),
        .O(\buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[0]_i_2 
       (.I0(p_0_in[0]),
        .I1(state[0]),
        .I2(LED_out[15]),
        .O(\buffer[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \buffer[0]_i_3 
       (.I0(shift_count[3]),
        .I1(shift_count[1]),
        .I2(shift_count[0]),
        .I3(shift_count[2]),
        .I4(led_clk),
        .O(\buffer[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[10]_i_1 
       (.I0(p_0_in[10]),
        .I1(state[0]),
        .I2(LED_out[5]),
        .O(\buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[11]_i_1 
       (.I0(p_0_in[11]),
        .I1(state[0]),
        .I2(LED_out[4]),
        .O(\buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[12]_i_1 
       (.I0(p_0_in[12]),
        .I1(state[0]),
        .I2(LED_out[3]),
        .O(\buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[13]_i_1 
       (.I0(p_0_in[13]),
        .I1(state[0]),
        .I2(LED_out[2]),
        .O(\buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[14]_i_1 
       (.I0(p_0_in[14]),
        .I1(state[0]),
        .I2(LED_out[1]),
        .O(\buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \buffer[15]_i_1 
       (.I0(LED_out[0]),
        .I1(state[0]),
        .O(\buffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(state[0]),
        .I2(LED_out[14]),
        .O(\buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(state[0]),
        .I2(LED_out[13]),
        .O(\buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[3]_i_1 
       (.I0(p_0_in[3]),
        .I1(state[0]),
        .I2(LED_out[12]),
        .O(\buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(state[0]),
        .I2(LED_out[11]),
        .O(\buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(state[0]),
        .I2(LED_out[10]),
        .O(\buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[6]_i_1 
       (.I0(p_0_in[6]),
        .I1(state[0]),
        .I2(LED_out[9]),
        .O(\buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[7]_i_1 
       (.I0(p_0_in[7]),
        .I1(state[0]),
        .I2(LED_out[8]),
        .O(\buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[8]_i_1 
       (.I0(p_0_in[8]),
        .I1(state[0]),
        .I2(LED_out[7]),
        .O(\buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \buffer[9]_i_1 
       (.I0(p_0_in[9]),
        .I1(state[0]),
        .I2(LED_out[6]),
        .O(\buffer[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[0]_i_2_n_0 ),
        .Q(led_sout),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[10]_i_1_n_0 ),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[11] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[11]_i_1_n_0 ),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[12] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[12]_i_1_n_0 ),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[13] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[13]_i_1_n_0 ),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[14] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[14]_i_1_n_0 ),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[15] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[15]_i_1_n_0 ),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[1]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[2]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[3]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[4]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[5]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[6]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[7]_i_1_n_0 ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[8]_i_1_n_0 ),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(\buffer[9]_i_1_n_0 ),
        .Q(p_0_in[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4A)) 
    s_clk_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(led_clk),
        .O(s_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    s_clk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(s_clk_i_1_n_0),
        .Q(led_clk));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_count[0]_i_1 
       (.I0(state[0]),
        .I1(shift_count[0]),
        .O(\shift_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \shift_count[1]_i_1 
       (.I0(shift_count[0]),
        .I1(shift_count[1]),
        .I2(state[0]),
        .O(\shift_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \shift_count[2]_i_1 
       (.I0(shift_count[1]),
        .I1(shift_count[0]),
        .I2(shift_count[2]),
        .I3(state[0]),
        .O(\shift_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    \shift_count[3]_i_1 
       (.I0(start[0]),
        .I1(start[1]),
        .I2(state[0]),
        .I3(\buffer[0]_i_3_n_0 ),
        .I4(state[1]),
        .O(\shift_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \shift_count[3]_i_2 
       (.I0(shift_count[2]),
        .I1(shift_count[1]),
        .I2(shift_count[0]),
        .I3(shift_count[3]),
        .I4(state[0]),
        .O(\shift_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[0] 
       (.C(clk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(shift_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[1] 
       (.C(clk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(shift_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[2] 
       (.C(clk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(shift_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[3] 
       (.C(clk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\shift_count[3]_i_2_n_0 ),
        .Q(shift_count[3]));
  FDRE #(
    .INIT(1'b0)) 
    \start_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Start),
        .Q(start[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(start[0]),
        .Q(start[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \state[0]_i_1 
       (.I0(start[0]),
        .I1(start[1]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80000000)) 
    \state[1]_i_1 
       (.I0(shift_count[2]),
        .I1(shift_count[1]),
        .I2(shift_count[0]),
        .I3(shift_count[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]));
endmodule

(* ECO_CHECKSUM = "984c3a83" *) (* ORIG_REF_NAME = "SPIO" *) 
module SPIO_0_SPIO
   (EN,
    LED_PEN,
    Start,
    clk,
    led_clk,
    led_clrn,
    led_sout,
    rst,
    GPIOf0,
    LED_out,
    P_Data,
    counter_set);
  input EN;
  output LED_PEN;
  input Start;
  input clk;
  output led_clk;
  output led_clrn;
  output led_sout;
  input rst;
  output [13:0]GPIOf0;
  output [15:0]LED_out;
  input [31:0]P_Data;
  output [1:0]counter_set;

  wire \<const1> ;
  wire EN;
  wire [13:0]GPIOf0;
  wire \GPIOf0[13]_i_1_n_0 ;
  wire LED_PEN;
  wire [15:0]LED_out;
  wire [31:0]P_Data;
  wire Start;
  wire clk;
  wire [1:0]counter_set;
  wire led_clk;
  wire led_sout;
  wire rst;

  assign led_clrn = \<const1> ;
  LUT2 #(
    .INIT(4'h2)) 
    \GPIOf0[13]_i_1 
       (.I0(EN),
        .I1(rst),
        .O(\GPIOf0[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[0] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[18]),
        .Q(GPIOf0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[10] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[28]),
        .Q(GPIOf0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[11] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[29]),
        .Q(GPIOf0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[12] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[30]),
        .Q(GPIOf0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[13] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[31]),
        .Q(GPIOf0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[1] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[19]),
        .Q(GPIOf0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[2] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[20]),
        .Q(GPIOf0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[3] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[21]),
        .Q(GPIOf0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[4] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[22]),
        .Q(GPIOf0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[5] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[23]),
        .Q(GPIOf0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[6] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[24]),
        .Q(GPIOf0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[7] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[25]),
        .Q(GPIOf0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[8] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[26]),
        .Q(GPIOf0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \GPIOf0_reg[9] 
       (.C(clk),
        .CE(\GPIOf0[13]_i_1_n_0 ),
        .D(P_Data[27]),
        .Q(GPIOf0[9]),
        .R(1'b0));
  SPIO_0_LED_P2S LED_P2S
       (.LED_PEN(LED_PEN),
        .LED_out(LED_out),
        .Start(Start),
        .clk(clk),
        .led_clk(led_clk),
        .led_sout(led_sout),
        .rst(rst));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[0] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[2]),
        .Q(LED_out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[10] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[12]),
        .Q(LED_out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[11] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[13]),
        .Q(LED_out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[12] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[14]),
        .Q(LED_out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[13] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[15]),
        .Q(LED_out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[14] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[16]),
        .Q(LED_out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[15] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[17]),
        .Q(LED_out[15]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[1] 
       (.C(clk),
        .CE(EN),
        .D(P_Data[3]),
        .PRE(rst),
        .Q(LED_out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[2] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[4]),
        .Q(LED_out[2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[3] 
       (.C(clk),
        .CE(EN),
        .D(P_Data[5]),
        .PRE(rst),
        .Q(LED_out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[4] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[6]),
        .Q(LED_out[4]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[5] 
       (.C(clk),
        .CE(EN),
        .D(P_Data[7]),
        .PRE(rst),
        .Q(LED_out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[6] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[8]),
        .Q(LED_out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[7] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[9]),
        .Q(LED_out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[8] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[10]),
        .Q(LED_out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \LED_reg[9] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[11]),
        .Q(LED_out[9]));
  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_set_reg[0] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[0]),
        .Q(counter_set[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_set_reg[1] 
       (.C(clk),
        .CE(EN),
        .CLR(rst),
        .D(P_Data[1]),
        .Q(counter_set[1]));
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
