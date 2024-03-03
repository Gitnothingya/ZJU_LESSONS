// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 15:33:05 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mux4132_0_sim_netlist.v
// Design      : mux4132_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux4132
   (o,
    I1,
    I0,
    I3,
    s,
    I2);
  output [31:0]o;
  input [31:0]I1;
  input [31:0]I0;
  input [31:0]I3;
  input [1:0]s;
  input [31:0]I2;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]o;
  wire [1:0]s;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[0]_INST_0 
       (.I0(I1[0]),
        .I1(I0[0]),
        .I2(I3[0]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[0]),
        .O(o[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[10]_INST_0 
       (.I0(I1[10]),
        .I1(I0[10]),
        .I2(I3[10]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[10]),
        .O(o[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[11]_INST_0 
       (.I0(I1[11]),
        .I1(I0[11]),
        .I2(I3[11]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[11]),
        .O(o[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[12]_INST_0 
       (.I0(I1[12]),
        .I1(I0[12]),
        .I2(I3[12]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[12]),
        .O(o[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[13]_INST_0 
       (.I0(I1[13]),
        .I1(I0[13]),
        .I2(I3[13]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[13]),
        .O(o[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[14]_INST_0 
       (.I0(I1[14]),
        .I1(I0[14]),
        .I2(I3[14]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[14]),
        .O(o[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[15]_INST_0 
       (.I0(I1[15]),
        .I1(I0[15]),
        .I2(I3[15]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[15]),
        .O(o[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[16]_INST_0 
       (.I0(I1[16]),
        .I1(I0[16]),
        .I2(I3[16]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[16]),
        .O(o[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[17]_INST_0 
       (.I0(I1[17]),
        .I1(I0[17]),
        .I2(I3[17]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[17]),
        .O(o[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[18]_INST_0 
       (.I0(I1[18]),
        .I1(I0[18]),
        .I2(I3[18]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[18]),
        .O(o[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[19]_INST_0 
       (.I0(I1[19]),
        .I1(I0[19]),
        .I2(I3[19]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[19]),
        .O(o[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[1]_INST_0 
       (.I0(I1[1]),
        .I1(I0[1]),
        .I2(I3[1]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[1]),
        .O(o[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[20]_INST_0 
       (.I0(I1[20]),
        .I1(I0[20]),
        .I2(I3[20]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[20]),
        .O(o[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[21]_INST_0 
       (.I0(I1[21]),
        .I1(I0[21]),
        .I2(I3[21]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[21]),
        .O(o[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[22]_INST_0 
       (.I0(I1[22]),
        .I1(I0[22]),
        .I2(I3[22]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[22]),
        .O(o[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[23]_INST_0 
       (.I0(I1[23]),
        .I1(I0[23]),
        .I2(I3[23]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[23]),
        .O(o[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[24]_INST_0 
       (.I0(I1[24]),
        .I1(I0[24]),
        .I2(I3[24]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[24]),
        .O(o[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[25]_INST_0 
       (.I0(I1[25]),
        .I1(I0[25]),
        .I2(I3[25]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[25]),
        .O(o[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[26]_INST_0 
       (.I0(I1[26]),
        .I1(I0[26]),
        .I2(I3[26]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[26]),
        .O(o[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[27]_INST_0 
       (.I0(I1[27]),
        .I1(I0[27]),
        .I2(I3[27]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[27]),
        .O(o[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[28]_INST_0 
       (.I0(I1[28]),
        .I1(I0[28]),
        .I2(I3[28]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[28]),
        .O(o[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[29]_INST_0 
       (.I0(I1[29]),
        .I1(I0[29]),
        .I2(I3[29]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[29]),
        .O(o[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[2]_INST_0 
       (.I0(I1[2]),
        .I1(I0[2]),
        .I2(I3[2]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[2]),
        .O(o[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[30]_INST_0 
       (.I0(I1[30]),
        .I1(I0[30]),
        .I2(I3[30]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[30]),
        .O(o[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[31]_INST_0 
       (.I0(I1[31]),
        .I1(I0[31]),
        .I2(I3[31]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[31]),
        .O(o[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[3]_INST_0 
       (.I0(I1[3]),
        .I1(I0[3]),
        .I2(I3[3]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[3]),
        .O(o[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[4]_INST_0 
       (.I0(I1[4]),
        .I1(I0[4]),
        .I2(I3[4]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[4]),
        .O(o[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[5]_INST_0 
       (.I0(I1[5]),
        .I1(I0[5]),
        .I2(I3[5]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[5]),
        .O(o[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[6]_INST_0 
       (.I0(I1[6]),
        .I1(I0[6]),
        .I2(I3[6]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[6]),
        .O(o[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[7]_INST_0 
       (.I0(I1[7]),
        .I1(I0[7]),
        .I2(I3[7]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[7]),
        .O(o[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[8]_INST_0 
       (.I0(I1[8]),
        .I1(I0[8]),
        .I2(I3[8]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[8]),
        .O(o[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[9]_INST_0 
       (.I0(I1[9]),
        .I1(I0[9]),
        .I2(I3[9]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[9]),
        .O(o[9]));
endmodule

(* CHECK_LICENSE_TYPE = "mux4132_0,mux4132,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mux4132,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (I0,
    I1,
    I2,
    I3,
    s,
    o);
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  input [1:0]s;
  output [31:0]o;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]o;
  wire [1:0]s;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux4132 inst
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .o(o),
        .s(s));
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
