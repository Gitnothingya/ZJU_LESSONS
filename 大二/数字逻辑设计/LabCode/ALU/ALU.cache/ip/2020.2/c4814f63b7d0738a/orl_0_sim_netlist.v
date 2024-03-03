// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 30 20:34:31 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ orl_0_sim_netlist.v
// Design      : orl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl
   (S,
    A);
  output S;
  input [31:0]A;

  wire [31:0]A;
  wire S;
  wire S_INST_0_i_1_n_0;
  wire S_INST_0_i_2_n_0;
  wire S_INST_0_i_3_n_0;
  wire S_INST_0_i_4_n_0;
  wire S_INST_0_i_5_n_0;
  wire S_INST_0_i_6_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    S_INST_0
       (.I0(S_INST_0_i_1_n_0),
        .I1(S_INST_0_i_2_n_0),
        .I2(S_INST_0_i_3_n_0),
        .I3(S_INST_0_i_4_n_0),
        .I4(S_INST_0_i_5_n_0),
        .I5(S_INST_0_i_6_n_0),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    S_INST_0_i_1
       (.I0(A[12]),
        .I1(A[13]),
        .I2(A[10]),
        .I3(A[11]),
        .I4(A[9]),
        .I5(A[8]),
        .O(S_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    S_INST_0_i_2
       (.I0(A[18]),
        .I1(A[19]),
        .I2(A[16]),
        .I3(A[17]),
        .I4(A[15]),
        .I5(A[14]),
        .O(S_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    S_INST_0_i_3
       (.I0(A[30]),
        .I1(A[31]),
        .I2(A[28]),
        .I3(A[29]),
        .I4(A[27]),
        .I5(A[26]),
        .O(S_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    S_INST_0_i_4
       (.I0(A[24]),
        .I1(A[25]),
        .I2(A[22]),
        .I3(A[23]),
        .I4(A[21]),
        .I5(A[20]),
        .O(S_INST_0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    S_INST_0_i_5
       (.I0(A[0]),
        .I1(A[1]),
        .O(S_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    S_INST_0_i_6
       (.I0(A[6]),
        .I1(A[7]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[3]),
        .I5(A[2]),
        .O(S_INST_0_i_6_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "orl_0,orl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "orl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    S);
  input [31:0]A;
  output S;

  wire [31:0]A;
  wire S;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl inst
       (.A(A),
        .S(S));
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
