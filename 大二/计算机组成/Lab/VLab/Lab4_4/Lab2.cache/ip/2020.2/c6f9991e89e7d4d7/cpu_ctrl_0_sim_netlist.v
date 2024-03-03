// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 11:52:08 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_ctrl_0_sim_netlist.v
// Design      : cpu_ctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_ctrl
   (ImmSel,
    ALUSrc_B,
    MemtoReg,
    Branch,
    RegWrite,
    MemRW,
    ALU_Control,
    OPcode,
    Fun7);
  output [0:0]ImmSel;
  output ALUSrc_B;
  output [0:0]MemtoReg;
  output Branch;
  output RegWrite;
  output MemRW;
  output [1:0]ALU_Control;
  input [4:0]OPcode;
  input Fun7;

  wire ALUSrc_B;
  wire [1:0]ALU_Control;
  wire Branch;
  wire Fun7;
  wire [0:0]ImmSel;
  wire MemRW;
  wire [0:0]MemtoReg;
  wire [4:0]OPcode;
  wire RegWrite;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFFEFBF)) 
    ALUSrc_B__0
       (.I0(OPcode[0]),
        .I1(OPcode[2]),
        .I2(OPcode[3]),
        .I3(OPcode[4]),
        .I4(OPcode[1]),
        .O(ALUSrc_B));
  LUT5 #(
    .INIT(32'h00048045)) 
    \ALU_Control[1]_INST_0 
       (.I0(OPcode[1]),
        .I1(OPcode[3]),
        .I2(OPcode[4]),
        .I3(OPcode[0]),
        .I4(OPcode[2]),
        .O(ALU_Control[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFF8FFFC)) 
    \ALU_Control[2]_INST_0 
       (.I0(Fun7),
        .I1(OPcode[2]),
        .I2(OPcode[0]),
        .I3(OPcode[4]),
        .I4(OPcode[3]),
        .I5(OPcode[1]),
        .O(ALU_Control[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    Branch__0
       (.I0(OPcode[4]),
        .I1(OPcode[2]),
        .I2(OPcode[3]),
        .I3(OPcode[1]),
        .I4(OPcode[0]),
        .O(Branch));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000020)) 
    ImmSel__0
       (.I0(OPcode[3]),
        .I1(OPcode[2]),
        .I2(OPcode[4]),
        .I3(OPcode[0]),
        .I4(OPcode[1]),
        .O(ImmSel));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    MemRW__0
       (.I0(OPcode[3]),
        .I1(OPcode[2]),
        .I2(OPcode[1]),
        .I3(OPcode[0]),
        .I4(OPcode[4]),
        .O(MemRW));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    MemtoReg__0
       (.I0(OPcode[3]),
        .I1(OPcode[1]),
        .I2(OPcode[0]),
        .I3(OPcode[4]),
        .I4(OPcode[2]),
        .O(MemtoReg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08000051)) 
    RegWrite__0
       (.I0(OPcode[0]),
        .I1(OPcode[3]),
        .I2(OPcode[2]),
        .I3(OPcode[4]),
        .I4(OPcode[1]),
        .O(RegWrite));
endmodule

(* CHECK_LICENSE_TYPE = "cpu_ctrl_0,cpu_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "cpu_ctrl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (OPcode,
    Fun3,
    Fun7,
    MIO_ready,
    ImmSel,
    ALUSrc_B,
    MemtoReg,
    Jump,
    Branch,
    RegWrite,
    MemRW,
    ALU_Control,
    CPU_MIO);
  input [4:0]OPcode;
  input [2:0]Fun3;
  input Fun7;
  input MIO_ready;
  output [1:0]ImmSel;
  output ALUSrc_B;
  output [1:0]MemtoReg;
  output Jump;
  output Branch;
  output RegWrite;
  output MemRW;
  output [2:0]ALU_Control;
  output CPU_MIO;

  wire \<const0> ;
  wire ALUSrc_B;
  wire [2:1]\^ALU_Control ;
  wire Branch;
  wire Fun7;
  wire [1:0]ImmSel;
  wire MemRW;
  wire [1:0]MemtoReg;
  wire [4:0]OPcode;
  wire RegWrite;

  assign ALU_Control[2:1] = \^ALU_Control [2:1];
  assign ALU_Control[0] = \<const0> ;
  assign CPU_MIO = \<const0> ;
  assign Jump = MemtoReg[1];
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h00008100)) 
    \ImmSel[0]_INST_0 
       (.I0(OPcode[4]),
        .I1(OPcode[1]),
        .I2(OPcode[0]),
        .I3(OPcode[3]),
        .I4(OPcode[2]),
        .O(ImmSel[0]));
  LUT5 #(
    .INIT(32'h40000000)) 
    Jump_INST_0
       (.I0(OPcode[2]),
        .I1(OPcode[1]),
        .I2(OPcode[0]),
        .I3(OPcode[3]),
        .I4(OPcode[4]),
        .O(MemtoReg[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_ctrl inst
       (.ALUSrc_B(ALUSrc_B),
        .ALU_Control(\^ALU_Control ),
        .Branch(Branch),
        .Fun7(Fun7),
        .ImmSel(ImmSel[1]),
        .MemRW(MemRW),
        .MemtoReg(MemtoReg[0]),
        .OPcode(OPcode),
        .RegWrite(RegWrite));
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
