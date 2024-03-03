// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  9 17:00:21 2022
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
0MqYUk5W7uHRh3FrUaRM3DeJ7A==
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
