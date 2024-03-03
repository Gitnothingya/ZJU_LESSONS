// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov 28 15:07:29 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
QReQgyc=
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
