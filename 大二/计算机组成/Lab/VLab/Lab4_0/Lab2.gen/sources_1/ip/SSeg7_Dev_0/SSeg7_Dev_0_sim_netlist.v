// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:44:30 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev_0_sim_netlist.v
// Design      : SSeg7_Dev_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SSeg7_Dev_0,SSeg7_Dev,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SSeg7_Dev,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SSeg7_Dev_0
   (clk,
    flash,
    Hexs,
    LES,
    point,
    rst,
    Start,
    SW0,
    seg_clk,
    seg_clrn,
    SEG_PEN,
    seg_sout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input flash;
  input [31:0]Hexs;
  input [7:0]LES;
  input [7:0]point;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input Start;
  input SW0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 seg_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME seg_clk, ASSOCIATED_BUSIF seg_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) output seg_clk;
  output seg_clrn;
  output SEG_PEN;
  output seg_sout;

  wire \<const1> ;
  wire [31:0]Hexs;
  wire [7:0]LES;
  wire SEG_PEN;
  wire SW0;
  wire Start;
  wire clk;
  wire flash;
  wire [7:0]point;
  wire rst;
  wire seg_clk;
  wire seg_sout;

  assign seg_clrn = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  SSeg7_Dev_0_SSeg7_Dev inst
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_PEN(SEG_PEN),
        .SW0(SW0),
        .Start(Start),
        .clk(clk),
        .flash(flash),
        .point(point),
        .rst(rst),
        .s_clk_reg(seg_clk),
        .seg_sout(seg_sout));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_13 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_0
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_12 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_1
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_11 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_2
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_10 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_3
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_9 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_4
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_8 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_5
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU_7 MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "Hex2Seg" *) 
module SSeg7_Dev_0_Hex2Seg_6
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire flash;
  wire [0:0]point;

  SSeg7_Dev_0_MC14495_ZJU MSEG
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(SEG_TXT),
        .flash(flash),
        .point(point));
endmodule

