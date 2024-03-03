// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 15 11:46:04 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top adc_1 -prefix
//               adc_1_ adc_0_sim_netlist.v
// Design      : adc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adc_1_adc
   (S,
    A,
    C0,
    B);
  output [32:0]S;
  input [31:0]A;
  input C0;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire C0;
  wire [32:0]S;
  wire \S[0]_INST_0_i_1_n_0 ;
  wire \S[0]_INST_0_i_2_n_0 ;
  wire \S[0]_INST_0_i_3_n_0 ;
  wire \S[0]_INST_0_i_4_n_0 ;
  wire \S[0]_INST_0_n_0 ;
  wire \S[0]_INST_0_n_1 ;
  wire \S[0]_INST_0_n_2 ;
  wire \S[0]_INST_0_n_3 ;
  wire \S[12]_INST_0_i_1_n_0 ;
  wire \S[12]_INST_0_i_2_n_0 ;
  wire \S[12]_INST_0_i_3_n_0 ;
  wire \S[12]_INST_0_i_4_n_0 ;
  wire \S[12]_INST_0_n_0 ;
  wire \S[12]_INST_0_n_1 ;
  wire \S[12]_INST_0_n_2 ;
  wire \S[12]_INST_0_n_3 ;
  wire \S[16]_INST_0_i_1_n_0 ;
  wire \S[16]_INST_0_i_2_n_0 ;
  wire \S[16]_INST_0_i_3_n_0 ;
  wire \S[16]_INST_0_i_4_n_0 ;
  wire \S[16]_INST_0_n_0 ;
  wire \S[16]_INST_0_n_1 ;
  wire \S[16]_INST_0_n_2 ;
  wire \S[16]_INST_0_n_3 ;
  wire \S[20]_INST_0_i_1_n_0 ;
  wire \S[20]_INST_0_i_2_n_0 ;
  wire \S[20]_INST_0_i_3_n_0 ;
  wire \S[20]_INST_0_i_4_n_0 ;
  wire \S[20]_INST_0_n_0 ;
  wire \S[20]_INST_0_n_1 ;
  wire \S[20]_INST_0_n_2 ;
  wire \S[20]_INST_0_n_3 ;
  wire \S[24]_INST_0_i_1_n_0 ;
  wire \S[24]_INST_0_i_2_n_0 ;
  wire \S[24]_INST_0_i_3_n_0 ;
  wire \S[24]_INST_0_i_4_n_0 ;
  wire \S[24]_INST_0_n_0 ;
  wire \S[24]_INST_0_n_1 ;
  wire \S[24]_INST_0_n_2 ;
  wire \S[24]_INST_0_n_3 ;
  wire \S[28]_INST_0_i_1_n_0 ;
  wire \S[28]_INST_0_i_2_n_0 ;
  wire \S[28]_INST_0_i_3_n_0 ;
  wire \S[28]_INST_0_i_4_n_0 ;
  wire \S[28]_INST_0_n_0 ;
  wire \S[28]_INST_0_n_1 ;
  wire \S[28]_INST_0_n_2 ;
  wire \S[28]_INST_0_n_3 ;
  wire \S[4]_INST_0_i_1_n_0 ;
  wire \S[4]_INST_0_i_2_n_0 ;
  wire \S[4]_INST_0_i_3_n_0 ;
  wire \S[4]_INST_0_i_4_n_0 ;
  wire \S[4]_INST_0_n_0 ;
  wire \S[4]_INST_0_n_1 ;
  wire \S[4]_INST_0_n_2 ;
  wire \S[4]_INST_0_n_3 ;
  wire \S[8]_INST_0_i_1_n_0 ;
  wire \S[8]_INST_0_i_2_n_0 ;
  wire \S[8]_INST_0_i_3_n_0 ;
  wire \S[8]_INST_0_i_4_n_0 ;
  wire \S[8]_INST_0_n_0 ;
  wire \S[8]_INST_0_n_1 ;
  wire \S[8]_INST_0_n_2 ;
  wire \S[8]_INST_0_n_3 ;
  wire [3:0]\NLW_S[32]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_S[32]_INST_0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[0]_INST_0 
       (.CI(1'b0),
        .CO({\S[0]_INST_0_n_0 ,\S[0]_INST_0_n_1 ,\S[0]_INST_0_n_2 ,\S[0]_INST_0_n_3 }),
        .CYINIT(C0),
        .DI(A[3:0]),
        .O(S[3:0]),
        .S({\S[0]_INST_0_i_1_n_0 ,\S[0]_INST_0_i_2_n_0 ,\S[0]_INST_0_i_3_n_0 ,\S[0]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_1 
       (.I0(A[3]),
        .I1(C0),
        .I2(B[3]),
        .O(\S[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_2 
       (.I0(A[2]),
        .I1(C0),
        .I2(B[2]),
        .O(\S[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_3 
       (.I0(A[1]),
        .I1(C0),
        .I2(B[1]),
        .O(\S[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[0]_INST_0_i_4 
       (.I0(A[0]),
        .I1(C0),
        .I2(B[0]),
        .O(\S[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[12]_INST_0 
       (.CI(\S[8]_INST_0_n_0 ),
        .CO({\S[12]_INST_0_n_0 ,\S[12]_INST_0_n_1 ,\S[12]_INST_0_n_2 ,\S[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(S[15:12]),
        .S({\S[12]_INST_0_i_1_n_0 ,\S[12]_INST_0_i_2_n_0 ,\S[12]_INST_0_i_3_n_0 ,\S[12]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_1 
       (.I0(A[15]),
        .I1(C0),
        .I2(B[15]),
        .O(\S[12]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_2 
       (.I0(A[14]),
        .I1(C0),
        .I2(B[14]),
        .O(\S[12]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_3 
       (.I0(A[13]),
        .I1(C0),
        .I2(B[13]),
        .O(\S[12]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[12]_INST_0_i_4 
       (.I0(A[12]),
        .I1(C0),
        .I2(B[12]),
        .O(\S[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[16]_INST_0 
       (.CI(\S[12]_INST_0_n_0 ),
        .CO({\S[16]_INST_0_n_0 ,\S[16]_INST_0_n_1 ,\S[16]_INST_0_n_2 ,\S[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(S[19:16]),
        .S({\S[16]_INST_0_i_1_n_0 ,\S[16]_INST_0_i_2_n_0 ,\S[16]_INST_0_i_3_n_0 ,\S[16]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_1 
       (.I0(A[19]),
        .I1(C0),
        .I2(B[19]),
        .O(\S[16]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_2 
       (.I0(A[18]),
        .I1(C0),
        .I2(B[18]),
        .O(\S[16]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_3 
       (.I0(A[17]),
        .I1(C0),
        .I2(B[17]),
        .O(\S[16]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_4 
       (.I0(A[16]),
        .I1(C0),
        .I2(B[16]),
        .O(\S[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[20]_INST_0 
       (.CI(\S[16]_INST_0_n_0 ),
        .CO({\S[20]_INST_0_n_0 ,\S[20]_INST_0_n_1 ,\S[20]_INST_0_n_2 ,\S[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(S[23:20]),
        .S({\S[20]_INST_0_i_1_n_0 ,\S[20]_INST_0_i_2_n_0 ,\S[20]_INST_0_i_3_n_0 ,\S[20]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_1 
       (.I0(A[23]),
        .I1(C0),
        .I2(B[23]),
        .O(\S[20]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_2 
       (.I0(A[22]),
        .I1(C0),
        .I2(B[22]),
        .O(\S[20]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_3 
       (.I0(A[21]),
        .I1(C0),
        .I2(B[21]),
        .O(\S[20]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[20]_INST_0_i_4 
       (.I0(A[20]),
        .I1(C0),
        .I2(B[20]),
        .O(\S[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[24]_INST_0 
       (.CI(\S[20]_INST_0_n_0 ),
        .CO({\S[24]_INST_0_n_0 ,\S[24]_INST_0_n_1 ,\S[24]_INST_0_n_2 ,\S[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(S[27:24]),
        .S({\S[24]_INST_0_i_1_n_0 ,\S[24]_INST_0_i_2_n_0 ,\S[24]_INST_0_i_3_n_0 ,\S[24]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_1 
       (.I0(A[27]),
        .I1(C0),
        .I2(B[27]),
        .O(\S[24]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_2 
       (.I0(A[26]),
        .I1(C0),
        .I2(B[26]),
        .O(\S[24]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_3 
       (.I0(A[25]),
        .I1(C0),
        .I2(B[25]),
        .O(\S[24]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[24]_INST_0_i_4 
       (.I0(A[24]),
        .I1(C0),
        .I2(B[24]),
        .O(\S[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[28]_INST_0 
       (.CI(\S[24]_INST_0_n_0 ),
        .CO({\S[28]_INST_0_n_0 ,\S[28]_INST_0_n_1 ,\S[28]_INST_0_n_2 ,\S[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O(S[31:28]),
        .S({\S[28]_INST_0_i_1_n_0 ,\S[28]_INST_0_i_2_n_0 ,\S[28]_INST_0_i_3_n_0 ,\S[28]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_1 
       (.I0(A[31]),
        .I1(C0),
        .I2(B[31]),
        .O(\S[28]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_2 
       (.I0(A[30]),
        .I1(C0),
        .I2(B[30]),
        .O(\S[28]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_3 
       (.I0(A[29]),
        .I1(C0),
        .I2(B[29]),
        .O(\S[28]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_4 
       (.I0(A[28]),
        .I1(C0),
        .I2(B[28]),
        .O(\S[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[32]_INST_0 
       (.CI(\S[28]_INST_0_n_0 ),
        .CO(\NLW_S[32]_INST_0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_S[32]_INST_0_O_UNCONNECTED [3:1],S[32]}),
        .S({1'b0,1'b0,1'b0,C0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[4]_INST_0 
       (.CI(\S[0]_INST_0_n_0 ),
        .CO({\S[4]_INST_0_n_0 ,\S[4]_INST_0_n_1 ,\S[4]_INST_0_n_2 ,\S[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(S[7:4]),
        .S({\S[4]_INST_0_i_1_n_0 ,\S[4]_INST_0_i_2_n_0 ,\S[4]_INST_0_i_3_n_0 ,\S[4]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_1 
       (.I0(A[7]),
        .I1(C0),
        .I2(B[7]),
        .O(\S[4]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_2 
       (.I0(A[6]),
        .I1(C0),
        .I2(B[6]),
        .O(\S[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_3 
       (.I0(A[5]),
        .I1(C0),
        .I2(B[5]),
        .O(\S[4]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[4]_INST_0_i_4 
       (.I0(A[4]),
        .I1(C0),
        .I2(B[4]),
        .O(\S[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \S[8]_INST_0 
       (.CI(\S[4]_INST_0_n_0 ),
        .CO({\S[8]_INST_0_n_0 ,\S[8]_INST_0_n_1 ,\S[8]_INST_0_n_2 ,\S[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(S[11:8]),
        .S({\S[8]_INST_0_i_1_n_0 ,\S[8]_INST_0_i_2_n_0 ,\S[8]_INST_0_i_3_n_0 ,\S[8]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_1 
       (.I0(A[11]),
        .I1(C0),
        .I2(B[11]),
        .O(\S[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_2 
       (.I0(A[10]),
        .I1(C0),
        .I2(B[10]),
        .O(\S[8]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_3 
       (.I0(A[9]),
        .I1(C0),
        .I2(B[9]),
        .O(\S[8]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[8]_INST_0_i_4 
       (.I0(A[8]),
        .I1(C0),
        .I2(B[8]),
        .O(\S[8]_INST_0_i_4_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adc_0,adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adc,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module adc_1
   (A,
    B,
    C0,
    S);
  input [31:0]A;
  input [31:0]B;
  input C0;
  output [32:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire C0;
  wire [32:0]S;

  adc_1_adc inst
       (.A(A),
        .B(B),
        .C0(C0),
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
