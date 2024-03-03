// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 17:29:18 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
