// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  1 15:46:19 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SAnti_jitter_0_sim_netlist.v
// Design      : SAnti_jitter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "7795c07" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAnti_jitter
   (CR,
    Key_ready,
    RSTN,
    clk,
    readn,
    rst,
    BTN_OK,
    Key_out,
    Key_x,
    Key_y,
    SW,
    SW_OK,
    pulse_out);
  output CR;
  output Key_ready;
  input RSTN;
  input clk;
  input readn;
  output rst;
  output [3:0]BTN_OK;
  output [4:0]Key_out;
  output [4:0]Key_x;
  input [3:0]Key_y;
  input [15:0]SW;
  output [15:0]SW_OK;
  output [3:0]pulse_out;

  wire [3:0]BTN_OK;
  wire CR;
  wire [3:0]Key_y;
  wire RSTN;
  wire [15:0]SW;
  wire [15:0]SW_OK;
  wire [4:0]btn_temp;
  wire [4:4]button;
  wire [3:0]button__0;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_3_n_0 ;
  wire \counter_reg[0]_i_3_n_4 ;
  wire \counter_reg[0]_i_3_n_5 ;
  wire \counter_reg[0]_i_3_n_6 ;
  wire \counter_reg[0]_i_3_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [0:0]counter_reg_n_0_;
  wire pulse_i_1_n_0;
  wire [3:0]pulse_out;
  wire \pulse_out[3]_i_10_n_0 ;
  wire \pulse_out[3]_i_11_n_0 ;
  wire \pulse_out[3]_i_12_n_0 ;
  wire \pulse_out[3]_i_14_n_0 ;
  wire \pulse_out[3]_i_15_n_0 ;
  wire \pulse_out[3]_i_16_n_0 ;
  wire \pulse_out[3]_i_17_n_0 ;
  wire \pulse_out[3]_i_18_n_0 ;
  wire \pulse_out[3]_i_19_n_0 ;
  wire \pulse_out[3]_i_1_n_0 ;
  wire \pulse_out[3]_i_2_n_0 ;
  wire \pulse_out[3]_i_4_n_0 ;
  wire \pulse_out[3]_i_5_n_0 ;
  wire \pulse_out[3]_i_6_n_0 ;
  wire \pulse_out[3]_i_7_n_0 ;
  wire \pulse_out[3]_i_9_n_0 ;
  wire \pulse_out_reg[3]_i_13_n_0 ;
  wire \pulse_out_reg[3]_i_8_n_2 ;
  wire pulse_reg_n_0;
  wire rst;
  wire \rst_counter[0]_i_1_n_0 ;
  wire \rst_counter[0]_i_3_n_0 ;
  wire [31:2]rst_counter_reg;
  wire \rst_counter_reg[0]_i_2_n_0 ;
  wire \rst_counter_reg[0]_i_2_n_4 ;
  wire \rst_counter_reg[0]_i_2_n_5 ;
  wire \rst_counter_reg[0]_i_2_n_6 ;
  wire \rst_counter_reg[0]_i_2_n_7 ;
  wire \rst_counter_reg[12]_i_1_n_0 ;
  wire \rst_counter_reg[12]_i_1_n_4 ;
  wire \rst_counter_reg[12]_i_1_n_5 ;
  wire \rst_counter_reg[12]_i_1_n_6 ;
  wire \rst_counter_reg[12]_i_1_n_7 ;
  wire \rst_counter_reg[16]_i_1_n_0 ;
  wire \rst_counter_reg[16]_i_1_n_4 ;
  wire \rst_counter_reg[16]_i_1_n_5 ;
  wire \rst_counter_reg[16]_i_1_n_6 ;
  wire \rst_counter_reg[16]_i_1_n_7 ;
  wire \rst_counter_reg[20]_i_1_n_0 ;
  wire \rst_counter_reg[20]_i_1_n_4 ;
  wire \rst_counter_reg[20]_i_1_n_5 ;
  wire \rst_counter_reg[20]_i_1_n_6 ;
  wire \rst_counter_reg[20]_i_1_n_7 ;
  wire \rst_counter_reg[24]_i_1_n_0 ;
  wire \rst_counter_reg[24]_i_1_n_4 ;
  wire \rst_counter_reg[24]_i_1_n_5 ;
  wire \rst_counter_reg[24]_i_1_n_6 ;
  wire \rst_counter_reg[24]_i_1_n_7 ;
  wire \rst_counter_reg[28]_i_1_n_4 ;
  wire \rst_counter_reg[28]_i_1_n_5 ;
  wire \rst_counter_reg[28]_i_1_n_6 ;
  wire \rst_counter_reg[28]_i_1_n_7 ;
  wire \rst_counter_reg[4]_i_1_n_0 ;
  wire \rst_counter_reg[4]_i_1_n_4 ;
  wire \rst_counter_reg[4]_i_1_n_5 ;
  wire \rst_counter_reg[4]_i_1_n_6 ;
  wire \rst_counter_reg[4]_i_1_n_7 ;
  wire \rst_counter_reg[8]_i_1_n_0 ;
  wire \rst_counter_reg[8]_i_1_n_4 ;
  wire \rst_counter_reg[8]_i_1_n_5 ;
  wire \rst_counter_reg[8]_i_1_n_6 ;
  wire \rst_counter_reg[8]_i_1_n_7 ;
  wire [1:0]rst_counter_reg_n_0_;
  wire rst_i_1_n_0;
  wire rst_i_2_n_0;
  wire rst_i_3_n_0;
  wire rst_i_4_n_0;
  wire rst_i_5_n_0;
  wire rst_i_6_n_0;
  wire rst_i_7_n_0;
  wire rst_i_8_n_0;
  wire sel;
  wire [15:0]sw_temp;
  wire [2:0]\NLW_counter_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_pulse_out_reg[3]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_pulse_out_reg[3]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_pulse_out_reg[3]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_pulse_out_reg[3]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_rst_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rst_counter_reg[8]_i_1_CO_UNCONNECTED ;

  assign Key_x[4:0] = SW[15:11];
  FDRE #(
    .INIT(1'b0)) 
    \BTN_OK_reg[0] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[0]),
        .Q(BTN_OK[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_OK_reg[1] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[1]),
        .Q(BTN_OK[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_OK_reg[2] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[2]),
        .Q(BTN_OK[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_OK_reg[3] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[3]),
        .Q(BTN_OK[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    CR_i_1
       (.I0(RSTN),
        .O(button));
  FDRE #(
    .INIT(1'b0)) 
    CR_reg
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button),
        .Q(CR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[0] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[0]),
        .Q(SW_OK[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[10] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[10]),
        .Q(SW_OK[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[11] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[11]),
        .Q(SW_OK[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[12] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[12]),
        .Q(SW_OK[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[13] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[13]),
        .Q(SW_OK[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[14] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[14]),
        .Q(SW_OK[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[15] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[15]),
        .Q(SW_OK[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[1] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[1]),
        .Q(SW_OK[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[2] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[2]),
        .Q(SW_OK[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[3] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[3]),
        .Q(SW_OK[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[4] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[4]),
        .Q(SW_OK[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[5] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[5]),
        .Q(SW_OK[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[6] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[6]),
        .Q(SW_OK[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[7] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[7]),
        .Q(SW_OK[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[8] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[8]),
        .Q(SW_OK[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SW_OK_reg[9] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(SW[9]),
        .Q(SW_OK[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btn_temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(button__0[0]),
        .Q(btn_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btn_temp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(button__0[1]),
        .Q(btn_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btn_temp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(button__0[2]),
        .Q(btn_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btn_temp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(button__0[3]),
        .Q(btn_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btn_temp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(button),
        .Q(btn_temp[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEEFFEEFFFFF)) 
    \counter[0]_i_1 
       (.I0(\pulse_out_reg[3]_i_8_n_2 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(btn_temp[4]),
        .I3(RSTN),
        .I4(Key_y[3]),
        .I5(btn_temp[3]),
        .O(\counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \counter[0]_i_2 
       (.I0(\pulse_out[3]_i_6_n_0 ),
        .I1(\pulse_out[3]_i_5_n_0 ),
        .I2(\pulse_out[3]_i_4_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'hFFFFF99FF99FFFFF)) 
    \counter[0]_i_4 
       (.I0(Key_y[2]),
        .I1(btn_temp[2]),
        .I2(Key_y[1]),
        .I3(btn_temp[1]),
        .I4(btn_temp[0]),
        .I5(Key_y[0]),
        .O(\counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(counter_reg_n_0_),
        .O(\counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_7 ),
        .Q(counter_reg_n_0_),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3_n_0 ,\NLW_counter_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3_n_4 ,\counter_reg[0]_i_3_n_5 ,\counter_reg[0]_i_3_n_6 ,\counter_reg[0]_i_3_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO(\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_3_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    pulse_i_1
       (.I0(\pulse_out[3]_i_6_n_0 ),
        .I1(\pulse_out[3]_i_5_n_0 ),
        .I2(\pulse_out[3]_i_4_n_0 ),
        .I3(pulse_reg_n_0),
        .I4(\counter[0]_i_1_n_0 ),
        .O(pulse_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_out[0]_i_1 
       (.I0(Key_y[0]),
        .O(button__0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_out[1]_i_1 
       (.I0(Key_y[1]),
        .O(button__0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_out[2]_i_1 
       (.I0(Key_y[2]),
        .O(button__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_out[3]_i_1 
       (.I0(pulse_reg_n_0),
        .I1(\pulse_out[3]_i_2_n_0 ),
        .O(\pulse_out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pulse_out[3]_i_10 
       (.I0(counter_reg[22]),
        .I1(counter_reg[13]),
        .I2(counter_reg[21]),
        .I3(counter_reg[14]),
        .O(\pulse_out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pulse_out[3]_i_11 
       (.I0(counter_reg[28]),
        .I1(counter_reg[23]),
        .I2(counter_reg[10]),
        .I3(counter_reg[29]),
        .I4(counter_reg[15]),
        .I5(counter_reg[18]),
        .O(\pulse_out[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pulse_out[3]_i_12 
       (.I0(counter_reg[11]),
        .I1(counter_reg[9]),
        .I2(counter_reg[24]),
        .I3(counter_reg[16]),
        .O(\pulse_out[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \pulse_out[3]_i_14 
       (.I0(SW[15]),
        .I1(sw_temp[15]),
        .O(\pulse_out[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \pulse_out[3]_i_15 
       (.I0(sw_temp[12]),
        .I1(SW[12]),
        .I2(sw_temp[13]),
        .I3(SW[13]),
        .I4(SW[14]),
        .I5(sw_temp[14]),
        .O(\pulse_out[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \pulse_out[3]_i_16 
       (.I0(sw_temp[9]),
        .I1(SW[9]),
        .I2(sw_temp[10]),
        .I3(SW[10]),
        .I4(SW[11]),
        .I5(sw_temp[11]),
        .O(\pulse_out[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \pulse_out[3]_i_17 
       (.I0(sw_temp[7]),
        .I1(SW[7]),
        .I2(sw_temp[6]),
        .I3(SW[6]),
        .I4(SW[8]),
        .I5(sw_temp[8]),
        .O(\pulse_out[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \pulse_out[3]_i_18 
       (.I0(sw_temp[3]),
        .I1(SW[3]),
        .I2(sw_temp[4]),
        .I3(SW[4]),
        .I4(SW[5]),
        .I5(sw_temp[5]),
        .O(\pulse_out[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \pulse_out[3]_i_19 
       (.I0(sw_temp[2]),
        .I1(SW[2]),
        .I2(sw_temp[0]),
        .I3(SW[0]),
        .I4(SW[1]),
        .I5(sw_temp[1]),
        .O(\pulse_out[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h000000FD)) 
    \pulse_out[3]_i_2 
       (.I0(\pulse_out[3]_i_4_n_0 ),
        .I1(\pulse_out[3]_i_5_n_0 ),
        .I2(\pulse_out[3]_i_6_n_0 ),
        .I3(\pulse_out[3]_i_7_n_0 ),
        .I4(\pulse_out_reg[3]_i_8_n_2 ),
        .O(\pulse_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_out[3]_i_3 
       (.I0(Key_y[3]),
        .O(button__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_out[3]_i_4 
       (.I0(counter_reg[17]),
        .I1(counter_reg[27]),
        .I2(counter_reg[6]),
        .I3(counter_reg[12]),
        .I4(\pulse_out[3]_i_9_n_0 ),
        .I5(\pulse_out[3]_i_10_n_0 ),
        .O(\pulse_out[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \pulse_out[3]_i_5 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(counter_reg[5]),
        .I4(counter_reg[4]),
        .O(\pulse_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pulse_out[3]_i_6 
       (.I0(\pulse_out[3]_i_11_n_0 ),
        .I1(\pulse_out[3]_i_12_n_0 ),
        .I2(counter_reg[25]),
        .I3(counter_reg[19]),
        .I4(counter_reg[30]),
        .I5(counter_reg[7]),
        .O(\pulse_out[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF99F)) 
    \pulse_out[3]_i_7 
       (.I0(btn_temp[3]),
        .I1(Key_y[3]),
        .I2(RSTN),
        .I3(btn_temp[4]),
        .I4(\counter[0]_i_4_n_0 ),
        .O(\pulse_out[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pulse_out[3]_i_9 
       (.I0(counter_reg[31]),
        .I1(counter_reg[26]),
        .I2(counter_reg[20]),
        .I3(counter_reg[8]),
        .O(\pulse_out[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_out_reg[0] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[0]),
        .Q(pulse_out[0]),
        .R(\pulse_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_out_reg[1] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[1]),
        .Q(pulse_out[1]),
        .R(\pulse_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_out_reg[2] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[2]),
        .Q(pulse_out[2]),
        .R(\pulse_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_out_reg[3] 
       (.C(clk),
        .CE(\pulse_out[3]_i_2_n_0 ),
        .D(button__0[3]),
        .Q(pulse_out[3]),
        .R(\pulse_out[3]_i_1_n_0 ));
  CARRY4 \pulse_out_reg[3]_i_13 
       (.CI(1'b0),
        .CO({\pulse_out_reg[3]_i_13_n_0 ,\NLW_pulse_out_reg[3]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_pulse_out_reg[3]_i_13_O_UNCONNECTED [3:0]),
        .S({\pulse_out[3]_i_16_n_0 ,\pulse_out[3]_i_17_n_0 ,\pulse_out[3]_i_18_n_0 ,\pulse_out[3]_i_19_n_0 }));
  CARRY4 \pulse_out_reg[3]_i_8 
       (.CI(\pulse_out_reg[3]_i_13_n_0 ),
        .CO({\NLW_pulse_out_reg[3]_i_8_CO_UNCONNECTED [3:2],\pulse_out_reg[3]_i_8_n_2 ,\NLW_pulse_out_reg[3]_i_8_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_pulse_out_reg[3]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\pulse_out[3]_i_14_n_0 ,\pulse_out[3]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_i_1_n_0),
        .Q(pulse_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0202020002020202)) 
    \rst_counter[0]_i_1 
       (.I0(rst_i_2_n_0),
        .I1(rst_i_3_n_0),
        .I2(rst_i_4_n_0),
        .I3(\pulse_out[3]_i_6_n_0 ),
        .I4(\pulse_out[3]_i_5_n_0 ),
        .I5(\pulse_out[3]_i_4_n_0 ),
        .O(\rst_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_counter[0]_i_3 
       (.I0(rst_counter_reg_n_0_[0]),
        .O(\rst_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[0] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[0]_i_2_n_7 ),
        .Q(rst_counter_reg_n_0_[0]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rst_counter_reg[0]_i_2_n_0 ,\NLW_rst_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rst_counter_reg[0]_i_2_n_4 ,\rst_counter_reg[0]_i_2_n_5 ,\rst_counter_reg[0]_i_2_n_6 ,\rst_counter_reg[0]_i_2_n_7 }),
        .S({rst_counter_reg[3:2],rst_counter_reg_n_0_[1],\rst_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[10] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[8]_i_1_n_5 ),
        .Q(rst_counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[11] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[8]_i_1_n_4 ),
        .Q(rst_counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[12] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[12]_i_1_n_7 ),
        .Q(rst_counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[12]_i_1 
       (.CI(\rst_counter_reg[8]_i_1_n_0 ),
        .CO({\rst_counter_reg[12]_i_1_n_0 ,\NLW_rst_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[12]_i_1_n_4 ,\rst_counter_reg[12]_i_1_n_5 ,\rst_counter_reg[12]_i_1_n_6 ,\rst_counter_reg[12]_i_1_n_7 }),
        .S(rst_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[13] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[12]_i_1_n_6 ),
        .Q(rst_counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[14] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[12]_i_1_n_5 ),
        .Q(rst_counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[15] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[12]_i_1_n_4 ),
        .Q(rst_counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[16] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[16]_i_1_n_7 ),
        .Q(rst_counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[16]_i_1 
       (.CI(\rst_counter_reg[12]_i_1_n_0 ),
        .CO({\rst_counter_reg[16]_i_1_n_0 ,\NLW_rst_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[16]_i_1_n_4 ,\rst_counter_reg[16]_i_1_n_5 ,\rst_counter_reg[16]_i_1_n_6 ,\rst_counter_reg[16]_i_1_n_7 }),
        .S(rst_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[17] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[16]_i_1_n_6 ),
        .Q(rst_counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[18] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[16]_i_1_n_5 ),
        .Q(rst_counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[19] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[16]_i_1_n_4 ),
        .Q(rst_counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[1] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[0]_i_2_n_6 ),
        .Q(rst_counter_reg_n_0_[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[20] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[20]_i_1_n_7 ),
        .Q(rst_counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[20]_i_1 
       (.CI(\rst_counter_reg[16]_i_1_n_0 ),
        .CO({\rst_counter_reg[20]_i_1_n_0 ,\NLW_rst_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[20]_i_1_n_4 ,\rst_counter_reg[20]_i_1_n_5 ,\rst_counter_reg[20]_i_1_n_6 ,\rst_counter_reg[20]_i_1_n_7 }),
        .S(rst_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[21] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[20]_i_1_n_6 ),
        .Q(rst_counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[22] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[20]_i_1_n_5 ),
        .Q(rst_counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[23] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[20]_i_1_n_4 ),
        .Q(rst_counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[24] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[24]_i_1_n_7 ),
        .Q(rst_counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[24]_i_1 
       (.CI(\rst_counter_reg[20]_i_1_n_0 ),
        .CO({\rst_counter_reg[24]_i_1_n_0 ,\NLW_rst_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[24]_i_1_n_4 ,\rst_counter_reg[24]_i_1_n_5 ,\rst_counter_reg[24]_i_1_n_6 ,\rst_counter_reg[24]_i_1_n_7 }),
        .S(rst_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[25] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[24]_i_1_n_6 ),
        .Q(rst_counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[26] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[24]_i_1_n_5 ),
        .Q(rst_counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[27] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[24]_i_1_n_4 ),
        .Q(rst_counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[28] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[28]_i_1_n_7 ),
        .Q(rst_counter_reg[28]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[28]_i_1 
       (.CI(\rst_counter_reg[24]_i_1_n_0 ),
        .CO(\NLW_rst_counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[28]_i_1_n_4 ,\rst_counter_reg[28]_i_1_n_5 ,\rst_counter_reg[28]_i_1_n_6 ,\rst_counter_reg[28]_i_1_n_7 }),
        .S(rst_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[29] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[28]_i_1_n_6 ),
        .Q(rst_counter_reg[29]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[2] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[0]_i_2_n_5 ),
        .Q(rst_counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[30] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[28]_i_1_n_5 ),
        .Q(rst_counter_reg[30]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[31] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[28]_i_1_n_4 ),
        .Q(rst_counter_reg[31]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[3] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[0]_i_2_n_4 ),
        .Q(rst_counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[4] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[4]_i_1_n_7 ),
        .Q(rst_counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[4]_i_1 
       (.CI(\rst_counter_reg[0]_i_2_n_0 ),
        .CO({\rst_counter_reg[4]_i_1_n_0 ,\NLW_rst_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[4]_i_1_n_4 ,\rst_counter_reg[4]_i_1_n_5 ,\rst_counter_reg[4]_i_1_n_6 ,\rst_counter_reg[4]_i_1_n_7 }),
        .S(rst_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[5] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[4]_i_1_n_6 ),
        .Q(rst_counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[6] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[4]_i_1_n_5 ),
        .Q(rst_counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[7] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[4]_i_1_n_4 ),
        .Q(rst_counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[8] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[8]_i_1_n_7 ),
        .Q(rst_counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \rst_counter_reg[8]_i_1 
       (.CI(\rst_counter_reg[4]_i_1_n_0 ),
        .CO({\rst_counter_reg[8]_i_1_n_0 ,\NLW_rst_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_counter_reg[8]_i_1_n_4 ,\rst_counter_reg[8]_i_1_n_5 ,\rst_counter_reg[8]_i_1_n_6 ,\rst_counter_reg[8]_i_1_n_7 }),
        .S(rst_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_counter_reg[9] 
       (.C(clk),
        .CE(\rst_counter[0]_i_1_n_0 ),
        .D(\rst_counter_reg[8]_i_1_n_6 ),
        .Q(rst_counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FFFFFF00FD0000)) 
    rst_i_1
       (.I0(rst_i_2_n_0),
        .I1(rst_i_3_n_0),
        .I2(rst_i_4_n_0),
        .I3(RSTN),
        .I4(\pulse_out[3]_i_2_n_0 ),
        .I5(rst),
        .O(rst_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    rst_i_2
       (.I0(rst_counter_reg[27]),
        .I1(rst_counter_reg[30]),
        .I2(rst_counter_reg[17]),
        .I3(rst_counter_reg[19]),
        .I4(rst_i_5_n_0),
        .I5(rst_i_6_n_0),
        .O(rst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rst_i_3
       (.I0(rst_i_7_n_0),
        .I1(rst_i_8_n_0),
        .I2(rst_counter_reg[20]),
        .I3(RSTN),
        .I4(rst_counter_reg[26]),
        .I5(rst_counter_reg[18]),
        .O(rst_i_3_n_0));
  LUT5 #(
    .INIT(32'hFE000000)) 
    rst_i_4
       (.I0(rst_counter_reg[2]),
        .I1(rst_counter_reg[3]),
        .I2(rst_counter_reg[4]),
        .I3(rst_counter_reg[6]),
        .I4(rst_counter_reg[5]),
        .O(rst_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_i_5
       (.I0(rst_counter_reg[29]),
        .I1(rst_counter_reg[28]),
        .I2(rst_counter_reg[23]),
        .I3(rst_counter_reg[14]),
        .O(rst_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_i_6
       (.I0(rst_counter_reg[24]),
        .I1(rst_counter_reg[15]),
        .I2(rst_counter_reg[25]),
        .I3(rst_counter_reg[10]),
        .O(rst_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rst_i_7
       (.I0(rst_counter_reg[16]),
        .I1(rst_counter_reg[11]),
        .I2(rst_counter_reg[13]),
        .I3(rst_counter_reg[21]),
        .I4(rst_counter_reg[9]),
        .I5(rst_counter_reg[31]),
        .O(rst_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_i_8
       (.I0(rst_counter_reg[22]),
        .I1(rst_counter_reg[12]),
        .I2(rst_counter_reg[8]),
        .I3(rst_counter_reg[7]),
        .O(rst_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[0]),
        .Q(sw_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[10]),
        .Q(sw_temp[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[11]),
        .Q(sw_temp[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[12]),
        .Q(sw_temp[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[13]),
        .Q(sw_temp[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[14]),
        .Q(sw_temp[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[15]),
        .Q(sw_temp[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[1]),
        .Q(sw_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[2]),
        .Q(sw_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[3]),
        .Q(sw_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[4]),
        .Q(sw_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[5]),
        .Q(sw_temp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[6]),
        .Q(sw_temp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[7]),
        .Q(sw_temp[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[8]),
        .Q(sw_temp[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_temp_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(SW[9]),
        .Q(sw_temp[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "SAnti_jitter_0,SAnti_jitter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SAnti_jitter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CR,
    Key_ready,
    RSTN,
    clk,
    readn,
    rst,
    BTN_OK,
    Key_out,
    Key_x,
    Key_y,
    SW,
    SW_OK,
    pulse_out);
  output CR;
  output Key_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RSTN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET RSTN, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input readn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output rst;
  output [3:0]BTN_OK;
  output [4:0]Key_out;
  output [4:0]Key_x;
  input [3:0]Key_y;
  input [15:0]SW;
  output [15:0]SW_OK;
  output [3:0]pulse_out;

  wire [3:0]BTN_OK;
  wire CR;
  wire [4:0]Key_out;
  wire Key_ready;
  wire [4:0]Key_x;
  wire [3:0]Key_y;
  wire RSTN;
  wire [15:0]SW;
  wire [15:0]SW_OK;
  wire clk;
  wire [3:0]pulse_out;
  wire readn;
  wire rst;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAnti_jitter inst
       (.BTN_OK(BTN_OK),
        .CR(CR),
        .Key_out(Key_out),
        .Key_ready(Key_ready),
        .Key_x(Key_x),
        .Key_y(Key_y),
        .RSTN(RSTN),
        .SW(SW),
        .SW_OK(SW_OK),
        .clk(clk),
        .pulse_out(pulse_out),
        .readn(readn),
        .rst(rst));
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
