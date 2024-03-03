// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Nov 29 00:40:16 2022
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
bu4I7Vg=
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
