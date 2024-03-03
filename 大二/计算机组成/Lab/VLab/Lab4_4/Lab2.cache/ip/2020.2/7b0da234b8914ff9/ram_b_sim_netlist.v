// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 19 17:41:58 2022
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
3EXeZuUY7XLa7iv2N5QPvLMjFQ==
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
