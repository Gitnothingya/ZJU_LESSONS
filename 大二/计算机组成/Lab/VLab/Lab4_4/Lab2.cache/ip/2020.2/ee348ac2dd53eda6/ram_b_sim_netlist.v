// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 17:08:13 2022
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
