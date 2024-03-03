// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May  4 22:50:19 2022
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
7aPTbSIDMu4KohSktBC0CVf95w==
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
