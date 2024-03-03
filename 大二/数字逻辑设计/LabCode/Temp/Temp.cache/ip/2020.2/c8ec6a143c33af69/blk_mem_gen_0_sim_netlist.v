// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 29 09:28:17 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27696)
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
