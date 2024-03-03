// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 13:02:43 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/ram_b/ram_b_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
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
