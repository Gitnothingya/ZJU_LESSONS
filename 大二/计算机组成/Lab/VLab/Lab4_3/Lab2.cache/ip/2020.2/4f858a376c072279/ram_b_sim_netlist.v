// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 16:45:34 2022
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
