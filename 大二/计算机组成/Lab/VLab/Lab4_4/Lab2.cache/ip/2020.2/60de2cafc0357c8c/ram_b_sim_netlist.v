// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  9 16:52:44 2022
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
PZO2zez/TNjs0fOj/PETffRdLIgdO9ugGlAgP4s/usKoYZbusTSJYOijm7FIA2KkCCj1nC+yuqFK
zz9pmbnKLtW+EyYMXiwbeT6V9xp2pX5509+DiNLzQ5aVArC7JH3BNg0hz8Bppyz2Aj9N3mJF5LnC
EH5+2WGLtZEXhQUdAaIEzjEGdznDUqHy0vPvMNI/pV8hDjGlbM/0NCSh4uqfnYx6ymP7x1hzhL2j
XSTHp4Gn+iAi8FL5x69Y5Cana82AAs5F2g/zJ2Dg5D6C9vgQhtkoNFrskchAUGToQ72n5B8ibxJR
0MLd+zd1T0dXRPMShet9mh8WHON483ZihSKCOOdPY2t/Vu679vxmSnDdSdJdclQnfzn21B0HSWsR
n7Iiy9GId2ez13eAxP5cjAd+XDgR5by/zWds/AO5L+PYp3mMQtHS9WEkpPSZv7vBtO+FXtnCA5FD
BtfTP9qvT7WS9s4GlE6KsVVG+THstrM2WdfvqZ8aU1+PkVuJgKx1DcGd7EbyXSkftpGk6C7BKd37
icjbkDhkK32tHCQ0VkNu6h0P0g7+TJWTn0KYo8Hp9MAvXX8h1tsJhUDLtYyVvJjbDcrqMcVGgRGu
4yU+TOSIm9ORqGLnUoDYevcOtQqbFmZODofMyFCSSxM+m4ZljEvBMGk4/fSw9ME4JXKbmtANDCBj
c5NKGgO8qBRGtJr2qs8Z+dDdxgrz8+564k1iqCCI2Lnj2cl3rDZa6pYgDQAWmGjoZm5ArUW/hdg5
5I1jjG9+yCgh/d4W5vxmrcp58GYMFaRkFeHv9RMdWXrZM7TJToYA2MKrgUXNrQCVQDM1EngWKwRV
+5kzijFBwO6Wgj8XxCkwE0fy1WWH4LDgXGaR8OMI7W+InOUa7OnwkuxHI/O6i0QuhoneHApfiMR6
YEx+Gmp98Vjr6j/WFhbBi6HaxTx8zqVdXT4gcB5ZquuzNk6MaSWPfhiuwcbf4W87w9BEjTNlhiYg
i1VklxxsTTR31fSpOUlZ4gkInbet5njKls8lvvQsbEh7xwpEYJPLPZfs+EMmjLKr206EjEzOtFcu
Hyh/8T+bM/PHVAVuwubYPJ/R5PDUqRuIQoJlm8xmBaftT+Tkk4Kf52MPs2ze4AljvQcTttOmOjSx
5NvlGX4OgipzBTmQnbVtJpaPGaPrxQYvT6Ehd3lBKNgBvpQkAc6GpJiSyVq9aAjEvRMFZVRhQZgW
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
ArWuZQY5Edk4jbuk1nlhAthbWg==
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
