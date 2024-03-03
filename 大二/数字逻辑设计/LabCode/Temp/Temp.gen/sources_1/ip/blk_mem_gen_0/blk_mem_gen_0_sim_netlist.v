// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 29 09:28:17 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vfile/Temp/Temp.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
GWJ1MdBiR6w2VnbusvQBtJ/ckA==
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
