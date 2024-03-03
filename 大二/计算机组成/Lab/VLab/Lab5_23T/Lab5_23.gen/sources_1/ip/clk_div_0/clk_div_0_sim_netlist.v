// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  1 15:45:00 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/clk_div_0/clk_div_0_sim_netlist.v
// Design      : clk_div_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "clk_div_0,clk_div,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "clk_div,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module clk_div_0
   (clk,
    rst,
    SW2,
    SW8,
    STEP,
    clkdiv,
    Clk_CPU);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input SW2;
  input SW8;
  input STEP;
  output [31:0]clkdiv;
  output Clk_CPU;

  wire Clk_CPU;
  wire STEP;
  wire SW2;
  wire SW8;
  wire clk;
  wire [31:0]clkdiv;
  wire rst;

  clk_div_0_clk_div inst
       (.Clk_CPU(Clk_CPU),
        .STEP(STEP),
        .SW2(SW2),
        .SW8(SW8),
        .clk(clk),
        .clkdiv(clkdiv),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "clk_div" *) 
module clk_div_0_clk_div
   (clkdiv,
    Clk_CPU,
    clk,
    rst,
    STEP,
    SW8,
    SW2);
  output [31:0]clkdiv;
  output Clk_CPU;
  input clk;
  input rst;
  input STEP;
  input SW8;
  input SW2;

  wire Clk_CPU;
  wire STEP;
  wire SW2;
  wire SW8;
  wire clk;
  wire [31:0]clkdiv;
  wire \clkdiv[3]_i_2_n_0 ;
  wire \clkdiv_reg[11]_i_1_n_0 ;
  wire \clkdiv_reg[11]_i_1_n_1 ;
  wire \clkdiv_reg[11]_i_1_n_2 ;
  wire \clkdiv_reg[11]_i_1_n_3 ;
  wire \clkdiv_reg[11]_i_1_n_4 ;
  wire \clkdiv_reg[11]_i_1_n_5 ;
  wire \clkdiv_reg[11]_i_1_n_6 ;
  wire \clkdiv_reg[11]_i_1_n_7 ;
  wire \clkdiv_reg[15]_i_1_n_0 ;
  wire \clkdiv_reg[15]_i_1_n_1 ;
  wire \clkdiv_reg[15]_i_1_n_2 ;
  wire \clkdiv_reg[15]_i_1_n_3 ;
  wire \clkdiv_reg[15]_i_1_n_4 ;
  wire \clkdiv_reg[15]_i_1_n_5 ;
  wire \clkdiv_reg[15]_i_1_n_6 ;
  wire \clkdiv_reg[15]_i_1_n_7 ;
  wire \clkdiv_reg[19]_i_1_n_0 ;
  wire \clkdiv_reg[19]_i_1_n_1 ;
  wire \clkdiv_reg[19]_i_1_n_2 ;
  wire \clkdiv_reg[19]_i_1_n_3 ;
  wire \clkdiv_reg[19]_i_1_n_4 ;
  wire \clkdiv_reg[19]_i_1_n_5 ;
  wire \clkdiv_reg[19]_i_1_n_6 ;
  wire \clkdiv_reg[19]_i_1_n_7 ;
  wire \clkdiv_reg[23]_i_1_n_0 ;
  wire \clkdiv_reg[23]_i_1_n_1 ;
  wire \clkdiv_reg[23]_i_1_n_2 ;
  wire \clkdiv_reg[23]_i_1_n_3 ;
  wire \clkdiv_reg[23]_i_1_n_4 ;
  wire \clkdiv_reg[23]_i_1_n_5 ;
  wire \clkdiv_reg[23]_i_1_n_6 ;
  wire \clkdiv_reg[23]_i_1_n_7 ;
  wire \clkdiv_reg[27]_i_1_n_0 ;
  wire \clkdiv_reg[27]_i_1_n_1 ;
  wire \clkdiv_reg[27]_i_1_n_2 ;
  wire \clkdiv_reg[27]_i_1_n_3 ;
  wire \clkdiv_reg[27]_i_1_n_4 ;
  wire \clkdiv_reg[27]_i_1_n_5 ;
  wire \clkdiv_reg[27]_i_1_n_6 ;
  wire \clkdiv_reg[27]_i_1_n_7 ;
  wire \clkdiv_reg[31]_i_1_n_1 ;
  wire \clkdiv_reg[31]_i_1_n_2 ;
  wire \clkdiv_reg[31]_i_1_n_3 ;
  wire \clkdiv_reg[31]_i_1_n_4 ;
  wire \clkdiv_reg[31]_i_1_n_5 ;
  wire \clkdiv_reg[31]_i_1_n_6 ;
  wire \clkdiv_reg[31]_i_1_n_7 ;
  wire \clkdiv_reg[3]_i_1_n_0 ;
  wire \clkdiv_reg[3]_i_1_n_1 ;
  wire \clkdiv_reg[3]_i_1_n_2 ;
  wire \clkdiv_reg[3]_i_1_n_3 ;
  wire \clkdiv_reg[3]_i_1_n_4 ;
  wire \clkdiv_reg[3]_i_1_n_5 ;
  wire \clkdiv_reg[3]_i_1_n_6 ;
  wire \clkdiv_reg[3]_i_1_n_7 ;
  wire \clkdiv_reg[7]_i_1_n_0 ;
  wire \clkdiv_reg[7]_i_1_n_1 ;
  wire \clkdiv_reg[7]_i_1_n_2 ;
  wire \clkdiv_reg[7]_i_1_n_3 ;
  wire \clkdiv_reg[7]_i_1_n_4 ;
  wire \clkdiv_reg[7]_i_1_n_5 ;
  wire \clkdiv_reg[7]_i_1_n_6 ;
  wire \clkdiv_reg[7]_i_1_n_7 ;
  wire rst;
  wire [3:3]\NLW_clkdiv_reg[31]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    Clk_CPU__0
       (.I0(STEP),
        .I1(SW8),
        .I2(clkdiv[24]),
        .I3(SW2),
        .I4(clkdiv[2]),
        .O(Clk_CPU));
  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[3]_i_2 
       (.I0(clkdiv[0]),
        .O(\clkdiv[3]_i_2_n_0 ));
  FDCE \clkdiv_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[3]_i_1_n_7 ),
        .Q(clkdiv[0]));
  FDCE \clkdiv_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[11]_i_1_n_5 ),
        .Q(clkdiv[10]));
  FDCE \clkdiv_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[11]_i_1_n_4 ),
        .Q(clkdiv[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[11]_i_1 
       (.CI(\clkdiv_reg[7]_i_1_n_0 ),
        .CO({\clkdiv_reg[11]_i_1_n_0 ,\clkdiv_reg[11]_i_1_n_1 ,\clkdiv_reg[11]_i_1_n_2 ,\clkdiv_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[11]_i_1_n_4 ,\clkdiv_reg[11]_i_1_n_5 ,\clkdiv_reg[11]_i_1_n_6 ,\clkdiv_reg[11]_i_1_n_7 }),
        .S(clkdiv[11:8]));
  FDCE \clkdiv_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[15]_i_1_n_7 ),
        .Q(clkdiv[12]));
  FDCE \clkdiv_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[15]_i_1_n_6 ),
        .Q(clkdiv[13]));
  FDCE \clkdiv_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[15]_i_1_n_5 ),
        .Q(clkdiv[14]));
  FDCE \clkdiv_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[15]_i_1_n_4 ),
        .Q(clkdiv[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[15]_i_1 
       (.CI(\clkdiv_reg[11]_i_1_n_0 ),
        .CO({\clkdiv_reg[15]_i_1_n_0 ,\clkdiv_reg[15]_i_1_n_1 ,\clkdiv_reg[15]_i_1_n_2 ,\clkdiv_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[15]_i_1_n_4 ,\clkdiv_reg[15]_i_1_n_5 ,\clkdiv_reg[15]_i_1_n_6 ,\clkdiv_reg[15]_i_1_n_7 }),
        .S(clkdiv[15:12]));
  FDCE \clkdiv_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[19]_i_1_n_7 ),
        .Q(clkdiv[16]));
  FDCE \clkdiv_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[19]_i_1_n_6 ),
        .Q(clkdiv[17]));
  FDCE \clkdiv_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[19]_i_1_n_5 ),
        .Q(clkdiv[18]));
  FDCE \clkdiv_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[19]_i_1_n_4 ),
        .Q(clkdiv[19]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[19]_i_1 
       (.CI(\clkdiv_reg[15]_i_1_n_0 ),
        .CO({\clkdiv_reg[19]_i_1_n_0 ,\clkdiv_reg[19]_i_1_n_1 ,\clkdiv_reg[19]_i_1_n_2 ,\clkdiv_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[19]_i_1_n_4 ,\clkdiv_reg[19]_i_1_n_5 ,\clkdiv_reg[19]_i_1_n_6 ,\clkdiv_reg[19]_i_1_n_7 }),
        .S(clkdiv[19:16]));
  FDCE \clkdiv_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[3]_i_1_n_6 ),
        .Q(clkdiv[1]));
  FDCE \clkdiv_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[23]_i_1_n_7 ),
        .Q(clkdiv[20]));
  FDCE \clkdiv_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[23]_i_1_n_6 ),
        .Q(clkdiv[21]));
  FDCE \clkdiv_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[23]_i_1_n_5 ),
        .Q(clkdiv[22]));
  FDCE \clkdiv_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[23]_i_1_n_4 ),
        .Q(clkdiv[23]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[23]_i_1 
       (.CI(\clkdiv_reg[19]_i_1_n_0 ),
        .CO({\clkdiv_reg[23]_i_1_n_0 ,\clkdiv_reg[23]_i_1_n_1 ,\clkdiv_reg[23]_i_1_n_2 ,\clkdiv_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[23]_i_1_n_4 ,\clkdiv_reg[23]_i_1_n_5 ,\clkdiv_reg[23]_i_1_n_6 ,\clkdiv_reg[23]_i_1_n_7 }),
        .S(clkdiv[23:20]));
  FDCE \clkdiv_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[27]_i_1_n_7 ),
        .Q(clkdiv[24]));
  FDCE \clkdiv_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[27]_i_1_n_6 ),
        .Q(clkdiv[25]));
  FDCE \clkdiv_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[27]_i_1_n_5 ),
        .Q(clkdiv[26]));
  FDCE \clkdiv_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[27]_i_1_n_4 ),
        .Q(clkdiv[27]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[27]_i_1 
       (.CI(\clkdiv_reg[23]_i_1_n_0 ),
        .CO({\clkdiv_reg[27]_i_1_n_0 ,\clkdiv_reg[27]_i_1_n_1 ,\clkdiv_reg[27]_i_1_n_2 ,\clkdiv_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[27]_i_1_n_4 ,\clkdiv_reg[27]_i_1_n_5 ,\clkdiv_reg[27]_i_1_n_6 ,\clkdiv_reg[27]_i_1_n_7 }),
        .S(clkdiv[27:24]));
  FDCE \clkdiv_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[31]_i_1_n_7 ),
        .Q(clkdiv[28]));
  FDCE \clkdiv_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[31]_i_1_n_6 ),
        .Q(clkdiv[29]));
  FDCE \clkdiv_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[3]_i_1_n_5 ),
        .Q(clkdiv[2]));
  FDCE \clkdiv_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[31]_i_1_n_5 ),
        .Q(clkdiv[30]));
  FDCE \clkdiv_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[31]_i_1_n_4 ),
        .Q(clkdiv[31]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[31]_i_1 
       (.CI(\clkdiv_reg[27]_i_1_n_0 ),
        .CO({\NLW_clkdiv_reg[31]_i_1_CO_UNCONNECTED [3],\clkdiv_reg[31]_i_1_n_1 ,\clkdiv_reg[31]_i_1_n_2 ,\clkdiv_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[31]_i_1_n_4 ,\clkdiv_reg[31]_i_1_n_5 ,\clkdiv_reg[31]_i_1_n_6 ,\clkdiv_reg[31]_i_1_n_7 }),
        .S(clkdiv[31:28]));
  FDCE \clkdiv_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[3]_i_1_n_4 ),
        .Q(clkdiv[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\clkdiv_reg[3]_i_1_n_0 ,\clkdiv_reg[3]_i_1_n_1 ,\clkdiv_reg[3]_i_1_n_2 ,\clkdiv_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clkdiv_reg[3]_i_1_n_4 ,\clkdiv_reg[3]_i_1_n_5 ,\clkdiv_reg[3]_i_1_n_6 ,\clkdiv_reg[3]_i_1_n_7 }),
        .S({clkdiv[3:1],\clkdiv[3]_i_2_n_0 }));
  FDCE \clkdiv_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[7]_i_1_n_7 ),
        .Q(clkdiv[4]));
  FDCE \clkdiv_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[7]_i_1_n_6 ),
        .Q(clkdiv[5]));
  FDCE \clkdiv_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[7]_i_1_n_5 ),
        .Q(clkdiv[6]));
  FDCE \clkdiv_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[7]_i_1_n_4 ),
        .Q(clkdiv[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clkdiv_reg[7]_i_1 
       (.CI(\clkdiv_reg[3]_i_1_n_0 ),
        .CO({\clkdiv_reg[7]_i_1_n_0 ,\clkdiv_reg[7]_i_1_n_1 ,\clkdiv_reg[7]_i_1_n_2 ,\clkdiv_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[7]_i_1_n_4 ,\clkdiv_reg[7]_i_1_n_5 ,\clkdiv_reg[7]_i_1_n_6 ,\clkdiv_reg[7]_i_1_n_7 }),
        .S(clkdiv[7:4]));
  FDCE \clkdiv_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[11]_i_1_n_7 ),
        .Q(clkdiv[8]));
  FDCE \clkdiv_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\clkdiv_reg[11]_i_1_n_6 ),
        .Q(clkdiv[9]));
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
