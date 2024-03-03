// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 19 15:43:50 2022
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
9Tu+5ILitF84c5iWfigBX5F+1A==
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
