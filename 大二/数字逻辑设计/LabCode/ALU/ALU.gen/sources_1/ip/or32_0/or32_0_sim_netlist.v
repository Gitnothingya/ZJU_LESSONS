// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 15 11:48:36 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top or32_0 -prefix
//               or32_0_ or32_0_sim_netlist.v
// Design      : or32_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module or32_0_or32
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
(* NotValidForBitStream *)
module or32_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  or32_0_or32 inst
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
