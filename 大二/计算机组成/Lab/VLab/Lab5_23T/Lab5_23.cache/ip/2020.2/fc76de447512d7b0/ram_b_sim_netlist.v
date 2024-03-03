// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  1 16:01:23 2022
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
pcdIS8TtirIfVQfr83oBpvHaYg==
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
