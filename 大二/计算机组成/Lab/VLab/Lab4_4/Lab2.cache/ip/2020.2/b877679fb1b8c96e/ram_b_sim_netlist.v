// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 25 17:22:42 2022
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
kBDW/N2eqHi3CNM0+pvtxOT4Mg==
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
