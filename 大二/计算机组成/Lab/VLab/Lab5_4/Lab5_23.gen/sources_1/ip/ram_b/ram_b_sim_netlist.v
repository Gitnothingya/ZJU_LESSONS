// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun  6 09:53:46 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vteacher/Lab5_23T/Lab5_23.gen/sources_1/ip/ram_b/ram_b_sim_netlist.v
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
VdGWBJNT9JL2cxmT4m7jVVx2XA1b
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
