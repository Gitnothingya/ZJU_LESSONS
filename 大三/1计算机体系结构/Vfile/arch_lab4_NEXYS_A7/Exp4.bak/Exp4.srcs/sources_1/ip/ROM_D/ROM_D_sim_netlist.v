// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov 29 00:40:16 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ROM_D -prefix
//               ROM_D_ ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ROM_D
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [21:21]NLW_U0_spo_UNCONNECTED;

  assign spo[31:22] = \^spo [31:22];
  assign spo[21] = \<const0> ;
  assign spo[20:0] = \^spo [20:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_D.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_D_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
mJbdlQYetdwLKzt5DQ7uF+il1v2eQVV5RIfjeWz1e/V3jEM3i+uRCVgx7Kp/GQuUb5UHKs0abqgC
16Fs1NpBpA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XJOm/uUGX/qZ2Qt4NpdVrxZw7M7g9IDF0b/ty4+R3Mq/4Yo3oelh4PLtGTKhtLeaDF6MWElFMrQL
YJredaOfZqndl++hGC2EuCTFqOkkbPOywG3qwYYq1wXlA10mmiPsdUKE2fw+3Jr9KtyjWIqepLi/
dHt8tkY/lsSunN2m5Go=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pWj9GXHHddjJRErHkucgy551XL8q6fG3vCfQLWejcYPu/3fvs73MChhZfZCqGIr79nmWO66j7ZpA
z/XCr2Lat7Jfx5+ZJvJer0nwTiLnqTZBolYG/BP1BtrHTwgm0184M164lk4oYFDUdw29PJ37NIig
S/dneHlBpq0OhVae8qrDu6sq8SwT4vL5m4M4lyIfH+vrWOUQJvFG/RL/3ClFq+gl1tPaDw7KbyFn
vSwCy+XhzR0dtnQWpjEoJiIQhSdYyweMjMlKPQqSiE3Fh/VZVa+KunO52xPaixyZxThykZO2WXbf
FOCuEe1RJzUm0u8Y72KhTl0uTN9eR3gCnhh0Vw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B41OqWxVnXfUy4O9BZkmT79aOuLa/8vs+f9XLajhfrJ4YdKVWM7ClQ4Ws6PH8ix0mLsVAwA0Zgo9
Hd/CQVbD7dVJhvFEXp3HsgsK+w2fUGWmoFnumVmzhtuDLUMIrGQh9RsCfQX5A+k8RXIHI0JsIk1Q
3VcUlbbqQpDYXjrjB/AGxXtsc1aPVhMYpJscNf0NkyvU3tH4+jWt4LCO3nZ2NSmz8bD/d3iTaKVC
cS1ceRqzEEugFllcKz03OQjb2cJ1Ct6UrCnWghiukO3hETd2SI0dkaPZmvc0XfvURiWKq9vgElb/
2VvT0HBeUK/HuONJfi9exeRDGVhFLMF6Uz3kEA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e0tfQUh27nWf5uh+YqDSDz6U3BM61Op8lfct1zm0Ja6yJVgQBBl3X4ncNT2+Er2em/X5y4CfBpvO
u5uoIE39oyQTUs7PszvdtdtbHnRlt9VBaRprvi6ZKHnvbUMSDBUGrupwGGjlVQOYCf8qMwkVDS42
mE1g2s3nU/9pT3gGapIs9/PM+V4ineJF7SfmeIKyIpmqOCWWQ9L4vvQthX6RHPb9fOMoHF5zzla/
PR0fHbsmVkZlgJroNvWyfq3MHGRWCWbuvLart3En+TfLNFST5gZLRPHRf2g1QVD0Es7HGXRNM9Er
Pdmyf/q7sQO5EHK8SnmiwEicbEIJgB6l5N30WA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kkB8z0jv61ouARnXp4wGiGtsXEY97Swb0gZ1uaIf6yqyMS2hw5d4Odccv2l4JBzDnv1qNNC6P5aI
Vl61KxUW2L8cemoBcX7CzlzWBifG2jkwREs10VeH9SiN4MGWCKldTiGWdCn0nJexUvCp8UA0x9qQ
dp23pP7Q26oAT7Kuqao=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZQ8ElhR9ysyAgwvzcKeV1bAsvOl3oD8upRM+oVHMo3mo1gEKHB32MYlVyH1lN/NvHUL0KYDJXvY
9IH3uT84XLsl18iZnS1QISXB8+moJSPfjx/1XP/JzqvA2jF4LOB3YcmOacQFx0CNm0EKBQXqhGn9
k0jP0LYOGotQctR25T4dVwoYoWBeUjK34HpbCqYIpwshMbliOBWYWFtPvnmVGwqesZe45/cEVkW7
ANVK8/tau6HJiHcv4mDDKZ5L2wdl5w1fhqpxdGOAxS8n1hfD/5owwIGehnSs/pL9enlXO5pykUJJ
boI+bI5oaZtbE7DUOrBMbLARBE7UnDBtqOS6dQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10944)
`pragma protect data_block
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
`pragma protect end_protected
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
