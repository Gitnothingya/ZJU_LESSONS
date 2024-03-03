// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 25 11:40:18 2022
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
lbUo+zGs1aX1AnySuOdN/SffqA==
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
