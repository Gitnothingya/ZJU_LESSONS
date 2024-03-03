// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec  7 14:05:45 2022
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
