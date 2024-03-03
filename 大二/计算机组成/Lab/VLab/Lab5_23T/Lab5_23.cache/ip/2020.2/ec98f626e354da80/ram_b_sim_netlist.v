// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun  6 09:53:46 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_b_sim_netlist.v
// Design      : ram_b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_b.mem" *) 
  (* C_INIT_FILE_NAME = "ram_b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
n5hjfZi678OuCavqyYPFICPMOg==
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