(* ORIG_REF_NAME = "HexTo8SEG" *) 
module SSeg7_Dev_0_HexTo8SEG
   (SEG_TXT,
    Hexs,
    point,
    LES,
    flash);
  output [63:0]SEG_TXT;
  input [31:0]Hexs;
  input [7:0]point;
  input [7:0]LES;
  input flash;

  wire [31:0]Hexs;
  wire [7:0]LES;
  wire [63:0]SEG_TXT;
  wire flash;
  wire [7:0]point;

  SSeg7_Dev_0_Hex2Seg HTS0
       (.Hexs(Hexs[31:28]),
        .LES(LES[7]),
        .SEG_TXT(SEG_TXT[7:0]),
        .flash(flash),
        .point(point[7]));
  SSeg7_Dev_0_Hex2Seg_0 HTS1
       (.Hexs(Hexs[27:24]),
        .LES(LES[6]),
        .SEG_TXT(SEG_TXT[15:8]),
        .flash(flash),
        .point(point[6]));
  SSeg7_Dev_0_Hex2Seg_1 HTS2
       (.Hexs(Hexs[23:20]),
        .LES(LES[5]),
        .SEG_TXT(SEG_TXT[23:16]),
        .flash(flash),
        .point(point[5]));
  SSeg7_Dev_0_Hex2Seg_2 HTS3
       (.Hexs(Hexs[19:16]),
        .LES(LES[4]),
        .SEG_TXT(SEG_TXT[31:24]),
        .flash(flash),
        .point(point[4]));
  SSeg7_Dev_0_Hex2Seg_3 HTS4
       (.Hexs(Hexs[15:12]),
        .LES(LES[3]),
        .SEG_TXT(SEG_TXT[39:32]),
        .flash(flash),
        .point(point[3]));
  SSeg7_Dev_0_Hex2Seg_4 HTS5
       (.Hexs(Hexs[11:8]),
        .LES(LES[2]),
        .SEG_TXT(SEG_TXT[47:40]),
        .flash(flash),
        .point(point[2]));
  SSeg7_Dev_0_Hex2Seg_5 HTS6
       (.Hexs(Hexs[7:4]),
        .LES(LES[1]),
        .SEG_TXT(SEG_TXT[55:48]),
        .flash(flash),
        .point(point[1]));
  SSeg7_Dev_0_Hex2Seg_6 HTS7
       (.Hexs(Hexs[3:0]),
        .LES(LES[0]),
        .SEG_TXT(SEG_TXT[63:56]),
        .flash(flash),
        .point(point[0]));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__6
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_10
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__2
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_11
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__1
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_12
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__0
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_13
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_7
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__5
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_8
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__4
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "MC14495_ZJU" *) 
module SSeg7_Dev_0_MC14495_ZJU_9
   (SEG_TXT,
    LES,
    flash,
    Hexs,
    point);
  output [7:0]SEG_TXT;
  input [0:0]LES;
  input flash;
  input [3:0]Hexs;
  input [0:0]point;

  wire [3:0]Hexs;
  wire [0:0]LES;
  wire [7:0]SEG_TXT;
  wire XLXN_111;
  wire XLXN_115;
  wire XLXN_119;
  wire XLXN_14;
  wire XLXN_140;
  wire XLXN_141;
  wire XLXN_170;
  wire XLXN_171;
  wire XLXN_172;
  wire XLXN_184;
  wire XLXN_185;
  wire XLXN_186;
  wire XLXN_200;
  wire XLXN_201;
  wire XLXN_202;
  wire XLXN_208;
  wire XLXN_209;
  wire XLXN_210;
  wire XLXN_211;
  wire XLXN_212;
  wire XLXN_213;
  wire XLXN_214;
  wire XLXN_24;
  wire XLXN_26;
  wire XLXN_27;
  wire XLXN_28;
  wire XLXN_61;
  wire XLXN_62;
  wire XLXN_72;
  wire XLXN_73;
  wire XLXN_74;
  wire XLXN_75;
  wire en;
  wire flash;
  wire [0:0]point;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_1
       (.I0(Hexs[3]),
        .O(XLXN_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_17
       (.I0(XLXN_28),
        .I1(XLXN_27),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_208));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_18
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_72));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_19
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_73));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_2
       (.I0(Hexs[2]),
        .O(XLXN_61));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_20
       (.I0(XLXN_24),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_74));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_21
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[3]),
        .O(XLXN_75));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_22
       (.I0(XLXN_75),
        .I1(XLXN_74),
        .I2(XLXN_73),
        .I3(XLXN_72),
        .O(XLXN_209));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_23
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(XLXN_14),
        .O(XLXN_111));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_24
       (.I0(Hexs[1]),
        .I1(Hexs[2]),
        .I2(Hexs[3]),
        .O(XLXN_115));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_26
       (.I0(XLXN_115),
        .I1(XLXN_111),
        .I2(XLXN_74),
        .O(XLXN_210));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_27
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .O(XLXN_140));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_28
       (.I0(XLXN_24),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_141));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_29
       (.I0(XLXN_141),
        .I1(XLXN_140),
        .I2(XLXN_26),
        .I3(XLXN_119),
        .O(XLXN_211));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_3
       (.I0(Hexs[1]),
        .O(XLXN_62));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_30
       (.I0(XLXN_62),
        .I1(Hexs[2]),
        .I2(XLXN_14),
        .O(XLXN_171));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_32
       (.I0(Hexs[0]),
        .I1(XLXN_14),
        .O(XLXN_170));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_35
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(XLXN_61),
        .O(XLXN_172));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_36
       (.I0(XLXN_172),
        .I1(XLXN_171),
        .I2(XLXN_170),
        .O(XLXN_212));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_37
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_184));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_38
       (.I0(Hexs[1]),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_185));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_39
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_14),
        .O(XLXN_186));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_4
       (.I0(Hexs[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_41
       (.I0(XLXN_186),
        .I1(XLXN_185),
        .I2(XLXN_184),
        .I3(XLXN_27),
        .O(XLXN_213));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_42
       (.I0(XLXN_62),
        .I1(XLXN_61),
        .I2(XLXN_14),
        .O(XLXN_200));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_43
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_201));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_44
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_202));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    XLXI_46
       (.I0(XLXN_202),
        .I1(XLXN_201),
        .I2(XLXN_200),
        .O(XLXN_214));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_47
       (.I0(en),
        .I1(XLXN_208),
        .O(SEG_TXT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_47_i_1__3
       (.I0(LES),
        .I1(flash),
        .O(en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_48
       (.I0(en),
        .I1(XLXN_209),
        .O(SEG_TXT[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_49
       (.I0(en),
        .I1(XLXN_210),
        .O(SEG_TXT[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_5
       (.I0(Hexs[0]),
        .I1(XLXN_61),
        .I2(XLXN_62),
        .I3(XLXN_14),
        .O(XLXN_119));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_50
       (.I0(en),
        .I1(XLXN_211),
        .O(SEG_TXT[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_51
       (.I0(en),
        .I1(XLXN_212),
        .O(SEG_TXT[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_52
       (.I0(en),
        .I1(XLXN_213),
        .O(SEG_TXT[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_53
       (.I0(en),
        .I1(XLXN_214),
        .O(SEG_TXT[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_57
       (.I0(point),
        .O(SEG_TXT[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_6
       (.I0(XLXN_24),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(XLXN_14),
        .O(XLXN_26));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(Hexs[0]),
        .I1(XLXN_62),
        .I2(Hexs[2]),
        .I3(Hexs[3]),
        .O(XLXN_27));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_8
       (.I0(Hexs[0]),
        .I1(Hexs[1]),
        .I2(XLXN_61),
        .I3(Hexs[3]),
        .O(XLXN_28));
endmodule

(* ORIG_REF_NAME = "P2S" *) 
module SSeg7_Dev_0_P2S
   (s_clk_reg_0,
    SEG_PEN,
    seg_sout,
    clk,
    rst,
    Start,
    SEG_TXT,
    SW0,
    Hexs);
  output s_clk_reg_0;
  output SEG_PEN;
  output seg_sout;
  input clk;
  input rst;
  input Start;
  input [63:0]SEG_TXT;
  input SW0;
  input [31:0]Hexs;

  wire EN_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [31:0]Hexs;
  wire SEG_PEN;
  wire [63:0]SEG_TXT;
  wire SW0;
  wire Start;
  wire [63:0]buffer;
  wire \buffer[0]_i_1_n_0 ;
  wire \buffer[0]_i_3_n_0 ;
  wire \buffer[0]_i_4_n_0 ;
  wire clk;
  wire [62:0]in10;
  wire rst;
  wire s_clk_i_1_n_0;
  wire s_clk_reg_0;
  wire seg_sout;
  wire [5:0]shift_count;
  wire \shift_count[5]_i_1_n_0 ;
  wire \shift_count[5]_i_3_n_0 ;
  wire \shift_count_reg_n_0_[0] ;
  wire \shift_count_reg_n_0_[1] ;
  wire \shift_count_reg_n_0_[2] ;
  wire \shift_count_reg_n_0_[3] ;
  wire \shift_count_reg_n_0_[4] ;
  wire \shift_count_reg_n_0_[5] ;
  wire [1:0]start;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFB000B)) 
    EN_i_1
       (.I0(start[1]),
        .I1(start[0]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(SEG_PEN),
        .O(EN_i_1_n_0));
  FDCE EN_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(EN_i_1_n_0),
        .Q(SEG_PEN));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF00F044)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(start[1]),
        .I1(start[0]),
        .I2(\buffer[0]_i_4_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\buffer[0]_i_4_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_TRAN:01,S_DONE:10" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_TRAN:01,S_DONE:10" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  LUT6 #(
    .INIT(64'h000000003D0D0D0D)) 
    \buffer[0]_i_1 
       (.I0(\buffer[0]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_clk_reg_0),
        .I4(\buffer[0]_i_4_n_0 ),
        .I5(rst),
        .O(\buffer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[0]_i_2 
       (.I0(state__0[0]),
        .I1(in10[0]),
        .I2(state__0[1]),
        .I3(SEG_TXT[0]),
        .I4(SW0),
        .I5(Hexs[30]),
        .O(buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \buffer[0]_i_3 
       (.I0(start[1]),
        .I1(start[0]),
        .O(\buffer[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \buffer[0]_i_4 
       (.I0(\shift_count_reg_n_0_[5] ),
        .I1(\shift_count_reg_n_0_[4] ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[3] ),
        .I5(\shift_count_reg_n_0_[2] ),
        .O(\buffer[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[10]_i_1 
       (.I0(state__0[0]),
        .I1(in10[10]),
        .I2(state__0[1]),
        .I3(SEG_TXT[10]),
        .I4(SW0),
        .I5(Hexs[9]),
        .O(buffer[10]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[11]_i_1 
       (.I0(state__0[0]),
        .I1(in10[11]),
        .I2(state__0[1]),
        .I3(SEG_TXT[11]),
        .I4(SW0),
        .I5(Hexs[21]),
        .O(buffer[11]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[12]_i_1 
       (.I0(state__0[0]),
        .I1(in10[12]),
        .I2(state__0[1]),
        .I3(SEG_TXT[12]),
        .I4(SW0),
        .I5(Hexs[29]),
        .O(buffer[12]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[13]_i_1 
       (.I0(state__0[0]),
        .I1(in10[13]),
        .I2(state__0[1]),
        .I3(SEG_TXT[13]),
        .I4(SW0),
        .I5(Hexs[20]),
        .O(buffer[13]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[14]_i_1 
       (.I0(state__0[0]),
        .I1(in10[14]),
        .I2(state__0[1]),
        .I3(SEG_TXT[14]),
        .I4(SW0),
        .I5(Hexs[8]),
        .O(buffer[14]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[15]_i_1 
       (.I0(state__0[0]),
        .I1(in10[15]),
        .I2(state__0[1]),
        .I3(SEG_TXT[15]),
        .I4(SW0),
        .I5(Hexs[2]),
        .O(buffer[15]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[16]_i_1 
       (.I0(state__0[0]),
        .I1(in10[16]),
        .I2(state__0[1]),
        .I3(SEG_TXT[16]),
        .I4(SW0),
        .I5(Hexs[26]),
        .O(buffer[16]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[17]_i_1 
       (.I0(state__0[0]),
        .I1(in10[17]),
        .I2(state__0[1]),
        .I3(SEG_TXT[17]),
        .I4(SW0),
        .I5(Hexs[13]),
        .O(buffer[17]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[18]_i_1 
       (.I0(state__0[0]),
        .I1(in10[18]),
        .I2(state__0[1]),
        .I3(SEG_TXT[18]),
        .I4(SW0),
        .I5(Hexs[7]),
        .O(buffer[18]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[19]_i_1 
       (.I0(state__0[0]),
        .I1(in10[19]),
        .I2(state__0[1]),
        .I3(SEG_TXT[19]),
        .I4(SW0),
        .I5(Hexs[19]),
        .O(buffer[19]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[1]_i_1 
       (.I0(state__0[0]),
        .I1(in10[1]),
        .I2(state__0[1]),
        .I3(SEG_TXT[1]),
        .I4(SW0),
        .I5(Hexs[15]),
        .O(buffer[1]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[20]_i_1 
       (.I0(state__0[0]),
        .I1(in10[20]),
        .I2(state__0[1]),
        .I3(SEG_TXT[20]),
        .I4(SW0),
        .I5(Hexs[27]),
        .O(buffer[20]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[21]_i_1 
       (.I0(state__0[0]),
        .I1(in10[21]),
        .I2(state__0[1]),
        .I3(SEG_TXT[21]),
        .I4(SW0),
        .I5(Hexs[18]),
        .O(buffer[21]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[22]_i_1 
       (.I0(state__0[0]),
        .I1(in10[22]),
        .I2(state__0[1]),
        .I3(SEG_TXT[22]),
        .I4(SW0),
        .I5(Hexs[6]),
        .O(buffer[22]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[23]_i_1 
       (.I0(state__0[0]),
        .I1(in10[23]),
        .I2(state__0[1]),
        .I3(SEG_TXT[23]),
        .I4(SW0),
        .I5(Hexs[1]),
        .O(buffer[23]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[24]_i_1 
       (.I0(state__0[0]),
        .I1(in10[24]),
        .I2(state__0[1]),
        .I3(SEG_TXT[24]),
        .I4(SW0),
        .I5(Hexs[24]),
        .O(buffer[24]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[25]_i_1 
       (.I0(state__0[0]),
        .I1(in10[25]),
        .I2(state__0[1]),
        .I3(SEG_TXT[25]),
        .I4(SW0),
        .I5(Hexs[12]),
        .O(buffer[25]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[26]_i_1 
       (.I0(state__0[0]),
        .I1(in10[26]),
        .I2(state__0[1]),
        .I3(SEG_TXT[26]),
        .I4(SW0),
        .I5(Hexs[5]),
        .O(buffer[26]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[27]_i_1 
       (.I0(state__0[0]),
        .I1(in10[27]),
        .I2(state__0[1]),
        .I3(SEG_TXT[27]),
        .I4(SW0),
        .I5(Hexs[17]),
        .O(buffer[27]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[28]_i_1 
       (.I0(state__0[0]),
        .I1(in10[28]),
        .I2(state__0[1]),
        .I3(SEG_TXT[28]),
        .I4(SW0),
        .I5(Hexs[25]),
        .O(buffer[28]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[29]_i_1 
       (.I0(state__0[0]),
        .I1(in10[29]),
        .I2(state__0[1]),
        .I3(SEG_TXT[29]),
        .I4(SW0),
        .I5(Hexs[16]),
        .O(buffer[29]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[2]_i_1 
       (.I0(state__0[0]),
        .I1(in10[2]),
        .I2(state__0[1]),
        .I3(SEG_TXT[2]),
        .I4(SW0),
        .I5(Hexs[11]),
        .O(buffer[2]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[30]_i_1 
       (.I0(state__0[0]),
        .I1(in10[30]),
        .I2(state__0[1]),
        .I3(SEG_TXT[30]),
        .I4(SW0),
        .I5(Hexs[4]),
        .O(buffer[30]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[31]_i_1 
       (.I0(state__0[0]),
        .I1(in10[31]),
        .I2(state__0[1]),
        .I3(SEG_TXT[31]),
        .I4(SW0),
        .I5(Hexs[0]),
        .O(buffer[31]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[32]_i_1 
       (.I0(state__0[0]),
        .I1(in10[32]),
        .I2(state__0[1]),
        .I3(SEG_TXT[32]),
        .I4(SW0),
        .I5(Hexs[30]),
        .O(buffer[32]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[33]_i_1 
       (.I0(state__0[0]),
        .I1(in10[33]),
        .I2(state__0[1]),
        .I3(SEG_TXT[33]),
        .I4(SW0),
        .I5(Hexs[15]),
        .O(buffer[33]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[34]_i_1 
       (.I0(state__0[0]),
        .I1(in10[34]),
        .I2(state__0[1]),
        .I3(SEG_TXT[34]),
        .I4(SW0),
        .I5(Hexs[11]),
        .O(buffer[34]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[35]_i_1 
       (.I0(state__0[0]),
        .I1(in10[35]),
        .I2(state__0[1]),
        .I3(SEG_TXT[35]),
        .I4(SW0),
        .I5(Hexs[23]),
        .O(buffer[35]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[36]_i_1 
       (.I0(state__0[0]),
        .I1(in10[36]),
        .I2(state__0[1]),
        .I3(SEG_TXT[36]),
        .I4(SW0),
        .I5(Hexs[31]),
        .O(buffer[36]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[37]_i_1 
       (.I0(state__0[0]),
        .I1(in10[37]),
        .I2(state__0[1]),
        .I3(SEG_TXT[37]),
        .I4(SW0),
        .I5(Hexs[22]),
        .O(buffer[37]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[38]_i_1 
       (.I0(state__0[0]),
        .I1(in10[38]),
        .I2(state__0[1]),
        .I3(SEG_TXT[38]),
        .I4(SW0),
        .I5(Hexs[10]),
        .O(buffer[38]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[39]_i_1 
       (.I0(state__0[0]),
        .I1(in10[39]),
        .I2(state__0[1]),
        .I3(SEG_TXT[39]),
        .I4(SW0),
        .I5(Hexs[3]),
        .O(buffer[39]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[3]_i_1 
       (.I0(state__0[0]),
        .I1(in10[3]),
        .I2(state__0[1]),
        .I3(SEG_TXT[3]),
        .I4(SW0),
        .I5(Hexs[23]),
        .O(buffer[3]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[40]_i_1 
       (.I0(state__0[0]),
        .I1(in10[40]),
        .I2(state__0[1]),
        .I3(SEG_TXT[40]),
        .I4(SW0),
        .I5(Hexs[28]),
        .O(buffer[40]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[41]_i_1 
       (.I0(state__0[0]),
        .I1(in10[41]),
        .I2(state__0[1]),
        .I3(SEG_TXT[41]),
        .I4(SW0),
        .I5(Hexs[14]),
        .O(buffer[41]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[42]_i_1 
       (.I0(state__0[0]),
        .I1(in10[42]),
        .I2(state__0[1]),
        .I3(SEG_TXT[42]),
        .I4(SW0),
        .I5(Hexs[9]),
        .O(buffer[42]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[43]_i_1 
       (.I0(state__0[0]),
        .I1(in10[43]),
        .I2(state__0[1]),
        .I3(SEG_TXT[43]),
        .I4(SW0),
        .I5(Hexs[21]),
        .O(buffer[43]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[44]_i_1 
       (.I0(state__0[0]),
        .I1(in10[44]),
        .I2(state__0[1]),
        .I3(SEG_TXT[44]),
        .I4(SW0),
        .I5(Hexs[29]),
        .O(buffer[44]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[45]_i_1 
       (.I0(state__0[0]),
        .I1(in10[45]),
        .I2(state__0[1]),
        .I3(SEG_TXT[45]),
        .I4(SW0),
        .I5(Hexs[20]),
        .O(buffer[45]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[46]_i_1 
       (.I0(state__0[0]),
        .I1(in10[46]),
        .I2(state__0[1]),
        .I3(SEG_TXT[46]),
        .I4(SW0),
        .I5(Hexs[8]),
        .O(buffer[46]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[47]_i_1 
       (.I0(state__0[0]),
        .I1(in10[47]),
        .I2(state__0[1]),
        .I3(SEG_TXT[47]),
        .I4(SW0),
        .I5(Hexs[2]),
        .O(buffer[47]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[48]_i_1 
       (.I0(state__0[0]),
        .I1(in10[48]),
        .I2(state__0[1]),
        .I3(SEG_TXT[48]),
        .I4(SW0),
        .I5(Hexs[26]),
        .O(buffer[48]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[49]_i_1 
       (.I0(state__0[0]),
        .I1(in10[49]),
        .I2(state__0[1]),
        .I3(SEG_TXT[49]),
        .I4(SW0),
        .I5(Hexs[13]),
        .O(buffer[49]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[4]_i_1 
       (.I0(state__0[0]),
        .I1(in10[4]),
        .I2(state__0[1]),
        .I3(SEG_TXT[4]),
        .I4(SW0),
        .I5(Hexs[31]),
        .O(buffer[4]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[50]_i_1 
       (.I0(state__0[0]),
        .I1(in10[50]),
        .I2(state__0[1]),
        .I3(SEG_TXT[50]),
        .I4(SW0),
        .I5(Hexs[7]),
        .O(buffer[50]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[51]_i_1 
       (.I0(state__0[0]),
        .I1(in10[51]),
        .I2(state__0[1]),
        .I3(SEG_TXT[51]),
        .I4(SW0),
        .I5(Hexs[19]),
        .O(buffer[51]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[52]_i_1 
       (.I0(state__0[0]),
        .I1(in10[52]),
        .I2(state__0[1]),
        .I3(SEG_TXT[52]),
        .I4(SW0),
        .I5(Hexs[27]),
        .O(buffer[52]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[53]_i_1 
       (.I0(state__0[0]),
        .I1(in10[53]),
        .I2(state__0[1]),
        .I3(SEG_TXT[53]),
        .I4(SW0),
        .I5(Hexs[18]),
        .O(buffer[53]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[54]_i_1 
       (.I0(state__0[0]),
        .I1(in10[54]),
        .I2(state__0[1]),
        .I3(SEG_TXT[54]),
        .I4(SW0),
        .I5(Hexs[6]),
        .O(buffer[54]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[55]_i_1 
       (.I0(state__0[0]),
        .I1(in10[55]),
        .I2(state__0[1]),
        .I3(SEG_TXT[55]),
        .I4(SW0),
        .I5(Hexs[1]),
        .O(buffer[55]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[56]_i_1 
       (.I0(state__0[0]),
        .I1(in10[56]),
        .I2(state__0[1]),
        .I3(SEG_TXT[56]),
        .I4(SW0),
        .I5(Hexs[24]),
        .O(buffer[56]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[57]_i_1 
       (.I0(state__0[0]),
        .I1(in10[57]),
        .I2(state__0[1]),
        .I3(SEG_TXT[57]),
        .I4(SW0),
        .I5(Hexs[12]),
        .O(buffer[57]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[58]_i_1 
       (.I0(state__0[0]),
        .I1(in10[58]),
        .I2(state__0[1]),
        .I3(SEG_TXT[58]),
        .I4(SW0),
        .I5(Hexs[5]),
        .O(buffer[58]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[59]_i_1 
       (.I0(state__0[0]),
        .I1(in10[59]),
        .I2(state__0[1]),
        .I3(SEG_TXT[59]),
        .I4(SW0),
        .I5(Hexs[17]),
        .O(buffer[59]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[5]_i_1 
       (.I0(state__0[0]),
        .I1(in10[5]),
        .I2(state__0[1]),
        .I3(SEG_TXT[5]),
        .I4(SW0),
        .I5(Hexs[22]),
        .O(buffer[5]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[60]_i_1 
       (.I0(state__0[0]),
        .I1(in10[60]),
        .I2(state__0[1]),
        .I3(SEG_TXT[60]),
        .I4(SW0),
        .I5(Hexs[25]),
        .O(buffer[60]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[61]_i_1 
       (.I0(state__0[0]),
        .I1(in10[61]),
        .I2(state__0[1]),
        .I3(SEG_TXT[61]),
        .I4(SW0),
        .I5(Hexs[16]),
        .O(buffer[61]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[62]_i_1 
       (.I0(state__0[0]),
        .I1(in10[62]),
        .I2(state__0[1]),
        .I3(SEG_TXT[62]),
        .I4(SW0),
        .I5(Hexs[4]),
        .O(buffer[62]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \buffer[63]_i_1 
       (.I0(Hexs[0]),
        .I1(SW0),
        .I2(SEG_TXT[63]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(buffer[63]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[6]_i_1 
       (.I0(state__0[0]),
        .I1(in10[6]),
        .I2(state__0[1]),
        .I3(SEG_TXT[6]),
        .I4(SW0),
        .I5(Hexs[10]),
        .O(buffer[6]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[7]_i_1 
       (.I0(state__0[0]),
        .I1(in10[7]),
        .I2(state__0[1]),
        .I3(SEG_TXT[7]),
        .I4(SW0),
        .I5(Hexs[3]),
        .O(buffer[7]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[8]_i_1 
       (.I0(state__0[0]),
        .I1(in10[8]),
        .I2(state__0[1]),
        .I3(SEG_TXT[8]),
        .I4(SW0),
        .I5(Hexs[28]),
        .O(buffer[8]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \buffer[9]_i_1 
       (.I0(state__0[0]),
        .I1(in10[9]),
        .I2(state__0[1]),
        .I3(SEG_TXT[9]),
        .I4(SW0),
        .I5(Hexs[14]),
        .O(buffer[9]));
  FDRE \buffer_reg[0] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[0]),
        .Q(seg_sout),
        .R(1'b0));
  FDRE \buffer_reg[10] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[10]),
        .Q(in10[9]),
        .R(1'b0));
  FDRE \buffer_reg[11] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[11]),
        .Q(in10[10]),
        .R(1'b0));
  FDRE \buffer_reg[12] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[12]),
        .Q(in10[11]),
        .R(1'b0));
  FDRE \buffer_reg[13] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[13]),
        .Q(in10[12]),
        .R(1'b0));
  FDRE \buffer_reg[14] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[14]),
        .Q(in10[13]),
        .R(1'b0));
  FDRE \buffer_reg[15] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[15]),
        .Q(in10[14]),
        .R(1'b0));
  FDRE \buffer_reg[16] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[16]),
        .Q(in10[15]),
        .R(1'b0));
  FDRE \buffer_reg[17] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[17]),
        .Q(in10[16]),
        .R(1'b0));
  FDRE \buffer_reg[18] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[18]),
        .Q(in10[17]),
        .R(1'b0));
  FDRE \buffer_reg[19] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[19]),
        .Q(in10[18]),
        .R(1'b0));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[1]),
        .Q(in10[0]),
        .R(1'b0));
  FDRE \buffer_reg[20] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[20]),
        .Q(in10[19]),
        .R(1'b0));
  FDRE \buffer_reg[21] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[21]),
        .Q(in10[20]),
        .R(1'b0));
  FDRE \buffer_reg[22] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[22]),
        .Q(in10[21]),
        .R(1'b0));
  FDRE \buffer_reg[23] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[23]),
        .Q(in10[22]),
        .R(1'b0));
  FDRE \buffer_reg[24] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[24]),
        .Q(in10[23]),
        .R(1'b0));
  FDRE \buffer_reg[25] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[25]),
        .Q(in10[24]),
        .R(1'b0));
  FDRE \buffer_reg[26] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[26]),
        .Q(in10[25]),
        .R(1'b0));
  FDRE \buffer_reg[27] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[27]),
        .Q(in10[26]),
        .R(1'b0));
  FDRE \buffer_reg[28] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[28]),
        .Q(in10[27]),
        .R(1'b0));
  FDRE \buffer_reg[29] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[29]),
        .Q(in10[28]),
        .R(1'b0));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[2]),
        .Q(in10[1]),
        .R(1'b0));
  FDRE \buffer_reg[30] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[30]),
        .Q(in10[29]),
        .R(1'b0));
  FDRE \buffer_reg[31] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[31]),
        .Q(in10[30]),
        .R(1'b0));
  FDRE \buffer_reg[32] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[32]),
        .Q(in10[31]),
        .R(1'b0));
  FDRE \buffer_reg[33] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[33]),
        .Q(in10[32]),
        .R(1'b0));
  FDRE \buffer_reg[34] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[34]),
        .Q(in10[33]),
        .R(1'b0));
  FDRE \buffer_reg[35] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[35]),
        .Q(in10[34]),
        .R(1'b0));
  FDRE \buffer_reg[36] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[36]),
        .Q(in10[35]),
        .R(1'b0));
  FDRE \buffer_reg[37] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[37]),
        .Q(in10[36]),
        .R(1'b0));
  FDRE \buffer_reg[38] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[38]),
        .Q(in10[37]),
        .R(1'b0));
  FDRE \buffer_reg[39] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[39]),
        .Q(in10[38]),
        .R(1'b0));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[3]),
        .Q(in10[2]),
        .R(1'b0));
  FDRE \buffer_reg[40] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[40]),
        .Q(in10[39]),
        .R(1'b0));
  FDRE \buffer_reg[41] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[41]),
        .Q(in10[40]),
        .R(1'b0));
  FDRE \buffer_reg[42] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[42]),
        .Q(in10[41]),
        .R(1'b0));
  FDRE \buffer_reg[43] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[43]),
        .Q(in10[42]),
        .R(1'b0));
  FDRE \buffer_reg[44] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[44]),
        .Q(in10[43]),
        .R(1'b0));
  FDRE \buffer_reg[45] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[45]),
        .Q(in10[44]),
        .R(1'b0));
  FDRE \buffer_reg[46] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[46]),
        .Q(in10[45]),
        .R(1'b0));
  FDRE \buffer_reg[47] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[47]),
        .Q(in10[46]),
        .R(1'b0));
  FDRE \buffer_reg[48] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[48]),
        .Q(in10[47]),
        .R(1'b0));
  FDRE \buffer_reg[49] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[49]),
        .Q(in10[48]),
        .R(1'b0));
  FDRE \buffer_reg[4] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[4]),
        .Q(in10[3]),
        .R(1'b0));
  FDRE \buffer_reg[50] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[50]),
        .Q(in10[49]),
        .R(1'b0));
  FDRE \buffer_reg[51] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[51]),
        .Q(in10[50]),
        .R(1'b0));
  FDRE \buffer_reg[52] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[52]),
        .Q(in10[51]),
        .R(1'b0));
  FDRE \buffer_reg[53] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[53]),
        .Q(in10[52]),
        .R(1'b0));
  FDRE \buffer_reg[54] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[54]),
        .Q(in10[53]),
        .R(1'b0));
  FDRE \buffer_reg[55] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[55]),
        .Q(in10[54]),
        .R(1'b0));
  FDRE \buffer_reg[56] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[56]),
        .Q(in10[55]),
        .R(1'b0));
  FDRE \buffer_reg[57] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[57]),
        .Q(in10[56]),
        .R(1'b0));
  FDRE \buffer_reg[58] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[58]),
        .Q(in10[57]),
        .R(1'b0));
  FDRE \buffer_reg[59] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[59]),
        .Q(in10[58]),
        .R(1'b0));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[5]),
        .Q(in10[4]),
        .R(1'b0));
  FDRE \buffer_reg[60] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[60]),
        .Q(in10[59]),
        .R(1'b0));
  FDRE \buffer_reg[61] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[61]),
        .Q(in10[60]),
        .R(1'b0));
  FDRE \buffer_reg[62] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[62]),
        .Q(in10[61]),
        .R(1'b0));
  FDRE \buffer_reg[63] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[63]),
        .Q(in10[62]),
        .R(1'b0));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[6]),
        .Q(in10[5]),
        .R(1'b0));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[7]),
        .Q(in10[6]),
        .R(1'b0));
  FDRE \buffer_reg[8] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[8]),
        .Q(in10[7]),
        .R(1'b0));
  FDRE \buffer_reg[9] 
       (.C(clk),
        .CE(\buffer[0]_i_1_n_0 ),
        .D(buffer[9]),
        .Q(in10[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h86)) 
    s_clk_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(s_clk_reg_0),
        .O(s_clk_i_1_n_0));
  FDCE s_clk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(s_clk_i_1_n_0),
        .Q(s_clk_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_count[0]_i_1 
       (.I0(state__0[0]),
        .I1(\shift_count_reg_n_0_[0] ),
        .O(shift_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \shift_count[1]_i_1 
       (.I0(state__0[0]),
        .I1(\shift_count_reg_n_0_[0] ),
        .I2(\shift_count_reg_n_0_[1] ),
        .O(shift_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \shift_count[2]_i_1 
       (.I0(state__0[0]),
        .I1(\shift_count_reg_n_0_[0] ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .O(shift_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \shift_count[3]_i_1 
       (.I0(state__0[0]),
        .I1(\shift_count_reg_n_0_[1] ),
        .I2(\shift_count_reg_n_0_[0] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .I4(\shift_count_reg_n_0_[3] ),
        .O(shift_count[3]));
  LUT6 #(
    .INIT(64'h70F0F0F080000000)) 
    \shift_count[4]_i_1 
       (.I0(\shift_count_reg_n_0_[1] ),
        .I1(\shift_count_reg_n_0_[0] ),
        .I2(state__0[0]),
        .I3(\shift_count_reg_n_0_[2] ),
        .I4(\shift_count_reg_n_0_[3] ),
        .I5(\shift_count_reg_n_0_[4] ),
        .O(shift_count[4]));
  LUT6 #(
    .INIT(64'h00000000FD0D0D0D)) 
    \shift_count[5]_i_1 
       (.I0(start[0]),
        .I1(start[1]),
        .I2(state__0[0]),
        .I3(\buffer[0]_i_4_n_0 ),
        .I4(s_clk_reg_0),
        .I5(state__0[1]),
        .O(\shift_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \shift_count[5]_i_2 
       (.I0(state__0[0]),
        .I1(\shift_count[5]_i_3_n_0 ),
        .I2(\shift_count_reg_n_0_[4] ),
        .I3(\shift_count_reg_n_0_[5] ),
        .O(shift_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \shift_count[5]_i_3 
       (.I0(\shift_count_reg_n_0_[3] ),
        .I1(\shift_count_reg_n_0_[1] ),
        .I2(\shift_count_reg_n_0_[0] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .O(\shift_count[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[0] 
       (.C(clk),
        .CE(\shift_count[5]_i_1_n_0 ),
        .CLR(rst),
        .D(shift_count[0]),
        .Q(\shift_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[1] 
       (.C(clk),
        .CE(\shift_count[5]_i_1_n_0 ),
        .CLR(rst),
        .D(shift_count[1]),
        .Q(\shift_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[2] 
       (.C(clk),
        .CE(\shift_count[5]_i_1_n_0 ),
        .CLR(rst),
        .D(shift_count[2]),
        .Q(\shift_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[3] 
       (.C(clk),
        .CE(\shift_count[5]_i_1_n_0 ),
        .CLR(rst),
        .D(shift_count[3]),
        .Q(\shift_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[4] 
       (.C(clk),
        .CE(\shift_count[5]_i_1_n_0 ),
        .CLR(rst),
        .D(shift_count[4]),
        .Q(\shift_count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_count_reg[5] 
       (.C(clk),
        .CE(\shift_count[5]_i_1_n_0 ),
        .CLR(rst),
        .D(shift_count[5]),
        .Q(\shift_count_reg_n_0_[5] ));
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
endmodule

(* ORIG_REF_NAME = "SSeg7_Dev" *) 
module SSeg7_Dev_0_SSeg7_Dev
   (s_clk_reg,
    seg_sout,
    SEG_PEN,
    clk,
    rst,
    Hexs,
    point,
    LES,
    flash,
    Start,
    SW0);
  output s_clk_reg;
  output seg_sout;
  output SEG_PEN;
  input clk;
  input rst;
  input [31:0]Hexs;
  input [7:0]point;
  input [7:0]LES;
  input flash;
  input Start;
  input SW0;

  wire [31:0]Hexs;
  wire [7:0]LES;
  wire SEG_PEN;
  wire SW0;
  wire Start;
  wire [63:0]XLXN_390;
  wire clk;
  wire flash;
  wire [7:0]point;
  wire rst;
  wire s_clk_reg;
  wire seg_sout;

  SSeg7_Dev_0_P2S M2
       (.Hexs(Hexs),
        .SEG_PEN(SEG_PEN),
        .SEG_TXT(XLXN_390),
        .SW0(SW0),
        .Start(Start),
        .clk(clk),
        .rst(rst),
        .s_clk_reg_0(s_clk_reg),
        .seg_sout(seg_sout));
  SSeg7_Dev_0_HexTo8SEG SM1
       (.Hexs(Hexs),
        .LES(LES),
        .SEG_TXT(XLXN_390),
        .flash(flash),
        .point(point));
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
