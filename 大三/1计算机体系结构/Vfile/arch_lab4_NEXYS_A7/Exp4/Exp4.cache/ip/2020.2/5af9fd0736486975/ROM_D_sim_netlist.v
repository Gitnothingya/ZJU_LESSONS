// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec  7 14:05:45 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [21:21]NLW_U0_spo_UNCONNECTED;

  assign spo[31:22] = \^spo [31:22];
  assign spo[21] = \<const0> ;
  assign spo[20:0] = \^spo [20:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_D.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
mJbdlQYetdwLKzt5DQ7uF+il1v2eQVV5RIfjeWz1e/V3jEM3i+uRCVgx7Kp/GQuUb5UHKs0abqgC
16Fs1NpBpA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XJOm/uUGX/qZ2Qt4NpdVrxZw7M7g9IDF0b/ty4+R3Mq/4Yo3oelh4PLtGTKhtLeaDF6MWElFMrQL
YJredaOfZqndl++hGC2EuCTFqOkkbPOywG3qwYYq1wXlA10mmiPsdUKE2fw+3Jr9KtyjWIqepLi/
dHt8tkY/lsSunN2m5Go=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pWj9GXHHddjJRErHkucgy551XL8q6fG3vCfQLWejcYPu/3fvs73MChhZfZCqGIr79nmWO66j7ZpA
z/XCr2Lat7Jfx5+ZJvJer0nwTiLnqTZBolYG/BP1BtrHTwgm0184M164lk4oYFDUdw29PJ37NIig
S/dneHlBpq0OhVae8qrDu6sq8SwT4vL5m4M4lyIfH+vrWOUQJvFG/RL/3ClFq+gl1tPaDw7KbyFn
vSwCy+XhzR0dtnQWpjEoJiIQhSdYyweMjMlKPQqSiE3Fh/VZVa+KunO52xPaixyZxThykZO2WXbf
FOCuEe1RJzUm0u8Y72KhTl0uTN9eR3gCnhh0Vw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B41OqWxVnXfUy4O9BZkmT79aOuLa/8vs+f9XLajhfrJ4YdKVWM7ClQ4Ws6PH8ix0mLsVAwA0Zgo9
Hd/CQVbD7dVJhvFEXp3HsgsK+w2fUGWmoFnumVmzhtuDLUMIrGQh9RsCfQX5A+k8RXIHI0JsIk1Q
3VcUlbbqQpDYXjrjB/AGxXtsc1aPVhMYpJscNf0NkyvU3tH4+jWt4LCO3nZ2NSmz8bD/d3iTaKVC
cS1ceRqzEEugFllcKz03OQjb2cJ1Ct6UrCnWghiukO3hETd2SI0dkaPZmvc0XfvURiWKq9vgElb/
2VvT0HBeUK/HuONJfi9exeRDGVhFLMF6Uz3kEA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e0tfQUh27nWf5uh+YqDSDz6U3BM61Op8lfct1zm0Ja6yJVgQBBl3X4ncNT2+Er2em/X5y4CfBpvO
u5uoIE39oyQTUs7PszvdtdtbHnRlt9VBaRprvi6ZKHnvbUMSDBUGrupwGGjlVQOYCf8qMwkVDS42
mE1g2s3nU/9pT3gGapIs9/PM+V4ineJF7SfmeIKyIpmqOCWWQ9L4vvQthX6RHPb9fOMoHF5zzla/
PR0fHbsmVkZlgJroNvWyfq3MHGRWCWbuvLart3En+TfLNFST5gZLRPHRf2g1QVD0Es7HGXRNM9Er
Pdmyf/q7sQO5EHK8SnmiwEicbEIJgB6l5N30WA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kkB8z0jv61ouARnXp4wGiGtsXEY97Swb0gZ1uaIf6yqyMS2hw5d4Odccv2l4JBzDnv1qNNC6P5aI
Vl61KxUW2L8cemoBcX7CzlzWBifG2jkwREs10VeH9SiN4MGWCKldTiGWdCn0nJexUvCp8UA0x9qQ
dp23pP7Q26oAT7Kuqao=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZQ8ElhR9ysyAgwvzcKeV1bAsvOl3oD8upRM+oVHMo3mo1gEKHB32MYlVyH1lN/NvHUL0KYDJXvY
9IH3uT84XLsl18iZnS1QISXB8+moJSPfjx/1XP/JzqvA2jF4LOB3YcmOacQFx0CNm0EKBQXqhGn9
k0jP0LYOGotQctR25T4dVwoYoWBeUjK34HpbCqYIpwshMbliOBWYWFtPvnmVGwqesZe45/cEVkW7
ANVK8/tau6HJiHcv4mDDKZ5L2wdl5w1fhqpxdGOAxS8n1hfD/5owwIGehnSs/pL9enlXO5pykUJJ
boI+bI5oaZtbE7DUOrBMbLARBE7UnDBtqOS6dQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
jYHW8dnhRdvdt39tsw3b1MdOhGTCQbiPZlyyz3y8RjamnEgortAI6Zypp1Bg1StpPTuHeEkxBsN8
xs8ig+NundNzaI2e1GY1FQ+eObyyw1fY2N8KHnz7K+wveqfqzmwtKqj+vjAWV9OfDxaBbAXUXN7l
73Azp4jhZYWB2BChU8i0hlwaFaLa4laATOgDiknK1vtmXnGCIKu5HLz8Pm6ZDIBCSXLwNVAXIng3
1TwfN//ElZ1s63YWL8SY7e5ZTEBjxHlvYQRkkmFT7Sqn3pE2FIFcg05ZanmQ26u7FXirLGPY9X5l
f5wlGMhzlJOypi33Il9K0GCsDv7YyrhWHoy1nWg2ssrc553rE7Wj6Yw7jVjCTSwU0ep9pg/6PJ8L
TF8p0V9J8Ffm9wpKOQpciikRUub1lZ+2Mk+wP+vfraTgfW+Tw14fTBwVJTfJegBO9UWtqJobJqoa
lqvkdi8pGBh9WhFcCmMGmwXIT/2aswkWnqKjTtjFs/DWWMIZk27yfdo+z15aO4bIMd/VvP+0WclY
LYZyaUQfmtrmklNOBbMPMDLvoygeucoHMWMOQGyiVjdp2M0ROhdim+MCE6lKJuKuWzlbd9AtULVR
zhHoHAtWrQUkcTADuiJMJl/QMkADv2KYty+EHF7j4TtDdrzYlUnJBhGruIrK+XgrRjkmn1usDNGC
2PqAEc7Q3J0qxrqPbGt9ut05VzpQzt0kMEJ1ixJbEpE+WpqZluRIXgt4cDHnvlKFmHop4YHToM4P
5Yeb7yFnfGraRWu1kfDoTNHYUbA3MOsNJF5vei4QKiTpPwAuVJQnD9ESgj7fEJ37ruyB1FLZ5XQD
wjbLByF3PGkzqnV8GzwjfLNWZmHhCsdV7kmwije9WRUI6KiDWOx3daYv+54pgCGBbKzewpUwAnNE
R8H33wDmsAVLDNdPGeN49mm2gFewykHVK7bo6gHui7hc8RDBCWnRJF3T7wOTxMuZoMT6phOEylSq
MBL7olerxE7yKvznLV5U8EphdxWe+sI3pGbkFljZGP90Dd6IPQMe6b9ISE4mZm8m20iw5eT1l2KE
2nfP51I3lUG9nRwMdpwANgqxLctVbLpmk/57kUr0yzztUqtAGI6q4YOvLizu6MEBWN/0mnwNt/TC
N0ohX54TqCNNjqVhqK63QRohHjFQ+nHd5cwlihTjhj8I4BCWMbYDZjWbnq8XVFmvsoWYzVe1Vdm1
QWcPibpwqB4RmzVZF6miOro27GzAx4N8cMdJl+zB+yEqvcJDsreM+3Ucau43+izBvLzgOe1NWB1j
66D9Fwmnc+Uwc7Ergr2l5OiQp/MtnY5VPSqRNJO2+mKoe/itpmFh8y9aoSW9SSNS7yHpmXwsw6Ho
WLPoMAbX5I8ykViv/XriqtmLfeV3iEK+qgEypLI3EbW8KEdrLLBiOe/rn6VAy/wLtbMl+mDjKekN
IaNH7/AKt6E9hrKpF0tU9hnDis4Mjl7d6uvc47EM8yB5PEItuaBuBeQU9dq8G76/xGZZV2G30PQq
hPxWAes41+z1yjVW3jzsklawsTaw55fveIovf7YU6pdFvpSxS/tkK4aNbYqWeEW17D0AvrX8h8XK
3udqvyrcxTpFfpNteJWaXjWpdld7TNL+yqrFY26kyyYuB/fqveG8n5H0JGrJvFpbmQz2Ic10EwKa
DilqgNjky1BO8kIbgpr6vudOfTV7ggCynTg9xq7O/K4AqmHLTC7NcQZiWktXAtyjivAZ03aOKhEX
Bg78uJd+yGX3Et5Q2U0kpJa/OPo5OtrC2cZFdnBqN6/Ydmp3/oHG0yUGXyoJISXiDXZ+LnbyDyaM
GBUR9JHZ2czckBEciRL1eVkU0V/txOOuwSOy7o0Jfqf2p1D5NOMCg5OF5F5LskyIUNHBy7lAQ6po
LF+40TJsQ+U+/tNf8uiBly+5wrwGKdL9Grn1bddc61Orb1zec1maVIG9GzclPff1KZeHi6z9Je1V
jliw3paseL2aQd+c3wcRTlLRaMCksjfyRnE4U5bA3foKWcApZ5izCxwDgbgajbbVfShPJ/UmJGKA
478PQugcmgGCi4057pp6/GgbvjCaZak9eUmKJ/0cuAzThwf1PkwzAYkEwVeQYoZ7BRyqfuDHu3fu
IYrzM2mAcLZ1L7VZPGK2zh4OmrDhSB6kFmSQKyPDSm+u6krrXDCRTUQ7PxeP/ufIncnsLXJ0Ut9O
D+Sr5KbUYk6TqGr1uhXlzDqAt7fzBHttysVqF/PrV3bxG96tUZQtsfkxTKl7Ca95EjH6nrhKLvn2
JwnjD4g+jzONFtweUN9xt9oAr7VfG8k2u9b+kY82gsDGCdYin9f2YUNW46EVFE/ULEp7WvMB2kcQ
dFTqwpLhDh0bHvbzwbiqEnpepmomx54JVQo72k0UgkaqJc0KwU5Hi82pl1Dbh2K4RsSGElPOjeho
1qrTTjmu2qVcbT4wi9p5Wxl+VxKsJDl/w3QQVwMFJGUehru9BJLttb9QKbG9oavhtMxa4MqYbeGm
vDTcW6/Wj05TP8iMDRbXZxevoANCw3trF9kZLnT/3BNOCLr/91R0mVFfls/SavHXuoxjQq7ObjGc
3edwOJbf7djL64TG7Uf96AaDgT88HY4nJS25Wqtn7edIDxp/rD2N6y5eCFaKhcPOxI78NKHO7YRY
wski0QOt/ALlBp4FP1B89MUiqtwYJZp9f7m7uVqz4dHIjClbM9sE11gSLuN1/qgibAJlhsk+IYYF
DeVaP/ot4j9RQKnRYZM/7tv2nswy/SCES5sQolYotEtLw4APs/CKIaYBajywcAropyc4FLPGRj7X
VlGODivmYjhb0Fhe8UG0KO/RWik0NYJXA78vViNRqMv7GcA/bGjQkhJVn/BtBGlc0gKIzaqYfyZ0
4Os98ODB2xHV7XEI8xLuE2WQFpC4GG1ciTyo4trui4yjuz417gjLoT4XSGbAGQmucwoxUlc2DnqI
ony2n7LHnAZ3ZabjBFmOAivDl0XM5b48bwLwUSVhC+O7/TDnBEUyakZHULXbVhzazxn22Xexnja6
Iwy2zN6QDC2YZfWnT4cmswAtrO2yKffxS4PT8NN/UHkbg9LhT1Bbir8va2QAUd1A/yKxRGQ4Feo+
RUVK29DyX4tRSlr2Sax0bRdoVAd+teSbuDvDuPPgFoNJpftWmhH/C88s0OarZQuZ0uQhUlx2UUrz
LnP0r0IZuK1jaLRSxaDcGoj5djtyeF1d6NUf/GeqJBjgIb6dtFOG2xjLVXBMmJ4YqLbdjoT2t/hy
mz8pwC9HcYGghQbGzm54pPpqpMMPwXIdfAyBEAhFlGp8QnpMXAZDXRuW6gSM83DOvAVBL1xAyAfc
Hn4isiu/5wh1LQ3t2zJ+FZzCc5OVdo/B71OLHRBQEiqSLjMq3laEML0LQ+JWBAUZSLASW/p7/uf8
GgS3tjtWwZ/pF7JKhvLl6uQ5kPn56YAz2Y5qSgVTItRBGTY0a/gG3fuVZclbtuDN3BpjMiJvUoUX
tzVKj1FnowPtL85rViDF5CcI53E5yuEu0Hue2TLvudz281Z8Jf+7MNoGLXyEXGolOie3tcjhskGR
BtSDJa624BQQSSU3CDbnD1xWcQqdxjWvgjrqXuIRpJMQcsKzaNn/l34TAqcIhEkKsSNnSOnOZu3o
uh1rEVpgl4rnJ6DP4kyjLq4502+krj2iAoeQ+7z91DslzulKfM+KX/84QAH87lLJ5g5Y5iL2kFbU
K4hzKm/fz6cqO2YzdNyh69V115FQkvvhTUzvqvr2AGHc/5uhFkYoLABC+zJbmGQ0It8Bm5fezh8A
gr+7KpJOyntoMHE0qqKonytchgcHo4vL3Ikhy72Yp2lEzh0trUPBZZehJfYdkZJTOuvSFb3TVpsE
YyyelQkI+2WTs4i18Clr+NE+DAuF55AhvzXmsuWc1uJEel9KY2ID8bnqiYfXjNcJ/IaVQFz8rOZw
C1jvTV8V+A7aA/pssa8ijOEt7wb7YW+YjDgOqLpNHzmzSRAc5atZ6tLoho86vaILs7pXor4tamD3
RJm6Xq9PQHIAKjpfH+BnJ9XM4VQTszUmoYBtgdQneUSdDfJs5JGGsK0YLqQMeGolur+KymHnE9/6
+Kt6uyxIpztIFuBSBHzFv/9N6cdTXOO+3r0idh0brFZmouZ6+6RPDH4ewlCnXTzRT7AAh1ZOdQdK
hQ41s+HAJ5N128UGSo+tT3zBauHg/QdN1yGKe61tTLcgJlL+nxjwzkJLVePTIkbbnmm9latRDlk2
hvOkoZs5zVtneHOvunjn8b3GyrzZsvC7Dk6muSRHE5Y5O+EkHyb4anNCHkjwdrRYXhhJhJJl0Wrz
mDIm1yZ4W4nlH4zxsX6eCDks7nBxoyEiq8ksPnq1DXRRW/0ZIh5+yyCOCWM8kKfGG7HXEpH0fNwb
m9X1yX7HqFaBsGZzAM3p8EnoHbX+BFyWxcgfmjzEY2+XDc7riTH92GfoLHNKskyTTK16DPsPIwow
1KMHJOeQG3fvjgJUuC6FXkOTKkCIImF3YzA53fqdiRXCd0y9Y3euEXmoX/IaJIm+hDLEKW4qG+i8
9sAprtJi9aYT/9mXTqpd4QzMIsi8bUGOY8q4contySwYP2ZIAhKQ747aKB9TPgMbSvXD/zhivpcu
0FyqYRPV3anvrTbLsJgPxuXJtLT8NIQkpMcxoIUt09lvnx8KBGeKHG59k/NL4s7PBVs4d8AAVvxF
YnmSb7sxr1IzEFY5s/gCu4VlvUzA9Z/Ug3kE1KVbBhP5QtDhqNE6M4aaOMfOJmHjqlYdRCPjQjdJ
XAh7Z01eZZVjvMsafCZQRq+n39mBFwhSuBbMhFJukTuwfagpOAaLrMvgXiPSQPzBQ82gArmIwHB/
o/vIAI/ZgCt/a198kNXI8yHlbgbcMnoVRHYNEKrssn+nvIeV8VrgWqUKlMfc5299NBFlh6yBmHBH
o67Pl5ww8s4sSbcywUFn2qU4dcaUhfZEgLqO1oWJFHWxzVgobUubRXohDacSsrkcobkdbQhO/vM0
uM9gY2jwjWW+mw4nieXB6l/clMKzE6E5ef2uE2C44v/zdaKFoS0wDy5RAq+LEBZ/1L8O9M59jb1Z
0QtSlh/J6CIteNYnQuOdaAcFjE81IeFcue7Yco6mVBS7uXDn+s0zj/0YH5n1tZ72OM3uwYaG78Ni
NVscOnp7bvYlmpnW25g9jJMU9J8bXzK6giraXTH6J0UJuAeVhedaQxEb5rkeTd7lwqHlaqS54Pbt
p1DSU/7l2isD5trQMwXLsMX0Cixo5v1Z0NESxxASrlXhIeyXI1dJz9OWwpopzwH+L8mq+XkE3tC8
rej7wU1iINIzfnpnxVv0F3Myj8jmOnArkwv3ZnVIXNixllR81WEDZibpFXVZdvsbVV3l+OgRuqnx
f+0fnF6A2aogPbrsUpVOVYjD5to2ySjB3Ip8TK8xTBVXoziJj5vhSy8dBGwl37r8Sk76kC0w3WYI
aNAt9QpprzcuLsKSuy6hVRmmdf1BMpI+jQH/vyLE0ckP+h9CYzxBtJitSuSzLKOqRPcotA2RpccY
EnSBs+s0hpdmuDbkDUqQbYsBZ3LzUM71v1UveL9jjWvBohlusU66fKGTBCXY03BOZKSUq+Vuw9M5
BX3YkTb59vJVhiX8kgC5aFE/dtO2lJcM1Bxq2VxSCScrAg2WX3K2AGGg47Tu27Kv8Bf8k/8PRrR7
Mx+M+FBioBtws0MY9K1gAqKtztPT9dEe9ZF7mLEUodJK/160gbGLfe+xSugZaTYuXaRChJfqv3XI
jc4x31cy9eG2lTzrleYC85PwvtZl0MxeNro1Fxxcb3uq25I8vBZJ2X6oOo7MXQ5hog2aB1lS2xQ8
DQugIVc6CgmetwRoZmuIu1k0KdxSGsbTKYk8Tm25XtVUDWU7fIHIUwc0FzfBbIrHLGLpV33FCYix
ty6qCX9WP7gAz/y0qufGbAlUr2WXKrnrWOtSFeTgWAkxNqOSKZMZ5o18zITnkJTHVud0hMGAl/F+
Mo6nExToPpj56tnJxPejdjDBGVIh0Y7sGwqkaiYUy4W4/AmEWw0yBtGjj74lhthCZaBYjF8Ul3J3
9KumUQP/8jGuCf5s7QdyYTFeKoTJSgwFHkkRor8oO4IrXiXSgioYDWWt6bDyhYp5nG553Z9d4J2g
Ce+Uu5xoG6iJ+/R5PFUIKPyZmKaBcr2UqmS3PjmlxXl+kZ7N9BI8p4Y3d7oZOBKXKCh6ZLCac7ob
ZytYtXNsQPNSMfHwKBQRS9CdC1Ioiv15Kccza3CRJvFiNqzz8V8svCbb95y0zmwfDfrQqMUCFS3l
fztaLqn6CACEp5guNDzy0RZmpe5stslpgxrGndYMfMRR04osi8T+k1Lb+VryWV5S6p4jBVce9R5w
EzD+istio/Ay5ooPiJvIvf9HIA5zUzFbsRHrkSVFyyAm2X8rvs1Iu/hu44EbiF5Nc4SuP3+MEW1R
Za0W8Bn49ZZGo/iOlOzhlROplw2+zkaGWAuEp8pv/A1693IUSS3hKi1yBLiNjuQw01Zxc3Guc7tx
w4LcjjZ+yWnq80i2sotG47QE8XwLHCGpGTLPyTjkFoV1VaZoagUG3bPRLaxmPmKNsBMywYX5NCm5
6glpPXZYPMlMlpWJaXkMgmIXhGhaColeD6OSqRO7K9nrqXZ/43KfRj+el2IZqDlAy1Ax9/GG/AuN
nl21fMg8DQgjH6OKsCGfPo1prbDvfmmDZ97d8XIw0Efu/cSsTjYgfhlP1WjkaaTEH3UMBvEWzt9y
T9eUpwkiRxxRYIJ34yarEM6ukVoszZIUKnUliaOTwgco6IddNxAoJAg8zr9qieYhd2W6YdjdrvOY
SGK4XcR4GpEjSVvT08R9YNbCvzGdua4IQHDrDxbc4g8poQ0SI71tlzEoIkLpSZtWg1JybARBf5Iq
n5pIBEQZJv5nvh3KQuSZ+eSStEEYFFMEXhjdcRd5pbZRtqqNH+a42HJtWYAtybOJWuePZWcg4AIH
bWL6DKOauQAqfrFI93KREFFEKZgOUXz83xxJGPP3QYuBPgSeE3yQ0j+ZzSK59TdxgyaEmwZZnejP
ItWdNUD8xZOrE4hBBxmQ/FT5+pfit3ba0hY8PJ9VKMq6saYjjkh5hoyTb3pPx0TtXwtqE8d003+c
Fv8gp0tmyVgxTyuPFnSOzbsiKRvJ6Jzxc0VeDGy/laWI9nPiBNYEqQ1Uzh+zo5Ip1+MKtXLp9CGT
BHMxOfY7g1TBNJCwQ9E+LfPGOs3zcG7hVrRbeOSjWLJADdkkdBmxgHVJgYt1pCKTXURLFec694kY
m9IKgtHVPFxtPU9TaVnD8/yVCiO2k5UJ3kpD+Qnl6jyWso6u9yUR87IoP3p2jVHBEBUqauPr6unb
TrutQILGq6vUywr+OSLTIZs1+1NTQfKFfGneR+mB7P60g9VclqcuHiNcbwfZwC/j15tUP9nplfdf
UspUru7KPXFtbh29RxPZQ1E6yT5PSdTq7MStXP7aUzXfkD7sAIWYZstUxr9700I8uDNKAV/b9mAt
jatCFHmjUk1NmOH1X+ArIXhslqT60BYdsIAtv4gIdfjxAI98ang68JPTLwG/FhBnUe02eRFerr+i
e4Lj6kWeoLUBusRHTNiENb2V+sq2TfFsdiRgjUtGZAdaG9q4UiMnSHO0wjH4yKblVpYVjpYyTmMp
r9Lh8htXM7nYgGs31OVKBE7Ld/gJpKo/3rBwYavEyMK39hhaJpOMtU196kaAY3T/R3hR1EqONlmN
8F9EbiQ9rUKqqkOhem2Fdzmh5499FzWoRtoMs/OLcPV5m/vmUoMTpph7eW9kidzsrkh0BoHi1yT7
aQCjRdrh0mftLC2uTFf0HIP53o0IF/pB7EPHLSHmQm1cJXNDamNAqu280nk77AxI/TOqf52E71ds
M/vl9HKoaHgvnFHrUR2g+poN9GjirVbtNrUnr8bm3hH52v9gy2RdLEvBIbr5z3cFtQGg1ScVnjXT
9fdEphil4ICSfRUvjOPKrZgwqSofszgdmS0RBZd155yuz6j0Z/nrqZe0lDnsNt42qEOqaFIrC89F
/Ml1KFK29zB9nzFBgfgSdnP/Qtxrji3kd2F6nxwGgJtR8KFAY4zU5txqG5duvtxvJZrYIAYjf+7s
CRWkjS4ExXdlHoXymTbn2Qof8ULasqPC0pNghrd7MvJBUY+UmOjoCMAmIHnjn2pjJidBTrB5PAvD
otQTc+yQ7LDELaZoXIF6jc+BzdmS8u6mmdPtVbVB5D9xZLc5fb6s9F3hrMy7MGo79ESwEHlPGwIa
lnxrSl4Mp6UDeyfGNlbwkkr9rc9n6tINT8eGDow37Xt+pdWW6ulrP+1URNYU41gZiayLm5xi4tNG
DbeVkQVvsQGZoaytb8TKPNC2uYy2Ziy0S/dpNu6DExuw6wkccHj7ag51aHXKdmphLYBwB8+v+FUk
1NuXlERqc/LsnKIBIM4fmjY2mRSGCNeVWWaKs5CPQ6amoou7wZ0K53aWV0gAm2teT6XuSmZgN5Hm
Jc5KzbyDHrO0BIGbWfZnUHT1DPtUUtj99fvYGBjkUjebJ3uWRTPECDOBPtxiA5HAsowDmoAjjXW0
5C+efc9Vse8UzuKJJ4pt9OzUKptzWpepsDrv0h1D8JHo/KEoX855nkpZLFziS+M85g/7zrG6wbFp
KwDco9YRE5ImalG8xP7RMY2kkjyqbLyBm+xG6zv1k48A2MBE+mpuVoaU0l+pXQQLuvbpt4oyz2hP
VOlM0MquEeFpsnkbet2BF+3+t11ws6AL855rAJDg0xQr0qTMEftRciUQ1FR9Mc4gOKObbRY3oc6l
b0cQr8/Q1qzeZ2ScxNwp3/RPUpXc0tYsWrvg4QMVTkS1tajF3onKQATQiu3knV4LW5tbe7mNRaFs
yzxZLr2386gmhBnS9taOLWodYP9gvNW3EGPhKAoPqWIA+1Lh/UhfDjLmBEzC1QafbJRuT+TG56Om
pjFT2cQ5CCDI6tejPsD+HldvDNqfoDiOkp7qIPwL5JQu1Vj8PEBx2HYVbsAtMmAhMco+Pz7s5X52
YFbgtpTzf16RGpRzSq1QBWb/JtPuz07yxZfc5dYwzR4prYWgzQIs/74Cc70TI2fxJMqUXjBVs/nI
vYY6y2L+4IggkwwHtbTLIDboNGSPBzz5k8AxJY08p5VCJALJaUxZ4oinvwVlyalL5xgIWVlAFF2C
1IbkHO3jLo27lF7ANIaCD7GS37D+VqdhyLSBN64/u38KGPHx4V+zAjE6tmv3PTZ7gtw42pg/VNyD
0RrAFQUIPvJ0Qriy2AIWZrmIySotGzys36Q+CrWAZsdAl1n1LdWH47VaENJxHvXAQTfcxcUdTTqa
i3gvaInOinLJUJ79EVL/wtcBP5VtbSdoF33keoe8Z8U+dQ5z8l7Ilbb8ENECxi3kyEUS6srqdFSA
9GskJkvWFfD/dJLVXauMBJqfx+UOI7QAt6cMpg+2nq+w7GCKiIYwGqwB/QsZWOC95pug6u3XYOKG
MFu0difdC3bfXiZRP3WzkEF2+djeoQhBQ5p+Xf+VYH5IPalJGefW6yVtKWJm1ZWNQl/MjY/CXQeq
jlcnuMHhUsEO+ZqqxDr0Uyrs6iyWbrjaKxzJ2819etI2YEpFT49ihS9VqY89Jyv5RDukVwzdYboE
nTKdx+wfdToTjfW05UpLORZShdkCeHqlrve8D22BGavgC7OIprKALmoTwWi2aNFDgTvJMtG+qKqJ
PyghxW3nbL9UnRMUS4AFGcpLLJ2gxOGu0q9q9cQN9pUorPux6vP7tN9EmrpK9FVm2T8ul+DaI8k+
hBRU+h5Jphk9qXV2K05IFCl4+Ru9P9+zaKi9fSsCPUo30QYhnIYZPX69BdzWxMuzVBC7TYTfVgTT
QU31b4s/G0robia5zX7idiXC449vi1ulZ2JFzd76gKIKe6lZ3hrThF3+UVogzorUwg7W9978OBD6
PPuFL03Xi3u4sUuUFzxxXtYwqx5dRSclxbmrVWGpST3FRyRvowdZ2GRWaLyFHG/mqJ1S8MLCYAQS
PAr55lB4vVpyp/5iSDomEWCd9fESjZ3mOPX+S6N8IDtVooaTM/SfVVTsB+nXN/1mBqFq7n4J5V1d
xH40+QgGY/JgoaSc6DfNgyiGdFeiFPQ1WoVGlAIo23ZdZzgMp3puW43uH5Fm0Q1i5Du6ifOn5wUu
AQ+chy4fwtHs46nYFDvwxu92FyNuiPkoNZJw42uRDfPnE+3EOiWlc8Reo7Ec/wY3Z11/S/ZNwm0f
Za+3oaufRFtdXsRA7iFImvj5mT2FyWGxdLvNQVkyX+QqrmrfYjkFld2FJum55BwnrJQ3IPNWp1Tl
3nrjviia+phiFp423+hzdb8mOprJlfF9D37c1WghymDbeM9/4XZNaiLnV15GGlwJWNxSMT7ebp34
YelmnQNye+sunlO2FtutzQ9gcrJA79JtqFDrEGzlFBCOTwPCGxUiDXCgI1lg8LR+Imc+Q/3ffEZC
KNAHl46lrRqc7lgLN29nWdoDYzgiUV8+zyVe+95E+5ieRI3Lcqk62V30EyggO113hcBq5Dpw+aZu
Da6hEX6F2O5NM++H+qP/71XTWav1FtZgxGsxxOnQP6hLOrsl2OiJyHYkf9C1mdIo0DNyN1EJlivK
4GphZtmvV41RTDq1W1eUnCbGihNIU8bqvSII59OIilJQloW+nI++gh1ucTtW+pfcyfVscdkHIj/R
gnwAZ249FaD4N7qMllivF7s1KTH+ohPsMVMM2ijPj3EVDChCoEjosQJLcYeEA3jq6tiOgx4+vFhC
hDX010ysmxXPM68c5lxWouQWwz7jBKo9Xeuw3XF+6k6fEkxNXa8z+9O35OFouZbEyRmxnmBE0rar
HFwLS1iuC4KuAgc8R5kDY2qrGFBtJE8u095Dmaxg7nSvIq0mZtPCC/Amtp4/Hi5pRnt7gE/+RPaz
zT9AzF0Qx1QmBhaVski8HEUg9ZK2xojHGwtapbMoUgaybA53jTg9BcPJNrsQ+QK4MGnbPBQHIa/I
8XsnrTgjBjvAIqJCcTeBBMTsYu1Rp9AfDDOBrgftiGdMFX/Gx9naBjIpoG3I6Mw6rRmXYQCRYYBH
mhJjRCAx3DVe7fI2IubRBXkWMHtzq72T+49y5Yx9qt3HWbk9m1lxhYN+jzZmoFACccL2tjOfukaz
HeaYJuMNmbyiZqQuj98VxMkMuwr4yW+T5446nzQ4gyUGNIyY8C2ozumrQPmlzVqK2hQMownqpRV9
PkvyQM8vGeMusKj7v+aQb3WDi12H3tHZCJ2G/UPxqCyh2/OkPeOAwbCMVIj3w2NP6RSM+C7rDS5F
ucenwNGaqcvNTkvB+/mxRAHD9OkJeNsArgrIgY6oXiaGiCzzjUCCoN8bEiIIkl/TwwNVM3VmNVhw
73pwzcqS9fP6vq+HnVjWrcg52qLFJoIO3qsI6o2kvDWG57qCWz2fEbmiK8KMQ/rp1LJJZ0PlGzoS
Tz5J/8Yw2t40V2T/J7ejNHwSMTO7RYnnO4OmqIXiS31E3bAlP65wUNFp+vky6xuAp/Ua9QQs0i/J
421IvzeX2kXmR1+uJNFNdZhP7S8uKJKn9mB2o9t2cC+6X3TAY3XCcOsP7IcULxOixp+X7HcJlqCT
DvfW5Rk9E7ewa2y7dsDCn9E4YyRC9KgmRlaO9EO8BXCd1R+niIveupGjJaAOGSYgiXdnHiYvYOl8
2gx/mCSD9r5RNK2h1cm+vErVXsjblmYdMe8opqUc+Q5ui1HHnEc2ZCGIdd0Ye7tdzQFP6dyP0eJF
7rVAevzszcuFgw2q9XyCoztsOM5Tzuqg5tpjkYEUEtypc9pqgFtjfSLbOx5P4tvXJ/mq9eFjduhq
6PspeL5j3w1M5llyqqJj8A3vcO0F7bIV+gDIMCNwXeLqj2kXAmbX8ZGDach8ee3Izup0zlVKAgnD
mxFf3+Iuw8spQqSdLStBSC2w9ARYLSzgbV4agmPNT+eKxGQftrUgdE1Yjnlztg0ooQboGKhQMCIS
gVdz5hmEB7P8y5bZ4zxLcl0eVakw++Y1T12CyG+/IBcQZ44zgz6iMtEUAZzCICnxWv3TBMZ2rmOh
0fnxhLgqH2dC/lGuS0IDrGRUw8jtk+OffuIxK69YNCZhJ7aawqK35srzmKVrwTOpkAjNi3vUdXyF
qUDeGl+VV9mQz2pvoOZv4r7BsFvS1mcLRBW5Gvj1GwaNYCDSSAALq260jzp0xkR6BRYuCr9xAM5D
FoPjmE1ff+NOr1ap/7Ztq/SBPlYWfupKsNZmDZEPRvw4XdvL2vIaCtaPm9x0VUTKylve0ZthWakh
iti0xDTAqjoQ0Wf1cWgbbMKuh98tWdNl9NXc2B5OF+1HWfnAuUF36bBYzQhw0rzAOgJ8F0WYOeAO
ClJ1ybayVAyCiwgVy3z6tyFYyL2g9YPDF8RQJXbMqqy/Cl02KoHcC1bbvcpI84CLFrCktkw7SRbH
L2U/wGc6UhrPwoL8H4/1L8kI9gC7lpy+XGpqXiUjK7OLCJHDOTHHvcM7vum3euESnsgs7SVo17+F
ezmHoUDDZbrmV1ACuM+vDfRRPNNPQXKVgESQjSZOUpn8AK8McAR/3VXZ+k/lmp0Lmxktwnq3w9kw
A09F2LjyoBfeEhYUJaGXrLxIWDSIEiL3Ahm7HWOUJJQnKQA5WIVzY/WiajKf8Vn+y0qAZWZYEPLS
cPNU+YKHdpscumKsTJpdkSU4P+hRav1gwjuQ1rAvQPxo5kr3iEl92CJS5hGFGKrPrxI8OipxoqqW
JSRtQw0WA+BSDWU0XR+QzUw4lu/oxE5ERop/g9rb9JXv+xP1qASSjczQr/xpU4unNzyLQkxIyJRL
dIDbdIx/ha7LURmAiVK+0EvDpiza2Q5vjsaURXDp4cJLCy3MUGyWFL29hM9OZbPLCp1/bVEjTRUY
p/K0QxyQPWxyLObh7GgqHHC5qY4DNvOrQ0n6PL8B9YMzDjz/2tE0vl4CKcygzB/alVnxgI9LA3jg
bvDe25UtWzMUaXdYaeIbglxl48ub6qGHqq537t4kWZcD6sZC8kpDheVU6pS4vykgr+Kg+2VEyqju
5hPT8fpqb2oMaRnCmnOl3RVa4L7LGzhWwtg/TlW6AmJ9HX9scvjCAj15yVM47BgkttcciVcspAwE
aKUNXDdajEK2mcsMkhcCivXSR56SOevAW5fOLXNdoZVuw9k5mngWJ8DE5v8TH8ExkryT2UpgRjdM
kIxdGT023nmQJQRdRK1t89S2LCS9I+Wm6TS6JHL8j87YNLgR4Ti8VPUa+DjwitibFkzpE7WVPiYh
AnTCEnHvjOYH44BCk5BDQz6B7xcHhK92GDMJgHBTofW+ovqVgrksmanJbeK+Z8oJMqds2q46HfS6
6iW0F5POaYXcqpSgfHa97g5MM/inRoTblfRSje/A58HqZRHoe7B3sHdYFQNjozokoKMmDEv/Q6Fg
u9bi/xu5r2ED+O6CpMryPVF2Dao6rUgpB1aOeLX3mBBQyLyfLgL4xB50M51KZJBw/+3/FWs4TjLN
6qnKLgBV8S2TL09++Bo65V1DPxP0q8JXzUIiwK9Fkq4eyl4P68f773BCj0lJJ3XabBDfOsnsvnh8
V49BlNzobR6zeksfI3+2xMA9Zszvwdz8QYPvSqqAbOfQkhUnQ4DWf73dUC8MUPXhnizI8vCoZ1LS
/ZEfnmgz8qSrmsw6UM16Exw9l0o5NVjQ/yCWrHTskOIuRDaSRnmU8/ZOVGHTLjg48wbdZK8WyEAs
18LoWeAeHezWgFV81H+K/7EowXc4TDzntOcyfhlZWrFvq6725ap11zx0T9Pm80k0y0zqAsmmN4tz
xsiMkuYY0HlfialdPq0f6z/XFU8cyPe9JecE3Ckr49LQSdbOSD6WCz1Onmx49zzf8PlUsXBS6gpQ
udxGHSfOAhYOXrLQRpi8CMEeb1dA4C8oeCmN/Xcf/hnxPlbu6uQXd9qeVKxdMTNEx9x/1sMpSZFn
302vMqItdX8YPYwiJMmLazYg3NGXEk9uHk9puQN2/o7oRQJzUJpuUVKQZuwmRBcOjmL87RRKdmiV
8Lvnwo4f1KWdXkfknV1yksbUAYUVqLL3N2smkKVHMXmelpzlse/WVjNAOL8DVO4zJpPWu8ddy4oz
IWOnwW73kV90USTfroIWG4glO/aa3b6Db0thk+kGikxi3z3awgOdnQ5TArhItMXlzQY1Bl1iQoyL
+eoD7A4qoMIH1EoWuVnYaWtvyk3N3hy1xhJJrRZjBgXtPr8lKtHG9uEgh0Ne0eeKzNXzirsBpzTJ
eLYuf4mVnUVOls1H0cgAFb/aLqLoqe6Iy04WCTaSkiOQ4rJKmi3BNqoJ+N8B822aIi5DaKZiGVsu
x/Yqo0+wMBBJIKF3eyI4z2QXmSghsYoJOX3db9tEWmabLS+SrOshfpqFsBZT3BtzTs3m8Ty5WfRq
m5EKy1daRDgIFdXjzpYQbAcH9FU+6/pf5czpKzZeOW+Z2om9DEQFD15Ek2A30dmZpL0CX8fEhBQz
/6ntk7Nfydt7SWO0d1MVg1ZUTHcPg+jZyJefV5k2Ajayveo5xtgWT6NwJ1X6GfjChQEvDrKpJwEy
1cE7WX1N6J8546v38EcR4bGmkjjJLU/VmJUKuQiB90DcRWRxjQm29e5sU3MpSlAxAyyIqYlKCXPk
N5yArz3syNsLvaGHu7fIDiiV3zA9ygvmWNCHKyZ6Xiv+xaWLt6jKwSZldAe5udloHESGQJxXORms
NRyYv2o7hD5l88zAODpWTyEtrDeZPTYY+Qoo2ELY83N8/D/COeWSH9Fg8bKP4r3OZmzYO5vvof9j
pYKGkc8=
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
