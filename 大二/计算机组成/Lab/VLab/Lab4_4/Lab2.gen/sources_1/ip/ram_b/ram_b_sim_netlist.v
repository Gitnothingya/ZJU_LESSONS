// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 25 18:37:54 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vteacher/Lab4_4/Lab2.gen/sources_1/ip/ram_b/ram_b_sim_netlist.v
// Design      : ram_b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram_b
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
  ram_b_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
rpsBglXmK6/OOX3SWy5hN+ts8mg7
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
