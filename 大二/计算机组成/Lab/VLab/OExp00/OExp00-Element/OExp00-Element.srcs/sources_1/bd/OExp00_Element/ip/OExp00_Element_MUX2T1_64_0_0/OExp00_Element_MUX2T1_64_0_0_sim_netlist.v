// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 10 18:07:55 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vteacher/OExp00/OExp00-Element/OExp00-Element.srcs/sources_1/bd/OExp00_Element/ip/OExp00_Element_MUX2T1_64_0_0/OExp00_Element_MUX2T1_64_0_0_sim_netlist.v
// Design      : OExp00_Element_MUX2T1_64_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OExp00_Element_MUX2T1_64_0_0,MUX2T1_64,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "MUX2T1_64,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module OExp00_Element_MUX2T1_64_0_0
   (sel,
    I0,
    I1,
    o);
  input sel;
  input [63:0]I0;
  input [63:0]I1;
  output [63:0]o;

  wire [63:0]I0;
  wire [63:0]I1;
  wire [63:0]o;
  wire sel;

  (* black_box = "1" *) 
  OExp00_Element_MUX2T1_64_0_0_MUX2T1_64 inst
       (.I0(I0),
        .I1(I1),
        .o(o),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "MUX2T1_64" *) 
module OExp00_Element_MUX2T1_64_0_0_MUX2T1_64
   (sel,
    I0,
    I1,
    o);
  input sel;
  input [63:0]I0;
  input [63:0]I1;
  output [63:0]o;

  wire [63:0]I0;
  wire [63:0]I1;
  wire [63:0]o;
  wire sel;

  LUT3 #(
    .INIT(8'hAC)) 
    \o[0]_INST_0 
       (.I0(I1[0]),
        .I1(I0[0]),
        .I2(sel),
        .O(o[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[10]_INST_0 
       (.I0(I1[10]),
        .I1(I0[10]),
        .I2(sel),
        .O(o[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[11]_INST_0 
       (.I0(I1[11]),
        .I1(I0[11]),
        .I2(sel),
        .O(o[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[12]_INST_0 
       (.I0(I1[12]),
        .I1(I0[12]),
        .I2(sel),
        .O(o[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[13]_INST_0 
       (.I0(I1[13]),
        .I1(I0[13]),
        .I2(sel),
        .O(o[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[14]_INST_0 
       (.I0(I1[14]),
        .I1(I0[14]),
        .I2(sel),
        .O(o[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[15]_INST_0 
       (.I0(I1[15]),
        .I1(I0[15]),
        .I2(sel),
        .O(o[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[16]_INST_0 
       (.I0(I1[16]),
        .I1(I0[16]),
        .I2(sel),
        .O(o[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[17]_INST_0 
       (.I0(I1[17]),
        .I1(I0[17]),
        .I2(sel),
        .O(o[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[18]_INST_0 
       (.I0(I1[18]),
        .I1(I0[18]),
        .I2(sel),
        .O(o[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[19]_INST_0 
       (.I0(I1[19]),
        .I1(I0[19]),
        .I2(sel),
        .O(o[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[1]_INST_0 
       (.I0(I1[1]),
        .I1(I0[1]),
        .I2(sel),
        .O(o[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[20]_INST_0 
       (.I0(I1[20]),
        .I1(I0[20]),
        .I2(sel),
        .O(o[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[21]_INST_0 
       (.I0(I1[21]),
        .I1(I0[21]),
        .I2(sel),
        .O(o[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[22]_INST_0 
       (.I0(I1[22]),
        .I1(I0[22]),
        .I2(sel),
        .O(o[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[23]_INST_0 
       (.I0(I1[23]),
        .I1(I0[23]),
        .I2(sel),
        .O(o[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[24]_INST_0 
       (.I0(I1[24]),
        .I1(I0[24]),
        .I2(sel),
        .O(o[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[25]_INST_0 
       (.I0(I1[25]),
        .I1(I0[25]),
        .I2(sel),
        .O(o[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[26]_INST_0 
       (.I0(I1[26]),
        .I1(I0[26]),
        .I2(sel),
        .O(o[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[27]_INST_0 
       (.I0(I1[27]),
        .I1(I0[27]),
        .I2(sel),
        .O(o[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[28]_INST_0 
       (.I0(I1[28]),
        .I1(I0[28]),
        .I2(sel),
        .O(o[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[29]_INST_0 
       (.I0(I1[29]),
        .I1(I0[29]),
        .I2(sel),
        .O(o[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[2]_INST_0 
       (.I0(I1[2]),
        .I1(I0[2]),
        .I2(sel),
        .O(o[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[30]_INST_0 
       (.I0(I1[30]),
        .I1(I0[30]),
        .I2(sel),
        .O(o[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[31]_INST_0 
       (.I0(I1[31]),
        .I1(I0[31]),
        .I2(sel),
        .O(o[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[32]_INST_0 
       (.I0(I1[32]),
        .I1(I0[32]),
        .I2(sel),
        .O(o[32]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[33]_INST_0 
       (.I0(I1[33]),
        .I1(I0[33]),
        .I2(sel),
        .O(o[33]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[34]_INST_0 
       (.I0(I1[34]),
        .I1(I0[34]),
        .I2(sel),
        .O(o[34]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[35]_INST_0 
       (.I0(I1[35]),
        .I1(I0[35]),
        .I2(sel),
        .O(o[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[36]_INST_0 
       (.I0(I1[36]),
        .I1(I0[36]),
        .I2(sel),
        .O(o[36]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[37]_INST_0 
       (.I0(I1[37]),
        .I1(I0[37]),
        .I2(sel),
        .O(o[37]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[38]_INST_0 
       (.I0(I1[38]),
        .I1(I0[38]),
        .I2(sel),
        .O(o[38]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[39]_INST_0 
       (.I0(I1[39]),
        .I1(I0[39]),
        .I2(sel),
        .O(o[39]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[3]_INST_0 
       (.I0(I1[3]),
        .I1(I0[3]),
        .I2(sel),
        .O(o[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[40]_INST_0 
       (.I0(I1[40]),
        .I1(I0[40]),
        .I2(sel),
        .O(o[40]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[41]_INST_0 
       (.I0(I1[41]),
        .I1(I0[41]),
        .I2(sel),
        .O(o[41]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[42]_INST_0 
       (.I0(I1[42]),
        .I1(I0[42]),
        .I2(sel),
        .O(o[42]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[43]_INST_0 
       (.I0(I1[43]),
        .I1(I0[43]),
        .I2(sel),
        .O(o[43]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[44]_INST_0 
       (.I0(I1[44]),
        .I1(I0[44]),
        .I2(sel),
        .O(o[44]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[45]_INST_0 
       (.I0(I1[45]),
        .I1(I0[45]),
        .I2(sel),
        .O(o[45]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[46]_INST_0 
       (.I0(I1[46]),
        .I1(I0[46]),
        .I2(sel),
        .O(o[46]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[47]_INST_0 
       (.I0(I1[47]),
        .I1(I0[47]),
        .I2(sel),
        .O(o[47]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[48]_INST_0 
       (.I0(I1[48]),
        .I1(I0[48]),
        .I2(sel),
        .O(o[48]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[49]_INST_0 
       (.I0(I1[49]),
        .I1(I0[49]),
        .I2(sel),
        .O(o[49]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[4]_INST_0 
       (.I0(I1[4]),
        .I1(I0[4]),
        .I2(sel),
        .O(o[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[50]_INST_0 
       (.I0(I1[50]),
        .I1(I0[50]),
        .I2(sel),
        .O(o[50]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[51]_INST_0 
       (.I0(I1[51]),
        .I1(I0[51]),
        .I2(sel),
        .O(o[51]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[52]_INST_0 
       (.I0(I1[52]),
        .I1(I0[52]),
        .I2(sel),
        .O(o[52]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[53]_INST_0 
       (.I0(I1[53]),
        .I1(I0[53]),
        .I2(sel),
        .O(o[53]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[54]_INST_0 
       (.I0(I1[54]),
        .I1(I0[54]),
        .I2(sel),
        .O(o[54]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[55]_INST_0 
       (.I0(I1[55]),
        .I1(I0[55]),
        .I2(sel),
        .O(o[55]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[56]_INST_0 
       (.I0(I1[56]),
        .I1(I0[56]),
        .I2(sel),
        .O(o[56]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[57]_INST_0 
       (.I0(I1[57]),
        .I1(I0[57]),
        .I2(sel),
        .O(o[57]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[58]_INST_0 
       (.I0(I1[58]),
        .I1(I0[58]),
        .I2(sel),
        .O(o[58]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[59]_INST_0 
       (.I0(I1[59]),
        .I1(I0[59]),
        .I2(sel),
        .O(o[59]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[5]_INST_0 
       (.I0(I1[5]),
        .I1(I0[5]),
        .I2(sel),
        .O(o[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[60]_INST_0 
       (.I0(I1[60]),
        .I1(I0[60]),
        .I2(sel),
        .O(o[60]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[61]_INST_0 
       (.I0(I1[61]),
        .I1(I0[61]),
        .I2(sel),
        .O(o[61]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[62]_INST_0 
       (.I0(I1[62]),
        .I1(I0[62]),
        .I2(sel),
        .O(o[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[63]_INST_0 
       (.I0(I1[63]),
        .I1(I0[63]),
        .I2(sel),
        .O(o[63]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[6]_INST_0 
       (.I0(I1[6]),
        .I1(I0[6]),
        .I2(sel),
        .O(o[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[7]_INST_0 
       (.I0(I1[7]),
        .I1(I0[7]),
        .I2(sel),
        .O(o[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[8]_INST_0 
       (.I0(I1[8]),
        .I1(I0[8]),
        .I2(sel),
        .O(o[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[9]_INST_0 
       (.I0(I1[9]),
        .I1(I0[9]),
        .I2(sel),
        .O(o[9]));
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
