// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 17:08:03 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_0_sim_netlist.v
// Design      : VGA_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
   (hs,
    vs,
    vga_r,
    inst,
    dmem_o_data,
    dmem_i_data,
    mem_wen,
    alu_res,
    clk_100m,
    pc,
    dmem_addr,
    rst,
    clk_25m);
  output hs;
  output vs;
  output [0:0]vga_r;
  input [31:0]inst;
  input [31:0]dmem_o_data;
  input [31:0]dmem_i_data;
  input mem_wen;
  input [31:0]alu_res;
  input clk_100m;
  input [31:0]pc;
  input [31:0]dmem_addr;
  input rst;
  input clk_25m;

  wire [8:3]C;
  wire [2:2]C__0;
  wire [31:0]alu_res;
  wire clk_100m;
  wire clk_25m;
  wire [5:1]display_w_addr;
  wire [6:0]display_w_data;
  wire [31:0]dmem_addr;
  wire [31:0]dmem_i_data;
  wire [31:0]dmem_o_data;
  wire [6:3]font_data;
  wire hs;
  wire [31:0]inst;
  wire mem_wen;
  wire [31:0]pc;
  wire rst;
  wire [11:3]sel;
  wire [11:3]text_index;
  wire vga_controller_n_100;
  wire vga_controller_n_15;
  wire vga_controller_n_16;
  wire vga_controller_n_17;
  wire vga_controller_n_18;
  wire vga_controller_n_19;
  wire vga_controller_n_2;
  wire vga_controller_n_20;
  wire vga_controller_n_21;
  wire vga_controller_n_22;
  wire vga_controller_n_23;
  wire vga_controller_n_24;
  wire vga_controller_n_25;
  wire vga_controller_n_26;
  wire vga_controller_n_27;
  wire vga_controller_n_28;
  wire vga_controller_n_29;
  wire vga_controller_n_3;
  wire vga_controller_n_30;
  wire vga_controller_n_32;
  wire vga_controller_n_33;
  wire vga_controller_n_34;
  wire vga_controller_n_35;
  wire vga_controller_n_36;
  wire vga_controller_n_37;
  wire vga_controller_n_38;
  wire vga_controller_n_39;
  wire vga_controller_n_4;
  wire vga_controller_n_40;
  wire vga_controller_n_41;
  wire vga_controller_n_42;
  wire vga_controller_n_43;
  wire vga_controller_n_44;
  wire vga_controller_n_45;
  wire vga_controller_n_46;
  wire vga_controller_n_47;
  wire vga_controller_n_48;
  wire vga_controller_n_49;
  wire vga_controller_n_5;
  wire vga_controller_n_50;
  wire vga_controller_n_51;
  wire vga_controller_n_52;
  wire vga_controller_n_53;
  wire vga_controller_n_54;
  wire vga_controller_n_55;
  wire vga_controller_n_56;
  wire vga_controller_n_57;
  wire vga_controller_n_58;
  wire vga_controller_n_59;
  wire vga_controller_n_6;
  wire vga_controller_n_60;
  wire vga_controller_n_61;
  wire vga_controller_n_62;
  wire vga_controller_n_63;
  wire vga_controller_n_64;
  wire vga_controller_n_65;
  wire vga_controller_n_66;
  wire vga_controller_n_67;
  wire vga_controller_n_68;
  wire vga_controller_n_69;
  wire vga_controller_n_7;
  wire vga_controller_n_70;
  wire vga_controller_n_71;
  wire vga_controller_n_72;
  wire vga_controller_n_73;
  wire vga_controller_n_74;
  wire vga_controller_n_75;
  wire vga_controller_n_76;
  wire vga_controller_n_77;
  wire vga_controller_n_79;
  wire vga_controller_n_8;
  wire vga_controller_n_80;
  wire vga_controller_n_81;
  wire vga_controller_n_82;
  wire vga_controller_n_83;
  wire vga_controller_n_84;
  wire vga_controller_n_85;
  wire vga_controller_n_89;
  wire vga_controller_n_9;
  wire vga_controller_n_90;
  wire vga_controller_n_91;
  wire vga_controller_n_92;
  wire vga_controller_n_93;
  wire vga_controller_n_94;
  wire vga_controller_n_95;
  wire vga_controller_n_96;
  wire vga_controller_n_97;
  wire vga_controller_n_98;
  wire vga_controller_n_99;
  wire vga_debugger_n_0;
  wire vga_debugger_n_10;
  wire vga_debugger_n_11;
  wire vga_debugger_n_12;
  wire vga_debugger_n_13;
  wire vga_debugger_n_14;
  wire vga_debugger_n_15;
  wire vga_debugger_n_16;
  wire vga_debugger_n_17;
  wire vga_debugger_n_18;
  wire vga_debugger_n_19;
  wire vga_debugger_n_20;
  wire vga_debugger_n_21;
  wire vga_debugger_n_22;
  wire vga_debugger_n_23;
  wire vga_debugger_n_24;
  wire vga_debugger_n_25;
  wire vga_debugger_n_26;
  wire vga_debugger_n_27;
  wire vga_debugger_n_28;
  wire vga_debugger_n_29;
  wire vga_debugger_n_30;
  wire vga_debugger_n_31;
  wire vga_debugger_n_32;
  wire vga_debugger_n_33;
  wire vga_debugger_n_34;
  wire vga_debugger_n_35;
  wire vga_debugger_n_36;
  wire vga_debugger_n_37;
  wire vga_debugger_n_38;
  wire vga_debugger_n_39;
  wire vga_debugger_n_40;
  wire vga_debugger_n_41;
  wire vga_debugger_n_42;
  wire vga_debugger_n_43;
  wire vga_debugger_n_44;
  wire vga_debugger_n_45;
  wire vga_debugger_n_46;
  wire vga_debugger_n_47;
  wire vga_debugger_n_48;
  wire vga_debugger_n_49;
  wire vga_debugger_n_50;
  wire vga_debugger_n_51;
  wire vga_debugger_n_52;
  wire vga_debugger_n_53;
  wire vga_debugger_n_54;
  wire vga_debugger_n_55;
  wire vga_debugger_n_56;
  wire vga_debugger_n_57;
  wire vga_debugger_n_58;
  wire vga_debugger_n_59;
  wire vga_debugger_n_6;
  wire vga_debugger_n_60;
  wire vga_debugger_n_61;
  wire vga_debugger_n_62;
  wire vga_debugger_n_63;
  wire vga_debugger_n_64;
  wire vga_debugger_n_65;
  wire vga_debugger_n_66;
  wire vga_debugger_n_67;
  wire vga_debugger_n_68;
  wire vga_debugger_n_69;
  wire vga_debugger_n_7;
  wire vga_debugger_n_70;
  wire vga_debugger_n_71;
  wire vga_debugger_n_72;
  wire vga_debugger_n_73;
  wire vga_debugger_n_74;
  wire vga_debugger_n_75;
  wire vga_debugger_n_76;
  wire vga_debugger_n_8;
  wire vga_debugger_n_9;
  wire vga_display_n_10;
  wire vga_display_n_11;
  wire vga_display_n_14;
  wire vga_display_n_15;
  wire vga_display_n_16;
  wire vga_display_n_17;
  wire vga_display_n_18;
  wire vga_display_n_19;
  wire vga_display_n_20;
  wire vga_display_n_21;
  wire vga_display_n_9;
  wire [0:0]vga_r;
  wire vs;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaController vga_controller
       (.ADDRC({text_index[5:3],vga_controller_n_89,vga_controller_n_90,vga_controller_n_91}),
        .C({C[8:7],C[5:3]}),
        .C__0(C__0),
        .Q({vga_controller_n_2,vga_controller_n_3,vga_controller_n_4,vga_controller_n_5,vga_controller_n_6,vga_controller_n_7}),
        .S({vga_display_n_19,vga_display_n_20,vga_display_n_21}),
        .clk_25m(clk_25m),
        .g17_b2_0(vga_controller_n_52),
        .g17_b6_0(vga_controller_n_65),
        .g19_b5_0(vga_controller_n_62),
        .g1_b0_0(vga_controller_n_42),
        .g1_b1_0(vga_controller_n_47),
        .g1_b6_0(vga_controller_n_64),
        .g21_b6_0(vga_controller_n_66),
        .g25_b6_0(vga_controller_n_67),
        .g47_b3_0(vga_controller_n_60),
        .\h_count_reg[2]_0 (vga_controller_n_79),
        .\h_count_reg[3]_0 (vga_controller_n_80),
        .\h_count_reg[4]_0 (vga_controller_n_82),
        .\h_count_reg[5]_0 (vga_controller_n_81),
        .\h_count_reg[5]_1 (vga_controller_n_83),
        .\h_count_reg[5]_2 ({vga_controller_n_92,vga_controller_n_93,vga_controller_n_94}),
        .\h_count_reg[5]_3 ({vga_controller_n_95,vga_controller_n_96,vga_controller_n_97}),
        .\h_count_reg[5]_4 ({vga_controller_n_98,vga_controller_n_99,vga_controller_n_100}),
        .\h_count_reg[8]_0 (vga_controller_n_9),
        .\h_count_reg[8]_1 (vga_controller_n_84),
        .\h_count_reg[8]_2 (vga_controller_n_85),
        .hs(hs),
        .rst(rst),
        .sel(sel),
        .text_index(text_index[11:6]),
        .\v_count_reg[0]_0 (vga_controller_n_8),
        .\v_count_reg[0]_1 (vga_controller_n_16),
        .\v_count_reg[0]_10 (vga_controller_n_27),
        .\v_count_reg[0]_11 (vga_controller_n_28),
        .\v_count_reg[0]_12 (vga_controller_n_29),
        .\v_count_reg[0]_13 (vga_controller_n_30),
        .\v_count_reg[0]_14 (vga_controller_n_32),
        .\v_count_reg[0]_15 (vga_controller_n_33),
        .\v_count_reg[0]_16 (vga_controller_n_34),
        .\v_count_reg[0]_17 (vga_controller_n_35),
        .\v_count_reg[0]_18 (vga_controller_n_36),
        .\v_count_reg[0]_19 (vga_controller_n_37),
        .\v_count_reg[0]_2 (vga_controller_n_17),
        .\v_count_reg[0]_20 (vga_controller_n_38),
        .\v_count_reg[0]_21 (vga_controller_n_39),
        .\v_count_reg[0]_22 (vga_controller_n_40),
        .\v_count_reg[0]_23 (vga_controller_n_41),
        .\v_count_reg[0]_3 (vga_controller_n_18),
        .\v_count_reg[0]_4 (vga_controller_n_19),
        .\v_count_reg[0]_5 (vga_controller_n_22),
        .\v_count_reg[0]_6 (vga_controller_n_23),
        .\v_count_reg[0]_7 (vga_controller_n_24),
        .\v_count_reg[0]_8 (vga_controller_n_25),
        .\v_count_reg[0]_9 (vga_controller_n_26),
        .\v_count_reg[1]_0 (vga_controller_n_20),
        .\v_count_reg[1]_1 (vga_controller_n_21),
        .\v_count_reg[5]_0 (vga_controller_n_15),
        .\vga_b[0]_INST_0_i_110_0 (vga_controller_n_56),
        .\vga_b[0]_INST_0_i_115_0 (vga_display_n_9),
        .\vga_b[0]_INST_0_i_121_0 (vga_controller_n_55),
        .\vga_b[0]_INST_0_i_123_0 (vga_controller_n_54),
        .\vga_b[0]_INST_0_i_125_0 (vga_controller_n_53),
        .\vga_b[0]_INST_0_i_12_0 (vga_display_n_11),
        .\vga_b[0]_INST_0_i_15 (vga_display_n_16),
        .\vga_b[0]_INST_0_i_163 (vga_controller_n_63),
        .\vga_b[0]_INST_0_i_175_0 (vga_controller_n_76),
        .\vga_b[0]_INST_0_i_177_0 (vga_controller_n_75),
        .\vga_b[0]_INST_0_i_179_0 (vga_controller_n_74),
        .\vga_b[0]_INST_0_i_18_0 (vga_display_n_10),
        .\vga_b[0]_INST_0_i_197_0 (vga_controller_n_50),
        .\vga_b[0]_INST_0_i_199_0 (vga_controller_n_49),
        .\vga_b[0]_INST_0_i_201_0 (vga_controller_n_48),
        .\vga_b[0]_INST_0_i_233_0 (vga_controller_n_61),
        .\vga_b[0]_INST_0_i_285_0 (vga_controller_n_68),
        .\vga_b[0]_INST_0_i_293_0 (vga_controller_n_71),
        .\vga_b[0]_INST_0_i_295_0 (vga_controller_n_70),
        .\vga_b[0]_INST_0_i_297_0 (vga_controller_n_69),
        .\vga_b[0]_INST_0_i_319_0 (vga_controller_n_59),
        .\vga_b[0]_INST_0_i_31_0 (vga_controller_n_51),
        .\vga_b[0]_INST_0_i_321_0 (vga_controller_n_58),
        .\vga_b[0]_INST_0_i_323_0 (vga_controller_n_57),
        .\vga_b[0]_INST_0_i_34 (vga_display_n_15),
        .\vga_b[0]_INST_0_i_39_0 (vga_controller_n_73),
        .\vga_b[0]_INST_0_i_43_0 (vga_controller_n_46),
        .\vga_b[0]_INST_0_i_46_0 (vga_display_n_14),
        .\vga_b[0]_INST_0_i_53_0 (vga_controller_n_43),
        .\vga_b[0]_INST_0_i_62_0 (vga_controller_n_44),
        .\vga_b[0]_INST_0_i_62_1 (vga_controller_n_45),
        .\vga_b[0]_INST_0_i_86 (vga_controller_n_72),
        .\vga_b[0]_INST_0_i_86_0 (vga_controller_n_77),
        .vga_r(vga_r),
        .\vga_r[3] ({font_data[6],font_data[3]}),
        .\vga_r[3]_0 (vga_display_n_17),
        .\vga_r[3]_1 (vga_display_n_18),
        .vs(vs));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDebugger vga_debugger
       (.ADDRD({vga_debugger_n_6,vga_debugger_n_7,vga_debugger_n_8}),
        .alu_res(alu_res),
        .clk_100m(clk_100m),
        .\display_addr_reg[0]_rep__1_0 (vga_debugger_n_76),
        .\display_addr_reg[10]_0 (vga_debugger_n_0),
        .\display_addr_reg[10]_1 (vga_debugger_n_12),
        .\display_addr_reg[10]_2 (vga_debugger_n_43),
        .\display_addr_reg[10]_3 (vga_debugger_n_44),
        .\display_addr_reg[10]_4 (vga_debugger_n_45),
        .\display_addr_reg[10]_5 (vga_debugger_n_54),
        .\display_addr_reg[11]_0 (vga_debugger_n_55),
        .\display_addr_reg[11]_1 (vga_debugger_n_56),
        .\display_addr_reg[11]_2 (vga_debugger_n_57),
        .\display_addr_reg[11]_3 (vga_debugger_n_73),
        .\display_addr_reg[11]_4 (vga_debugger_n_74),
        .\display_addr_reg[11]_5 (vga_debugger_n_75),
        .\display_addr_reg[1]_rep_0 ({vga_debugger_n_9,vga_debugger_n_10}),
        .\display_addr_reg[3]_0 (vga_debugger_n_58),
        .\display_addr_reg[3]_1 (vga_debugger_n_59),
        .\display_addr_reg[3]_2 (vga_debugger_n_60),
        .\display_addr_reg[3]_3 (vga_debugger_n_61),
        .\display_addr_reg[3]_4 (vga_debugger_n_62),
        .\display_addr_reg[3]_5 (vga_debugger_n_63),
        .\display_addr_reg[3]_6 (vga_debugger_n_72),
        .\display_addr_reg[3]_rep_0 (vga_debugger_n_14),
        .\display_addr_reg[3]_rep_1 (vga_debugger_n_46),
        .\display_addr_reg[3]_rep_2 (vga_debugger_n_47),
        .\display_addr_reg[3]_rep_3 (vga_debugger_n_48),
        .\display_addr_reg[3]_rep_4 (vga_debugger_n_49),
        .\display_addr_reg[3]_rep_5 (vga_debugger_n_50),
        .\display_addr_reg[3]_rep_6 (vga_debugger_n_51),
        .\display_addr_reg[3]_rep_7 (vga_debugger_n_52),
        .\display_addr_reg[3]_rep_8 (vga_debugger_n_53),
        .\display_addr_reg[3]_rep__0_0 (vga_debugger_n_11),
        .\display_addr_reg[3]_rep__0_1 (vga_debugger_n_28),
        .\display_addr_reg[3]_rep__0_10 (vga_debugger_n_66),
        .\display_addr_reg[3]_rep__0_11 (vga_debugger_n_67),
        .\display_addr_reg[3]_rep__0_12 (vga_debugger_n_68),
        .\display_addr_reg[3]_rep__0_13 (vga_debugger_n_69),
        .\display_addr_reg[3]_rep__0_14 (vga_debugger_n_70),
        .\display_addr_reg[3]_rep__0_15 (vga_debugger_n_71),
        .\display_addr_reg[3]_rep__0_2 (vga_debugger_n_34),
        .\display_addr_reg[3]_rep__0_3 (vga_debugger_n_35),
        .\display_addr_reg[3]_rep__0_4 (vga_debugger_n_38),
        .\display_addr_reg[3]_rep__0_5 (vga_debugger_n_39),
        .\display_addr_reg[3]_rep__0_6 (vga_debugger_n_40),
        .\display_addr_reg[3]_rep__0_7 (vga_debugger_n_41),
        .\display_addr_reg[3]_rep__0_8 (vga_debugger_n_64),
        .\display_addr_reg[3]_rep__0_9 (vga_debugger_n_65),
        .\display_addr_reg[5]_0 (display_w_addr),
        .\display_addr_reg[6]_0 (vga_debugger_n_23),
        .\display_addr_reg[6]_1 (vga_debugger_n_24),
        .\display_addr_reg[6]_2 (vga_debugger_n_25),
        .\display_addr_reg[6]_3 (vga_debugger_n_26),
        .\display_addr_reg[6]_4 (vga_debugger_n_27),
        .\display_addr_reg[6]_5 (vga_debugger_n_29),
        .\display_addr_reg[7]_0 (vga_debugger_n_13),
        .\display_addr_reg[7]_1 (vga_debugger_n_15),
        .\display_addr_reg[7]_2 (vga_debugger_n_16),
        .\display_addr_reg[7]_3 (vga_debugger_n_17),
        .\display_addr_reg[7]_4 (vga_debugger_n_30),
        .\display_addr_reg[7]_5 (vga_debugger_n_31),
        .\display_addr_reg[8]_0 (vga_debugger_n_18),
        .\display_addr_reg[8]_1 (vga_debugger_n_19),
        .\display_addr_reg[8]_2 (vga_debugger_n_20),
        .\display_addr_reg[8]_3 (vga_debugger_n_32),
        .\display_addr_reg[8]_4 (vga_debugger_n_33),
        .\display_addr_reg[9]_0 (vga_debugger_n_21),
        .\display_addr_reg[9]_1 (vga_debugger_n_22),
        .\display_addr_reg[9]_2 (vga_debugger_n_36),
        .\display_addr_reg[9]_3 (vga_debugger_n_37),
        .\display_addr_reg[9]_4 (vga_debugger_n_42),
        .display_w_data({display_w_data[6],display_w_data[3:0]}),
        .dmem_addr(dmem_addr),
        .dmem_i_data(dmem_i_data),
        .dmem_o_data(dmem_o_data),
        .inst(inst),
        .mem_wen(mem_wen),
        .pc(pc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDisplay vga_display
       (.ADDRC({vga_controller_n_89,vga_controller_n_90,vga_controller_n_91}),
        .ADDRD({display_w_addr[5:4],vga_debugger_n_6,display_w_addr[2:1],vga_debugger_n_8}),
        .C({C[8:7],C[5:3]}),
        .C__0(C__0),
        .Q({vga_controller_n_2,vga_controller_n_3,vga_controller_n_4,vga_controller_n_5,vga_controller_n_6,vga_controller_n_7}),
        .S({vga_display_n_19,vga_display_n_20,vga_display_n_21}),
        .clk_100m(clk_100m),
        .display_data_reg_0_63_0_2_i_5(vga_controller_n_82),
        .display_data_reg_0_63_0_2_i_5_0(vga_controller_n_9),
        .display_data_reg_0_63_0_2_i_5_1(vga_controller_n_83),
        .display_data_reg_0_63_0_2_i_5_2(vga_controller_n_84),
        .display_data_reg_0_63_0_2_i_5_3(vga_controller_n_85),
        .display_w_data({display_w_data[6],display_w_data[3:0]}),
        .g0_b0_i_4_0(vga_controller_n_15),
        .g48_b7(vga_display_n_16),
        .\h_count_reg[1] (vga_display_n_17),
        .\h_count_reg[1]_0 (vga_display_n_18),
        .sel(sel),
        .text_ascii_carry__0_i_45_0(vga_debugger_n_75),
        .text_ascii_carry__0_i_45_1(vga_debugger_n_64),
        .text_ascii_carry__0_i_45_2(vga_debugger_n_65),
        .text_ascii_carry__0_i_45_3(vga_debugger_n_19),
        .text_ascii_carry__0_i_46_0(vga_debugger_n_66),
        .text_ascii_carry__0_i_46_1(vga_debugger_n_16),
        .text_ascii_carry__0_i_46_2(vga_debugger_n_26),
        .text_ascii_carry__0_i_46_3(vga_debugger_n_67),
        .text_ascii_carry__0_i_47_0(vga_debugger_n_68),
        .text_ascii_carry__0_i_47_1(vga_debugger_n_15),
        .text_ascii_carry__0_i_47_2(vga_debugger_n_25),
        .text_ascii_carry__0_i_47_3(vga_debugger_n_69),
        .text_ascii_carry__0_i_48_0(vga_debugger_n_24),
        .text_ascii_carry__0_i_48_1(vga_debugger_n_70),
        .text_ascii_carry__0_i_48_2(vga_debugger_n_71),
        .text_ascii_carry__0_i_49_0(vga_debugger_n_55),
        .text_ascii_carry__0_i_49_1(vga_debugger_n_56),
        .text_ascii_carry__0_i_49_2(vga_debugger_n_57),
        .text_ascii_carry__0_i_49_3(vga_debugger_n_72),
        .text_ascii_carry__0_i_50_0(vga_debugger_n_73),
        .text_ascii_carry__0_i_50_1(vga_debugger_n_58),
        .text_ascii_carry__0_i_50_2(vga_debugger_n_59),
        .text_ascii_carry__0_i_50_3(vga_debugger_n_22),
        .text_ascii_carry__0_i_51_0(vga_debugger_n_74),
        .text_ascii_carry__0_i_51_1(vga_debugger_n_60),
        .text_ascii_carry__0_i_51_2(vga_debugger_n_61),
        .text_ascii_carry__0_i_51_3(vga_debugger_n_20),
        .text_ascii_carry__0_i_52_0(vga_debugger_n_62),
        .text_ascii_carry__0_i_52_1(vga_debugger_n_17),
        .text_ascii_carry__0_i_52_2(vga_debugger_n_27),
        .text_ascii_carry__0_i_52_3(vga_debugger_n_63),
        .text_ascii_carry__0_i_53_0(vga_debugger_n_43),
        .text_ascii_carry__0_i_53_1(vga_debugger_n_44),
        .text_ascii_carry__0_i_53_2(vga_debugger_n_45),
        .text_ascii_carry__0_i_53_3(vga_debugger_n_52),
        .text_ascii_carry__0_i_54_0(vga_debugger_n_53),
        .text_ascii_carry__0_i_54_1(vga_debugger_n_46),
        .text_ascii_carry__0_i_54_2(vga_debugger_n_47),
        .text_ascii_carry__0_i_54_3(vga_debugger_n_21),
        .text_ascii_carry__0_i_55_0(vga_debugger_n_54),
        .text_ascii_carry__0_i_55_1(vga_debugger_n_48),
        .text_ascii_carry__0_i_55_2(vga_debugger_n_49),
        .text_ascii_carry__0_i_55_3(vga_debugger_n_18),
        .text_ascii_carry__0_i_56_0(vga_debugger_n_50),
        .text_ascii_carry__0_i_56_1(vga_debugger_n_13),
        .text_ascii_carry__0_i_56_2(vga_debugger_n_23),
        .text_ascii_carry__0_i_56_3(vga_debugger_n_51),
        .text_ascii_carry__0_i_57_0(vga_debugger_n_28),
        .text_ascii_carry__0_i_57_1(vga_debugger_n_29),
        .text_ascii_carry__0_i_57_2(vga_debugger_n_30),
        .text_ascii_carry__0_i_57_3(vga_debugger_n_31),
        .text_ascii_carry__0_i_57_4(vga_debugger_n_76),
        .text_ascii_carry__0_i_57_5(vga_controller_n_79),
        .text_ascii_carry__0_i_57_6(vga_controller_n_80),
        .text_ascii_carry__0_i_57_7(vga_controller_n_81),
        .text_ascii_carry__0_i_58_0(vga_debugger_n_32),
        .text_ascii_carry__0_i_58_1(vga_debugger_n_33),
        .text_ascii_carry__0_i_58_2(vga_debugger_n_34),
        .text_ascii_carry__0_i_58_3(vga_debugger_n_35),
        .text_ascii_carry__0_i_59_0(vga_debugger_n_36),
        .text_ascii_carry__0_i_59_1(vga_debugger_n_37),
        .text_ascii_carry__0_i_59_2(vga_debugger_n_38),
        .text_ascii_carry__0_i_59_3(vga_debugger_n_41),
        .text_ascii_carry__0_i_60_0(vga_debugger_n_42),
        .text_ascii_carry__0_i_60_1(vga_debugger_n_39),
        .text_ascii_carry__0_i_60_2(vga_debugger_n_40),
        .text_ascii_carry__0_i_60_3(vga_debugger_n_12),
        .text_ascii_carry__0_i_64_0(vga_debugger_n_0),
        .text_ascii_carry__0_i_65_0({vga_controller_n_95,vga_controller_n_96,vga_controller_n_97}),
        .text_ascii_carry__0_i_68_0(vga_debugger_n_9),
        .text_ascii_carry__0_i_73_0({vga_controller_n_98,vga_controller_n_99,vga_controller_n_100}),
        .text_ascii_carry_i_87_0(vga_debugger_n_11),
        .text_ascii_carry_i_88_0(display_w_addr[3]),
        .text_ascii_carry_i_92_0({vga_debugger_n_14,vga_debugger_n_10}),
        .text_ascii_carry_i_96_0({vga_controller_n_92,vga_controller_n_93,vga_controller_n_94}),
        .text_ascii_carry_i_96_1(vga_debugger_n_7),
        .text_index(text_index),
        .\v_count_reg[0] (vga_display_n_9),
        .\vga_b[0]_INST_0_i_104_0 (vga_controller_n_23),
        .\vga_b[0]_INST_0_i_10_0 (vga_controller_n_55),
        .\vga_b[0]_INST_0_i_10_1 (vga_controller_n_54),
        .\vga_b[0]_INST_0_i_10_2 (vga_controller_n_53),
        .\vga_b[0]_INST_0_i_111_0 (vga_controller_n_60),
        .\vga_b[0]_INST_0_i_114 (vga_controller_n_62),
        .\vga_b[0]_INST_0_i_143_0 (vga_display_n_11),
        .\vga_b[0]_INST_0_i_143_1 (vga_controller_n_19),
        .\vga_b[0]_INST_0_i_14_0 (vga_controller_n_63),
        .\vga_b[0]_INST_0_i_14_1 (vga_controller_n_72),
        .\vga_b[0]_INST_0_i_15_0 (vga_controller_n_76),
        .\vga_b[0]_INST_0_i_15_1 (vga_controller_n_75),
        .\vga_b[0]_INST_0_i_15_2 (vga_controller_n_74),
        .\vga_b[0]_INST_0_i_163_0 (vga_controller_n_24),
        .\vga_b[0]_INST_0_i_165_0 (vga_controller_n_30),
        .\vga_b[0]_INST_0_i_166_0 (vga_controller_n_29),
        .\vga_b[0]_INST_0_i_167_0 (vga_controller_n_38),
        .\vga_b[0]_INST_0_i_17_0 (vga_controller_n_50),
        .\vga_b[0]_INST_0_i_17_1 (vga_controller_n_49),
        .\vga_b[0]_INST_0_i_17_2 (vga_controller_n_48),
        .\vga_b[0]_INST_0_i_19_0 (vga_controller_n_61),
        .\vga_b[0]_INST_0_i_209_0 (vga_display_n_10),
        .\vga_b[0]_INST_0_i_226_0 (vga_controller_n_34),
        .\vga_b[0]_INST_0_i_241_0 (vga_controller_n_26),
        .\vga_b[0]_INST_0_i_242 (vga_controller_n_16),
        .\vga_b[0]_INST_0_i_24_0 (vga_controller_n_18),
        .\vga_b[0]_INST_0_i_26_0 (vga_controller_n_42),
        .\vga_b[0]_INST_0_i_283_0 (vga_display_n_15),
        .\vga_b[0]_INST_0_i_287_0 (vga_controller_n_8),
        .\vga_b[0]_INST_0_i_28_0 (vga_controller_n_36),
        .\vga_b[0]_INST_0_i_28_1 (vga_controller_n_33),
        .\vga_b[0]_INST_0_i_2_0 (vga_controller_n_43),
        .\vga_b[0]_INST_0_i_2_1 (vga_controller_n_44),
        .\vga_b[0]_INST_0_i_31 (vga_controller_n_52),
        .\vga_b[0]_INST_0_i_316_0 (vga_controller_n_17),
        .\vga_b[0]_INST_0_i_338_0 (vga_controller_n_21),
        .\vga_b[0]_INST_0_i_339 (vga_display_n_14),
        .\vga_b[0]_INST_0_i_34_0 (vga_controller_n_68),
        .\vga_b[0]_INST_0_i_35_0 ({font_data[6],font_data[3]}),
        .\vga_b[0]_INST_0_i_35_1 (vga_controller_n_71),
        .\vga_b[0]_INST_0_i_35_2 (vga_controller_n_70),
        .\vga_b[0]_INST_0_i_35_3 (vga_controller_n_69),
        .\vga_b[0]_INST_0_i_36_0 (vga_controller_n_39),
        .\vga_b[0]_INST_0_i_36_1 (vga_controller_n_35),
        .\vga_b[0]_INST_0_i_37 (vga_controller_n_41),
        .\vga_b[0]_INST_0_i_37_0 (vga_controller_n_40),
        .\vga_b[0]_INST_0_i_37_1 (vga_controller_n_37),
        .\vga_b[0]_INST_0_i_42 (vga_controller_n_47),
        .\vga_b[0]_INST_0_i_45_0 (vga_controller_n_59),
        .\vga_b[0]_INST_0_i_45_1 (vga_controller_n_58),
        .\vga_b[0]_INST_0_i_45_2 (vga_controller_n_57),
        .\vga_b[0]_INST_0_i_4_0 (vga_controller_n_45),
        .\vga_b[0]_INST_0_i_4_1 (vga_controller_n_77),
        .\vga_b[0]_INST_0_i_5 (vga_controller_n_56),
        .\vga_b[0]_INST_0_i_54_0 (vga_controller_n_20),
        .\vga_b[0]_INST_0_i_54_1 (vga_controller_n_22),
        .\vga_b[0]_INST_0_i_70_0 (vga_controller_n_27),
        .\vga_b[0]_INST_0_i_75 (vga_controller_n_64),
        .\vga_b[0]_INST_0_i_76_0 (vga_controller_n_65),
        .\vga_b[0]_INST_0_i_76_1 (vga_controller_n_66),
        .\vga_b[0]_INST_0_i_76_2 (vga_controller_n_67),
        .\vga_b[0]_INST_0_i_8_0 (vga_controller_n_32),
        .\vga_b[0]_INST_0_i_9_0 (vga_controller_n_28),
        .\vga_b[0]_INST_0_i_9_1 (vga_controller_n_25),
        .\vga_r[3] (vga_controller_n_51),
        .\vga_r[3]_0 (vga_controller_n_73),
        .\vga_r[3]_1 (vga_controller_n_46));
endmodule

(* CHECK_LICENSE_TYPE = "VGA_0,VGA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "VGA,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_25m,
    clk_100m,
    rst,
    pc,
    inst,
    alu_res,
    mem_wen,
    dmem_o_data,
    dmem_i_data,
    dmem_addr,
    hs,
    vs,
    vga_r,
    vga_g,
    vga_b);
  input clk_25m;
  input clk_100m;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]pc;
  input [31:0]inst;
  input [31:0]alu_res;
  input mem_wen;
  input [31:0]dmem_o_data;
  input [31:0]dmem_i_data;
  input [31:0]dmem_addr;
  output hs;
  output vs;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire [31:0]alu_res;
  wire clk_100m;
  wire clk_25m;
  wire [31:0]dmem_addr;
  wire [31:0]dmem_i_data;
  wire [31:0]dmem_o_data;
  wire hs;
  wire [31:0]inst;
  wire mem_wen;
  wire [31:0]pc;
  wire rst;
  wire [3:3]\^vga_r ;
  wire vs;

  assign vga_b[3] = \^vga_r [3];
  assign vga_b[2] = \^vga_r [3];
  assign vga_b[1] = \^vga_r [3];
  assign vga_b[0] = \^vga_r [3];
  assign vga_g[3] = \^vga_r [3];
  assign vga_g[2] = \^vga_r [3];
  assign vga_g[1] = \^vga_r [3];
  assign vga_g[0] = \^vga_r [3];
  assign vga_r[3] = \^vga_r [3];
  assign vga_r[2] = \^vga_r [3];
  assign vga_r[1] = \^vga_r [3];
  assign vga_r[0] = \^vga_r [3];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA inst__0
       (.alu_res(alu_res),
        .clk_100m(clk_100m),
        .clk_25m(clk_25m),
        .dmem_addr(dmem_addr),
        .dmem_i_data(dmem_i_data),
        .dmem_o_data(dmem_o_data),
        .hs(hs),
        .inst(inst),
        .mem_wen(mem_wen),
        .pc(pc),
        .rst(rst),
        .vga_r(\^vga_r ),
        .vs(vs));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaController
   (hs,
    vs,
    Q,
    \v_count_reg[0]_0 ,
    \h_count_reg[8]_0 ,
    C,
    \v_count_reg[5]_0 ,
    \v_count_reg[0]_1 ,
    \v_count_reg[0]_2 ,
    \v_count_reg[0]_3 ,
    \v_count_reg[0]_4 ,
    \v_count_reg[1]_0 ,
    \v_count_reg[1]_1 ,
    \v_count_reg[0]_5 ,
    \v_count_reg[0]_6 ,
    \v_count_reg[0]_7 ,
    \v_count_reg[0]_8 ,
    \v_count_reg[0]_9 ,
    \v_count_reg[0]_10 ,
    \v_count_reg[0]_11 ,
    \v_count_reg[0]_12 ,
    \v_count_reg[0]_13 ,
    C__0,
    \v_count_reg[0]_14 ,
    \v_count_reg[0]_15 ,
    \v_count_reg[0]_16 ,
    \v_count_reg[0]_17 ,
    \v_count_reg[0]_18 ,
    \v_count_reg[0]_19 ,
    \v_count_reg[0]_20 ,
    \v_count_reg[0]_21 ,
    \v_count_reg[0]_22 ,
    \v_count_reg[0]_23 ,
    g1_b0_0,
    \vga_b[0]_INST_0_i_53_0 ,
    \vga_b[0]_INST_0_i_62_0 ,
    \vga_b[0]_INST_0_i_62_1 ,
    \vga_b[0]_INST_0_i_43_0 ,
    g1_b1_0,
    \vga_b[0]_INST_0_i_201_0 ,
    \vga_b[0]_INST_0_i_199_0 ,
    \vga_b[0]_INST_0_i_197_0 ,
    \vga_b[0]_INST_0_i_31_0 ,
    g17_b2_0,
    \vga_b[0]_INST_0_i_125_0 ,
    \vga_b[0]_INST_0_i_123_0 ,
    \vga_b[0]_INST_0_i_121_0 ,
    \vga_b[0]_INST_0_i_110_0 ,
    \vga_b[0]_INST_0_i_323_0 ,
    \vga_b[0]_INST_0_i_321_0 ,
    \vga_b[0]_INST_0_i_319_0 ,
    g47_b3_0,
    \vga_b[0]_INST_0_i_233_0 ,
    g19_b5_0,
    \vga_b[0]_INST_0_i_163 ,
    g1_b6_0,
    g17_b6_0,
    g21_b6_0,
    g25_b6_0,
    \vga_b[0]_INST_0_i_285_0 ,
    \vga_b[0]_INST_0_i_297_0 ,
    \vga_b[0]_INST_0_i_295_0 ,
    \vga_b[0]_INST_0_i_293_0 ,
    \vga_b[0]_INST_0_i_86 ,
    \vga_b[0]_INST_0_i_39_0 ,
    \vga_b[0]_INST_0_i_179_0 ,
    \vga_b[0]_INST_0_i_177_0 ,
    \vga_b[0]_INST_0_i_175_0 ,
    \vga_b[0]_INST_0_i_86_0 ,
    vga_r,
    \h_count_reg[2]_0 ,
    \h_count_reg[3]_0 ,
    \h_count_reg[5]_0 ,
    \h_count_reg[4]_0 ,
    \h_count_reg[5]_1 ,
    \h_count_reg[8]_1 ,
    \h_count_reg[8]_2 ,
    ADDRC,
    \h_count_reg[5]_2 ,
    \h_count_reg[5]_3 ,
    \h_count_reg[5]_4 ,
    text_index,
    rst,
    clk_25m,
    \vga_r[3] ,
    sel,
    \vga_b[0]_INST_0_i_18_0 ,
    \vga_b[0]_INST_0_i_12_0 ,
    \vga_b[0]_INST_0_i_46_0 ,
    \vga_b[0]_INST_0_i_115_0 ,
    \vga_b[0]_INST_0_i_34 ,
    \vga_b[0]_INST_0_i_15 ,
    \vga_r[3]_0 ,
    \vga_r[3]_1 ,
    S);
  output hs;
  output vs;
  output [5:0]Q;
  output \v_count_reg[0]_0 ;
  output \h_count_reg[8]_0 ;
  output [4:0]C;
  output \v_count_reg[5]_0 ;
  output \v_count_reg[0]_1 ;
  output \v_count_reg[0]_2 ;
  output \v_count_reg[0]_3 ;
  output \v_count_reg[0]_4 ;
  output \v_count_reg[1]_0 ;
  output \v_count_reg[1]_1 ;
  output \v_count_reg[0]_5 ;
  output \v_count_reg[0]_6 ;
  output \v_count_reg[0]_7 ;
  output \v_count_reg[0]_8 ;
  output \v_count_reg[0]_9 ;
  output \v_count_reg[0]_10 ;
  output \v_count_reg[0]_11 ;
  output \v_count_reg[0]_12 ;
  output \v_count_reg[0]_13 ;
  output [0:0]C__0;
  output \v_count_reg[0]_14 ;
  output \v_count_reg[0]_15 ;
  output \v_count_reg[0]_16 ;
  output \v_count_reg[0]_17 ;
  output \v_count_reg[0]_18 ;
  output \v_count_reg[0]_19 ;
  output \v_count_reg[0]_20 ;
  output \v_count_reg[0]_21 ;
  output \v_count_reg[0]_22 ;
  output \v_count_reg[0]_23 ;
  output g1_b0_0;
  output \vga_b[0]_INST_0_i_53_0 ;
  output \vga_b[0]_INST_0_i_62_0 ;
  output \vga_b[0]_INST_0_i_62_1 ;
  output \vga_b[0]_INST_0_i_43_0 ;
  output g1_b1_0;
  output \vga_b[0]_INST_0_i_201_0 ;
  output \vga_b[0]_INST_0_i_199_0 ;
  output \vga_b[0]_INST_0_i_197_0 ;
  output \vga_b[0]_INST_0_i_31_0 ;
  output g17_b2_0;
  output \vga_b[0]_INST_0_i_125_0 ;
  output \vga_b[0]_INST_0_i_123_0 ;
  output \vga_b[0]_INST_0_i_121_0 ;
  output \vga_b[0]_INST_0_i_110_0 ;
  output \vga_b[0]_INST_0_i_323_0 ;
  output \vga_b[0]_INST_0_i_321_0 ;
  output \vga_b[0]_INST_0_i_319_0 ;
  output g47_b3_0;
  output \vga_b[0]_INST_0_i_233_0 ;
  output g19_b5_0;
  output \vga_b[0]_INST_0_i_163 ;
  output g1_b6_0;
  output g17_b6_0;
  output g21_b6_0;
  output g25_b6_0;
  output \vga_b[0]_INST_0_i_285_0 ;
  output \vga_b[0]_INST_0_i_297_0 ;
  output \vga_b[0]_INST_0_i_295_0 ;
  output \vga_b[0]_INST_0_i_293_0 ;
  output \vga_b[0]_INST_0_i_86 ;
  output \vga_b[0]_INST_0_i_39_0 ;
  output \vga_b[0]_INST_0_i_179_0 ;
  output \vga_b[0]_INST_0_i_177_0 ;
  output \vga_b[0]_INST_0_i_175_0 ;
  output \vga_b[0]_INST_0_i_86_0 ;
  output [0:0]vga_r;
  output \h_count_reg[2]_0 ;
  output \h_count_reg[3]_0 ;
  output \h_count_reg[5]_0 ;
  output \h_count_reg[4]_0 ;
  output \h_count_reg[5]_1 ;
  output \h_count_reg[8]_1 ;
  output \h_count_reg[8]_2 ;
  output [5:0]ADDRC;
  output [2:0]\h_count_reg[5]_2 ;
  output [2:0]\h_count_reg[5]_3 ;
  output [2:0]\h_count_reg[5]_4 ;
  output [5:0]text_index;
  input rst;
  input clk_25m;
  input [1:0]\vga_r[3] ;
  input [8:0]sel;
  input \vga_b[0]_INST_0_i_18_0 ;
  input \vga_b[0]_INST_0_i_12_0 ;
  input \vga_b[0]_INST_0_i_46_0 ;
  input \vga_b[0]_INST_0_i_115_0 ;
  input \vga_b[0]_INST_0_i_34 ;
  input \vga_b[0]_INST_0_i_15 ;
  input \vga_r[3]_0 ;
  input \vga_r[3]_1 ;
  input [2:0]S;

  wire [5:0]ADDRC;
  wire [4:0]C;
  wire [0:0]C__0;
  wire [5:0]Q;
  wire [2:0]S;
  wire clk_25m;
  wire display_data_reg_0_63_0_2_i_18_n_0;
  wire display_data_reg_0_63_0_2_i_24_n_0;
  wire display_data_reg_0_63_0_2_i_5_n_0;
  wire display_data_reg_0_63_0_2_i_5_n_1;
  wire display_data_reg_0_63_0_2_i_5_n_2;
  wire display_data_reg_0_63_0_2_i_5_n_3;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g10_b1_n_0;
  wire g10_b2_n_0;
  wire g10_b3_n_0;
  wire g10_b4_n_0;
  wire g10_b5_n_0;
  wire g11_b1_n_0;
  wire g11_b2_n_0;
  wire g11_b3_n_0;
  wire g11_b4_n_0;
  wire g11_b5_n_0;
  wire g11_b6_n_0;
  wire g11_b7_n_0;
  wire g12_b1_n_0;
  wire g12_b2_n_0;
  wire g12_b3_n_0;
  wire g12_b4_n_0;
  wire g12_b5_n_0;
  wire g12_b6_n_0;
  wire g12_b7_n_0;
  wire g13_b1_n_0;
  wire g13_b2_n_0;
  wire g13_b3_n_0;
  wire g13_b4_n_0;
  wire g13_b5_n_0;
  wire g13_b6_n_0;
  wire g13_b7_n_0;
  wire g14_b1_n_0;
  wire g14_b2_n_0;
  wire g14_b3_n_0;
  wire g14_b4_n_0;
  wire g14_b5_n_0;
  wire g14_b6_n_0;
  wire g14_b7_n_0;
  wire g15_b1_n_0;
  wire g15_b2_n_0;
  wire g15_b3_n_0;
  wire g15_b4_n_0;
  wire g15_b5_n_0;
  wire g15_b6_n_0;
  wire g15_b7_n_0;
  wire g16_b1_n_0;
  wire g16_b2_n_0;
  wire g16_b3_n_0;
  wire g16_b4_n_0;
  wire g16_b6_n_0;
  wire g16_b7_n_0;
  wire g17_b1_n_0;
  wire g17_b2_0;
  wire g17_b2_n_0;
  wire g17_b3_n_0;
  wire g17_b4_n_0;
  wire g17_b6_0;
  wire g17_b6_n_0;
  wire g17_b7_n_0;
  wire g18_b1_n_0;
  wire g18_b3_n_0;
  wire g18_b4_n_0;
  wire g18_b5_n_0;
  wire g18_b7_n_0;
  wire g19_b1_n_0;
  wire g19_b3_n_0;
  wire g19_b4_n_0;
  wire g19_b5_0;
  wire g19_b5_n_0;
  wire g19_b7_n_0;
  wire g1_b0_0;
  wire g1_b0_n_0;
  wire g1_b1_0;
  wire g1_b1_n_0;
  wire g1_b2_n_0;
  wire g1_b3_n_0;
  wire g1_b4_n_0;
  wire g1_b5_n_0;
  wire g1_b6_0;
  wire g1_b6_n_0;
  wire g1_b7_n_0;
  wire g20_b1_n_0;
  wire g20_b2_n_0;
  wire g20_b3_n_0;
  wire g20_b4_n_0;
  wire g20_b5_n_0;
  wire g20_b6_n_0;
  wire g20_b7_n_0;
  wire g21_b1_n_0;
  wire g21_b2_n_0;
  wire g21_b3_n_0;
  wire g21_b4_n_0;
  wire g21_b5_n_0;
  wire g21_b6_0;
  wire g21_b6_n_0;
  wire g21_b7_n_0;
  wire g22_b1_n_0;
  wire g22_b2_n_0;
  wire g22_b3_n_0;
  wire g22_b4_n_0;
  wire g22_b5_n_0;
  wire g22_b7_n_0;
  wire g23_b1_n_0;
  wire g23_b2_n_0;
  wire g23_b3_n_0;
  wire g23_b4_n_0;
  wire g23_b5_n_0;
  wire g23_b7_n_0;
  wire g24_b1_n_0;
  wire g24_b2_n_0;
  wire g24_b3_n_0;
  wire g24_b4_n_0;
  wire g24_b5_n_0;
  wire g24_b6_n_0;
  wire g24_b7_n_0;
  wire g25_b1_n_0;
  wire g25_b2_n_0;
  wire g25_b3_n_0;
  wire g25_b4_n_0;
  wire g25_b5_n_0;
  wire g25_b6_0;
  wire g25_b6_n_0;
  wire g25_b7_n_0;
  wire g26_b1_n_0;
  wire g26_b2_n_0;
  wire g26_b3_n_0;
  wire g26_b4_n_0;
  wire g26_b5_n_0;
  wire g26_b7_n_0;
  wire g27_b1_n_0;
  wire g27_b2_n_0;
  wire g27_b3_n_0;
  wire g27_b4_n_0;
  wire g27_b5_n_0;
  wire g27_b7_n_0;
  wire g28_b1_n_0;
  wire g28_b2_n_0;
  wire g28_b3_n_0;
  wire g28_b4_n_0;
  wire g28_b5_n_0;
  wire g28_b6_n_0;
  wire g28_b7_n_0;
  wire g29_b1_n_0;
  wire g29_b2_n_0;
  wire g29_b3_n_0;
  wire g29_b4_n_0;
  wire g29_b5_n_0;
  wire g29_b6_n_0;
  wire g29_b7_n_0;
  wire g2_b2_n_0;
  wire g2_b3_n_0;
  wire g2_b4_n_0;
  wire g2_b5_n_0;
  wire g2_b7_n_0;
  wire g30_b1_n_0;
  wire g30_b2_n_0;
  wire g30_b3_n_0;
  wire g30_b4_n_0;
  wire g30_b5_n_0;
  wire g30_b6_n_0;
  wire g30_b7_n_0;
  wire g31_b1_n_0;
  wire g31_b2_n_0;
  wire g31_b3_n_0;
  wire g31_b4_n_0;
  wire g31_b5_n_0;
  wire g31_b6_n_0;
  wire g31_b7_n_0;
  wire g32_b1_n_0;
  wire g32_b2_n_0;
  wire g32_b3_n_0;
  wire g32_b4_n_0;
  wire g32_b5_n_0;
  wire g32_b6_i_1_n_0;
  wire g32_b6_n_0;
  wire g32_b7_n_0;
  wire g33_b1_n_0;
  wire g33_b2_n_0;
  wire g33_b3_n_0;
  wire g33_b4_n_0;
  wire g33_b5_n_0;
  wire g33_b6_n_0;
  wire g33_b7_n_0;
  wire g34_b1_n_0;
  wire g34_b2_n_0;
  wire g34_b3_n_0;
  wire g34_b4_n_0;
  wire g34_b5_n_0;
  wire g34_b6_n_0;
  wire g34_b7_n_0;
  wire g35_b1_n_0;
  wire g35_b2_n_0;
  wire g35_b3_n_0;
  wire g35_b4_n_0;
  wire g35_b5_n_0;
  wire g35_b6_n_0;
  wire g35_b7_n_0;
  wire g36_b1_n_0;
  wire g36_b2_n_0;
  wire g36_b3_n_0;
  wire g36_b4_n_0;
  wire g36_b5_n_0;
  wire g36_b6_n_0;
  wire g36_b7_n_0;
  wire g37_b1_n_0;
  wire g37_b2_n_0;
  wire g37_b3_n_0;
  wire g37_b4_n_0;
  wire g37_b5_n_0;
  wire g37_b6_n_0;
  wire g37_b7_n_0;
  wire g38_b1_n_0;
  wire g38_b2_n_0;
  wire g38_b3_n_0;
  wire g38_b4_n_0;
  wire g38_b5_n_0;
  wire g38_b6_n_0;
  wire g38_b7_n_0;
  wire g39_b1_n_0;
  wire g39_b2_n_0;
  wire g39_b3_n_0;
  wire g39_b4_n_0;
  wire g39_b5_n_0;
  wire g39_b6_n_0;
  wire g39_b7_n_0;
  wire g3_b2_n_0;
  wire g3_b3_n_0;
  wire g3_b4_n_0;
  wire g3_b5_n_0;
  wire g3_b7_n_0;
  wire g40_b1_n_0;
  wire g40_b2_n_0;
  wire g40_b3_n_0;
  wire g40_b4_n_0;
  wire g40_b5_n_0;
  wire g40_b6_n_0;
  wire g40_b7_n_0;
  wire g41_b1_n_0;
  wire g41_b2_n_0;
  wire g41_b3_n_0;
  wire g41_b4_n_0;
  wire g41_b5_n_0;
  wire g41_b6_n_0;
  wire g41_b7_n_0;
  wire g42_b1_n_0;
  wire g42_b2_n_0;
  wire g42_b3_n_0;
  wire g42_b4_n_0;
  wire g42_b5_n_0;
  wire g42_b6_n_0;
  wire g42_b7_n_0;
  wire g43_b1_n_0;
  wire g43_b2_n_0;
  wire g43_b3_n_0;
  wire g43_b4_n_0;
  wire g43_b5_n_0;
  wire g43_b6_n_0;
  wire g43_b7_n_0;
  wire g44_b4_n_0;
  wire g45_b4_n_0;
  wire g45_b5_n_0;
  wire g46_b3_n_0;
  wire g46_b4_n_0;
  wire g46_b5_n_0;
  wire g47_b3_0;
  wire g47_b3_n_0;
  wire g47_b4_n_0;
  wire g47_b5_n_0;
  wire g48_b0_n_0;
  wire g48_b3_n_0;
  wire g49_b0_n_0;
  wire g49_b1_n_0;
  wire g49_b3_n_0;
  wire g49_b4_n_0;
  wire g49_b5_n_0;
  wire g4_b1_n_0;
  wire g4_b2_n_0;
  wire g4_b3_n_0;
  wire g4_b4_n_0;
  wire g4_b5_n_0;
  wire g4_b6_n_0;
  wire g4_b7_n_0;
  wire g50_b0_n_0;
  wire g50_b1_n_0;
  wire g50_b3_n_0;
  wire g50_b4_n_0;
  wire g51_b1_n_0;
  wire g51_b3_n_0;
  wire g51_b4_n_0;
  wire g51_b5_n_0;
  wire g52_b1_n_0;
  wire g52_b3_n_0;
  wire g52_b4_n_0;
  wire g52_b7_n_0;
  wire g53_b0_n_0;
  wire g53_b1_n_0;
  wire g53_b3_n_0;
  wire g53_b4_n_0;
  wire g53_b5_n_0;
  wire g53_b7_n_0;
  wire g54_b0_n_0;
  wire g54_b3_n_0;
  wire g54_b7_n_0;
  wire g55_b0_n_0;
  wire g55_b7_n_0;
  wire g56_b1_n_0;
  wire g56_b2_n_0;
  wire g56_b3_n_0;
  wire g56_b4_n_0;
  wire g56_b5_n_0;
  wire g56_b6_n_0;
  wire g56_b7_n_0;
  wire g57_b1_n_0;
  wire g57_b2_n_0;
  wire g57_b3_n_0;
  wire g57_b4_n_0;
  wire g57_b5_n_0;
  wire g57_b6_n_0;
  wire g57_b7_n_0;
  wire g58_b1_n_0;
  wire g58_b2_n_0;
  wire g58_b3_n_0;
  wire g58_b4_n_0;
  wire g58_b5_n_0;
  wire g58_b6_n_0;
  wire g58_b7_n_0;
  wire g59_b0_n_0;
  wire g59_b1_n_0;
  wire g59_b2_n_0;
  wire g59_b3_n_0;
  wire g59_b4_n_0;
  wire g59_b5_n_0;
  wire g59_b6_n_0;
  wire g59_b7_n_0;
  wire g5_b1_n_0;
  wire g5_b2_n_0;
  wire g5_b3_n_0;
  wire g5_b4_n_0;
  wire g5_b5_n_0;
  wire g5_b6_n_0;
  wire g5_b7_n_0;
  wire g60_b0_n_0;
  wire g60_b1_n_0;
  wire g60_b2_n_0;
  wire g60_b3_n_0;
  wire g60_b4_n_0;
  wire g60_b5_n_0;
  wire g60_b6_n_0;
  wire g60_b7_n_0;
  wire g61_b0_n_0;
  wire g61_b1_n_0;
  wire g61_b2_n_0;
  wire g61_b3_n_0;
  wire g61_b4_n_0;
  wire g61_b5_n_0;
  wire g61_b6_n_0;
  wire g61_b7_n_0;
  wire g62_b0_n_0;
  wire g62_b2_n_0;
  wire g62_b3_n_0;
  wire g62_b4_n_0;
  wire g62_b5_n_0;
  wire g62_b6_n_0;
  wire g63_b2_n_0;
  wire g63_b3_n_0;
  wire g63_b4_n_0;
  wire g63_b5_n_0;
  wire g63_b6_n_0;
  wire g63_b7_n_0;
  wire g6_b1_n_0;
  wire g6_b2_n_0;
  wire g6_b3_n_0;
  wire g6_b4_n_0;
  wire g6_b5_n_0;
  wire g6_b6_n_0;
  wire g6_b7_n_0;
  wire g7_b1_n_0;
  wire g7_b2_n_0;
  wire g7_b3_n_0;
  wire g7_b4_n_0;
  wire g7_b6_n_0;
  wire g7_b7_n_0;
  wire g8_b1_n_0;
  wire g8_b2_n_0;
  wire g8_b3_n_0;
  wire g8_b4_n_0;
  wire g8_b6_n_0;
  wire g8_b7_n_0;
  wire g9_b1_n_0;
  wire g9_b2_n_0;
  wire g9_b3_n_0;
  wire g9_b4_n_0;
  wire g9_b5_n_0;
  wire g9_b6_n_0;
  wire g9_b7_n_0;
  wire [9:0]h_count;
  wire \h_count[9]_i_2_n_0 ;
  wire \h_count_reg[2]_0 ;
  wire \h_count_reg[3]_0 ;
  wire \h_count_reg[4]_0 ;
  wire \h_count_reg[5]_0 ;
  wire \h_count_reg[5]_1 ;
  wire [2:0]\h_count_reg[5]_2 ;
  wire [2:0]\h_count_reg[5]_3 ;
  wire [2:0]\h_count_reg[5]_4 ;
  wire \h_count_reg[8]_0 ;
  wire \h_count_reg[8]_1 ;
  wire \h_count_reg[8]_2 ;
  wire \h_count_reg_n_0_[0] ;
  wire \h_count_reg_n_0_[2] ;
  wire \h_count_reg_n_0_[3] ;
  wire \h_count_reg_n_0_[4] ;
  wire h_sync;
  wire hs;
  wire rst;
  wire [8:0]sel;
  wire text_ascii_carry__0_i_44_n_0;
  wire text_ascii_carry_i_13_n_0;
  wire text_ascii_carry_i_13_n_1;
  wire text_ascii_carry_i_13_n_2;
  wire text_ascii_carry_i_13_n_3;
  wire text_ascii_carry_i_37_n_0;
  wire text_ascii_carry_i_66_n_0;
  wire text_ascii_carry_i_75_n_0;
  wire [5:0]text_index;
  wire [11:7]text_index0;
  wire v_count;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[3]_i_2_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[6]_i_2_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[8]_i_2_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count_reg[0]_0 ;
  wire \v_count_reg[0]_1 ;
  wire \v_count_reg[0]_10 ;
  wire \v_count_reg[0]_11 ;
  wire \v_count_reg[0]_12 ;
  wire \v_count_reg[0]_13 ;
  wire \v_count_reg[0]_14 ;
  wire \v_count_reg[0]_15 ;
  wire \v_count_reg[0]_16 ;
  wire \v_count_reg[0]_17 ;
  wire \v_count_reg[0]_18 ;
  wire \v_count_reg[0]_19 ;
  wire \v_count_reg[0]_2 ;
  wire \v_count_reg[0]_20 ;
  wire \v_count_reg[0]_21 ;
  wire \v_count_reg[0]_22 ;
  wire \v_count_reg[0]_23 ;
  wire \v_count_reg[0]_3 ;
  wire \v_count_reg[0]_4 ;
  wire \v_count_reg[0]_5 ;
  wire \v_count_reg[0]_6 ;
  wire \v_count_reg[0]_7 ;
  wire \v_count_reg[0]_8 ;
  wire \v_count_reg[0]_9 ;
  wire \v_count_reg[1]_0 ;
  wire \v_count_reg[1]_1 ;
  wire \v_count_reg[5]_0 ;
  wire \v_count_reg_n_0_[0] ;
  wire \v_count_reg_n_0_[1] ;
  wire \v_count_reg_n_0_[2] ;
  wire \v_count_reg_n_0_[3] ;
  wire \v_count_reg_n_0_[4] ;
  wire \v_count_reg_n_0_[5] ;
  wire \v_count_reg_n_0_[6] ;
  wire \v_count_reg_n_0_[7] ;
  wire \v_count_reg_n_0_[8] ;
  wire \v_count_reg_n_0_[9] ;
  wire v_sync;
  wire \vga_b[0]_INST_0_i_100_n_0 ;
  wire \vga_b[0]_INST_0_i_101_n_0 ;
  wire \vga_b[0]_INST_0_i_102_n_0 ;
  wire \vga_b[0]_INST_0_i_103_n_0 ;
  wire \vga_b[0]_INST_0_i_105_n_0 ;
  wire \vga_b[0]_INST_0_i_106_n_0 ;
  wire \vga_b[0]_INST_0_i_107_n_0 ;
  wire \vga_b[0]_INST_0_i_108_n_0 ;
  wire \vga_b[0]_INST_0_i_109_n_0 ;
  wire \vga_b[0]_INST_0_i_110_0 ;
  wire \vga_b[0]_INST_0_i_110_n_0 ;
  wire \vga_b[0]_INST_0_i_113_n_0 ;
  wire \vga_b[0]_INST_0_i_114_n_0 ;
  wire \vga_b[0]_INST_0_i_115_0 ;
  wire \vga_b[0]_INST_0_i_115_n_0 ;
  wire \vga_b[0]_INST_0_i_116_n_0 ;
  wire \vga_b[0]_INST_0_i_117_n_0 ;
  wire \vga_b[0]_INST_0_i_120_n_0 ;
  wire \vga_b[0]_INST_0_i_121_0 ;
  wire \vga_b[0]_INST_0_i_121_n_0 ;
  wire \vga_b[0]_INST_0_i_122_n_0 ;
  wire \vga_b[0]_INST_0_i_123_0 ;
  wire \vga_b[0]_INST_0_i_123_n_0 ;
  wire \vga_b[0]_INST_0_i_124_n_0 ;
  wire \vga_b[0]_INST_0_i_125_0 ;
  wire \vga_b[0]_INST_0_i_125_n_0 ;
  wire \vga_b[0]_INST_0_i_126_n_0 ;
  wire \vga_b[0]_INST_0_i_127_n_0 ;
  wire \vga_b[0]_INST_0_i_128_n_0 ;
  wire \vga_b[0]_INST_0_i_129_n_0 ;
  wire \vga_b[0]_INST_0_i_12_0 ;
  wire \vga_b[0]_INST_0_i_130_n_0 ;
  wire \vga_b[0]_INST_0_i_131_n_0 ;
  wire \vga_b[0]_INST_0_i_132_n_0 ;
  wire \vga_b[0]_INST_0_i_133_n_0 ;
  wire \vga_b[0]_INST_0_i_134_n_0 ;
  wire \vga_b[0]_INST_0_i_135_n_0 ;
  wire \vga_b[0]_INST_0_i_136_n_0 ;
  wire \vga_b[0]_INST_0_i_137_n_0 ;
  wire \vga_b[0]_INST_0_i_138_n_0 ;
  wire \vga_b[0]_INST_0_i_139_n_0 ;
  wire \vga_b[0]_INST_0_i_140_n_0 ;
  wire \vga_b[0]_INST_0_i_141_n_0 ;
  wire \vga_b[0]_INST_0_i_144_n_0 ;
  wire \vga_b[0]_INST_0_i_145_n_0 ;
  wire \vga_b[0]_INST_0_i_146_n_0 ;
  wire \vga_b[0]_INST_0_i_147_n_0 ;
  wire \vga_b[0]_INST_0_i_148_n_0 ;
  wire \vga_b[0]_INST_0_i_149_n_0 ;
  wire \vga_b[0]_INST_0_i_15 ;
  wire \vga_b[0]_INST_0_i_150_n_0 ;
  wire \vga_b[0]_INST_0_i_151_n_0 ;
  wire \vga_b[0]_INST_0_i_152_n_0 ;
  wire \vga_b[0]_INST_0_i_153_n_0 ;
  wire \vga_b[0]_INST_0_i_154_n_0 ;
  wire \vga_b[0]_INST_0_i_155_n_0 ;
  wire \vga_b[0]_INST_0_i_156_n_0 ;
  wire \vga_b[0]_INST_0_i_157_n_0 ;
  wire \vga_b[0]_INST_0_i_158_n_0 ;
  wire \vga_b[0]_INST_0_i_159_n_0 ;
  wire \vga_b[0]_INST_0_i_160_n_0 ;
  wire \vga_b[0]_INST_0_i_161_n_0 ;
  wire \vga_b[0]_INST_0_i_162_n_0 ;
  wire \vga_b[0]_INST_0_i_163 ;
  wire \vga_b[0]_INST_0_i_172_n_0 ;
  wire \vga_b[0]_INST_0_i_173_n_0 ;
  wire \vga_b[0]_INST_0_i_174_n_0 ;
  wire \vga_b[0]_INST_0_i_175_0 ;
  wire \vga_b[0]_INST_0_i_175_n_0 ;
  wire \vga_b[0]_INST_0_i_176_n_0 ;
  wire \vga_b[0]_INST_0_i_177_0 ;
  wire \vga_b[0]_INST_0_i_177_n_0 ;
  wire \vga_b[0]_INST_0_i_178_n_0 ;
  wire \vga_b[0]_INST_0_i_179_0 ;
  wire \vga_b[0]_INST_0_i_179_n_0 ;
  wire \vga_b[0]_INST_0_i_180_n_0 ;
  wire \vga_b[0]_INST_0_i_181_n_0 ;
  wire \vga_b[0]_INST_0_i_182_n_0 ;
  wire \vga_b[0]_INST_0_i_183_n_0 ;
  wire \vga_b[0]_INST_0_i_184_n_0 ;
  wire \vga_b[0]_INST_0_i_185_n_0 ;
  wire \vga_b[0]_INST_0_i_186_n_0 ;
  wire \vga_b[0]_INST_0_i_187_n_0 ;
  wire \vga_b[0]_INST_0_i_188_n_0 ;
  wire \vga_b[0]_INST_0_i_189_n_0 ;
  wire \vga_b[0]_INST_0_i_18_0 ;
  wire \vga_b[0]_INST_0_i_190_n_0 ;
  wire \vga_b[0]_INST_0_i_191_n_0 ;
  wire \vga_b[0]_INST_0_i_192_n_0 ;
  wire \vga_b[0]_INST_0_i_193_n_0 ;
  wire \vga_b[0]_INST_0_i_194_n_0 ;
  wire \vga_b[0]_INST_0_i_195_n_0 ;
  wire \vga_b[0]_INST_0_i_196_n_0 ;
  wire \vga_b[0]_INST_0_i_197_0 ;
  wire \vga_b[0]_INST_0_i_197_n_0 ;
  wire \vga_b[0]_INST_0_i_198_n_0 ;
  wire \vga_b[0]_INST_0_i_199_0 ;
  wire \vga_b[0]_INST_0_i_199_n_0 ;
  wire \vga_b[0]_INST_0_i_200_n_0 ;
  wire \vga_b[0]_INST_0_i_201_0 ;
  wire \vga_b[0]_INST_0_i_201_n_0 ;
  wire \vga_b[0]_INST_0_i_202_n_0 ;
  wire \vga_b[0]_INST_0_i_203_n_0 ;
  wire \vga_b[0]_INST_0_i_204_n_0 ;
  wire \vga_b[0]_INST_0_i_205_n_0 ;
  wire \vga_b[0]_INST_0_i_206_n_0 ;
  wire \vga_b[0]_INST_0_i_207_n_0 ;
  wire \vga_b[0]_INST_0_i_210_n_0 ;
  wire \vga_b[0]_INST_0_i_211_n_0 ;
  wire \vga_b[0]_INST_0_i_212_n_0 ;
  wire \vga_b[0]_INST_0_i_213_n_0 ;
  wire \vga_b[0]_INST_0_i_214_n_0 ;
  wire \vga_b[0]_INST_0_i_215_n_0 ;
  wire \vga_b[0]_INST_0_i_216_n_0 ;
  wire \vga_b[0]_INST_0_i_217_n_0 ;
  wire \vga_b[0]_INST_0_i_218_n_0 ;
  wire \vga_b[0]_INST_0_i_219_n_0 ;
  wire \vga_b[0]_INST_0_i_21_n_0 ;
  wire \vga_b[0]_INST_0_i_220_n_0 ;
  wire \vga_b[0]_INST_0_i_221_n_0 ;
  wire \vga_b[0]_INST_0_i_222_n_0 ;
  wire \vga_b[0]_INST_0_i_223_n_0 ;
  wire \vga_b[0]_INST_0_i_224_n_0 ;
  wire \vga_b[0]_INST_0_i_225_n_0 ;
  wire \vga_b[0]_INST_0_i_22_n_0 ;
  wire \vga_b[0]_INST_0_i_230_n_0 ;
  wire \vga_b[0]_INST_0_i_231_n_0 ;
  wire \vga_b[0]_INST_0_i_232_n_0 ;
  wire \vga_b[0]_INST_0_i_233_0 ;
  wire \vga_b[0]_INST_0_i_233_n_0 ;
  wire \vga_b[0]_INST_0_i_234_n_0 ;
  wire \vga_b[0]_INST_0_i_235_n_0 ;
  wire \vga_b[0]_INST_0_i_236_n_0 ;
  wire \vga_b[0]_INST_0_i_237_n_0 ;
  wire \vga_b[0]_INST_0_i_238_n_0 ;
  wire \vga_b[0]_INST_0_i_239_n_0 ;
  wire \vga_b[0]_INST_0_i_240_n_0 ;
  wire \vga_b[0]_INST_0_i_242_n_0 ;
  wire \vga_b[0]_INST_0_i_243_n_0 ;
  wire \vga_b[0]_INST_0_i_244_n_0 ;
  wire \vga_b[0]_INST_0_i_245_n_0 ;
  wire \vga_b[0]_INST_0_i_246_n_0 ;
  wire \vga_b[0]_INST_0_i_247_n_0 ;
  wire \vga_b[0]_INST_0_i_248_n_0 ;
  wire \vga_b[0]_INST_0_i_249_n_0 ;
  wire \vga_b[0]_INST_0_i_250_n_0 ;
  wire \vga_b[0]_INST_0_i_251_n_0 ;
  wire \vga_b[0]_INST_0_i_252_n_0 ;
  wire \vga_b[0]_INST_0_i_253_n_0 ;
  wire \vga_b[0]_INST_0_i_254_n_0 ;
  wire \vga_b[0]_INST_0_i_255_n_0 ;
  wire \vga_b[0]_INST_0_i_256_n_0 ;
  wire \vga_b[0]_INST_0_i_257_n_0 ;
  wire \vga_b[0]_INST_0_i_258_n_0 ;
  wire \vga_b[0]_INST_0_i_259_n_0 ;
  wire \vga_b[0]_INST_0_i_260_n_0 ;
  wire \vga_b[0]_INST_0_i_261_n_0 ;
  wire \vga_b[0]_INST_0_i_262_n_0 ;
  wire \vga_b[0]_INST_0_i_263_n_0 ;
  wire \vga_b[0]_INST_0_i_264_n_0 ;
  wire \vga_b[0]_INST_0_i_265_n_0 ;
  wire \vga_b[0]_INST_0_i_266_n_0 ;
  wire \vga_b[0]_INST_0_i_267_n_0 ;
  wire \vga_b[0]_INST_0_i_268_n_0 ;
  wire \vga_b[0]_INST_0_i_269_n_0 ;
  wire \vga_b[0]_INST_0_i_270_n_0 ;
  wire \vga_b[0]_INST_0_i_271_n_0 ;
  wire \vga_b[0]_INST_0_i_272_n_0 ;
  wire \vga_b[0]_INST_0_i_273_n_0 ;
  wire \vga_b[0]_INST_0_i_274_n_0 ;
  wire \vga_b[0]_INST_0_i_275_n_0 ;
  wire \vga_b[0]_INST_0_i_276_n_0 ;
  wire \vga_b[0]_INST_0_i_277_n_0 ;
  wire \vga_b[0]_INST_0_i_278_n_0 ;
  wire \vga_b[0]_INST_0_i_279_n_0 ;
  wire \vga_b[0]_INST_0_i_280_n_0 ;
  wire \vga_b[0]_INST_0_i_281_n_0 ;
  wire \vga_b[0]_INST_0_i_284_n_0 ;
  wire \vga_b[0]_INST_0_i_285_0 ;
  wire \vga_b[0]_INST_0_i_285_n_0 ;
  wire \vga_b[0]_INST_0_i_292_n_0 ;
  wire \vga_b[0]_INST_0_i_293_0 ;
  wire \vga_b[0]_INST_0_i_293_n_0 ;
  wire \vga_b[0]_INST_0_i_294_n_0 ;
  wire \vga_b[0]_INST_0_i_295_0 ;
  wire \vga_b[0]_INST_0_i_295_n_0 ;
  wire \vga_b[0]_INST_0_i_296_n_0 ;
  wire \vga_b[0]_INST_0_i_297_0 ;
  wire \vga_b[0]_INST_0_i_297_n_0 ;
  wire \vga_b[0]_INST_0_i_298_n_0 ;
  wire \vga_b[0]_INST_0_i_299_n_0 ;
  wire \vga_b[0]_INST_0_i_300_n_0 ;
  wire \vga_b[0]_INST_0_i_301_n_0 ;
  wire \vga_b[0]_INST_0_i_302_n_0 ;
  wire \vga_b[0]_INST_0_i_303_n_0 ;
  wire \vga_b[0]_INST_0_i_304_n_0 ;
  wire \vga_b[0]_INST_0_i_305_n_0 ;
  wire \vga_b[0]_INST_0_i_306_n_0 ;
  wire \vga_b[0]_INST_0_i_307_n_0 ;
  wire \vga_b[0]_INST_0_i_308_n_0 ;
  wire \vga_b[0]_INST_0_i_309_n_0 ;
  wire \vga_b[0]_INST_0_i_30_n_0 ;
  wire \vga_b[0]_INST_0_i_310_n_0 ;
  wire \vga_b[0]_INST_0_i_311_n_0 ;
  wire \vga_b[0]_INST_0_i_312_n_0 ;
  wire \vga_b[0]_INST_0_i_313_n_0 ;
  wire \vga_b[0]_INST_0_i_314_n_0 ;
  wire \vga_b[0]_INST_0_i_315_n_0 ;
  wire \vga_b[0]_INST_0_i_318_n_0 ;
  wire \vga_b[0]_INST_0_i_319_0 ;
  wire \vga_b[0]_INST_0_i_319_n_0 ;
  wire \vga_b[0]_INST_0_i_31_0 ;
  wire \vga_b[0]_INST_0_i_31_n_0 ;
  wire \vga_b[0]_INST_0_i_320_n_0 ;
  wire \vga_b[0]_INST_0_i_321_0 ;
  wire \vga_b[0]_INST_0_i_321_n_0 ;
  wire \vga_b[0]_INST_0_i_322_n_0 ;
  wire \vga_b[0]_INST_0_i_323_0 ;
  wire \vga_b[0]_INST_0_i_323_n_0 ;
  wire \vga_b[0]_INST_0_i_324_n_0 ;
  wire \vga_b[0]_INST_0_i_325_n_0 ;
  wire \vga_b[0]_INST_0_i_326_n_0 ;
  wire \vga_b[0]_INST_0_i_327_n_0 ;
  wire \vga_b[0]_INST_0_i_328_n_0 ;
  wire \vga_b[0]_INST_0_i_329_n_0 ;
  wire \vga_b[0]_INST_0_i_32_n_0 ;
  wire \vga_b[0]_INST_0_i_330_n_0 ;
  wire \vga_b[0]_INST_0_i_331_n_0 ;
  wire \vga_b[0]_INST_0_i_332_n_0 ;
  wire \vga_b[0]_INST_0_i_333_n_0 ;
  wire \vga_b[0]_INST_0_i_334_n_0 ;
  wire \vga_b[0]_INST_0_i_335_n_0 ;
  wire \vga_b[0]_INST_0_i_336_n_0 ;
  wire \vga_b[0]_INST_0_i_337_n_0 ;
  wire \vga_b[0]_INST_0_i_33_n_0 ;
  wire \vga_b[0]_INST_0_i_34 ;
  wire \vga_b[0]_INST_0_i_340_n_0 ;
  wire \vga_b[0]_INST_0_i_341_n_0 ;
  wire \vga_b[0]_INST_0_i_342_n_0 ;
  wire \vga_b[0]_INST_0_i_343_n_0 ;
  wire \vga_b[0]_INST_0_i_344_n_0 ;
  wire \vga_b[0]_INST_0_i_345_n_0 ;
  wire \vga_b[0]_INST_0_i_346_n_0 ;
  wire \vga_b[0]_INST_0_i_347_n_0 ;
  wire \vga_b[0]_INST_0_i_348_n_0 ;
  wire \vga_b[0]_INST_0_i_349_n_0 ;
  wire \vga_b[0]_INST_0_i_38_n_0 ;
  wire \vga_b[0]_INST_0_i_39_0 ;
  wire \vga_b[0]_INST_0_i_39_n_0 ;
  wire \vga_b[0]_INST_0_i_3_n_0 ;
  wire \vga_b[0]_INST_0_i_42_n_0 ;
  wire \vga_b[0]_INST_0_i_43_0 ;
  wire \vga_b[0]_INST_0_i_43_n_0 ;
  wire \vga_b[0]_INST_0_i_46_0 ;
  wire \vga_b[0]_INST_0_i_46_n_0 ;
  wire \vga_b[0]_INST_0_i_47_n_0 ;
  wire \vga_b[0]_INST_0_i_48_n_0 ;
  wire \vga_b[0]_INST_0_i_51_n_0 ;
  wire \vga_b[0]_INST_0_i_52_n_0 ;
  wire \vga_b[0]_INST_0_i_53_0 ;
  wire \vga_b[0]_INST_0_i_53_n_0 ;
  wire \vga_b[0]_INST_0_i_59_n_0 ;
  wire \vga_b[0]_INST_0_i_5_n_0 ;
  wire \vga_b[0]_INST_0_i_60_n_0 ;
  wire \vga_b[0]_INST_0_i_61_n_0 ;
  wire \vga_b[0]_INST_0_i_62_0 ;
  wire \vga_b[0]_INST_0_i_62_1 ;
  wire \vga_b[0]_INST_0_i_62_n_0 ;
  wire \vga_b[0]_INST_0_i_63_n_0 ;
  wire \vga_b[0]_INST_0_i_64_n_0 ;
  wire \vga_b[0]_INST_0_i_65_n_0 ;
  wire \vga_b[0]_INST_0_i_66_n_0 ;
  wire \vga_b[0]_INST_0_i_67_n_0 ;
  wire \vga_b[0]_INST_0_i_68_n_0 ;
  wire \vga_b[0]_INST_0_i_69_n_0 ;
  wire \vga_b[0]_INST_0_i_71_n_0 ;
  wire \vga_b[0]_INST_0_i_72_n_0 ;
  wire \vga_b[0]_INST_0_i_73_n_0 ;
  wire \vga_b[0]_INST_0_i_74_n_0 ;
  wire \vga_b[0]_INST_0_i_83_n_0 ;
  wire \vga_b[0]_INST_0_i_84_n_0 ;
  wire \vga_b[0]_INST_0_i_85_n_0 ;
  wire \vga_b[0]_INST_0_i_86 ;
  wire \vga_b[0]_INST_0_i_86_0 ;
  wire \vga_b[0]_INST_0_i_87_n_0 ;
  wire \vga_b[0]_INST_0_i_88_n_0 ;
  wire \vga_b[0]_INST_0_i_89_n_0 ;
  wire \vga_b[0]_INST_0_i_90_n_0 ;
  wire \vga_b[0]_INST_0_i_91_n_0 ;
  wire \vga_b[0]_INST_0_i_92_n_0 ;
  wire \vga_b[0]_INST_0_i_93_n_0 ;
  wire \vga_b[0]_INST_0_i_94_n_0 ;
  wire \vga_b[0]_INST_0_i_99_n_0 ;
  wire [5:4]\vga_display/font_data ;
  wire [0:0]vga_r;
  wire [1:0]\vga_r[3] ;
  wire \vga_r[3]_0 ;
  wire \vga_r[3]_1 ;
  wire vs;
  wire vs_i_2_n_0;
  wire [3:0]NLW_text_ascii_carry_i_11_CO_UNCONNECTED;
  wire [3:1]NLW_text_ascii_carry_i_11_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    display_data_reg_0_63_0_2_i_18
       (.I0(C[1]),
        .I1(\v_count_reg[5]_0 ),
        .O(display_data_reg_0_63_0_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000002AAAAAAA8)) 
    display_data_reg_0_63_0_2_i_19
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[4] ),
        .I2(\v_count_reg_n_0_[3] ),
        .I3(\v_count_reg_n_0_[2] ),
        .I4(\v_count[6]_i_2_n_0 ),
        .I5(\v_count_reg_n_0_[5] ),
        .O(C[2]));
  LUT6 #(
    .INIT(64'hAAAAA88800000222)) 
    display_data_reg_0_63_0_2_i_20
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[2] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(C[1]));
  LUT4 #(
    .INIT(16'hA802)) 
    display_data_reg_0_63_0_2_i_24
       (.I0(\h_count_reg[8]_0 ),
        .I1(Q[1]),
        .I2(\h_count_reg[4]_0 ),
        .I3(Q[2]),
        .O(display_data_reg_0_63_0_2_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    display_data_reg_0_63_0_2_i_25
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(\h_count_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    display_data_reg_0_63_0_2_i_42
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\h_count_reg[4]_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\h_count_reg[8]_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 display_data_reg_0_63_0_2_i_5
       (.CI(1'b0),
        .CO({display_data_reg_0_63_0_2_i_5_n_0,display_data_reg_0_63_0_2_i_5_n_1,display_data_reg_0_63_0_2_i_5_n_2,display_data_reg_0_63_0_2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({display_data_reg_0_63_0_2_i_18_n_0,C[2:1],1'b0}),
        .O({text_index[0],ADDRC[5:3]}),
        .S({S,display_data_reg_0_63_0_2_i_24_n_0}));
  LUT3 #(
    .INIT(8'h82)) 
    display_data_reg_0_63_0_2_i_6
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg[4]_0 ),
        .I2(Q[1]),
        .O(\h_count_reg[5]_2 [2]));
  LUT6 #(
    .INIT(64'h00000222AAAAA888)) 
    display_data_reg_0_63_0_2_i_7
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\h_count_reg_n_0_[2] ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(\h_count_reg[5]_2 [1]));
  LUT5 #(
    .INIT(32'hA8880222)) 
    display_data_reg_0_63_0_2_i_8
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(\h_count_reg[5]_2 [0]));
  LUT3 #(
    .INIT(8'h82)) 
    display_data_reg_0_63_3_5_i_3
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg[4]_0 ),
        .I2(Q[1]),
        .O(\h_count_reg[5]_4 [2]));
  LUT6 #(
    .INIT(64'h00000222AAAAA888)) 
    display_data_reg_0_63_3_5_i_4
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\h_count_reg_n_0_[2] ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(\h_count_reg[5]_4 [1]));
  LUT5 #(
    .INIT(32'hA8880222)) 
    display_data_reg_0_63_3_5_i_5
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(\h_count_reg[5]_4 [0]));
  LUT5 #(
    .INIT(32'hA8880222)) 
    display_data_reg_0_63_6_6_i_2
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(\h_count_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000222AAAAA888)) 
    display_data_reg_0_63_6_6_i_3
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\h_count_reg_n_0_[2] ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(\h_count_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    display_data_reg_0_63_6_6_i_4
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg[4]_0 ),
        .I2(Q[1]),
        .O(\h_count_reg[5]_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    display_data_reg_2048_2111_0_2_i_2
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg[4]_0 ),
        .I2(Q[1]),
        .O(ADDRC[2]));
  LUT6 #(
    .INIT(64'h00000222AAAAA888)) 
    display_data_reg_2048_2111_0_2_i_3
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\h_count_reg_n_0_[2] ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(ADDRC[1]));
  LUT5 #(
    .INIT(32'hA8880222)) 
    display_data_reg_2048_2111_0_2_i_4
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(ADDRC[0]));
  LUT3 #(
    .INIT(8'h82)) 
    display_data_reg_2048_2111_3_5_i_1
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg[4]_0 ),
        .I2(Q[1]),
        .O(\h_count_reg[5]_3 [2]));
  LUT6 #(
    .INIT(64'h00000222AAAAA888)) 
    display_data_reg_2048_2111_3_5_i_2
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\h_count_reg_n_0_[2] ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(\h_count_reg[5]_3 [1]));
  LUT5 #(
    .INIT(32'hA8880222)) 
    display_data_reg_2048_2111_3_5_i_3
       (.I0(\h_count_reg[8]_0 ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(\h_count_reg[5]_3 [0]));
  LUT6 #(
    .INIT(64'h000007F807F80000)) 
    g0_b0
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g0_b0_i_1
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\v_count_reg[0]_3 ));
  LUT3 #(
    .INIT(8'h60)) 
    g0_b0_i_2
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\h_count_reg[8]_0 ),
        .O(\v_count_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h802A)) 
    g0_b0_i_3
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[2] ),
        .O(\v_count_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hA8880222)) 
    g0_b0_i_8
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[3] ),
        .O(C[0]));
  LUT6 #(
    .INIT(64'h01E00FFC08040000)) 
    g0_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h03F00F6C08940000)) 
    g0_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g0_b2_i_1
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\v_count_reg[0]_2 ));
  LUT3 #(
    .INIT(8'h60)) 
    g0_b2_i_2
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\h_count_reg[8]_0 ),
        .O(\v_count_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h802A)) 
    g0_b2_i_3
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[2] ),
        .O(\v_count_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h07F00E7C09840000)) 
    g0_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h0FE00E7C09840000)) 
    g0_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h07F00F6C08940000)) 
    g0_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h03F00FFC08040000)) 
    g0_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h01E007F807F80000)) 
    g0_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h008002A000000000)) 
    g10_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g10_b1_n_0));
  LUT6 #(
    .INIT(64'h008003E003F00804)) 
    g10_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g10_b2_n_0));
  LUT6 #(
    .INIT(64'h03E001C007F80C0C)) 
    g10_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g10_b3_n_0));
  LUT6 #(
    .INIT(64'h03E001C00C0C07F8)) 
    g10_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g10_b4_n_0));
  LUT6 #(
    .INIT(64'h008003E0080403F0)) 
    g10_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g10_b5_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    g10_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h0030000000800000)) 
    g11_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b1_n_0));
  LUT6 #(
    .INIT(64'h0060000000800000)) 
    g11_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b2_n_0));
  LUT6 #(
    .INIT(64'h00C00C0000800E00)) 
    g11_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b3_n_0));
  LUT6 #(
    .INIT(64'h01800C0000801E00)) 
    g11_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b4_n_0));
  LUT6 #(
    .INIT(64'h0300000000801000)) 
    g11_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b5_n_0));
  LUT6 #(
    .INIT(64'h0600000000800000)) 
    g11_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b6_n_0));
  LUT6 #(
    .INIT(64'h0C00000000800000)) 
    g11_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g11_b7_n_0));
  LUT6 #(
    .INIT(64'h07B80C18080003F0)) 
    g12_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b1_n_0));
  LUT6 #(
    .INIT(64'h0FFC0C3C080007F8)) 
    g12_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b2_n_0));
  LUT6 #(
    .INIT(64'h084408640FFC0C0C)) 
    g12_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b3_n_0));
  LUT6 #(
    .INIT(64'h084408C40FFC08C4)) 
    g12_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b4_n_0));
  LUT6 #(
    .INIT(64'h0844098408180C0C)) 
    g12_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b5_n_0));
  LUT6 #(
    .INIT(64'h0C0C0F0C081007F8)) 
    g12_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b6_n_0));
  LUT6 #(
    .INIT(64'h04080E08000003F0)) 
    g12_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g12_b7_n_0));
  LUT6 #(
    .INIT(64'h003C078007840880)) 
    g13_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b1_n_0));
  LUT6 #(
    .INIT(64'h007C0FC00FC40FFC)) 
    g13_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b2_n_0));
  LUT6 #(
    .INIT(64'h00C4084408440FFC)) 
    g13_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b3_n_0));
  LUT6 #(
    .INIT(64'h0F84084408440898)) 
    g13_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b4_n_0));
  LUT6 #(
    .INIT(64'h0F04084C084400B0)) 
    g13_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b5_n_0));
  LUT6 #(
    .INIT(64'h000C0FF80C7C00E0)) 
    g13_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b6_n_0));
  LUT6 #(
    .INIT(64'h000C07F0047C00C0)) 
    g13_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g13_b7_n_0));
  LUT6 #(
    .INIT(64'h0000000003F807B8)) 
    g14_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b1_n_0));
  LUT6 #(
    .INIT(64'h0000000007FC0FFC)) 
    g14_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b2_n_0));
  LUT6 #(
    .INIT(64'h063006300C440844)) 
    g14_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b3_n_0));
  LUT6 #(
    .INIT(64'h0E30063008440844)) 
    g14_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b4_n_0));
  LUT6 #(
    .INIT(64'h0800000008440844)) 
    g14_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b5_n_0));
  LUT6 #(
    .INIT(64'h00000000087C0FFC)) 
    g14_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b6_n_0));
  LUT6 #(
    .INIT(64'h00000000003807B8)) 
    g14_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g14_b7_n_0));
  LUT6 #(
    .INIT(64'h0018008001200808)) 
    g15_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b1_n_0));
  LUT6 #(
    .INIT(64'h003C01C001200C18)) 
    g15_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b2_n_0));
  LUT6 #(
    .INIT(64'h0DE4036001200630)) 
    g15_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b3_n_0));
  LUT6 #(
    .INIT(64'h0DC4063001200360)) 
    g15_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b4_n_0));
  LUT6 #(
    .INIT(64'h00040C18012001C0)) 
    g15_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b5_n_0));
  LUT6 #(
    .INIT(64'h001C080801200080)) 
    g15_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b6_n_0));
  LUT6 #(
    .INIT(64'h0018000000000000)) 
    g15_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g15_b7_n_0));
  LUT6 #(
    .INIT(64'h061807B80FE001F0)) 
    g16_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g16_b1_n_0));
  LUT6 #(
    .INIT(64'h0C0C0FFC0FF00BF8)) 
    g16_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g16_b2_n_0));
  LUT6 #(
    .INIT(64'h0804084400980BC8)) 
    g16_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g16_b3_n_0));
  LUT6 #(
    .INIT(64'h08040844008C0BC8)) 
    g16_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g16_b4_n_0));
  LUT6 #(
    .INIT(64'h0C0C0FFC00980808)) 
    g16_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_9 ));
  LUT6 #(
    .INIT(64'h07F80FFC0FF00FF8)) 
    g16_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g16_b6_n_0));
  LUT6 #(
    .INIT(64'h03F008040FE007F0)) 
    g16_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g16_b7_n_0));
  LUT6 #(
    .INIT(64'h0F98001C0E1C03F0)) 
    g17_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g17_b1_n_0));
  LUT6 #(
    .INIT(64'h078C000C0C0C07F8)) 
    g17_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g17_b2_n_0));
  LUT6 #(
    .INIT(64'h088400E408E40C0C)) 
    g17_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g17_b3_n_0));
  LUT6 #(
    .INIT(64'h0884084408440804)) 
    g17_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g17_b4_n_0));
  LUT6 #(
    .INIT(64'h07F80FFC0FFC0FFC)) 
    g17_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g17_b6_n_0));
  LUT6 #(
    .INIT(64'h03F0080408040804)) 
    g17_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g17_b7_n_0));
  LUT6 #(
    .INIT(64'h0E1C000400000FFC)) 
    g18_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g18_b1_n_0));
  LUT6 #(
    .INIT(64'h0F3C07FC08040FFC)) 
    g18_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_10 ));
  LUT6 #(
    .INIT(64'h01E00FFC0FFC0040)) 
    g18_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g18_b3_n_0));
  LUT6 #(
    .INIT(64'h00C008040FFC0040)) 
    g18_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g18_b4_n_0));
  LUT6 #(
    .INIT(64'h0FFC080008040040)) 
    g18_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g18_b5_n_0));
  LUT6 #(
    .INIT(64'h0804070000000FFC)) 
    g18_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g18_b7_n_0));
  LUT6 #(
    .INIT(64'h07F80FFC0FFC0E00)) 
    g19_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g19_b1_n_0));
  LUT6 #(
    .INIT(64'h080400E000380800)) 
    g19_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g19_b3_n_0));
  LUT6 #(
    .INIT(64'h0804007000700804)) 
    g19_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g19_b4_n_0));
  LUT6 #(
    .INIT(64'h0804003800380FFC)) 
    g19_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g19_b5_n_0));
  LUT3 #(
    .INIT(8'h3E)) 
    g19_b6
       (.I0(\v_count_reg[0]_0 ),
        .I1(\v_count_reg[1]_0 ),
        .I2(sel[0]),
        .O(\v_count_reg[0]_20 ));
  LUT6 #(
    .INIT(64'h07F80FFC0FFC0804)) 
    g19_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g19_b7_n_0));
  LUT6 #(
    .INIT(64'h000000C001C00000)) 
    g1_b0
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'h000001E001C00080)) 
    g1_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'h018009F009F001C0)) 
    g1_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'h03C00FF80E3803E0)) 
    g1_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'h03C00FF80E3807F0)) 
    g1_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h018009F009F003E0)) 
    g1_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'h000001E001C001C0)) 
    g1_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'h000000C001C00080)) 
    g1_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g1_b7_n_0));
  LUT6 #(
    .INIT(64'h07180F3827F80038)) 
    g20_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b1_n_0));
  LUT6 #(
    .INIT(64'h0F9C0FFC3FFC007C)) 
    g20_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b2_n_0));
  LUT6 #(
    .INIT(64'h08C400C43C040044)) 
    g20_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b3_n_0));
  LUT6 #(
    .INIT(64'h084400440E040844)) 
    g20_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b4_n_0));
  LUT6 #(
    .INIT(64'h08640FFC08040FFC)) 
    g20_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b5_n_0));
  LUT6 #(
    .INIT(64'h0E3C0FFC0FFC0FFC)) 
    g20_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b6_n_0));
  LUT6 #(
    .INIT(64'h0618080407F80804)) 
    g20_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g20_b7_n_0));
  LUT6 #(
    .INIT(64'h07FC01FC07FC001C)) 
    g21_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b1_n_0));
  LUT6 #(
    .INIT(64'h0FFC03FC0FFC080C)) 
    g21_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b2_n_0));
  LUT6 #(
    .INIT(64'h0E00060008000FFC)) 
    g21_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b3_n_0));
  LUT6 #(
    .INIT(64'h03C00C0008000FFC)) 
    g21_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b4_n_0));
  LUT6 #(
    .INIT(64'h0E0006000800080C)) 
    g21_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b5_n_0));
  LUT6 #(
    .INIT(64'h0FFC03FC0FFC001C)) 
    g21_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b6_n_0));
  LUT6 #(
    .INIT(64'h07FC01FC07FC0000)) 
    g21_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g21_b7_n_0));
  LUT6 #(
    .INIT(64'h00000E1C003C0C0C)) 
    g22_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g22_b1_n_0));
  LUT6 #(
    .INIT(64'h08040C3C087C0F3C)) 
    g22_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g22_b2_n_0));
  LUT6 #(
    .INIT(64'h080408640FC003F0)) 
    g22_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g22_b3_n_0));
  LUT6 #(
    .INIT(64'h0FFC08C40FC001E0)) 
    g22_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g22_b4_n_0));
  LUT6 #(
    .INIT(64'h0FFC0984087C03F0)) 
    g22_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g22_b5_n_0));
  LUT6 #(
    .INIT(64'h00000E1C00000C0C)) 
    g22_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g22_b7_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    g23_b0
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_11 ));
  LUT6 #(
    .INIT(64'h2000000800000E00)) 
    g23_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g23_b1_n_0));
  LUT6 #(
    .INIT(64'h2000000C0FFC0700)) 
    g23_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g23_b2_n_0));
  LUT6 #(
    .INIT(64'h200000060FFC0380)) 
    g23_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g23_b3_n_0));
  LUT6 #(
    .INIT(64'h20000003080401C0)) 
    g23_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g23_b4_n_0));
  LUT6 #(
    .INIT(64'h20000006080400E0)) 
    g23_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g23_b5_n_0));
  LUT6 #(
    .INIT(64'h2000000C00000070)) 
    g23_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_12 ));
  LUT6 #(
    .INIT(64'h2000000800000038)) 
    g23_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g23_b7_n_0));
  LUT6 #(
    .INIT(64'h0440078008000000)) 
    g24_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b1_n_0));
  LUT6 #(
    .INIT(64'h0C600FC00FC00000)) 
    g24_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b2_n_0));
  LUT6 #(
    .INIT(64'h0820086007E00004)) 
    g24_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b3_n_0));
  LUT6 #(
    .INIT(64'h0820082008A00007)) 
    g24_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b4_n_0));
  LUT6 #(
    .INIT(64'h08200FFC08A00003)) 
    g24_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE00FFC0FA00000)) 
    g24_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b6_n_0));
  LUT6 #(
    .INIT(64'h07C0000407000000)) 
    g24_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g24_b7_n_0));
  LUT6 #(
    .INIT(64'h0020000004C00800)) 
    g25_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b1_n_0));
  LUT6 #(
    .INIT(64'h3FE000180CE00FFC)) 
    g25_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b2_n_0));
  LUT6 #(
    .INIT(64'h7FC0000C08A007FC)) 
    g25_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b3_n_0));
  LUT6 #(
    .INIT(64'h4820084408A00824)) 
    g25_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b4_n_0));
  LUT6 #(
    .INIT(64'h48200FFC08A00860)) 
    g25_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b5_n_0));
  LUT6 #(
    .INIT(64'h6FE00FF80FE00FC0)) 
    g25_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b6_n_0));
  LUT6 #(
    .INIT(64'h27C0084007C00780)) 
    g25_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g25_b7_n_0));
  LUT6 #(
    .INIT(64'h0C203FEC00000FC0)) 
    g26_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g26_b1_n_0));
  LUT6 #(
    .INIT(64'h0E607FEC08000FE0)) 
    g26_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g26_b2_n_0));
  LUT6 #(
    .INIT(64'h03C040200FEC0020)) 
    g26_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g26_b3_n_0));
  LUT6 #(
    .INIT(64'h018040000FEC0040)) 
    g26_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g26_b4_n_0));
  LUT6 #(
    .INIT(64'h0FFC700008200FFC)) 
    g26_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g26_b5_n_0));
  LUT6 #(
    .INIT(64'h0804000000000804)) 
    g26_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g26_b7_n_0));
  LUT6 #(
    .INIT(64'h07C00FC00FC00000)) 
    g27_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g27_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE00FE00FE00800)) 
    g27_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g27_b2_n_0));
  LUT6 #(
    .INIT(64'h0820002000600FFC)) 
    g27_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g27_b3_n_0));
  LUT6 #(
    .INIT(64'h0820002007C00FFC)) 
    g27_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g27_b4_n_0));
  LUT6 #(
    .INIT(64'h08200FC000600804)) 
    g27_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g27_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE00FE00FE00000)) 
    g27_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_13 ));
  LUT6 #(
    .INIT(64'h07C000200FE00000)) 
    g27_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g27_b7_n_0));
  LUT6 #(
    .INIT(64'h044000C0402007C0)) 
    g28_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b1_n_0));
  LUT6 #(
    .INIT(64'h0E6000E07FE00FE0)) 
    g28_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b2_n_0));
  LUT6 #(
    .INIT(64'h0B2000207FC00820)) 
    g28_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b3_n_0));
  LUT6 #(
    .INIT(64'h0920086048204820)) 
    g28_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b4_n_0));
  LUT6 #(
    .INIT(64'h09A00FC008207FC0)) 
    g28_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b5_n_0));
  LUT6 #(
    .INIT(64'h0CE00FE00FE07FE0)) 
    g28_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b6_n_0));
  LUT6 #(
    .INIT(64'h0440082007C04020)) 
    g28_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g28_b7_n_0));
  LUT6 #(
    .INIT(64'h07E003E008000400)) 
    g29_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE007E00FE00C20)) 
    g29_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b2_n_0));
  LUT6 #(
    .INIT(64'h0C000C0007E00820)) 
    g29_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b3_n_0));
  LUT6 #(
    .INIT(64'h07800C0008000FFC)) 
    g29_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b4_n_0));
  LUT6 #(
    .INIT(64'h0C0007E0080007F8)) 
    g29_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE003E00FE00020)) 
    g29_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b6_n_0));
  LUT6 #(
    .INIT(64'h07E0000007E00020)) 
    g29_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g29_b7_n_0));
  LUT6 #(
    .INIT(64'h078CF99F0660FE7F)) 
    g2_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g2_b2_n_0));
  LUT6 #(
    .INIT(64'h0FDCFBDF0420FC3F)) 
    g2_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g2_b3_n_0));
  LUT6 #(
    .INIT(64'h0874FBDF0420FC3F)) 
    g2_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g2_b4_n_0));
  LUT6 #(
    .INIT(64'h0860F99F0660FE7F)) 
    g2_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g2_b5_n_0));
  LUT6 #(
    .INIT(64'h0780FFFF0000FFFF)) 
    g2_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g2_b7_n_0));
  LUT6 #(
    .INIT(64'h08040C201FE00820)) 
    g30_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b1_n_0));
  LUT6 #(
    .INIT(64'h08040C603FE00C60)) 
    g30_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b2_n_0));
  LUT6 #(
    .INIT(64'h0FBC08E0680007C0)) 
    g30_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b3_n_0));
  LUT6 #(
    .INIT(64'h07F809A048000380)) 
    g30_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b4_n_0));
  LUT6 #(
    .INIT(64'h00400B20480007C0)) 
    g30_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b5_n_0));
  LUT6 #(
    .INIT(64'h00400E604FE00C60)) 
    g30_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b6_n_0));
  LUT6 #(
    .INIT(64'h00000C6047E00820)) 
    g30_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g30_b7_n_0));
  LUT6 #(
    .INIT(64'h0780000400400000)) 
    g31_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b1_n_0));
  LUT6 #(
    .INIT(64'h07C0000C00400000)) 
    g31_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b2_n_0));
  LUT6 #(
    .INIT(64'h0460000807F80FBC)) 
    g31_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b3_n_0));
  LUT6 #(
    .INIT(64'h0430000C0FBC0FBC)) 
    g31_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b4_n_0));
  LUT6 #(
    .INIT(64'h0460000408040000)) 
    g31_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b5_n_0));
  LUT6 #(
    .INIT(64'h07C0000C08040000)) 
    g31_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b6_n_0));
  LUT6 #(
    .INIT(64'h0780000800000000)) 
    g31_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g31_b7_n_0));
  LUT6 #(
    .INIT(64'h080004C008001318)) 
    g32_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g32_b1_i_1
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\v_count_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0FC80CE20FE43E0C)) 
    g32_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b2_n_0));
  LUT6 #(
    .INIT(64'h07EC08A607E42C04)) 
    g32_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b3_n_0));
  LUT6 #(
    .INIT(64'h08A608AC08002404)) 
    g32_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b4_n_0));
  LUT6 #(
    .INIT(64'h08AC08A80800260C)) 
    g32_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b5_n_0));
  LUT6 #(
    .INIT(64'h0FA80FE00FE423F8)) 
    g32_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b6_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    g32_b6_i_1
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\h_count_reg[8]_0 ),
        .O(g32_b6_i_1_n_0));
  LUT4 #(
    .INIT(16'h802A)) 
    g32_b6_i_2
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[2] ),
        .O(C__0));
  LUT6 #(
    .INIT(64'h070007C007E401F0)) 
    g32_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g32_b7_n_0));
  LUT6 #(
    .INIT(64'h0920080008000800)) 
    g33_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b1_n_0));
  LUT6 #(
    .INIT(64'h1F300FC40FC00FC4)) 
    g33_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b2_n_0));
  LUT6 #(
    .INIT(64'h161007EE07E807E4)) 
    g33_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b3_n_0));
  LUT6 #(
    .INIT(64'h121008AA08AC08A0)) 
    g33_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b4_n_0));
  LUT6 #(
    .INIT(64'h13F008AE08A608A0)) 
    g33_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b5_n_0));
  LUT6 #(
    .INIT(64'h01E00FA40FA20FA4)) 
    g33_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b6_n_0));
  LUT6 #(
    .INIT(64'h0000070007000704)) 
    g33_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g33_b7_n_0));
  LUT6 #(
    .INIT(64'h000404C004C404C0)) 
    g34_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b1_n_0));
  LUT6 #(
    .INIT(64'h08040CE00CE40CE8)) 
    g34_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b2_n_0));
  LUT6 #(
    .INIT(64'h0FE008A808A008AC)) 
    g34_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b3_n_0));
  LUT6 #(
    .INIT(64'h0FE008AC08A008A6)) 
    g34_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b4_n_0));
  LUT6 #(
    .INIT(64'h082408A608A008AC)) 
    g34_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b5_n_0));
  LUT6 #(
    .INIT(64'h00040FE20FE40FE8)) 
    g34_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b6_n_0));
  LUT6 #(
    .INIT(64'h000007C007C407C0)) 
    g34_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g34_b7_n_0));
  LUT6 #(
    .INIT(64'h0FC00FC200000008)) 
    g35_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE20FE20800080C)) 
    g35_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b2_n_0));
  LUT6 #(
    .INIT(64'h013701300FE80FE6)) 
    g35_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b3_n_0));
  LUT6 #(
    .INIT(64'h011501180FEC0FE6)) 
    g35_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b4_n_0));
  LUT6 #(
    .INIT(64'h013701300826082C)) 
    g35_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE20FE200020008)) 
    g35_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b6_n_0));
  LUT6 #(
    .INIT(64'h0FC00FC200000000)) 
    g35_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g35_b7_n_0));
  LUT6 #(
    .INIT(64'h07C0084409C00C30)) 
    g36_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE80FFC09E00CB0)) 
    g36_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b2_n_0));
  LUT6 #(
    .INIT(64'h082C0FFC0F200891)) 
    g36_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b3_n_0));
  LUT6 #(
    .INIT(64'h0826004407C00893)) 
    g36_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b4_n_0));
  LUT6 #(
    .INIT(64'h082C004C09C00FF6)) 
    g36_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE80FF80F600FF4)) 
    g36_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b6_n_0));
  LUT6 #(
    .INIT(64'h07C00FF006200810)) 
    g36_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g36_b7_n_0));
  LUT6 #(
    .INIT(64'h0800080007C007C4)) 
    g37_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE00FE80FE00FE4)) 
    g37_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b2_n_0));
  LUT6 #(
    .INIT(64'h07E807EC08280820)) 
    g37_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b3_n_0));
  LUT6 #(
    .INIT(64'h080C0806082C0820)) 
    g37_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b4_n_0));
  LUT6 #(
    .INIT(64'h0806080608260820)) 
    g37_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE20FEC0FE20FE4)) 
    g37_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b6_n_0));
  LUT6 #(
    .INIT(64'h07E007E807C007C4)) 
    g37_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g37_b7_n_0));
  LUT6 #(
    .INIT(64'h011007FA07F21FE4)) 
    g38_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b1_n_0));
  LUT6 #(
    .INIT(64'h03180FFA0FFA3FE4)) 
    g38_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b2_n_0));
  LUT6 #(
    .INIT(64'h0E0E080008086800)) 
    g38_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b3_n_0));
  LUT6 #(
    .INIT(64'h0E0E080008084800)) 
    g38_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b4_n_0));
  LUT6 #(
    .INIT(64'h03F8080008084800)) 
    g38_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b5_n_0));
  LUT6 #(
    .INIT(64'h01F00FFA0FFA4FE4)) 
    g38_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b6_n_0));
  LUT6 #(
    .INIT(64'h000007FA07F207E4)) 
    g38_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g38_b7_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    g39_b0
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_14 ));
  LUT6 #(
    .INIT(64'h00460880014C0400)) 
    g39_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b1_n_0));
  LUT6 #(
    .INIT(64'h00420FEC015C0C0C)) 
    g39_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b2_n_0));
  LUT6 #(
    .INIT(64'h1FFE07DE0FF00806)) 
    g39_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b3_n_0));
  LUT6 #(
    .INIT(64'h3FFC00920FF00822)) 
    g39_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b4_n_0));
  LUT6 #(
    .INIT(64'h20400012015C0FFE)) 
    g39_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b5_n_0));
  LUT6 #(
    .INIT(64'h30400FFE014C0FFC)) 
    g39_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b6_n_0));
  LUT6 #(
    .INIT(64'h10000FFE00000C20)) 
    g39_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g39_b7_n_0));
  LUT6 #(
    .INIT(64'h02A007FC001C0000)) 
    g3_b0
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h02A00FFC001C0278)) 
    g3_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h01C00E14001402FC)) 
    g3_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g3_b2_n_0));
  LUT6 #(
    .INIT(64'h0F78001400140F84)) 
    g3_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g3_b3_n_0));
  LUT6 #(
    .INIT(64'h0F78001407FC0F84)) 
    g3_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g3_b4_n_0));
  LUT6 #(
    .INIT(64'h01C00FFC0FFC02FC)) 
    g3_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g3_b5_n_0));
  LUT6 #(
    .INIT(64'h02A01FFC0E000278)) 
    g3_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h02A01C000C000000)) 
    g3_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g3_b7_n_0));
  LUT6 #(
    .INIT(64'h080007C000000800)) 
    g40_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE00FE008020FC0)) 
    g40_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b2_n_0));
  LUT6 #(
    .INIT(64'h07E208220FE607E2)) 
    g40_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b3_n_0));
  LUT6 #(
    .INIT(64'h080608260FEC08A6)) 
    g40_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b4_n_0));
  LUT6 #(
    .INIT(64'h080C082C082808AC)) 
    g40_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b5_n_0));
  LUT6 #(
    .INIT(64'h0FE80FE800000FA8)) 
    g40_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b6_n_0));
  LUT6 #(
    .INIT(64'h07E007C000000700)) 
    g40_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g40_b7_n_0));
  LUT6 #(
    .INIT(64'h000000500FF90FC4)) 
    g41_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b1_n_0));
  LUT6 #(
    .INIT(64'h004C005E0FFB0FEC)) 
    g41_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b2_n_0));
  LUT6 #(
    .INIT(64'h005E005E01C20028)) 
    g41_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b3_n_0));
  LUT6 #(
    .INIT(64'h0052005200E3002C)) 
    g41_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b4_n_0));
  LUT6 #(
    .INIT(64'h005E005E00710FC4)) 
    g41_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b5_n_0));
  LUT6 #(
    .INIT(64'h004C004C0FFB0FEC)) 
    g41_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b6_n_0));
  LUT6 #(
    .INIT(64'h000000000FFA0028)) 
    g41_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g41_b7_n_0));
  LUT6 #(
    .INIT(64'h241807C000400600)) 
    g42_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b1_n_0));
  LUT6 #(
    .INIT(64'h2E3007C000400E00)) 
    g42_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b2_n_0));
  LUT6 #(
    .INIT(64'h3A60004000400800)) 
    g42_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b3_n_0));
  LUT6 #(
    .INIT(64'h32C000400040086C)) 
    g42_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b4_n_0));
  LUT6 #(
    .INIT(64'h21800040004008EC)) 
    g42_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b5_n_0));
  LUT6 #(
    .INIT(64'h033E004007C00F80)) 
    g42_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b6_n_0));
  LUT6 #(
    .INIT(64'h063E004007C00700)) 
    g42_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g42_b7_n_0));
  LUT6 #(
    .INIT(64'h0080022000003F18)) 
    g43_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b1_n_0));
  LUT6 #(
    .INIT(64'h01C0036007003F30)) 
    g43_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b2_n_0));
  LUT6 #(
    .INIT(64'h036001C00FEC0E60)) 
    g43_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b3_n_0));
  LUT6 #(
    .INIT(64'h02A002A00FEC0CC0)) 
    g43_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b4_n_0));
  LUT6 #(
    .INIT(64'h01C0036007000980)) 
    g43_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b5_n_0));
  LUT6 #(
    .INIT(64'h036001C00000033E)) 
    g43_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b6_n_0));
  LUT6 #(
    .INIT(64'h022000800000063E)) 
    g43_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g43_b7_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    g44_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(sel[2]),
        .O(g44_b4_n_0));
  LUT6 #(
    .INIT(64'hFF80FFFF00000000)) 
    g45_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_15 ));
  LUT6 #(
    .INIT(64'h00800000FFFFFFFF)) 
    g45_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_16 ));
  LUT6 #(
    .INIT(64'hFF80FFFFFFFFFFFF)) 
    g45_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g45_b4_n_0));
  LUT6 #(
    .INIT(64'hFF80FFFF00A00080)) 
    g45_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g45_b5_n_0));
  LUT6 #(
    .INIT(64'h0080008000A00080)) 
    g45_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_17 ));
  LUT6 #(
    .INIT(64'hFFE0FFFFFFFF0000)) 
    g46_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_18 ));
  LUT6 #(
    .INIT(64'h002000000000FFE0)) 
    g46_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g46_b3_n_0));
  LUT6 #(
    .INIT(64'hFFA0FFFFFFBFFFE0)) 
    g46_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g46_b4_n_0));
  LUT6 #(
    .INIT(64'hFFA0FFFFFFBF00A0)) 
    g46_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g46_b5_n_0));
  LUT6 #(
    .INIT(64'hFF8000FF00800080)) 
    g47_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g47_b3_n_0));
  LUT6 #(
    .INIT(64'hFF8000FF00FF00BF)) 
    g47_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g47_b4_n_0));
  LUT6 #(
    .INIT(64'h008000A000FF00BF)) 
    g47_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g47_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h008000A0)) 
    g47_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .O(\v_count_reg[0]_21 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    g48_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .O(g48_b0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF8000FF00FF)) 
    g48_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g48_b3_n_0));
  LUT6 #(
    .INIT(64'h0000008000800000)) 
    g48_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\v_count_reg[0]_19 ));
  LUT6 #(
    .INIT(64'h008000A000800080)) 
    g49_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g49_b0_n_0));
  LUT6 #(
    .INIT(64'hFFFF00A000800080)) 
    g49_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g49_b1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFFFFFF0080)) 
    g49_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g49_b3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0080)) 
    g49_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g49_b4_n_0));
  LUT6 #(
    .INIT(64'hFFFF000000800080)) 
    g49_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g49_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    g49_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[2]),
        .O(\v_count_reg[0]_22 ));
  LUT6 #(
    .INIT(64'h0DFC01100FFE0040)) 
    g4_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b1_n_0));
  LUT6 #(
    .INIT(64'h0DFC031807FC0040)) 
    g4_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b2_n_0));
  LUT6 #(
    .INIT(64'h000007FC03F800E0)) 
    g4_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b3_n_0));
  LUT6 #(
    .INIT(64'h000007FC01F001F0)) 
    g4_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b4_n_0));
  LUT6 #(
    .INIT(64'h0DFC031800E003F8)) 
    g4_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b5_n_0));
  LUT6 #(
    .INIT(64'h0DFC0110004007FC)) 
    g4_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b6_n_0));
  LUT6 #(
    .INIT(64'h0000000000400FFE)) 
    g4_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g4_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    g50_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(C__0),
        .I2(sel[0]),
        .O(g50_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFA000BF)) 
    g50_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .O(g50_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00200080)) 
    g50_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .O(g50_b3_n_0));
  LUT6 #(
    .INIT(64'hFFA000BFFFE000FF)) 
    g50_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g50_b4_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    g50_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(C__0),
        .I2(sel[0]),
        .I3(sel[2]),
        .O(\v_count_reg[0]_23 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00A0FFBF)) 
    g51_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .O(g51_b1_n_0));
  LUT6 #(
    .INIT(64'h00BF000000A00000)) 
    g51_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g51_b3_n_0));
  LUT6 #(
    .INIT(64'h00BFFFBF00A0FFFF)) 
    g51_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g51_b4_n_0));
  LUT6 #(
    .INIT(64'h00A0FFBF00A0FFFF)) 
    g51_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g51_b5_n_0));
  LUT6 #(
    .INIT(64'h00FFFF8000A000FF)) 
    g52_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g52_b1_n_0));
  LUT6 #(
    .INIT(64'h00800080FFA00080)) 
    g52_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g52_b3_n_0));
  LUT6 #(
    .INIT(64'h00FFFF80FFA000FF)) 
    g52_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g52_b4_n_0));
  LUT6 #(
    .INIT(64'h0000008000A00080)) 
    g52_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g52_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h008000A0)) 
    g53_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[2]),
        .O(g53_b0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF8000A000A0)) 
    g53_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g53_b1_n_0));
  LUT6 #(
    .INIT(64'h00800080FFE000FF)) 
    g53_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g53_b3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF80FFE000FF)) 
    g53_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g53_b4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF8000000000)) 
    g53_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g53_b5_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    g53_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g53_b7_n_0));
  LUT6 #(
    .INIT(64'hFFFF0080000000A0)) 
    g54_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g54_b0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF8000FFFFFF)) 
    g54_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g54_b3_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000008000A0)) 
    g54_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g54_b7_n_0));
  LUT6 #(
    .INIT(64'h007FFFFF0000FF80)) 
    g55_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g55_b0_n_0));
  LUT6 #(
    .INIT(64'h007F0000FFFFFF80)) 
    g55_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g55_b7_n_0));
  LUT6 #(
    .INIT(64'h0010001C07000820)) 
    g56_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b1_n_0));
  LUT6 #(
    .INIT(64'h0FF0001C0FB80C60)) 
    g56_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b2_n_0));
  LUT6 #(
    .INIT(64'h0FF0000408FC07C0)) 
    g56_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b3_n_0));
  LUT6 #(
    .INIT(64'h0010000400440FE0)) 
    g56_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b4_n_0));
  LUT6 #(
    .INIT(64'h0FF0000400040820)) 
    g56_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b5_n_0));
  LUT6 #(
    .INIT(64'h0FF00FFC0FFC0FE0)) 
    g56_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b6_n_0));
  LUT6 #(
    .INIT(64'h00100FFC0FF807C0)) 
    g56_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g56_b7_n_0));
  LUT6 #(
    .INIT(64'h001001F000200C18)) 
    g57_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b1_n_0));
  LUT6 #(
    .INIT(64'h003003F000200C18)) 
    g57_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b2_n_0));
  LUT6 #(
    .INIT(64'h0FE0020007E00888)) 
    g57_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b3_n_0));
  LUT6 #(
    .INIT(64'h0FF002000FE009C8)) 
    g57_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b4_n_0));
  LUT6 #(
    .INIT(64'h00100FF008200B68)) 
    g57_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b5_n_0));
  LUT6 #(
    .INIT(64'h00301FF00FE00E38)) 
    g57_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b6_n_0));
  LUT6 #(
    .INIT(64'h0020100007C00C18)) 
    g57_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g57_b7_n_0));
  LUT6 #(
    .INIT(64'h07C4087003E009C8)) 
    g58_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE40FF807F00BE8)) 
    g58_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b2_n_0));
  LUT6 #(
    .INIT(64'h08740F8C0C980E38)) 
    g58_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b3_n_0));
  LUT6 #(
    .INIT(64'h085C000408880E38)) 
    g58_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b4_n_0));
  LUT6 #(
    .INIT(64'h0FC80F8C0C980BE8)) 
    g58_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b5_n_0));
  LUT6 #(
    .INIT(64'h07800FF807F009C8)) 
    g58_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b6_n_0));
  LUT6 #(
    .INIT(64'h0000087003E00000)) 
    g58_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g58_b7_n_0));
  LUT6 #(
    .INIT(64'h0000000001C801C0)) 
    g59_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b0_n_0));
  LUT6 #(
    .INIT(64'h0FF0000003F803E0)) 
    g59_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b1_n_0));
  LUT6 #(
    .INIT(64'h0FF8084402300220)) 
    g59_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b2_n_0));
  LUT6 #(
    .INIT(64'h0008084402E003E0)) 
    g59_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b3_n_0));
  LUT6 #(
    .INIT(64'h00080C4C03E003E0)) 
    g59_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b4_n_0));
  LUT6 #(
    .INIT(64'h000807F807200220)) 
    g59_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b5_n_0));
  LUT6 #(
    .INIT(64'h0FF803F00FE003E0)) 
    g59_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b6_n_0));
  LUT6 #(
    .INIT(64'h0FF0000009C001C0)) 
    g59_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g59_b7_n_0));
  LUT6 #(
    .INIT(64'h09100F0008C40FFC)) 
    g5_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b1_n_0));
  LUT6 #(
    .INIT(64'h0B180F001DE60004)) 
    g5_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b2_n_0));
  LUT6 #(
    .INIT(64'h0FFC0F0017320FFC)) 
    g5_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b3_n_0));
  LUT6 #(
    .INIT(64'h0FFC0F0012120FFC)) 
    g5_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b4_n_0));
  LUT6 #(
    .INIT(64'h0B180F00133A0044)) 
    g5_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b5_n_0));
  LUT6 #(
    .INIT(64'h09100F0019EE007C)) 
    g5_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b6_n_0));
  LUT6 #(
    .INIT(64'h00000F0008C40038)) 
    g5_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g5_b7_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    g60_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b0_n_0));
  LUT6 #(
    .INIT(64'h0800084008400490)) 
    g60_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b1_n_0));
  LUT6 #(
    .INIT(64'h0A0808E008400490)) 
    g60_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b2_n_0));
  LUT6 #(
    .INIT(64'h0B1809B009F00490)) 
    g60_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b3_n_0));
  LUT6 #(
    .INIT(64'h09B00B1809F00490)) 
    g60_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b4_n_0));
  LUT6 #(
    .INIT(64'h08E00A0808400490)) 
    g60_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b5_n_0));
  LUT6 #(
    .INIT(64'h0840080008400490)) 
    g60_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b6_n_0));
  LUT6 #(
    .INIT(64'h0000000008000490)) 
    g60_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g60_b7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000018)) 
    g61_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b0_n_0));
  LUT6 #(
    .INIT(64'h012000800000001C)) 
    g61_b1
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b1_n_0));
  LUT6 #(
    .INIT(64'h0360008000000004)) 
    g61_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b2_n_0));
  LUT6 #(
    .INIT(64'h024006B007FFFFFC)) 
    g61_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b3_n_0));
  LUT6 #(
    .INIT(64'h036006B00FFFFFF8)) 
    g61_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b4_n_0));
  LUT6 #(
    .INIT(64'h0120008008000000)) 
    g61_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b5_n_0));
  LUT6 #(
    .INIT(64'h036000800F000000)) 
    g61_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b6_n_0));
  LUT6 #(
    .INIT(64'h0240000007000000)) 
    g61_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g61_b7_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    g62_b0
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g62_b0_n_0));
  LUT6 #(
    .INIT(64'h0FFE00000000000C)) 
    g62_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g62_b2_n_0));
  LUT6 #(
    .INIT(64'h0FFE01000180001E)) 
    g62_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g62_b3_n_0));
  LUT6 #(
    .INIT(64'h0C00010001800012)) 
    g62_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g62_b4_n_0));
  LUT6 #(
    .INIT(64'h078000000000001E)) 
    g62_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g62_b5_n_0));
  LUT6 #(
    .INIT(64'h038000000000000C)) 
    g62_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g62_b6_n_0));
  LUT6 #(
    .INIT(64'h000007F00000007C)) 
    g63_b2
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g63_b2_n_0));
  LUT6 #(
    .INIT(64'h000007F00064007E)) 
    g63_b3
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g63_b3_n_0));
  LUT6 #(
    .INIT(64'h000007F0004E0002)) 
    g63_b4
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g63_b4_n_0));
  LUT6 #(
    .INIT(64'h000007F0005A007C)) 
    g63_b5
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g63_b5_n_0));
  LUT6 #(
    .INIT(64'h000007F00076007E)) 
    g63_b6
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g63_b6_n_0));
  LUT6 #(
    .INIT(64'h0000000000640002)) 
    g63_b7
       (.I0(\v_count_reg[0]_1 ),
        .I1(g32_b6_i_1_n_0),
        .I2(C__0),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g63_b7_n_0));
  LUT6 #(
    .INIT(64'h0080008002000010)) 
    g6_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g6_b1_n_0));
  LUT6 #(
    .INIT(64'h008001C006000018)) 
    g6_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g6_b2_n_0));
  LUT6 #(
    .INIT(64'h008003E00FFC0FFC)) 
    g6_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g6_b3_n_0));
  LUT5 #(
    .INIT(32'h02A00FFC)) 
    g6_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[2]),
        .O(g6_b4_n_0));
  LUT6 #(
    .INIT(64'h03E0008006000018)) 
    g6_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g6_b5_n_0));
  LUT6 #(
    .INIT(64'h01C0008002000010)) 
    g6_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g6_b6_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    g6_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[2]),
        .O(g6_b7_n_0));
  LUT6 #(
    .INIT(64'h0030060000800200)) 
    g7_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g7_b1_n_0));
  LUT6 #(
    .INIT(64'h00F0078001C00200)) 
    g7_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g7_b2_n_0));
  LUT6 #(
    .INIT(64'h03F007E003E00200)) 
    g7_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g7_b3_n_0));
  LUT6 #(
    .INIT(64'h07F007F000800200)) 
    g7_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g7_b4_n_0));
  LUT6 #(
    .INIT(64'h00F0078001C003C0)) 
    g7_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g7_b6_n_0));
  LUT6 #(
    .INIT(64'h00300600008003C0)) 
    g7_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g7_b7_n_0));
  LUT6 #(
    .INIT(64'h0220000E00000000)) 
    g8_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g8_b1_n_0));
  LUT6 #(
    .INIT(64'h0FF8001E00380000)) 
    g8_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g8_b2_n_0));
  LUT6 #(
    .INIT(64'h0FF800000DFC0000)) 
    g8_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g8_b3_n_0));
  LUT6 #(
    .INIT(64'h022000000DFC0000)) 
    g8_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g8_b4_n_0));
  LUT6 #(
    .INIT(64'h0FF8000E00000000)) 
    g8_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g8_b6_n_0));
  LUT6 #(
    .INIT(64'h0220000000000000)) 
    g8_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g8_b7_n_0));
  LUT6 #(
    .INIT(64'h000008400C300798)) 
    g9_b1
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b1_n_0));
  LUT6 #(
    .INIT(64'h00000FD80C600FCC)) 
    g9_b2
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b2_n_0));
  LUT6 #(
    .INIT(64'h000007BC00C03847)) 
    g9_b3
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b3_n_0));
  LUT6 #(
    .INIT(64'h000E08E401803847)) 
    g9_b4
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b4_n_0));
  LUT6 #(
    .INIT(64'h001E087C03000844)) 
    g9_b5
       (.I0(\v_count_reg[0]_2 ),
        .I1(\v_count_reg[0]_4 ),
        .I2(\v_count_reg[1]_1 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b5_n_0));
  LUT6 #(
    .INIT(64'h00100FD806300C7C)) 
    g9_b6
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b6_n_0));
  LUT6 #(
    .INIT(64'h000007800C300638)) 
    g9_b7
       (.I0(\v_count_reg[0]_3 ),
        .I1(\v_count_reg[0]_0 ),
        .I2(\v_count_reg[1]_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(g9_b7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(\h_count_reg_n_0_[0] ),
        .O(h_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(\h_count_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(h_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[2]_i_1 
       (.I0(\h_count_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(\h_count_reg_n_0_[0] ),
        .O(h_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[3]_i_1 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .O(h_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[2] ),
        .O(h_count[4]));
  LUT6 #(
    .INIT(64'h0000EFFFFFFF0000)) 
    \h_count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(\h_count[9]_i_2_n_0 ),
        .O(h_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\h_count[9]_i_2_n_0 ),
        .O(h_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\h_count[9]_i_2_n_0 ),
        .O(h_count[7]));
  LUT6 #(
    .INIT(64'h3CCCCCC4CCCCCCCC)) 
    \h_count[8]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\h_count[9]_i_2_n_0 ),
        .O(h_count[8]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \h_count[9]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\h_count[9]_i_2_n_0 ),
        .I5(Q[5]),
        .O(h_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_count[9]_i_2 
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\h_count_reg_n_0_[0] ),
        .I4(\h_count_reg_n_0_[2] ),
        .O(\h_count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[0]),
        .Q(\h_count_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[1]),
        .Q(Q[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[2]),
        .Q(\h_count_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[3]),
        .Q(\h_count_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[4]),
        .Q(\h_count_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[5]),
        .Q(Q[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[6]),
        .Q(Q[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[7]),
        .Q(Q[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[8]),
        .Q(Q[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_count[9]),
        .Q(Q[5]),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    hs_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[3]),
        .O(h_sync));
  FDSE hs_reg
       (.C(clk_25m),
        .CE(1'b1),
        .D(h_sync),
        .Q(hs),
        .S(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAA80002)) 
    text_ascii_carry__0_i_19
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[7] ),
        .I2(text_ascii_carry__0_i_44_n_0),
        .I3(\v_count_reg_n_0_[6] ),
        .I4(\v_count_reg_n_0_[8] ),
        .O(C[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA80)) 
    text_ascii_carry__0_i_44
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[2] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(text_ascii_carry__0_i_44_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 text_ascii_carry_i_11
       (.CI(text_ascii_carry_i_13_n_0),
        .CO(NLW_text_ascii_carry_i_11_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_text_ascii_carry_i_11_O_UNCONNECTED[3:1],text_index[5]}),
        .S({1'b0,1'b0,1'b0,text_index0[11]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 text_ascii_carry_i_13
       (.CI(display_data_reg_0_63_0_2_i_5_n_0),
        .CO({text_ascii_carry_i_13_n_0,text_ascii_carry_i_13_n_1,text_ascii_carry_i_13_n_2,text_ascii_carry_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(text_index[4:1]),
        .S({text_index0[10],text_ascii_carry_i_37_n_0,text_index0[8:7]}));
  LUT6 #(
    .INIT(64'hAA8A888800202222)) 
    text_ascii_carry_i_27
       (.I0(\h_count_reg[8]_0 ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(text_ascii_carry_i_66_n_0),
        .I3(\v_count[6]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[5] ),
        .I5(\v_count_reg_n_0_[7] ),
        .O(C[3]));
  LUT6 #(
    .INIT(64'h7F5580AAFFFFFFFF)) 
    text_ascii_carry_i_28
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(text_ascii_carry_i_66_n_0),
        .I4(\v_count_reg_n_0_[6] ),
        .I5(\h_count_reg[8]_0 ),
        .O(\v_count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h00000000D050D040)) 
    text_ascii_carry_i_33
       (.I0(\v_count_reg[5]_0 ),
        .I1(\h_count_reg[8]_0 ),
        .I2(C[3]),
        .I3(C[2]),
        .I4(C[1]),
        .I5(text_ascii_carry_i_75_n_0),
        .O(text_index0[11]));
  LUT5 #(
    .INIT(32'h3B3B4440)) 
    text_ascii_carry_i_36
       (.I0(\v_count_reg[5]_0 ),
        .I1(C[3]),
        .I2(C[2]),
        .I3(C[1]),
        .I4(C[4]),
        .O(text_index0[10]));
  LUT5 #(
    .INIT(32'h3F0100F8)) 
    text_ascii_carry_i_37
       (.I0(C[1]),
        .I1(C[2]),
        .I2(C[4]),
        .I3(\v_count_reg[5]_0 ),
        .I4(C[3]),
        .O(text_ascii_carry_i_37_n_0));
  LUT5 #(
    .INIT(32'h3FC0E817)) 
    text_ascii_carry_i_38
       (.I0(C[1]),
        .I1(C[2]),
        .I2(C[3]),
        .I3(C[4]),
        .I4(\v_count_reg[5]_0 ),
        .O(text_index0[8]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    text_ascii_carry_i_39
       (.I0(\v_count_reg[5]_0 ),
        .I1(C[1]),
        .I2(C[2]),
        .I3(C[3]),
        .O(text_index0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    text_ascii_carry_i_66
       (.I0(\v_count_reg_n_0_[2] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[4] ),
        .O(text_ascii_carry_i_66_n_0));
  LUT6 #(
    .INIT(64'h5555555555656666)) 
    text_ascii_carry_i_75
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(text_ascii_carry_i_66_n_0),
        .I3(\v_count[6]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[5] ),
        .I5(\v_count_reg_n_0_[7] ),
        .O(text_ascii_carry_i_75_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45555555)) 
    \v_count[0]_i_1 
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[9] ),
        .I3(\v_count[3]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[2] ),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(\v_count_reg_n_0_[1] ),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h686A6A6A)) 
    \v_count[2]_i_1 
       (.I0(\v_count_reg_n_0_[2] ),
        .I1(\v_count_reg_n_0_[0] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[9] ),
        .I4(\v_count[3]_i_2_n_0 ),
        .O(\v_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666AAAAAAAA2AAA)) 
    \v_count[3]_i_1 
       (.I0(\v_count_reg_n_0_[3] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count[3]_i_2_n_0 ),
        .I3(\v_count_reg_n_0_[9] ),
        .I4(\v_count_reg_n_0_[1] ),
        .I5(\v_count_reg_n_0_[0] ),
        .O(\v_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \v_count[3]_i_2 
       (.I0(\v_count_reg_n_0_[6] ),
        .I1(\v_count_reg_n_0_[5] ),
        .I2(\v_count_reg_n_0_[8] ),
        .I3(\v_count_reg_n_0_[7] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(\v_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[2] ),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[4] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[0] ),
        .I5(\v_count_reg_n_0_[3] ),
        .O(\v_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[6]_i_1 
       (.I0(\v_count_reg_n_0_[6] ),
        .I1(\v_count_reg_n_0_[5] ),
        .I2(\v_count_reg_n_0_[3] ),
        .I3(\v_count[6]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[2] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_count[6]_i_2 
       (.I0(\v_count_reg_n_0_[1] ),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\v_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count[7]_i_1 
       (.I0(\v_count_reg_n_0_[7] ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(\v_count[8]_i_2_n_0 ),
        .O(\v_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[8]_i_1 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[7] ),
        .I2(\v_count[8]_i_2_n_0 ),
        .I3(\v_count_reg_n_0_[6] ),
        .O(\v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_count[8]_i_2 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[5] ),
        .O(\v_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \v_count[9]_i_1 
       (.I0(\h_count[9]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(v_count));
  LUT6 #(
    .INIT(64'h7878780878787878)) 
    \v_count[9]_i_2 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count[9]_i_3_n_0 ),
        .I2(\v_count_reg_n_0_[9] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[0] ),
        .I5(\v_count[9]_i_4_n_0 ),
        .O(\v_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \v_count[9]_i_3 
       (.I0(\v_count_reg_n_0_[6] ),
        .I1(\v_count[8]_i_2_n_0 ),
        .I2(\v_count_reg_n_0_[7] ),
        .O(\v_count[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \v_count[9]_i_4 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(vs_i_2_n_0),
        .I3(\v_count_reg_n_0_[2] ),
        .O(\v_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(clk_25m),
        .CE(v_count),
        .D(\v_count[9]_i_2_n_0 ),
        .Q(\v_count_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hAA08AA080A080000)) 
    \vga_b[0]_INST_0 
       (.I0(\h_count_reg[8]_0 ),
        .I1(\vga_r[3]_0 ),
        .I2(\h_count_reg_n_0_[2] ),
        .I3(\vga_b[0]_INST_0_i_3_n_0 ),
        .I4(\vga_r[3]_1 ),
        .I5(\vga_b[0]_INST_0_i_5_n_0 ),
        .O(vga_r));
  LUT6 #(
    .INIT(64'h00000000FFFFFEAA)) 
    \vga_b[0]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\h_count_reg[5]_1 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\h_count_reg[8]_1 ),
        .O(\h_count_reg[8]_0 ));
  MUXF8 \vga_b[0]_INST_0_i_100 
       (.I0(\vga_b[0]_INST_0_i_202_n_0 ),
        .I1(\vga_b[0]_INST_0_i_203_n_0 ),
        .O(\vga_b[0]_INST_0_i_100_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_101 
       (.I0(\vga_b[0]_INST_0_i_204_n_0 ),
        .I1(\vga_b[0]_INST_0_i_205_n_0 ),
        .O(\vga_b[0]_INST_0_i_101_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_102 
       (.I0(g11_b1_n_0),
        .I1(g10_b1_n_0),
        .I2(sel[4]),
        .I3(g9_b1_n_0),
        .I4(sel[3]),
        .I5(g8_b1_n_0),
        .O(\vga_b[0]_INST_0_i_102_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_103 
       (.I0(\vga_b[0]_INST_0_i_206_n_0 ),
        .I1(\vga_b[0]_INST_0_i_207_n_0 ),
        .O(\vga_b[0]_INST_0_i_103_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_105 
       (.I0(\vga_b[0]_INST_0_i_210_n_0 ),
        .I1(\vga_b[0]_INST_0_i_211_n_0 ),
        .O(\vga_b[0]_INST_0_i_105_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_106 
       (.I0(\vga_b[0]_INST_0_i_212_n_0 ),
        .I1(\vga_b[0]_INST_0_i_213_n_0 ),
        .O(\vga_b[0]_INST_0_i_106_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_107 
       (.I0(\vga_b[0]_INST_0_i_214_n_0 ),
        .I1(\vga_b[0]_INST_0_i_215_n_0 ),
        .O(\vga_b[0]_INST_0_i_107_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_108 
       (.I0(\vga_b[0]_INST_0_i_216_n_0 ),
        .I1(\vga_b[0]_INST_0_i_217_n_0 ),
        .O(\vga_b[0]_INST_0_i_108_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_109 
       (.I0(\vga_b[0]_INST_0_i_218_n_0 ),
        .I1(\vga_b[0]_INST_0_i_219_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_220_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_221_n_0 ),
        .O(\vga_b[0]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_110 
       (.I0(\vga_b[0]_INST_0_i_222_n_0 ),
        .I1(\vga_b[0]_INST_0_i_223_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_224_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_225_n_0 ),
        .O(\vga_b[0]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_112 
       (.I0(\vga_b[0]_INST_0_i_230_n_0 ),
        .I1(\vga_b[0]_INST_0_i_231_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_232_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_233_n_0 ),
        .O(\vga_b[0]_INST_0_i_233_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_113 
       (.I0(\vga_b[0]_INST_0_i_234_n_0 ),
        .I1(\vga_b[0]_INST_0_i_235_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_236_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_237_n_0 ),
        .O(\vga_b[0]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_114 
       (.I0(\vga_b[0]_INST_0_i_238_n_0 ),
        .I1(\vga_b[0]_INST_0_i_239_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_240_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_46_0 ),
        .O(\vga_b[0]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_115 
       (.I0(\vga_b[0]_INST_0_i_242_n_0 ),
        .I1(\vga_b[0]_INST_0_i_243_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_244_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_245_n_0 ),
        .O(\vga_b[0]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_116 
       (.I0(\vga_b[0]_INST_0_i_246_n_0 ),
        .I1(\vga_b[0]_INST_0_i_247_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_248_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_249_n_0 ),
        .O(\vga_b[0]_INST_0_i_116_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_117 
       (.I0(g60_b0_n_0),
        .I1(g61_b0_n_0),
        .O(\vga_b[0]_INST_0_i_117_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_119 
       (.I0(g0_b0_n_0),
        .I1(g1_b0_n_0),
        .O(g1_b0_0),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_12 
       (.I0(\vga_b[0]_INST_0_i_30_n_0 ),
        .I1(\vga_b[0]_INST_0_i_31_n_0 ),
        .O(\vga_b[0]_INST_0_i_31_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_120 
       (.I0(g40_b2_n_0),
        .I1(g41_b2_n_0),
        .O(\vga_b[0]_INST_0_i_120_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_121 
       (.I0(g42_b2_n_0),
        .I1(g43_b2_n_0),
        .O(\vga_b[0]_INST_0_i_121_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_122 
       (.I0(g36_b2_n_0),
        .I1(g37_b2_n_0),
        .O(\vga_b[0]_INST_0_i_122_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_123 
       (.I0(g38_b2_n_0),
        .I1(g39_b2_n_0),
        .O(\vga_b[0]_INST_0_i_123_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_124 
       (.I0(g32_b2_n_0),
        .I1(g33_b2_n_0),
        .O(\vga_b[0]_INST_0_i_124_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_125 
       (.I0(g34_b2_n_0),
        .I1(g35_b2_n_0),
        .O(\vga_b[0]_INST_0_i_125_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_126 
       (.I0(g60_b2_n_0),
        .I1(g61_b2_n_0),
        .O(\vga_b[0]_INST_0_i_126_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_127 
       (.I0(g62_b2_n_0),
        .I1(g63_b2_n_0),
        .O(\vga_b[0]_INST_0_i_127_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_128 
       (.I0(g56_b2_n_0),
        .I1(g57_b2_n_0),
        .O(\vga_b[0]_INST_0_i_128_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_129 
       (.I0(g58_b2_n_0),
        .I1(g59_b2_n_0),
        .O(\vga_b[0]_INST_0_i_129_n_0 ),
        .S(sel[3]));
  MUXF8 \vga_b[0]_INST_0_i_13 
       (.I0(\vga_b[0]_INST_0_i_32_n_0 ),
        .I1(\vga_b[0]_INST_0_i_33_n_0 ),
        .O(\vga_display/font_data [4]),
        .S(sel[8]));
  MUXF7 \vga_b[0]_INST_0_i_130 
       (.I0(g12_b2_n_0),
        .I1(g13_b2_n_0),
        .O(\vga_b[0]_INST_0_i_130_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_131 
       (.I0(g14_b2_n_0),
        .I1(g15_b2_n_0),
        .O(\vga_b[0]_INST_0_i_131_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_132 
       (.I0(g4_b2_n_0),
        .I1(g5_b2_n_0),
        .O(\vga_b[0]_INST_0_i_132_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_133 
       (.I0(g6_b2_n_0),
        .I1(g7_b2_n_0),
        .O(\vga_b[0]_INST_0_i_133_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_134 
       (.I0(g0_b2_n_0),
        .I1(g1_b2_n_0),
        .O(\vga_b[0]_INST_0_i_134_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_135 
       (.I0(g2_b2_n_0),
        .I1(g3_b2_n_0),
        .O(\vga_b[0]_INST_0_i_135_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_136 
       (.I0(g28_b2_n_0),
        .I1(g29_b2_n_0),
        .O(\vga_b[0]_INST_0_i_136_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_137 
       (.I0(g30_b2_n_0),
        .I1(g31_b2_n_0),
        .O(\vga_b[0]_INST_0_i_137_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_138 
       (.I0(g24_b2_n_0),
        .I1(g25_b2_n_0),
        .O(\vga_b[0]_INST_0_i_138_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_139 
       (.I0(g26_b2_n_0),
        .I1(g27_b2_n_0),
        .O(\vga_b[0]_INST_0_i_139_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_140 
       (.I0(g20_b2_n_0),
        .I1(g21_b2_n_0),
        .O(\vga_b[0]_INST_0_i_140_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_141 
       (.I0(g22_b2_n_0),
        .I1(g23_b2_n_0),
        .O(\vga_b[0]_INST_0_i_141_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_142 
       (.I0(g16_b2_n_0),
        .I1(g17_b2_n_0),
        .O(g17_b2_0),
        .S(sel[3]));
  MUXF8 \vga_b[0]_INST_0_i_144 
       (.I0(\vga_b[0]_INST_0_i_250_n_0 ),
        .I1(\vga_b[0]_INST_0_i_251_n_0 ),
        .O(\vga_b[0]_INST_0_i_144_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_145 
       (.I0(\vga_b[0]_INST_0_i_252_n_0 ),
        .I1(\vga_b[0]_INST_0_i_253_n_0 ),
        .O(\vga_b[0]_INST_0_i_145_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_146 
       (.I0(\vga_b[0]_INST_0_i_254_n_0 ),
        .I1(\vga_b[0]_INST_0_i_255_n_0 ),
        .O(\vga_b[0]_INST_0_i_146_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_147 
       (.I0(\vga_b[0]_INST_0_i_256_n_0 ),
        .I1(\vga_b[0]_INST_0_i_257_n_0 ),
        .O(\vga_b[0]_INST_0_i_147_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_148 
       (.I0(\vga_b[0]_INST_0_i_258_n_0 ),
        .I1(\vga_b[0]_INST_0_i_259_n_0 ),
        .O(\vga_b[0]_INST_0_i_148_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_149 
       (.I0(\vga_b[0]_INST_0_i_260_n_0 ),
        .I1(\vga_b[0]_INST_0_i_261_n_0 ),
        .O(\vga_b[0]_INST_0_i_149_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_150 
       (.I0(\vga_b[0]_INST_0_i_262_n_0 ),
        .I1(\vga_b[0]_INST_0_i_263_n_0 ),
        .O(\vga_b[0]_INST_0_i_150_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_151 
       (.I0(\vga_b[0]_INST_0_i_264_n_0 ),
        .I1(\vga_b[0]_INST_0_i_265_n_0 ),
        .O(\vga_b[0]_INST_0_i_151_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_152 
       (.I0(\vga_b[0]_INST_0_i_266_n_0 ),
        .I1(\vga_b[0]_INST_0_i_267_n_0 ),
        .O(\vga_b[0]_INST_0_i_152_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_153 
       (.I0(\vga_b[0]_INST_0_i_268_n_0 ),
        .I1(\vga_b[0]_INST_0_i_269_n_0 ),
        .O(\vga_b[0]_INST_0_i_153_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_154 
       (.I0(\vga_b[0]_INST_0_i_270_n_0 ),
        .I1(\vga_b[0]_INST_0_i_271_n_0 ),
        .O(\vga_b[0]_INST_0_i_154_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_155 
       (.I0(\vga_b[0]_INST_0_i_272_n_0 ),
        .I1(\vga_b[0]_INST_0_i_273_n_0 ),
        .O(\vga_b[0]_INST_0_i_155_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_156 
       (.I0(\vga_b[0]_INST_0_i_274_n_0 ),
        .I1(\vga_b[0]_INST_0_i_275_n_0 ),
        .O(\vga_b[0]_INST_0_i_156_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_157 
       (.I0(\vga_b[0]_INST_0_i_276_n_0 ),
        .I1(\vga_b[0]_INST_0_i_277_n_0 ),
        .O(\vga_b[0]_INST_0_i_157_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_158 
       (.I0(g55_b7_n_0),
        .I1(g54_b3_n_0),
        .I2(sel[4]),
        .I3(g53_b4_n_0),
        .I4(sel[3]),
        .I5(g52_b4_n_0),
        .O(\vga_b[0]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_159 
       (.I0(g51_b4_n_0),
        .I1(g50_b4_n_0),
        .I2(sel[4]),
        .I3(g49_b4_n_0),
        .I4(sel[3]),
        .I5(g48_b3_n_0),
        .O(\vga_b[0]_INST_0_i_159_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_16 
       (.I0(\vga_b[0]_INST_0_i_38_n_0 ),
        .I1(\vga_b[0]_INST_0_i_39_n_0 ),
        .O(\vga_b[0]_INST_0_i_39_0 ),
        .S(sel[7]));
  MUXF8 \vga_b[0]_INST_0_i_160 
       (.I0(\vga_b[0]_INST_0_i_278_n_0 ),
        .I1(\vga_b[0]_INST_0_i_279_n_0 ),
        .O(\vga_b[0]_INST_0_i_160_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_161 
       (.I0(g11_b6_n_0),
        .I1(g10_b1_n_0),
        .I2(sel[4]),
        .I3(g9_b6_n_0),
        .I4(sel[3]),
        .I5(g8_b6_n_0),
        .O(\vga_b[0]_INST_0_i_161_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_162 
       (.I0(\vga_b[0]_INST_0_i_280_n_0 ),
        .I1(\vga_b[0]_INST_0_i_281_n_0 ),
        .O(\vga_b[0]_INST_0_i_162_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_164 
       (.I0(\vga_b[0]_INST_0_i_284_n_0 ),
        .I1(\vga_b[0]_INST_0_i_285_n_0 ),
        .O(\vga_b[0]_INST_0_i_285_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_169 
       (.I0(\vga_b[0]_INST_0_i_292_n_0 ),
        .I1(\vga_b[0]_INST_0_i_293_n_0 ),
        .O(\vga_b[0]_INST_0_i_293_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_170 
       (.I0(\vga_b[0]_INST_0_i_294_n_0 ),
        .I1(\vga_b[0]_INST_0_i_295_n_0 ),
        .O(\vga_b[0]_INST_0_i_295_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_171 
       (.I0(\vga_b[0]_INST_0_i_296_n_0 ),
        .I1(\vga_b[0]_INST_0_i_297_n_0 ),
        .O(\vga_b[0]_INST_0_i_297_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_172 
       (.I0(\vga_b[0]_INST_0_i_298_n_0 ),
        .I1(\vga_b[0]_INST_0_i_299_n_0 ),
        .O(\vga_b[0]_INST_0_i_172_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_173 
       (.I0(\vga_b[0]_INST_0_i_300_n_0 ),
        .I1(\vga_b[0]_INST_0_i_301_n_0 ),
        .O(\vga_b[0]_INST_0_i_173_n_0 ),
        .S(sel[4]));
  MUXF7 \vga_b[0]_INST_0_i_174 
       (.I0(g40_b7_n_0),
        .I1(g41_b7_n_0),
        .O(\vga_b[0]_INST_0_i_174_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_175 
       (.I0(g42_b7_n_0),
        .I1(g43_b7_n_0),
        .O(\vga_b[0]_INST_0_i_175_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_176 
       (.I0(g36_b7_n_0),
        .I1(g37_b7_n_0),
        .O(\vga_b[0]_INST_0_i_176_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_177 
       (.I0(g38_b7_n_0),
        .I1(g39_b7_n_0),
        .O(\vga_b[0]_INST_0_i_177_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_178 
       (.I0(g32_b7_n_0),
        .I1(g33_b7_n_0),
        .O(\vga_b[0]_INST_0_i_178_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_179 
       (.I0(g34_b7_n_0),
        .I1(g35_b7_n_0),
        .O(\vga_b[0]_INST_0_i_179_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_18 
       (.I0(\vga_b[0]_INST_0_i_42_n_0 ),
        .I1(\vga_b[0]_INST_0_i_43_n_0 ),
        .O(\vga_b[0]_INST_0_i_43_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_180 
       (.I0(g56_b7_n_0),
        .I1(g57_b7_n_0),
        .O(\vga_b[0]_INST_0_i_180_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_181 
       (.I0(g58_b7_n_0),
        .I1(g59_b7_n_0),
        .O(\vga_b[0]_INST_0_i_181_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_182 
       (.I0(g12_b7_n_0),
        .I1(g13_b7_n_0),
        .O(\vga_b[0]_INST_0_i_182_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_183 
       (.I0(g14_b7_n_0),
        .I1(g15_b7_n_0),
        .O(\vga_b[0]_INST_0_i_183_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_184 
       (.I0(g4_b7_n_0),
        .I1(g5_b7_n_0),
        .O(\vga_b[0]_INST_0_i_184_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_185 
       (.I0(g6_b7_n_0),
        .I1(g7_b7_n_0),
        .O(\vga_b[0]_INST_0_i_185_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_186 
       (.I0(g0_b7_n_0),
        .I1(g1_b7_n_0),
        .O(\vga_b[0]_INST_0_i_186_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_187 
       (.I0(g2_b7_n_0),
        .I1(g3_b7_n_0),
        .O(\vga_b[0]_INST_0_i_187_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_188 
       (.I0(g28_b7_n_0),
        .I1(g29_b7_n_0),
        .O(\vga_b[0]_INST_0_i_188_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_189 
       (.I0(g30_b7_n_0),
        .I1(g31_b7_n_0),
        .O(\vga_b[0]_INST_0_i_189_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_190 
       (.I0(g24_b7_n_0),
        .I1(g25_b7_n_0),
        .O(\vga_b[0]_INST_0_i_190_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_191 
       (.I0(g26_b7_n_0),
        .I1(g27_b7_n_0),
        .O(\vga_b[0]_INST_0_i_191_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_192 
       (.I0(g20_b7_n_0),
        .I1(g21_b7_n_0),
        .O(\vga_b[0]_INST_0_i_192_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_193 
       (.I0(g22_b7_n_0),
        .I1(g23_b7_n_0),
        .O(\vga_b[0]_INST_0_i_193_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_194 
       (.I0(g16_b7_n_0),
        .I1(g17_b7_n_0),
        .O(\vga_b[0]_INST_0_i_194_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_195 
       (.I0(g18_b7_n_0),
        .I1(g19_b7_n_0),
        .O(\vga_b[0]_INST_0_i_195_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_196 
       (.I0(g40_b1_n_0),
        .I1(g41_b1_n_0),
        .O(\vga_b[0]_INST_0_i_196_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_197 
       (.I0(g42_b1_n_0),
        .I1(g43_b1_n_0),
        .O(\vga_b[0]_INST_0_i_197_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_198 
       (.I0(g36_b1_n_0),
        .I1(g37_b1_n_0),
        .O(\vga_b[0]_INST_0_i_198_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_199 
       (.I0(g38_b1_n_0),
        .I1(g39_b1_n_0),
        .O(\vga_b[0]_INST_0_i_199_n_0 ),
        .S(sel[3]));
  MUXF8 \vga_b[0]_INST_0_i_20 
       (.I0(\vga_b[0]_INST_0_i_46_n_0 ),
        .I1(\vga_b[0]_INST_0_i_47_n_0 ),
        .O(\vga_display/font_data [5]),
        .S(sel[8]));
  MUXF7 \vga_b[0]_INST_0_i_200 
       (.I0(g32_b1_n_0),
        .I1(g33_b1_n_0),
        .O(\vga_b[0]_INST_0_i_200_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_201 
       (.I0(g34_b1_n_0),
        .I1(g35_b1_n_0),
        .O(\vga_b[0]_INST_0_i_201_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_202 
       (.I0(g56_b1_n_0),
        .I1(g57_b1_n_0),
        .O(\vga_b[0]_INST_0_i_202_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_203 
       (.I0(g58_b1_n_0),
        .I1(g59_b1_n_0),
        .O(\vga_b[0]_INST_0_i_203_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_204 
       (.I0(g12_b1_n_0),
        .I1(g13_b1_n_0),
        .O(\vga_b[0]_INST_0_i_204_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_205 
       (.I0(g14_b1_n_0),
        .I1(g15_b1_n_0),
        .O(\vga_b[0]_INST_0_i_205_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_206 
       (.I0(g4_b1_n_0),
        .I1(g5_b1_n_0),
        .O(\vga_b[0]_INST_0_i_206_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_207 
       (.I0(g6_b1_n_0),
        .I1(g7_b1_n_0),
        .O(\vga_b[0]_INST_0_i_207_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_208 
       (.I0(g0_b1_n_0),
        .I1(g1_b1_n_0),
        .O(g1_b1_0),
        .S(sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \vga_b[0]_INST_0_i_21 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\vga_b[0]_INST_0_i_21_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_210 
       (.I0(g28_b1_n_0),
        .I1(g29_b1_n_0),
        .O(\vga_b[0]_INST_0_i_210_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_211 
       (.I0(g30_b1_n_0),
        .I1(g31_b1_n_0),
        .O(\vga_b[0]_INST_0_i_211_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_212 
       (.I0(g24_b1_n_0),
        .I1(g25_b1_n_0),
        .O(\vga_b[0]_INST_0_i_212_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_213 
       (.I0(g26_b1_n_0),
        .I1(g27_b1_n_0),
        .O(\vga_b[0]_INST_0_i_213_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_214 
       (.I0(g20_b1_n_0),
        .I1(g21_b1_n_0),
        .O(\vga_b[0]_INST_0_i_214_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_215 
       (.I0(g22_b1_n_0),
        .I1(g23_b1_n_0),
        .O(\vga_b[0]_INST_0_i_215_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_216 
       (.I0(g16_b1_n_0),
        .I1(g17_b1_n_0),
        .O(\vga_b[0]_INST_0_i_216_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_217 
       (.I0(g18_b1_n_0),
        .I1(g19_b1_n_0),
        .O(\vga_b[0]_INST_0_i_217_n_0 ),
        .S(sel[3]));
  MUXF8 \vga_b[0]_INST_0_i_218 
       (.I0(\vga_b[0]_INST_0_i_302_n_0 ),
        .I1(\vga_b[0]_INST_0_i_303_n_0 ),
        .O(\vga_b[0]_INST_0_i_218_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_219 
       (.I0(\vga_b[0]_INST_0_i_304_n_0 ),
        .I1(\vga_b[0]_INST_0_i_305_n_0 ),
        .O(\vga_b[0]_INST_0_i_219_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000C0F)) 
    \vga_b[0]_INST_0_i_22 
       (.I0(\v_count[6]_i_2_n_0 ),
        .I1(text_ascii_carry_i_66_n_0),
        .I2(\vga_b[0]_INST_0_i_48_n_0 ),
        .I3(\v_count_reg_n_0_[5] ),
        .I4(\v_count_reg_n_0_[6] ),
        .I5(\v_count_reg_n_0_[9] ),
        .O(\vga_b[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_220 
       (.I0(g7_b3_n_0),
        .I1(g6_b3_n_0),
        .I2(sel[4]),
        .I3(g5_b3_n_0),
        .I4(sel[3]),
        .I5(g4_b3_n_0),
        .O(\vga_b[0]_INST_0_i_220_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_221 
       (.I0(\vga_b[0]_INST_0_i_306_n_0 ),
        .I1(\vga_b[0]_INST_0_i_307_n_0 ),
        .O(\vga_b[0]_INST_0_i_221_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_222 
       (.I0(\vga_b[0]_INST_0_i_308_n_0 ),
        .I1(\vga_b[0]_INST_0_i_309_n_0 ),
        .O(\vga_b[0]_INST_0_i_222_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_223 
       (.I0(\vga_b[0]_INST_0_i_310_n_0 ),
        .I1(\vga_b[0]_INST_0_i_311_n_0 ),
        .O(\vga_b[0]_INST_0_i_223_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_224 
       (.I0(\vga_b[0]_INST_0_i_312_n_0 ),
        .I1(\vga_b[0]_INST_0_i_313_n_0 ),
        .O(\vga_b[0]_INST_0_i_224_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_225 
       (.I0(\vga_b[0]_INST_0_i_314_n_0 ),
        .I1(\vga_b[0]_INST_0_i_315_n_0 ),
        .O(\vga_b[0]_INST_0_i_225_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_227 
       (.I0(\vga_b[0]_INST_0_i_318_n_0 ),
        .I1(\vga_b[0]_INST_0_i_319_n_0 ),
        .O(\vga_b[0]_INST_0_i_319_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_228 
       (.I0(\vga_b[0]_INST_0_i_320_n_0 ),
        .I1(\vga_b[0]_INST_0_i_321_n_0 ),
        .O(\vga_b[0]_INST_0_i_321_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_229 
       (.I0(\vga_b[0]_INST_0_i_322_n_0 ),
        .I1(\vga_b[0]_INST_0_i_323_n_0 ),
        .O(\vga_b[0]_INST_0_i_323_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_230 
       (.I0(\vga_b[0]_INST_0_i_324_n_0 ),
        .I1(\vga_b[0]_INST_0_i_325_n_0 ),
        .O(\vga_b[0]_INST_0_i_230_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_231 
       (.I0(\vga_b[0]_INST_0_i_326_n_0 ),
        .I1(\vga_b[0]_INST_0_i_327_n_0 ),
        .O(\vga_b[0]_INST_0_i_231_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_232 
       (.I0(g55_b0_n_0),
        .I1(g54_b3_n_0),
        .I2(sel[4]),
        .I3(g53_b3_n_0),
        .I4(sel[3]),
        .I5(g52_b3_n_0),
        .O(\vga_b[0]_INST_0_i_232_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_233 
       (.I0(g51_b3_n_0),
        .I1(g50_b3_n_0),
        .I2(sel[4]),
        .I3(g49_b3_n_0),
        .I4(sel[3]),
        .I5(g48_b3_n_0),
        .O(\vga_b[0]_INST_0_i_233_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_234 
       (.I0(\vga_b[0]_INST_0_i_328_n_0 ),
        .I1(\vga_b[0]_INST_0_i_329_n_0 ),
        .O(\vga_b[0]_INST_0_i_234_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_235 
       (.I0(g11_b5_n_0),
        .I1(g10_b5_n_0),
        .I2(sel[4]),
        .I3(g9_b5_n_0),
        .I4(sel[3]),
        .I5(g8_b2_n_0),
        .O(\vga_b[0]_INST_0_i_235_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_236 
       (.I0(g7_b3_n_0),
        .I1(g6_b5_n_0),
        .I2(sel[4]),
        .I3(g5_b5_n_0),
        .I4(sel[3]),
        .I5(g4_b5_n_0),
        .O(\vga_b[0]_INST_0_i_236_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_237 
       (.I0(\vga_b[0]_INST_0_i_330_n_0 ),
        .I1(\vga_b[0]_INST_0_i_331_n_0 ),
        .O(\vga_b[0]_INST_0_i_237_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_238 
       (.I0(\vga_b[0]_INST_0_i_332_n_0 ),
        .I1(\vga_b[0]_INST_0_i_333_n_0 ),
        .O(\vga_b[0]_INST_0_i_238_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_239 
       (.I0(\vga_b[0]_INST_0_i_334_n_0 ),
        .I1(\vga_b[0]_INST_0_i_335_n_0 ),
        .O(\vga_b[0]_INST_0_i_239_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_240 
       (.I0(\vga_b[0]_INST_0_i_336_n_0 ),
        .I1(\vga_b[0]_INST_0_i_337_n_0 ),
        .O(\vga_b[0]_INST_0_i_240_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_242 
       (.I0(g47_b5_n_0),
        .I1(g46_b5_n_0),
        .I2(sel[4]),
        .I3(g45_b5_n_0),
        .I4(sel[3]),
        .I5(\vga_b[0]_INST_0_i_115_0 ),
        .O(\vga_b[0]_INST_0_i_242_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_243 
       (.I0(\vga_b[0]_INST_0_i_340_n_0 ),
        .I1(\vga_b[0]_INST_0_i_341_n_0 ),
        .O(\vga_b[0]_INST_0_i_243_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_244 
       (.I0(\vga_b[0]_INST_0_i_342_n_0 ),
        .I1(\vga_b[0]_INST_0_i_343_n_0 ),
        .O(\vga_b[0]_INST_0_i_244_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_245 
       (.I0(\vga_b[0]_INST_0_i_344_n_0 ),
        .I1(\vga_b[0]_INST_0_i_345_n_0 ),
        .O(\vga_b[0]_INST_0_i_245_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_246 
       (.I0(\vga_b[0]_INST_0_i_346_n_0 ),
        .I1(\vga_b[0]_INST_0_i_347_n_0 ),
        .O(\vga_b[0]_INST_0_i_246_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_247 
       (.I0(\vga_b[0]_INST_0_i_348_n_0 ),
        .I1(\vga_b[0]_INST_0_i_349_n_0 ),
        .O(\vga_b[0]_INST_0_i_247_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_248 
       (.I0(g55_b7_n_0),
        .I1(g54_b7_n_0),
        .I2(sel[4]),
        .I3(g53_b5_n_0),
        .I4(sel[3]),
        .I5(g52_b1_n_0),
        .O(\vga_b[0]_INST_0_i_248_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_249 
       (.I0(g51_b5_n_0),
        .I1(g50_b4_n_0),
        .I2(sel[4]),
        .I3(g49_b5_n_0),
        .I4(sel[3]),
        .I5(\v_count_reg[0]_19 ),
        .O(\vga_b[0]_INST_0_i_249_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vga_b[0]_INST_0_i_25 
       (.I0(\vga_b[0]_INST_0_i_51_n_0 ),
        .I1(sel[6]),
        .I2(\vga_b[0]_INST_0_i_52_n_0 ),
        .I3(sel[5]),
        .I4(\vga_b[0]_INST_0_i_53_n_0 ),
        .O(\vga_b[0]_INST_0_i_53_0 ));
  MUXF7 \vga_b[0]_INST_0_i_250 
       (.I0(g12_b4_n_0),
        .I1(g13_b4_n_0),
        .O(\vga_b[0]_INST_0_i_250_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_251 
       (.I0(g14_b4_n_0),
        .I1(g15_b4_n_0),
        .O(\vga_b[0]_INST_0_i_251_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_252 
       (.I0(g8_b4_n_0),
        .I1(g9_b4_n_0),
        .O(\vga_b[0]_INST_0_i_252_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_253 
       (.I0(g10_b4_n_0),
        .I1(g11_b4_n_0),
        .O(\vga_b[0]_INST_0_i_253_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_254 
       (.I0(g4_b4_n_0),
        .I1(g5_b4_n_0),
        .O(\vga_b[0]_INST_0_i_254_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_255 
       (.I0(g6_b4_n_0),
        .I1(g7_b4_n_0),
        .O(\vga_b[0]_INST_0_i_255_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_256 
       (.I0(g0_b4_n_0),
        .I1(g1_b4_n_0),
        .O(\vga_b[0]_INST_0_i_256_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_257 
       (.I0(g2_b4_n_0),
        .I1(g3_b4_n_0),
        .O(\vga_b[0]_INST_0_i_257_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_258 
       (.I0(g28_b4_n_0),
        .I1(g29_b4_n_0),
        .O(\vga_b[0]_INST_0_i_258_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_259 
       (.I0(g30_b4_n_0),
        .I1(g31_b4_n_0),
        .O(\vga_b[0]_INST_0_i_259_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_260 
       (.I0(g24_b4_n_0),
        .I1(g25_b4_n_0),
        .O(\vga_b[0]_INST_0_i_260_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_261 
       (.I0(g26_b4_n_0),
        .I1(g27_b4_n_0),
        .O(\vga_b[0]_INST_0_i_261_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_262 
       (.I0(g20_b4_n_0),
        .I1(g21_b4_n_0),
        .O(\vga_b[0]_INST_0_i_262_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_263 
       (.I0(g22_b4_n_0),
        .I1(g23_b4_n_0),
        .O(\vga_b[0]_INST_0_i_263_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_264 
       (.I0(g16_b4_n_0),
        .I1(g17_b4_n_0),
        .O(\vga_b[0]_INST_0_i_264_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_265 
       (.I0(g18_b4_n_0),
        .I1(g19_b4_n_0),
        .O(\vga_b[0]_INST_0_i_265_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_266 
       (.I0(g44_b4_n_0),
        .I1(g45_b4_n_0),
        .O(\vga_b[0]_INST_0_i_266_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_267 
       (.I0(g46_b4_n_0),
        .I1(g47_b4_n_0),
        .O(\vga_b[0]_INST_0_i_267_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_268 
       (.I0(g40_b4_n_0),
        .I1(g41_b4_n_0),
        .O(\vga_b[0]_INST_0_i_268_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_269 
       (.I0(g42_b4_n_0),
        .I1(g43_b4_n_0),
        .O(\vga_b[0]_INST_0_i_269_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_270 
       (.I0(g36_b4_n_0),
        .I1(g37_b4_n_0),
        .O(\vga_b[0]_INST_0_i_270_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_271 
       (.I0(g38_b4_n_0),
        .I1(g39_b4_n_0),
        .O(\vga_b[0]_INST_0_i_271_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_272 
       (.I0(g32_b4_n_0),
        .I1(g33_b4_n_0),
        .O(\vga_b[0]_INST_0_i_272_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_273 
       (.I0(g34_b4_n_0),
        .I1(g35_b4_n_0),
        .O(\vga_b[0]_INST_0_i_273_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_274 
       (.I0(g60_b4_n_0),
        .I1(g61_b4_n_0),
        .O(\vga_b[0]_INST_0_i_274_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_275 
       (.I0(g62_b4_n_0),
        .I1(g63_b4_n_0),
        .O(\vga_b[0]_INST_0_i_275_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_276 
       (.I0(g56_b4_n_0),
        .I1(g57_b4_n_0),
        .O(\vga_b[0]_INST_0_i_276_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_277 
       (.I0(g58_b4_n_0),
        .I1(g59_b4_n_0),
        .O(\vga_b[0]_INST_0_i_277_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_278 
       (.I0(g12_b6_n_0),
        .I1(g13_b6_n_0),
        .O(\vga_b[0]_INST_0_i_278_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_279 
       (.I0(g14_b6_n_0),
        .I1(g15_b6_n_0),
        .O(\vga_b[0]_INST_0_i_279_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_280 
       (.I0(g4_b6_n_0),
        .I1(g5_b6_n_0),
        .O(\vga_b[0]_INST_0_i_280_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_281 
       (.I0(g6_b6_n_0),
        .I1(g7_b6_n_0),
        .O(\vga_b[0]_INST_0_i_281_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_282 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(g1_b6_0),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_284 
       (.I0(g28_b6_n_0),
        .I1(g29_b6_n_0),
        .O(\vga_b[0]_INST_0_i_284_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_285 
       (.I0(g30_b6_n_0),
        .I1(g31_b6_n_0),
        .O(\vga_b[0]_INST_0_i_285_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_286 
       (.I0(g24_b6_n_0),
        .I1(g25_b6_n_0),
        .O(g25_b6_0),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_288 
       (.I0(g20_b6_n_0),
        .I1(g21_b6_n_0),
        .O(g21_b6_0),
        .S(sel[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_29 
       (.I0(\vga_b[0]_INST_0_i_59_n_0 ),
        .I1(\vga_b[0]_INST_0_i_60_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_61_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_62_n_0 ),
        .O(\vga_b[0]_INST_0_i_62_0 ));
  MUXF7 \vga_b[0]_INST_0_i_290 
       (.I0(g16_b6_n_0),
        .I1(g17_b6_n_0),
        .O(g17_b6_0),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_292 
       (.I0(g40_b6_n_0),
        .I1(g41_b6_n_0),
        .O(\vga_b[0]_INST_0_i_292_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_293 
       (.I0(g42_b6_n_0),
        .I1(g43_b6_n_0),
        .O(\vga_b[0]_INST_0_i_293_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_294 
       (.I0(g36_b6_n_0),
        .I1(g37_b6_n_0),
        .O(\vga_b[0]_INST_0_i_294_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_295 
       (.I0(g38_b6_n_0),
        .I1(g39_b6_n_0),
        .O(\vga_b[0]_INST_0_i_295_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_296 
       (.I0(g32_b6_n_0),
        .I1(g33_b6_n_0),
        .O(\vga_b[0]_INST_0_i_296_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_297 
       (.I0(g34_b6_n_0),
        .I1(g35_b6_n_0),
        .O(\vga_b[0]_INST_0_i_297_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_298 
       (.I0(g60_b6_n_0),
        .I1(g61_b6_n_0),
        .O(\vga_b[0]_INST_0_i_298_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_299 
       (.I0(g62_b6_n_0),
        .I1(g63_b6_n_0),
        .O(\vga_b[0]_INST_0_i_299_n_0 ),
        .S(sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \vga_b[0]_INST_0_i_3 
       (.I0(\h_count_reg_n_0_[0] ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(\vga_display/font_data [4]),
        .I3(Q[0]),
        .I4(\vga_r[3] [1]),
        .O(\vga_b[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_30 
       (.I0(\vga_b[0]_INST_0_i_63_n_0 ),
        .I1(\vga_b[0]_INST_0_i_64_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_65_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_66_n_0 ),
        .O(\vga_b[0]_INST_0_i_30_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_300 
       (.I0(g56_b6_n_0),
        .I1(g57_b6_n_0),
        .O(\vga_b[0]_INST_0_i_300_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_301 
       (.I0(g58_b6_n_0),
        .I1(g59_b6_n_0),
        .O(\vga_b[0]_INST_0_i_301_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_302 
       (.I0(g12_b3_n_0),
        .I1(g13_b3_n_0),
        .O(\vga_b[0]_INST_0_i_302_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_303 
       (.I0(g14_b3_n_0),
        .I1(g15_b3_n_0),
        .O(\vga_b[0]_INST_0_i_303_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_304 
       (.I0(g8_b3_n_0),
        .I1(g9_b3_n_0),
        .O(\vga_b[0]_INST_0_i_304_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_305 
       (.I0(g10_b3_n_0),
        .I1(g11_b3_n_0),
        .O(\vga_b[0]_INST_0_i_305_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_306 
       (.I0(g0_b3_n_0),
        .I1(g1_b3_n_0),
        .O(\vga_b[0]_INST_0_i_306_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_307 
       (.I0(g2_b3_n_0),
        .I1(g3_b3_n_0),
        .O(\vga_b[0]_INST_0_i_307_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_308 
       (.I0(g28_b3_n_0),
        .I1(g29_b3_n_0),
        .O(\vga_b[0]_INST_0_i_308_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_309 
       (.I0(g30_b3_n_0),
        .I1(g31_b3_n_0),
        .O(\vga_b[0]_INST_0_i_309_n_0 ),
        .S(sel[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_31 
       (.I0(\vga_b[0]_INST_0_i_67_n_0 ),
        .I1(\vga_b[0]_INST_0_i_68_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_69_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_12_0 ),
        .O(\vga_b[0]_INST_0_i_31_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_310 
       (.I0(g24_b3_n_0),
        .I1(g25_b3_n_0),
        .O(\vga_b[0]_INST_0_i_310_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_311 
       (.I0(g26_b3_n_0),
        .I1(g27_b3_n_0),
        .O(\vga_b[0]_INST_0_i_311_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_312 
       (.I0(g20_b3_n_0),
        .I1(g21_b3_n_0),
        .O(\vga_b[0]_INST_0_i_312_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_313 
       (.I0(g22_b3_n_0),
        .I1(g23_b3_n_0),
        .O(\vga_b[0]_INST_0_i_313_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_314 
       (.I0(g16_b3_n_0),
        .I1(g17_b3_n_0),
        .O(\vga_b[0]_INST_0_i_314_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_315 
       (.I0(g18_b3_n_0),
        .I1(g19_b3_n_0),
        .O(\vga_b[0]_INST_0_i_315_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_317 
       (.I0(g46_b3_n_0),
        .I1(g47_b3_n_0),
        .O(g47_b3_0),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_318 
       (.I0(g40_b3_n_0),
        .I1(g41_b3_n_0),
        .O(\vga_b[0]_INST_0_i_318_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_319 
       (.I0(g42_b3_n_0),
        .I1(g43_b3_n_0),
        .O(\vga_b[0]_INST_0_i_319_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_32 
       (.I0(\vga_b[0]_INST_0_i_71_n_0 ),
        .I1(\vga_b[0]_INST_0_i_72_n_0 ),
        .O(\vga_b[0]_INST_0_i_32_n_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_320 
       (.I0(g36_b3_n_0),
        .I1(g37_b3_n_0),
        .O(\vga_b[0]_INST_0_i_320_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_321 
       (.I0(g38_b3_n_0),
        .I1(g39_b3_n_0),
        .O(\vga_b[0]_INST_0_i_321_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_322 
       (.I0(g32_b3_n_0),
        .I1(g33_b3_n_0),
        .O(\vga_b[0]_INST_0_i_322_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_323 
       (.I0(g34_b3_n_0),
        .I1(g35_b3_n_0),
        .O(\vga_b[0]_INST_0_i_323_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_324 
       (.I0(g60_b3_n_0),
        .I1(g61_b3_n_0),
        .O(\vga_b[0]_INST_0_i_324_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_325 
       (.I0(g62_b3_n_0),
        .I1(g63_b3_n_0),
        .O(\vga_b[0]_INST_0_i_325_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_326 
       (.I0(g56_b3_n_0),
        .I1(g57_b3_n_0),
        .O(\vga_b[0]_INST_0_i_326_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_327 
       (.I0(g58_b3_n_0),
        .I1(g59_b3_n_0),
        .O(\vga_b[0]_INST_0_i_327_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_328 
       (.I0(g12_b5_n_0),
        .I1(g13_b5_n_0),
        .O(\vga_b[0]_INST_0_i_328_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_329 
       (.I0(g14_b5_n_0),
        .I1(g15_b5_n_0),
        .O(\vga_b[0]_INST_0_i_329_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_33 
       (.I0(\vga_b[0]_INST_0_i_73_n_0 ),
        .I1(\vga_b[0]_INST_0_i_74_n_0 ),
        .O(\vga_b[0]_INST_0_i_33_n_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_330 
       (.I0(g0_b5_n_0),
        .I1(g1_b5_n_0),
        .O(\vga_b[0]_INST_0_i_330_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_331 
       (.I0(g2_b5_n_0),
        .I1(g3_b5_n_0),
        .O(\vga_b[0]_INST_0_i_331_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_332 
       (.I0(g28_b5_n_0),
        .I1(g29_b5_n_0),
        .O(\vga_b[0]_INST_0_i_332_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_333 
       (.I0(g30_b5_n_0),
        .I1(g31_b5_n_0),
        .O(\vga_b[0]_INST_0_i_333_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_334 
       (.I0(g24_b5_n_0),
        .I1(g25_b5_n_0),
        .O(\vga_b[0]_INST_0_i_334_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_335 
       (.I0(g26_b5_n_0),
        .I1(g27_b5_n_0),
        .O(\vga_b[0]_INST_0_i_335_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_336 
       (.I0(g20_b5_n_0),
        .I1(g21_b5_n_0),
        .O(\vga_b[0]_INST_0_i_336_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_337 
       (.I0(g22_b5_n_0),
        .I1(g23_b5_n_0),
        .O(\vga_b[0]_INST_0_i_337_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_339 
       (.I0(g18_b5_n_0),
        .I1(g19_b5_n_0),
        .O(g19_b5_0),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_340 
       (.I0(g40_b5_n_0),
        .I1(g41_b5_n_0),
        .O(\vga_b[0]_INST_0_i_340_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_341 
       (.I0(g42_b5_n_0),
        .I1(g43_b5_n_0),
        .O(\vga_b[0]_INST_0_i_341_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_342 
       (.I0(g36_b5_n_0),
        .I1(g37_b5_n_0),
        .O(\vga_b[0]_INST_0_i_342_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_343 
       (.I0(g38_b5_n_0),
        .I1(g39_b5_n_0),
        .O(\vga_b[0]_INST_0_i_343_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_344 
       (.I0(g32_b5_n_0),
        .I1(g33_b5_n_0),
        .O(\vga_b[0]_INST_0_i_344_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_345 
       (.I0(g34_b5_n_0),
        .I1(g35_b5_n_0),
        .O(\vga_b[0]_INST_0_i_345_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_346 
       (.I0(g60_b5_n_0),
        .I1(g61_b5_n_0),
        .O(\vga_b[0]_INST_0_i_346_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_347 
       (.I0(g62_b5_n_0),
        .I1(g63_b5_n_0),
        .O(\vga_b[0]_INST_0_i_347_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_348 
       (.I0(g56_b5_n_0),
        .I1(g57_b5_n_0),
        .O(\vga_b[0]_INST_0_i_348_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_349 
       (.I0(g58_b5_n_0),
        .I1(g59_b5_n_0),
        .O(\vga_b[0]_INST_0_i_349_n_0 ),
        .S(sel[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_37 
       (.I0(\vga_b[0]_INST_0_i_83_n_0 ),
        .I1(\vga_b[0]_INST_0_i_84_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_85_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_15 ),
        .O(\vga_b[0]_INST_0_i_86_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_38 
       (.I0(\vga_b[0]_INST_0_i_87_n_0 ),
        .I1(\vga_b[0]_INST_0_i_88_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_89_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_90_n_0 ),
        .O(\vga_b[0]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_39 
       (.I0(\vga_b[0]_INST_0_i_91_n_0 ),
        .I1(\vga_b[0]_INST_0_i_92_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_93_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_94_n_0 ),
        .O(\vga_b[0]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_41 
       (.I0(\vga_b[0]_INST_0_i_99_n_0 ),
        .I1(\vga_b[0]_INST_0_i_100_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_61_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_62_n_0 ),
        .O(\vga_b[0]_INST_0_i_62_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_42 
       (.I0(\vga_b[0]_INST_0_i_101_n_0 ),
        .I1(\vga_b[0]_INST_0_i_102_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_103_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_18_0 ),
        .O(\vga_b[0]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_43 
       (.I0(\vga_b[0]_INST_0_i_105_n_0 ),
        .I1(\vga_b[0]_INST_0_i_106_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_107_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_108_n_0 ),
        .O(\vga_b[0]_INST_0_i_43_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_44 
       (.I0(\vga_b[0]_INST_0_i_109_n_0 ),
        .I1(\vga_b[0]_INST_0_i_110_n_0 ),
        .O(\vga_b[0]_INST_0_i_110_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_46 
       (.I0(\vga_b[0]_INST_0_i_113_n_0 ),
        .I1(\vga_b[0]_INST_0_i_114_n_0 ),
        .O(\vga_b[0]_INST_0_i_46_n_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_47 
       (.I0(\vga_b[0]_INST_0_i_115_n_0 ),
        .I1(\vga_b[0]_INST_0_i_116_n_0 ),
        .O(\vga_b[0]_INST_0_i_47_n_0 ),
        .S(sel[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \vga_b[0]_INST_0_i_48 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[7] ),
        .O(\vga_b[0]_INST_0_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8A80FFFF)) 
    \vga_b[0]_INST_0_i_5 
       (.I0(\h_count_reg_n_0_[2] ),
        .I1(\vga_r[3] [0]),
        .I2(Q[0]),
        .I3(\vga_display/font_data [5]),
        .I4(\h_count_reg_n_0_[0] ),
        .O(\vga_b[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0FC000C0A0C0A0C0)) 
    \vga_b[0]_INST_0_i_51 
       (.I0(g62_b0_n_0),
        .I1(\vga_b[0]_INST_0_i_117_n_0 ),
        .I2(sel[5]),
        .I3(sel[4]),
        .I4(g59_b0_n_0),
        .I5(sel[3]),
        .O(\vga_b[0]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_52 
       (.I0(g55_b0_n_0),
        .I1(g54_b0_n_0),
        .I2(sel[4]),
        .I3(g53_b0_n_0),
        .I4(sel[3]),
        .I5(\v_count_reg[0]_17 ),
        .O(\vga_b[0]_INST_0_i_52_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vga_b[0]_INST_0_i_53 
       (.I0(g50_b0_n_0),
        .I1(sel[4]),
        .I2(g49_b0_n_0),
        .I3(sel[3]),
        .I4(g48_b0_n_0),
        .O(\vga_b[0]_INST_0_i_53_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_56 
       (.I0(\vga_b[0]_INST_0_i_120_n_0 ),
        .I1(\vga_b[0]_INST_0_i_121_n_0 ),
        .O(\vga_b[0]_INST_0_i_121_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_57 
       (.I0(\vga_b[0]_INST_0_i_122_n_0 ),
        .I1(\vga_b[0]_INST_0_i_123_n_0 ),
        .O(\vga_b[0]_INST_0_i_123_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_58 
       (.I0(\vga_b[0]_INST_0_i_124_n_0 ),
        .I1(\vga_b[0]_INST_0_i_125_n_0 ),
        .O(\vga_b[0]_INST_0_i_125_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_59 
       (.I0(\vga_b[0]_INST_0_i_126_n_0 ),
        .I1(\vga_b[0]_INST_0_i_127_n_0 ),
        .O(\vga_b[0]_INST_0_i_59_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \vga_b[0]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\h_count_reg_n_0_[2] ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(\h_count_reg[5]_1 ));
  MUXF8 \vga_b[0]_INST_0_i_60 
       (.I0(\vga_b[0]_INST_0_i_128_n_0 ),
        .I1(\vga_b[0]_INST_0_i_129_n_0 ),
        .O(\vga_b[0]_INST_0_i_60_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_61 
       (.I0(g55_b0_n_0),
        .I1(g54_b0_n_0),
        .I2(sel[4]),
        .I3(g53_b1_n_0),
        .I4(sel[3]),
        .I5(g52_b1_n_0),
        .O(\vga_b[0]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_62 
       (.I0(g51_b1_n_0),
        .I1(g50_b1_n_0),
        .I2(sel[4]),
        .I3(g49_b1_n_0),
        .I4(sel[3]),
        .I5(g48_b0_n_0),
        .O(\vga_b[0]_INST_0_i_62_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_63 
       (.I0(\vga_b[0]_INST_0_i_130_n_0 ),
        .I1(\vga_b[0]_INST_0_i_131_n_0 ),
        .O(\vga_b[0]_INST_0_i_63_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_64 
       (.I0(g11_b2_n_0),
        .I1(g10_b2_n_0),
        .I2(sel[4]),
        .I3(g9_b2_n_0),
        .I4(sel[3]),
        .I5(g8_b2_n_0),
        .O(\vga_b[0]_INST_0_i_64_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_65 
       (.I0(\vga_b[0]_INST_0_i_132_n_0 ),
        .I1(\vga_b[0]_INST_0_i_133_n_0 ),
        .O(\vga_b[0]_INST_0_i_65_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_66 
       (.I0(\vga_b[0]_INST_0_i_134_n_0 ),
        .I1(\vga_b[0]_INST_0_i_135_n_0 ),
        .O(\vga_b[0]_INST_0_i_66_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_67 
       (.I0(\vga_b[0]_INST_0_i_136_n_0 ),
        .I1(\vga_b[0]_INST_0_i_137_n_0 ),
        .O(\vga_b[0]_INST_0_i_67_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_68 
       (.I0(\vga_b[0]_INST_0_i_138_n_0 ),
        .I1(\vga_b[0]_INST_0_i_139_n_0 ),
        .O(\vga_b[0]_INST_0_i_68_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_69 
       (.I0(\vga_b[0]_INST_0_i_140_n_0 ),
        .I1(\vga_b[0]_INST_0_i_141_n_0 ),
        .O(\vga_b[0]_INST_0_i_69_n_0 ),
        .S(sel[4]));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    \vga_b[0]_INST_0_i_7 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\h_count_reg[4]_0 ),
        .I3(\vga_b[0]_INST_0_i_21_n_0 ),
        .I4(\vga_b[0]_INST_0_i_22_n_0 ),
        .O(\h_count_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_71 
       (.I0(\vga_b[0]_INST_0_i_144_n_0 ),
        .I1(\vga_b[0]_INST_0_i_145_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_146_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_147_n_0 ),
        .O(\vga_b[0]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_72 
       (.I0(\vga_b[0]_INST_0_i_148_n_0 ),
        .I1(\vga_b[0]_INST_0_i_149_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_150_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_151_n_0 ),
        .O(\vga_b[0]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_73 
       (.I0(\vga_b[0]_INST_0_i_152_n_0 ),
        .I1(\vga_b[0]_INST_0_i_153_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_154_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_155_n_0 ),
        .O(\vga_b[0]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_74 
       (.I0(\vga_b[0]_INST_0_i_156_n_0 ),
        .I1(\vga_b[0]_INST_0_i_157_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_158_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_159_n_0 ),
        .O(\vga_b[0]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_75 
       (.I0(\vga_b[0]_INST_0_i_160_n_0 ),
        .I1(\vga_b[0]_INST_0_i_161_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_162_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_34 ),
        .O(\vga_b[0]_INST_0_i_163 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_78 
       (.I0(\vga_b[0]_INST_0_i_172_n_0 ),
        .I1(\vga_b[0]_INST_0_i_173_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_85_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_15 ),
        .O(\vga_b[0]_INST_0_i_86 ));
  MUXF8 \vga_b[0]_INST_0_i_80 
       (.I0(\vga_b[0]_INST_0_i_174_n_0 ),
        .I1(\vga_b[0]_INST_0_i_175_n_0 ),
        .O(\vga_b[0]_INST_0_i_175_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_81 
       (.I0(\vga_b[0]_INST_0_i_176_n_0 ),
        .I1(\vga_b[0]_INST_0_i_177_n_0 ),
        .O(\vga_b[0]_INST_0_i_177_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_82 
       (.I0(\vga_b[0]_INST_0_i_178_n_0 ),
        .I1(\vga_b[0]_INST_0_i_179_n_0 ),
        .O(\vga_b[0]_INST_0_i_179_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_83 
       (.I0(g63_b7_n_0),
        .I1(g53_b7_n_0),
        .I2(sel[4]),
        .I3(g61_b7_n_0),
        .I4(sel[3]),
        .I5(g60_b7_n_0),
        .O(\vga_b[0]_INST_0_i_83_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_84 
       (.I0(\vga_b[0]_INST_0_i_180_n_0 ),
        .I1(\vga_b[0]_INST_0_i_181_n_0 ),
        .O(\vga_b[0]_INST_0_i_84_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_85 
       (.I0(g55_b7_n_0),
        .I1(g54_b7_n_0),
        .I2(sel[4]),
        .I3(g53_b7_n_0),
        .I4(sel[3]),
        .I5(g52_b7_n_0),
        .O(\vga_b[0]_INST_0_i_85_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_87 
       (.I0(\vga_b[0]_INST_0_i_182_n_0 ),
        .I1(\vga_b[0]_INST_0_i_183_n_0 ),
        .O(\vga_b[0]_INST_0_i_87_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_88 
       (.I0(g11_b7_n_0),
        .I1(\v_count_reg[0]_8 ),
        .I2(sel[4]),
        .I3(g9_b7_n_0),
        .I4(sel[3]),
        .I5(g8_b7_n_0),
        .O(\vga_b[0]_INST_0_i_88_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_89 
       (.I0(\vga_b[0]_INST_0_i_184_n_0 ),
        .I1(\vga_b[0]_INST_0_i_185_n_0 ),
        .O(\vga_b[0]_INST_0_i_89_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_90 
       (.I0(\vga_b[0]_INST_0_i_186_n_0 ),
        .I1(\vga_b[0]_INST_0_i_187_n_0 ),
        .O(\vga_b[0]_INST_0_i_90_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_91 
       (.I0(\vga_b[0]_INST_0_i_188_n_0 ),
        .I1(\vga_b[0]_INST_0_i_189_n_0 ),
        .O(\vga_b[0]_INST_0_i_91_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_92 
       (.I0(\vga_b[0]_INST_0_i_190_n_0 ),
        .I1(\vga_b[0]_INST_0_i_191_n_0 ),
        .O(\vga_b[0]_INST_0_i_92_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_93 
       (.I0(\vga_b[0]_INST_0_i_192_n_0 ),
        .I1(\vga_b[0]_INST_0_i_193_n_0 ),
        .O(\vga_b[0]_INST_0_i_93_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_94 
       (.I0(\vga_b[0]_INST_0_i_194_n_0 ),
        .I1(\vga_b[0]_INST_0_i_195_n_0 ),
        .O(\vga_b[0]_INST_0_i_94_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_96 
       (.I0(\vga_b[0]_INST_0_i_196_n_0 ),
        .I1(\vga_b[0]_INST_0_i_197_n_0 ),
        .O(\vga_b[0]_INST_0_i_197_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_97 
       (.I0(\vga_b[0]_INST_0_i_198_n_0 ),
        .I1(\vga_b[0]_INST_0_i_199_n_0 ),
        .O(\vga_b[0]_INST_0_i_199_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_98 
       (.I0(\vga_b[0]_INST_0_i_200_n_0 ),
        .I1(\vga_b[0]_INST_0_i_201_n_0 ),
        .O(\vga_b[0]_INST_0_i_201_0 ),
        .S(sel[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \vga_b[0]_INST_0_i_99 
       (.I0(g62_b0_n_0),
        .I1(sel[4]),
        .I2(g61_b1_n_0),
        .I3(sel[3]),
        .I4(g60_b1_n_0),
        .O(\vga_b[0]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vs_i_1
       (.I0(vs_i_2_n_0),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[9] ),
        .I3(\v_count_reg_n_0_[2] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(v_sync));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    vs_i_2
       (.I0(\v_count_reg_n_0_[7] ),
        .I1(\v_count_reg_n_0_[8] ),
        .I2(\v_count_reg_n_0_[5] ),
        .I3(\v_count_reg_n_0_[6] ),
        .O(vs_i_2_n_0));
  FDSE vs_reg
       (.C(clk_25m),
        .CE(1'b1),
        .D(v_sync),
        .Q(vs),
        .S(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDebugger
   (\display_addr_reg[10]_0 ,
    \display_addr_reg[5]_0 ,
    ADDRD,
    \display_addr_reg[1]_rep_0 ,
    \display_addr_reg[3]_rep__0_0 ,
    \display_addr_reg[10]_1 ,
    \display_addr_reg[7]_0 ,
    \display_addr_reg[3]_rep_0 ,
    \display_addr_reg[7]_1 ,
    \display_addr_reg[7]_2 ,
    \display_addr_reg[7]_3 ,
    \display_addr_reg[8]_0 ,
    \display_addr_reg[8]_1 ,
    \display_addr_reg[8]_2 ,
    \display_addr_reg[9]_0 ,
    \display_addr_reg[9]_1 ,
    \display_addr_reg[6]_0 ,
    \display_addr_reg[6]_1 ,
    \display_addr_reg[6]_2 ,
    \display_addr_reg[6]_3 ,
    \display_addr_reg[6]_4 ,
    \display_addr_reg[3]_rep__0_1 ,
    \display_addr_reg[6]_5 ,
    \display_addr_reg[7]_4 ,
    \display_addr_reg[7]_5 ,
    \display_addr_reg[8]_3 ,
    \display_addr_reg[8]_4 ,
    \display_addr_reg[3]_rep__0_2 ,
    \display_addr_reg[3]_rep__0_3 ,
    \display_addr_reg[9]_2 ,
    \display_addr_reg[9]_3 ,
    \display_addr_reg[3]_rep__0_4 ,
    \display_addr_reg[3]_rep__0_5 ,
    \display_addr_reg[3]_rep__0_6 ,
    \display_addr_reg[3]_rep__0_7 ,
    \display_addr_reg[9]_4 ,
    \display_addr_reg[10]_2 ,
    \display_addr_reg[10]_3 ,
    \display_addr_reg[10]_4 ,
    \display_addr_reg[3]_rep_1 ,
    \display_addr_reg[3]_rep_2 ,
    \display_addr_reg[3]_rep_3 ,
    \display_addr_reg[3]_rep_4 ,
    \display_addr_reg[3]_rep_5 ,
    \display_addr_reg[3]_rep_6 ,
    \display_addr_reg[3]_rep_7 ,
    \display_addr_reg[3]_rep_8 ,
    \display_addr_reg[10]_5 ,
    \display_addr_reg[11]_0 ,
    \display_addr_reg[11]_1 ,
    \display_addr_reg[11]_2 ,
    \display_addr_reg[3]_0 ,
    \display_addr_reg[3]_1 ,
    \display_addr_reg[3]_2 ,
    \display_addr_reg[3]_3 ,
    \display_addr_reg[3]_4 ,
    \display_addr_reg[3]_5 ,
    \display_addr_reg[3]_rep__0_8 ,
    \display_addr_reg[3]_rep__0_9 ,
    \display_addr_reg[3]_rep__0_10 ,
    \display_addr_reg[3]_rep__0_11 ,
    \display_addr_reg[3]_rep__0_12 ,
    \display_addr_reg[3]_rep__0_13 ,
    \display_addr_reg[3]_rep__0_14 ,
    \display_addr_reg[3]_rep__0_15 ,
    \display_addr_reg[3]_6 ,
    \display_addr_reg[11]_3 ,
    \display_addr_reg[11]_4 ,
    \display_addr_reg[11]_5 ,
    \display_addr_reg[0]_rep__1_0 ,
    display_w_data,
    inst,
    dmem_o_data,
    dmem_i_data,
    mem_wen,
    alu_res,
    clk_100m,
    pc,
    dmem_addr);
  output \display_addr_reg[10]_0 ;
  output [4:0]\display_addr_reg[5]_0 ;
  output [2:0]ADDRD;
  output [1:0]\display_addr_reg[1]_rep_0 ;
  output \display_addr_reg[3]_rep__0_0 ;
  output \display_addr_reg[10]_1 ;
  output \display_addr_reg[7]_0 ;
  output [0:0]\display_addr_reg[3]_rep_0 ;
  output \display_addr_reg[7]_1 ;
  output \display_addr_reg[7]_2 ;
  output \display_addr_reg[7]_3 ;
  output \display_addr_reg[8]_0 ;
  output \display_addr_reg[8]_1 ;
  output \display_addr_reg[8]_2 ;
  output \display_addr_reg[9]_0 ;
  output \display_addr_reg[9]_1 ;
  output \display_addr_reg[6]_0 ;
  output \display_addr_reg[6]_1 ;
  output \display_addr_reg[6]_2 ;
  output \display_addr_reg[6]_3 ;
  output \display_addr_reg[6]_4 ;
  output \display_addr_reg[3]_rep__0_1 ;
  output \display_addr_reg[6]_5 ;
  output \display_addr_reg[7]_4 ;
  output \display_addr_reg[7]_5 ;
  output \display_addr_reg[8]_3 ;
  output \display_addr_reg[8]_4 ;
  output \display_addr_reg[3]_rep__0_2 ;
  output \display_addr_reg[3]_rep__0_3 ;
  output \display_addr_reg[9]_2 ;
  output \display_addr_reg[9]_3 ;
  output \display_addr_reg[3]_rep__0_4 ;
  output \display_addr_reg[3]_rep__0_5 ;
  output \display_addr_reg[3]_rep__0_6 ;
  output \display_addr_reg[3]_rep__0_7 ;
  output \display_addr_reg[9]_4 ;
  output \display_addr_reg[10]_2 ;
  output \display_addr_reg[10]_3 ;
  output \display_addr_reg[10]_4 ;
  output \display_addr_reg[3]_rep_1 ;
  output \display_addr_reg[3]_rep_2 ;
  output \display_addr_reg[3]_rep_3 ;
  output \display_addr_reg[3]_rep_4 ;
  output \display_addr_reg[3]_rep_5 ;
  output \display_addr_reg[3]_rep_6 ;
  output \display_addr_reg[3]_rep_7 ;
  output \display_addr_reg[3]_rep_8 ;
  output \display_addr_reg[10]_5 ;
  output \display_addr_reg[11]_0 ;
  output \display_addr_reg[11]_1 ;
  output \display_addr_reg[11]_2 ;
  output \display_addr_reg[3]_0 ;
  output \display_addr_reg[3]_1 ;
  output \display_addr_reg[3]_2 ;
  output \display_addr_reg[3]_3 ;
  output \display_addr_reg[3]_4 ;
  output \display_addr_reg[3]_5 ;
  output \display_addr_reg[3]_rep__0_8 ;
  output \display_addr_reg[3]_rep__0_9 ;
  output \display_addr_reg[3]_rep__0_10 ;
  output \display_addr_reg[3]_rep__0_11 ;
  output \display_addr_reg[3]_rep__0_12 ;
  output \display_addr_reg[3]_rep__0_13 ;
  output \display_addr_reg[3]_rep__0_14 ;
  output \display_addr_reg[3]_rep__0_15 ;
  output \display_addr_reg[3]_6 ;
  output \display_addr_reg[11]_3 ;
  output \display_addr_reg[11]_4 ;
  output \display_addr_reg[11]_5 ;
  output \display_addr_reg[0]_rep__1_0 ;
  output [4:0]display_w_data;
  input [31:0]inst;
  input [31:0]dmem_o_data;
  input [31:0]dmem_i_data;
  input mem_wen;
  input [31:0]alu_res;
  input clk_100m;
  input [31:0]pc;
  input [31:0]dmem_addr;

  wire [2:0]ADDRD;
  wire [31:0]alu_res;
  wire clk_100m;
  wire [11:1]data0;
  wire \display_addr[0]_i_1_n_0 ;
  wire \display_addr[0]_rep__0_i_1_n_0 ;
  wire \display_addr[0]_rep__1_i_1_n_0 ;
  wire \display_addr[0]_rep_i_1_n_0 ;
  wire \display_addr[11]_i_1_n_0 ;
  wire \display_addr[11]_i_3_n_0 ;
  wire \display_addr[11]_i_4_n_0 ;
  wire \display_addr[11]_i_5_n_0 ;
  wire \display_addr_reg[0]_rep__1_0 ;
  wire \display_addr_reg[10]_0 ;
  wire \display_addr_reg[10]_1 ;
  wire \display_addr_reg[10]_2 ;
  wire \display_addr_reg[10]_3 ;
  wire \display_addr_reg[10]_4 ;
  wire \display_addr_reg[10]_5 ;
  wire \display_addr_reg[11]_0 ;
  wire \display_addr_reg[11]_1 ;
  wire \display_addr_reg[11]_2 ;
  wire \display_addr_reg[11]_3 ;
  wire \display_addr_reg[11]_4 ;
  wire \display_addr_reg[11]_5 ;
  wire \display_addr_reg[11]_i_2_n_2 ;
  wire \display_addr_reg[11]_i_2_n_3 ;
  wire [1:0]\display_addr_reg[1]_rep_0 ;
  wire \display_addr_reg[3]_0 ;
  wire \display_addr_reg[3]_1 ;
  wire \display_addr_reg[3]_2 ;
  wire \display_addr_reg[3]_3 ;
  wire \display_addr_reg[3]_4 ;
  wire \display_addr_reg[3]_5 ;
  wire \display_addr_reg[3]_6 ;
  wire [0:0]\display_addr_reg[3]_rep_0 ;
  wire \display_addr_reg[3]_rep_1 ;
  wire \display_addr_reg[3]_rep_2 ;
  wire \display_addr_reg[3]_rep_3 ;
  wire \display_addr_reg[3]_rep_4 ;
  wire \display_addr_reg[3]_rep_5 ;
  wire \display_addr_reg[3]_rep_6 ;
  wire \display_addr_reg[3]_rep_7 ;
  wire \display_addr_reg[3]_rep_8 ;
  wire \display_addr_reg[3]_rep__0_0 ;
  wire \display_addr_reg[3]_rep__0_1 ;
  wire \display_addr_reg[3]_rep__0_10 ;
  wire \display_addr_reg[3]_rep__0_11 ;
  wire \display_addr_reg[3]_rep__0_12 ;
  wire \display_addr_reg[3]_rep__0_13 ;
  wire \display_addr_reg[3]_rep__0_14 ;
  wire \display_addr_reg[3]_rep__0_15 ;
  wire \display_addr_reg[3]_rep__0_2 ;
  wire \display_addr_reg[3]_rep__0_3 ;
  wire \display_addr_reg[3]_rep__0_4 ;
  wire \display_addr_reg[3]_rep__0_5 ;
  wire \display_addr_reg[3]_rep__0_6 ;
  wire \display_addr_reg[3]_rep__0_7 ;
  wire \display_addr_reg[3]_rep__0_8 ;
  wire \display_addr_reg[3]_rep__0_9 ;
  wire \display_addr_reg[4]_i_1_n_0 ;
  wire \display_addr_reg[4]_i_1_n_1 ;
  wire \display_addr_reg[4]_i_1_n_2 ;
  wire \display_addr_reg[4]_i_1_n_3 ;
  wire [4:0]\display_addr_reg[5]_0 ;
  wire \display_addr_reg[6]_0 ;
  wire \display_addr_reg[6]_1 ;
  wire \display_addr_reg[6]_2 ;
  wire \display_addr_reg[6]_3 ;
  wire \display_addr_reg[6]_4 ;
  wire \display_addr_reg[6]_5 ;
  wire \display_addr_reg[7]_0 ;
  wire \display_addr_reg[7]_1 ;
  wire \display_addr_reg[7]_2 ;
  wire \display_addr_reg[7]_3 ;
  wire \display_addr_reg[7]_4 ;
  wire \display_addr_reg[7]_5 ;
  wire \display_addr_reg[8]_0 ;
  wire \display_addr_reg[8]_1 ;
  wire \display_addr_reg[8]_2 ;
  wire \display_addr_reg[8]_3 ;
  wire \display_addr_reg[8]_4 ;
  wire \display_addr_reg[8]_i_1_n_0 ;
  wire \display_addr_reg[8]_i_1_n_1 ;
  wire \display_addr_reg[8]_i_1_n_2 ;
  wire \display_addr_reg[8]_i_1_n_3 ;
  wire \display_addr_reg[9]_0 ;
  wire \display_addr_reg[9]_1 ;
  wire \display_addr_reg[9]_2 ;
  wire \display_addr_reg[9]_3 ;
  wire \display_addr_reg[9]_4 ;
  wire display_data_reg_0_63_0_2_i_100_n_0;
  wire display_data_reg_0_63_0_2_i_101_n_0;
  wire display_data_reg_0_63_0_2_i_102_n_0;
  wire display_data_reg_0_63_0_2_i_103_n_0;
  wire display_data_reg_0_63_0_2_i_104_n_0;
  wire display_data_reg_0_63_0_2_i_105_n_0;
  wire display_data_reg_0_63_0_2_i_106_n_0;
  wire display_data_reg_0_63_0_2_i_107_n_0;
  wire display_data_reg_0_63_0_2_i_108_n_0;
  wire display_data_reg_0_63_0_2_i_109_n_0;
  wire display_data_reg_0_63_0_2_i_10_n_0;
  wire display_data_reg_0_63_0_2_i_110_n_0;
  wire display_data_reg_0_63_0_2_i_111_n_0;
  wire display_data_reg_0_63_0_2_i_112_n_0;
  wire display_data_reg_0_63_0_2_i_113_n_0;
  wire display_data_reg_0_63_0_2_i_114_n_0;
  wire display_data_reg_0_63_0_2_i_115_n_0;
  wire display_data_reg_0_63_0_2_i_116_n_0;
  wire display_data_reg_0_63_0_2_i_117_n_0;
  wire display_data_reg_0_63_0_2_i_118_n_0;
  wire display_data_reg_0_63_0_2_i_119_n_0;
  wire display_data_reg_0_63_0_2_i_11_n_0;
  wire display_data_reg_0_63_0_2_i_120_n_0;
  wire display_data_reg_0_63_0_2_i_121_n_0;
  wire display_data_reg_0_63_0_2_i_122_n_0;
  wire display_data_reg_0_63_0_2_i_123_n_0;
  wire display_data_reg_0_63_0_2_i_124_n_0;
  wire display_data_reg_0_63_0_2_i_125_n_0;
  wire display_data_reg_0_63_0_2_i_126_n_0;
  wire display_data_reg_0_63_0_2_i_127_n_0;
  wire display_data_reg_0_63_0_2_i_128_n_0;
  wire display_data_reg_0_63_0_2_i_129_n_0;
  wire display_data_reg_0_63_0_2_i_12_n_0;
  wire display_data_reg_0_63_0_2_i_130_n_0;
  wire display_data_reg_0_63_0_2_i_131_n_0;
  wire display_data_reg_0_63_0_2_i_132_n_0;
  wire display_data_reg_0_63_0_2_i_133_n_0;
  wire display_data_reg_0_63_0_2_i_134_n_0;
  wire display_data_reg_0_63_0_2_i_135_n_0;
  wire display_data_reg_0_63_0_2_i_136_n_0;
  wire display_data_reg_0_63_0_2_i_137_n_0;
  wire display_data_reg_0_63_0_2_i_138_n_0;
  wire display_data_reg_0_63_0_2_i_139_n_0;
  wire display_data_reg_0_63_0_2_i_13_n_0;
  wire display_data_reg_0_63_0_2_i_140_n_0;
  wire display_data_reg_0_63_0_2_i_141_n_0;
  wire display_data_reg_0_63_0_2_i_142_n_0;
  wire display_data_reg_0_63_0_2_i_143_n_0;
  wire display_data_reg_0_63_0_2_i_144_n_0;
  wire display_data_reg_0_63_0_2_i_145_n_0;
  wire display_data_reg_0_63_0_2_i_146_n_0;
  wire display_data_reg_0_63_0_2_i_147_n_0;
  wire display_data_reg_0_63_0_2_i_148_n_0;
  wire display_data_reg_0_63_0_2_i_149_n_0;
  wire display_data_reg_0_63_0_2_i_14_n_0;
  wire display_data_reg_0_63_0_2_i_150_n_0;
  wire display_data_reg_0_63_0_2_i_151_n_0;
  wire display_data_reg_0_63_0_2_i_152_n_0;
  wire display_data_reg_0_63_0_2_i_153_n_0;
  wire display_data_reg_0_63_0_2_i_154_n_0;
  wire display_data_reg_0_63_0_2_i_155_n_0;
  wire display_data_reg_0_63_0_2_i_156_n_0;
  wire display_data_reg_0_63_0_2_i_157_n_0;
  wire display_data_reg_0_63_0_2_i_158_n_0;
  wire display_data_reg_0_63_0_2_i_159_n_0;
  wire display_data_reg_0_63_0_2_i_15_n_0;
  wire display_data_reg_0_63_0_2_i_160_n_0;
  wire display_data_reg_0_63_0_2_i_161_n_0;
  wire display_data_reg_0_63_0_2_i_162_n_0;
  wire display_data_reg_0_63_0_2_i_163_n_0;
  wire display_data_reg_0_63_0_2_i_164_n_0;
  wire display_data_reg_0_63_0_2_i_165_n_0;
  wire display_data_reg_0_63_0_2_i_166_n_0;
  wire display_data_reg_0_63_0_2_i_167_n_0;
  wire display_data_reg_0_63_0_2_i_168_n_0;
  wire display_data_reg_0_63_0_2_i_169_n_0;
  wire display_data_reg_0_63_0_2_i_16_n_0;
  wire display_data_reg_0_63_0_2_i_170_n_0;
  wire display_data_reg_0_63_0_2_i_171_n_0;
  wire display_data_reg_0_63_0_2_i_172_n_0;
  wire display_data_reg_0_63_0_2_i_173_n_0;
  wire display_data_reg_0_63_0_2_i_174_n_0;
  wire display_data_reg_0_63_0_2_i_175_n_0;
  wire display_data_reg_0_63_0_2_i_176_n_0;
  wire display_data_reg_0_63_0_2_i_177_n_0;
  wire display_data_reg_0_63_0_2_i_178_n_0;
  wire display_data_reg_0_63_0_2_i_179_n_0;
  wire display_data_reg_0_63_0_2_i_17_n_0;
  wire display_data_reg_0_63_0_2_i_180_n_0;
  wire display_data_reg_0_63_0_2_i_181_n_0;
  wire display_data_reg_0_63_0_2_i_182_n_0;
  wire display_data_reg_0_63_0_2_i_183_n_0;
  wire display_data_reg_0_63_0_2_i_184_n_0;
  wire display_data_reg_0_63_0_2_i_185_n_0;
  wire display_data_reg_0_63_0_2_i_186_n_0;
  wire display_data_reg_0_63_0_2_i_187_n_0;
  wire display_data_reg_0_63_0_2_i_188_n_0;
  wire display_data_reg_0_63_0_2_i_189_n_0;
  wire display_data_reg_0_63_0_2_i_190_n_0;
  wire display_data_reg_0_63_0_2_i_191_n_0;
  wire display_data_reg_0_63_0_2_i_192_n_0;
  wire display_data_reg_0_63_0_2_i_193_n_0;
  wire display_data_reg_0_63_0_2_i_194_n_0;
  wire display_data_reg_0_63_0_2_i_195_n_0;
  wire display_data_reg_0_63_0_2_i_196_n_0;
  wire display_data_reg_0_63_0_2_i_197_n_0;
  wire display_data_reg_0_63_0_2_i_198_n_0;
  wire display_data_reg_0_63_0_2_i_26_n_0;
  wire display_data_reg_0_63_0_2_i_27_n_0;
  wire display_data_reg_0_63_0_2_i_28_n_0;
  wire display_data_reg_0_63_0_2_i_29_n_0;
  wire display_data_reg_0_63_0_2_i_30_n_0;
  wire display_data_reg_0_63_0_2_i_31_n_0;
  wire display_data_reg_0_63_0_2_i_32_n_0;
  wire display_data_reg_0_63_0_2_i_33_n_0;
  wire display_data_reg_0_63_0_2_i_34_n_0;
  wire display_data_reg_0_63_0_2_i_35_n_0;
  wire display_data_reg_0_63_0_2_i_36_n_0;
  wire display_data_reg_0_63_0_2_i_37_n_0;
  wire display_data_reg_0_63_0_2_i_38_n_0;
  wire display_data_reg_0_63_0_2_i_39_n_0;
  wire display_data_reg_0_63_0_2_i_40_n_0;
  wire display_data_reg_0_63_0_2_i_41_n_0;
  wire display_data_reg_0_63_0_2_i_43_n_0;
  wire display_data_reg_0_63_0_2_i_44_n_0;
  wire display_data_reg_0_63_0_2_i_45_n_0;
  wire display_data_reg_0_63_0_2_i_46_n_0;
  wire display_data_reg_0_63_0_2_i_47_n_0;
  wire display_data_reg_0_63_0_2_i_48_n_0;
  wire display_data_reg_0_63_0_2_i_49_n_0;
  wire display_data_reg_0_63_0_2_i_50_n_0;
  wire display_data_reg_0_63_0_2_i_51_n_0;
  wire display_data_reg_0_63_0_2_i_52_n_0;
  wire display_data_reg_0_63_0_2_i_53_n_0;
  wire display_data_reg_0_63_0_2_i_54_n_0;
  wire display_data_reg_0_63_0_2_i_55_n_0;
  wire display_data_reg_0_63_0_2_i_56_n_0;
  wire display_data_reg_0_63_0_2_i_57_n_0;
  wire display_data_reg_0_63_0_2_i_58_n_0;
  wire display_data_reg_0_63_0_2_i_59_n_0;
  wire display_data_reg_0_63_0_2_i_60_n_0;
  wire display_data_reg_0_63_0_2_i_61_n_0;
  wire display_data_reg_0_63_0_2_i_62_n_0;
  wire display_data_reg_0_63_0_2_i_63_n_0;
  wire display_data_reg_0_63_0_2_i_64_n_0;
  wire display_data_reg_0_63_0_2_i_65_n_0;
  wire display_data_reg_0_63_0_2_i_66_n_0;
  wire display_data_reg_0_63_0_2_i_67_n_0;
  wire display_data_reg_0_63_0_2_i_68_n_0;
  wire display_data_reg_0_63_0_2_i_69_n_0;
  wire display_data_reg_0_63_0_2_i_70_n_0;
  wire display_data_reg_0_63_0_2_i_71_n_0;
  wire display_data_reg_0_63_0_2_i_72_n_0;
  wire display_data_reg_0_63_0_2_i_73_n_0;
  wire display_data_reg_0_63_0_2_i_74_n_0;
  wire display_data_reg_0_63_0_2_i_75_n_0;
  wire display_data_reg_0_63_0_2_i_76_n_0;
  wire display_data_reg_0_63_0_2_i_77_n_0;
  wire display_data_reg_0_63_0_2_i_78_n_0;
  wire display_data_reg_0_63_0_2_i_79_n_0;
  wire display_data_reg_0_63_0_2_i_80_n_0;
  wire display_data_reg_0_63_0_2_i_81_n_0;
  wire display_data_reg_0_63_0_2_i_82_n_0;
  wire display_data_reg_0_63_0_2_i_83_n_0;
  wire display_data_reg_0_63_0_2_i_84_n_0;
  wire display_data_reg_0_63_0_2_i_85_n_0;
  wire display_data_reg_0_63_0_2_i_86_n_0;
  wire display_data_reg_0_63_0_2_i_87_n_0;
  wire display_data_reg_0_63_0_2_i_88_n_0;
  wire display_data_reg_0_63_0_2_i_89_n_0;
  wire display_data_reg_0_63_0_2_i_90_n_0;
  wire display_data_reg_0_63_0_2_i_91_n_0;
  wire display_data_reg_0_63_0_2_i_92_n_0;
  wire display_data_reg_0_63_0_2_i_93_n_0;
  wire display_data_reg_0_63_0_2_i_94_n_0;
  wire display_data_reg_0_63_0_2_i_95_n_0;
  wire display_data_reg_0_63_0_2_i_96_n_0;
  wire display_data_reg_0_63_0_2_i_97_n_0;
  wire display_data_reg_0_63_0_2_i_98_n_0;
  wire display_data_reg_0_63_0_2_i_99_n_0;
  wire display_data_reg_0_63_0_2_i_9_n_0;
  wire display_data_reg_1088_1151_0_2_i_2_n_0;
  wire display_data_reg_1152_1215_0_2_i_2_n_0;
  wire display_data_reg_1216_1279_0_2_i_2_n_0;
  wire display_data_reg_1280_1343_0_2_i_2_n_0;
  wire display_data_reg_1280_1343_0_2_i_3_n_0;
  wire display_data_reg_1280_1343_0_2_i_4_n_0;
  wire display_data_reg_128_191_0_2_i_2_n_0;
  wire display_data_reg_1344_1407_0_2_i_2_n_0;
  wire display_data_reg_1408_1471_0_2_i_2_n_0;
  wire display_data_reg_1472_1535_0_2_i_2_n_0;
  wire display_data_reg_1536_1599_0_2_i_2_n_0;
  wire display_data_reg_1600_1663_0_2_i_2_n_0;
  wire display_data_reg_1600_1663_0_2_i_3_n_0;
  wire display_data_reg_1664_1727_0_2_i_2_n_0;
  wire display_data_reg_1664_1727_0_2_i_3_n_0;
  wire display_data_reg_1728_1791_0_2_i_2_n_0;
  wire display_data_reg_1792_1855_0_2_i_2_n_0;
  wire display_data_reg_1792_1855_0_2_i_3_n_0;
  wire display_data_reg_1856_1919_0_2_i_2_n_0;
  wire display_data_reg_1920_1983_0_2_i_2_n_0;
  wire display_data_reg_192_255_0_2_i_2_n_0;
  wire display_data_reg_2240_2303_0_2_i_2_n_0;
  wire display_data_reg_2368_2431_0_2_i_2_n_0;
  wire display_data_reg_2432_2495_0_2_i_2_n_0;
  wire display_data_reg_2496_2559_0_2_i_2_n_0;
  wire display_data_reg_256_319_0_2_i_2_n_0;
  wire display_data_reg_2624_2687_0_2_i_2_n_0;
  wire display_data_reg_2688_2751_0_2_i_2_n_0;
  wire display_data_reg_2752_2815_0_2_i_2_n_0;
  wire display_data_reg_2816_2879_0_2_i_2_n_0;
  wire display_data_reg_2880_2943_0_2_i_2_n_0;
  wire display_data_reg_2944_3007_0_2_i_2_n_0;
  wire display_data_reg_3136_3199_0_2_i_2_n_0;
  wire display_data_reg_3136_3199_0_2_i_3_n_0;
  wire display_data_reg_3200_3263_0_2_i_2_n_0;
  wire display_data_reg_3200_3263_0_2_i_3_n_0;
  wire display_data_reg_320_383_0_2_i_2_n_0;
  wire display_data_reg_3264_3327_0_2_i_2_n_0;
  wire display_data_reg_3328_3391_0_2_i_2_n_0;
  wire display_data_reg_3328_3391_0_2_i_3_n_0;
  wire display_data_reg_3392_3455_0_2_i_2_n_0;
  wire display_data_reg_3456_3519_0_2_i_2_n_0;
  wire display_data_reg_3584_3647_0_2_i_2_n_0;
  wire display_data_reg_3584_3647_0_2_i_3_n_0;
  wire display_data_reg_3648_3711_0_2_i_2_n_0;
  wire display_data_reg_3712_3775_0_2_i_2_n_0;
  wire display_data_reg_3840_3903_0_2_i_2_n_0;
  wire display_data_reg_384_447_0_2_i_2_n_0;
  wire display_data_reg_384_447_0_2_i_3_n_0;
  wire display_data_reg_4032_4095_0_2_i_2_n_0;
  wire display_data_reg_448_511_0_2_i_2_n_0;
  wire display_data_reg_448_511_0_2_i_3_n_0;
  wire display_data_reg_512_575_0_2_i_2_n_0;
  wire display_data_reg_576_639_0_2_i_2_n_0;
  wire display_data_reg_640_703_0_2_i_2_n_0;
  wire display_data_reg_640_703_0_2_i_3_n_0;
  wire display_data_reg_64_127_0_2_i_2_n_0;
  wire display_data_reg_64_127_0_2_i_3_n_0;
  wire display_data_reg_64_127_0_2_i_4_n_0;
  wire display_data_reg_64_127_0_2_i_5_n_0;
  wire display_data_reg_64_127_0_2_i_6_n_0;
  wire display_data_reg_704_767_0_2_i_2_n_0;
  wire display_data_reg_768_831_0_2_i_2_n_0;
  wire display_data_reg_832_895_0_2_i_2_n_0;
  wire display_data_reg_832_895_0_2_i_3_n_0;
  wire display_data_reg_896_959_0_2_i_2_n_0;
  wire display_data_reg_896_959_0_2_i_3_n_0;
  wire display_data_reg_960_1023_0_2_i_2_n_0;
  wire [11:0]display_w_addr;
  wire [4:0]display_w_data;
  wire [31:0]dmem_addr;
  wire [31:0]dmem_i_data;
  wire [31:0]dmem_o_data;
  wire [31:0]inst;
  wire mem_wen;
  wire [31:0]pc;
  wire [3:2]\NLW_display_addr_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_display_addr_reg[11]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \display_addr[0]_i_1 
       (.I0(display_w_addr[0]),
        .O(\display_addr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \display_addr[0]_rep__0_i_1 
       (.I0(display_w_addr[0]),
        .O(\display_addr[0]_rep__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \display_addr[0]_rep__1_i_1 
       (.I0(display_w_addr[0]),
        .O(\display_addr[0]_rep__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \display_addr[0]_rep_i_1 
       (.I0(display_w_addr[0]),
        .O(\display_addr[0]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \display_addr[11]_i_1 
       (.I0(display_w_addr[0]),
        .I1(display_w_addr[8]),
        .I2(ADDRD[2]),
        .I3(display_w_addr[11]),
        .I4(\display_addr[11]_i_3_n_0 ),
        .O(\display_addr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \display_addr[11]_i_3 
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(\display_addr_reg[5]_0 [3]),
        .I2(\display_addr[11]_i_4_n_0 ),
        .I3(\display_addr[11]_i_5_n_0 ),
        .I4(display_w_addr[10]),
        .I5(\display_addr_reg[5]_0 [4]),
        .O(\display_addr[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \display_addr[11]_i_4 
       (.I0(\display_addr_reg[1]_rep_0 [1]),
        .I1(display_w_addr[6]),
        .O(\display_addr[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \display_addr[11]_i_5 
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[9]),
        .O(\display_addr[11]_i_5_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[0] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(\display_addr[0]_i_1_n_0 ),
        .Q(display_w_addr[0]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[0]_rep 
       (.C(clk_100m),
        .CE(1'b1),
        .D(\display_addr[0]_rep_i_1_n_0 ),
        .Q(ADDRD[0]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[0]_rep__0 
       (.C(clk_100m),
        .CE(1'b1),
        .D(\display_addr[0]_rep__0_i_1_n_0 ),
        .Q(\display_addr_reg[1]_rep_0 [0]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[0]_rep__1 
       (.C(clk_100m),
        .CE(1'b1),
        .D(\display_addr[0]_rep__1_i_1_n_0 ),
        .Q(\display_addr_reg[0]_rep__1_0 ),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[10] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[10]),
        .Q(display_w_addr[10]),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[11] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[11]),
        .Q(display_w_addr[11]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \display_addr_reg[11]_i_2 
       (.CI(\display_addr_reg[8]_i_1_n_0 ),
        .CO({\NLW_display_addr_reg[11]_i_2_CO_UNCONNECTED [3:2],\display_addr_reg[11]_i_2_n_2 ,\display_addr_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_display_addr_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,display_w_addr[11:9]}));
  (* ORIG_CELL_NAME = "display_addr_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[1] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\display_addr_reg[5]_0 [0]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[1]_rep 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\display_addr_reg[1]_rep_0 [1]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[1]_rep__0 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[1]),
        .Q(ADDRD[1]),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[2] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\display_addr_reg[5]_0 [1]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[3] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\display_addr_reg[5]_0 [2]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[3]_rep 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\display_addr_reg[3]_rep_0 ),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "display_addr_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[3]_rep__0 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[3]),
        .Q(ADDRD[2]),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[4] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\display_addr_reg[5]_0 [3]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \display_addr_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\display_addr_reg[4]_i_1_n_0 ,\display_addr_reg[4]_i_1_n_1 ,\display_addr_reg[4]_i_1_n_2 ,\display_addr_reg[4]_i_1_n_3 }),
        .CYINIT(display_w_addr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\display_addr_reg[5]_0 [3],ADDRD[2],\display_addr_reg[5]_0 [1],\display_addr_reg[1]_rep_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[5] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\display_addr_reg[5]_0 [4]),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[6] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[6]),
        .Q(display_w_addr[6]),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[7] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[7]),
        .Q(display_w_addr[7]),
        .R(\display_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[8] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[8]),
        .Q(display_w_addr[8]),
        .R(\display_addr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \display_addr_reg[8]_i_1 
       (.CI(\display_addr_reg[4]_i_1_n_0 ),
        .CO({\display_addr_reg[8]_i_1_n_0 ,\display_addr_reg[8]_i_1_n_1 ,\display_addr_reg[8]_i_1_n_2 ,\display_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({display_w_addr[8:6],\display_addr_reg[5]_0 [4]}));
  FDRE #(
    .INIT(1'b0)) 
    \display_addr_reg[9] 
       (.C(clk_100m),
        .CE(1'b1),
        .D(data0[9]),
        .Q(display_w_addr[9]),
        .R(\display_addr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E01FE0)) 
    display_data_reg_0_63_0_2_i_1
       (.I0(display_data_reg_0_63_0_2_i_9_n_0),
        .I1(display_data_reg_0_63_0_2_i_10_n_0),
        .I2(display_data_reg_0_63_0_2_i_11_n_0),
        .I3(display_data_reg_0_63_0_2_i_12_n_0),
        .I4(display_w_addr[11]),
        .O(display_w_data[0]));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    display_data_reg_0_63_0_2_i_10
       (.I0(display_data_reg_0_63_0_2_i_28_n_0),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[8]),
        .I3(display_data_reg_0_63_0_2_i_29_n_0),
        .I4(display_w_addr[7]),
        .I5(display_w_addr[11]),
        .O(display_data_reg_0_63_0_2_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_100
       (.I0(dmem_addr[19]),
        .I1(dmem_addr[23]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[27]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[31]),
        .O(display_data_reg_0_63_0_2_i_100_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_101
       (.I0(display_data_reg_0_63_0_2_i_154_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(dmem_i_data[3]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[7]),
        .O(display_data_reg_0_63_0_2_i_101_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_102
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_i_data[27]),
        .I3(display_w_addr[0]),
        .I4(dmem_i_data[31]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_103
       (.I0(dmem_addr[3]),
        .I1(dmem_addr[7]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[11]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[15]),
        .O(display_data_reg_0_63_0_2_i_103_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_104
       (.I0(display_data_reg_0_63_0_2_i_155_n_0),
        .I1(display_data_reg_0_63_0_2_i_156_n_0),
        .O(display_data_reg_0_63_0_2_i_104_n_0),
        .S(ADDRD[2]));
  LUT6 #(
    .INIT(64'h0200020202000000)) 
    display_data_reg_0_63_0_2_i_105
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(alu_res[0]),
        .I4(display_w_addr[0]),
        .I5(alu_res[4]),
        .O(display_data_reg_0_63_0_2_i_105_n_0));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    display_data_reg_0_63_0_2_i_106
       (.I0(alu_res[28]),
        .I1(display_data_reg_0_63_0_2_i_135_n_0),
        .I2(alu_res[24]),
        .I3(display_data_reg_0_63_0_2_i_136_n_0),
        .I4(display_data_reg_0_63_0_2_i_157_n_0),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_107
       (.I0(dmem_addr[16]),
        .I1(dmem_addr[20]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[24]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[28]),
        .O(display_data_reg_0_63_0_2_i_107_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_108
       (.I0(display_data_reg_0_63_0_2_i_158_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(dmem_i_data[0]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[4]),
        .O(display_data_reg_0_63_0_2_i_108_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_109
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_i_data[24]),
        .I3(display_w_addr[0]),
        .I4(dmem_i_data[28]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_109_n_0));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    display_data_reg_0_63_0_2_i_11
       (.I0(display_data_reg_0_63_0_2_i_30_n_0),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[8]),
        .I3(display_data_reg_0_63_0_2_i_31_n_0),
        .I4(display_w_addr[7]),
        .I5(display_w_addr[11]),
        .O(display_data_reg_0_63_0_2_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_110
       (.I0(dmem_addr[0]),
        .I1(dmem_addr[4]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[8]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[12]),
        .O(display_data_reg_0_63_0_2_i_110_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_111
       (.I0(display_data_reg_0_63_0_2_i_159_n_0),
        .I1(display_data_reg_0_63_0_2_i_160_n_0),
        .O(display_data_reg_0_63_0_2_i_111_n_0),
        .S(ADDRD[2]));
  MUXF7 display_data_reg_0_63_0_2_i_112
       (.I0(display_data_reg_0_63_0_2_i_161_n_0),
        .I1(display_data_reg_0_63_0_2_i_162_n_0),
        .O(display_data_reg_0_63_0_2_i_112_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  MUXF7 display_data_reg_0_63_0_2_i_113
       (.I0(display_data_reg_0_63_0_2_i_163_n_0),
        .I1(display_data_reg_0_63_0_2_i_164_n_0),
        .O(display_data_reg_0_63_0_2_i_113_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h01015101)) 
    display_data_reg_0_63_0_2_i_114
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(display_w_addr[7]),
        .I2(\display_addr_reg[1]_rep_0 [1]),
        .I3(display_w_addr[6]),
        .I4(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_114_n_0));
  LUT6 #(
    .INIT(64'hC3EBEBC3C8EBEBEB)) 
    display_data_reg_0_63_0_2_i_115
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[7]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(display_w_addr[6]),
        .O(display_data_reg_0_63_0_2_i_115_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCCCCD303)) 
    display_data_reg_0_63_0_2_i_116
       (.I0(display_w_addr[9]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[6]),
        .I4(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_116_n_0));
  LUT6 #(
    .INIT(64'h0000007000000000)) 
    display_data_reg_0_63_0_2_i_117
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[8]),
        .I2(display_w_addr[10]),
        .I3(\display_addr_reg[5]_0 [3]),
        .I4(\display_addr_reg[5]_0 [1]),
        .I5(display_data_reg_0_63_0_2_i_165_n_0),
        .O(display_data_reg_0_63_0_2_i_117_n_0));
  LUT6 #(
    .INIT(64'h888B8B8B8B8B8B8B)) 
    display_data_reg_0_63_0_2_i_118
       (.I0(display_data_reg_0_63_0_2_i_166_n_0),
        .I1(display_w_addr[9]),
        .I2(display_data_reg_0_63_0_2_i_167_n_0),
        .I3(display_data_reg_0_63_0_2_i_168_n_0),
        .I4(display_w_addr[8]),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_118_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    display_data_reg_0_63_0_2_i_119
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(\display_addr_reg[5]_0 [3]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[10]),
        .I4(display_data_reg_0_63_0_2_i_169_n_0),
        .O(display_data_reg_0_63_0_2_i_119_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    display_data_reg_0_63_0_2_i_12
       (.I0(display_data_reg_0_63_0_2_i_32_n_0),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[8]),
        .I3(display_data_reg_0_63_0_2_i_33_n_0),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_0_63_0_2_i_34_n_0),
        .O(display_data_reg_0_63_0_2_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAFEAAFEAAFEFFFE)) 
    display_data_reg_0_63_0_2_i_120
       (.I0(display_data_reg_0_63_0_2_i_170_n_0),
        .I1(display_data_reg_0_63_0_2_i_171_n_0),
        .I2(display_data_reg_0_63_0_2_i_172_n_0),
        .I3(display_w_addr[9]),
        .I4(display_data_reg_0_63_0_2_i_173_n_0),
        .I5(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_120_n_0));
  LUT6 #(
    .INIT(64'hF088FF88F0880088)) 
    display_data_reg_0_63_0_2_i_121
       (.I0(display_data_reg_0_63_0_2_i_174_n_0),
        .I1(display_data_reg_0_63_0_2_i_175_n_0),
        .I2(display_data_reg_0_63_0_2_i_176_n_0),
        .I3(\display_addr_reg[5]_0 [4]),
        .I4(display_w_addr[7]),
        .I5(display_data_reg_0_63_0_2_i_177_n_0),
        .O(display_data_reg_0_63_0_2_i_121_n_0));
  LUT6 #(
    .INIT(64'h655BA8A054572A80)) 
    display_data_reg_0_63_0_2_i_122
       (.I0(display_w_addr[8]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .I4(display_w_addr[9]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_122_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    display_data_reg_0_63_0_2_i_123
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[9]),
        .O(display_data_reg_0_63_0_2_i_123_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_124
       (.I0(display_data_reg_0_63_0_2_i_178_n_0),
        .I1(display_data_reg_0_63_0_2_i_179_n_0),
        .O(display_data_reg_0_63_0_2_i_124_n_0),
        .S(display_w_addr[7]));
  LUT6 #(
    .INIT(64'hFFFEBFFFBFFF97DF)) 
    display_data_reg_0_63_0_2_i_125
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[7]),
        .I4(\display_addr_reg[5]_0 [1]),
        .I5(\display_addr_reg[1]_rep_0 [1]),
        .O(display_data_reg_0_63_0_2_i_125_n_0));
  LUT6 #(
    .INIT(64'h0800000000004404)) 
    display_data_reg_0_63_0_2_i_126
       (.I0(display_w_addr[9]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[6]),
        .I3(\display_addr_reg[1]_rep_0 [1]),
        .I4(display_w_addr[8]),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_126_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    display_data_reg_0_63_0_2_i_127
       (.I0(display_w_addr[6]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[9]),
        .I4(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_127_n_0));
  LUT6 #(
    .INIT(64'h0200000000000300)) 
    display_data_reg_0_63_0_2_i_128
       (.I0(display_data_reg_0_63_0_2_i_180_n_0),
        .I1(display_w_addr[7]),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(display_w_addr[6]),
        .I5(display_w_addr[10]),
        .O(display_data_reg_0_63_0_2_i_128_n_0));
  LUT6 #(
    .INIT(64'hBABFFBF1FFBAAFFB)) 
    display_data_reg_0_63_0_2_i_129
       (.I0(display_w_addr[8]),
        .I1(\display_addr_reg[1]_rep_0 [1]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[6]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_129_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    display_data_reg_0_63_0_2_i_13
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .O(display_data_reg_0_63_0_2_i_13_n_0));
  LUT6 #(
    .INIT(64'hBAEBFFEBAAEBAAEB)) 
    display_data_reg_0_63_0_2_i_130
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_w_addr[6]),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(\display_addr_reg[5]_0 [4]),
        .I4(display_w_addr[7]),
        .I5(\display_addr_reg[1]_rep_0 [1]),
        .O(display_data_reg_0_63_0_2_i_130_n_0));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    display_data_reg_0_63_0_2_i_131
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(pc[30]),
        .I2(display_w_addr[0]),
        .I3(\display_addr_reg[5]_0 [0]),
        .I4(pc[26]),
        .I5(pc[22]),
        .O(display_data_reg_0_63_0_2_i_131_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    display_data_reg_0_63_0_2_i_132
       (.I0(inst[30]),
        .I1(display_w_addr[0]),
        .I2(inst[26]),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(\display_addr_reg[5]_0 [0]),
        .O(display_data_reg_0_63_0_2_i_132_n_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    display_data_reg_0_63_0_2_i_133
       (.I0(display_data_reg_0_63_0_2_i_181_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(pc[2]),
        .I4(display_w_addr[0]),
        .O(display_data_reg_0_63_0_2_i_133_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_134
       (.I0(display_data_reg_0_63_0_2_i_182_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(inst[2]),
        .I4(display_w_addr[0]),
        .I5(inst[6]),
        .O(display_data_reg_0_63_0_2_i_134_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    display_data_reg_0_63_0_2_i_135
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(display_w_addr[0]),
        .O(display_data_reg_0_63_0_2_i_135_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    display_data_reg_0_63_0_2_i_136
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(\display_addr_reg[5]_0 [0]),
        .O(display_data_reg_0_63_0_2_i_136_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_137
       (.I0(alu_res[10]),
        .I1(alu_res[14]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(alu_res[18]),
        .I4(display_w_addr[0]),
        .I5(alu_res[22]),
        .O(display_data_reg_0_63_0_2_i_137_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_138
       (.I0(dmem_i_data[10]),
        .I1(dmem_i_data[14]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_i_data[18]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[22]),
        .O(display_data_reg_0_63_0_2_i_138_n_0));
  LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
    display_data_reg_0_63_0_2_i_139
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(dmem_o_data[6]),
        .I2(display_data_reg_0_63_0_2_i_183_n_0),
        .I3(dmem_o_data[2]),
        .I4(display_data_reg_0_63_0_2_i_184_n_0),
        .I5(display_data_reg_0_63_0_2_i_185_n_0),
        .O(display_data_reg_0_63_0_2_i_139_n_0));
  LUT6 #(
    .INIT(64'h010001000000FFFF)) 
    display_data_reg_0_63_0_2_i_14
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[10]),
        .I3(display_data_reg_0_63_0_2_i_35_n_0),
        .I4(display_data_reg_0_63_0_2_i_36_n_0),
        .I5(display_w_addr[11]),
        .O(display_data_reg_0_63_0_2_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_140
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_o_data[26]),
        .I3(display_w_addr[0]),
        .I4(dmem_o_data[30]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_140_n_0));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    display_data_reg_0_63_0_2_i_141
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(pc[29]),
        .I2(display_w_addr[0]),
        .I3(\display_addr_reg[5]_0 [0]),
        .I4(pc[25]),
        .I5(pc[21]),
        .O(display_data_reg_0_63_0_2_i_141_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    display_data_reg_0_63_0_2_i_142
       (.I0(inst[29]),
        .I1(display_w_addr[0]),
        .I2(inst[25]),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(\display_addr_reg[5]_0 [0]),
        .O(display_data_reg_0_63_0_2_i_142_n_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    display_data_reg_0_63_0_2_i_143
       (.I0(display_data_reg_0_63_0_2_i_186_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(pc[1]),
        .I4(display_w_addr[0]),
        .O(display_data_reg_0_63_0_2_i_143_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_144
       (.I0(display_data_reg_0_63_0_2_i_187_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(inst[1]),
        .I4(display_w_addr[0]),
        .I5(inst[5]),
        .O(display_data_reg_0_63_0_2_i_144_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_145
       (.I0(alu_res[9]),
        .I1(alu_res[13]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(alu_res[17]),
        .I4(display_w_addr[0]),
        .I5(alu_res[21]),
        .O(display_data_reg_0_63_0_2_i_145_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_146
       (.I0(dmem_i_data[9]),
        .I1(dmem_i_data[13]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_i_data[17]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[21]),
        .O(display_data_reg_0_63_0_2_i_146_n_0));
  LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
    display_data_reg_0_63_0_2_i_147
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(dmem_o_data[5]),
        .I2(display_data_reg_0_63_0_2_i_183_n_0),
        .I3(dmem_o_data[1]),
        .I4(display_data_reg_0_63_0_2_i_184_n_0),
        .I5(display_data_reg_0_63_0_2_i_188_n_0),
        .O(display_data_reg_0_63_0_2_i_147_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_148
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_o_data[25]),
        .I3(display_w_addr[0]),
        .I4(dmem_o_data[29]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_148_n_0));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    display_data_reg_0_63_0_2_i_149
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(pc[31]),
        .I2(display_w_addr[0]),
        .I3(\display_addr_reg[5]_0 [0]),
        .I4(pc[27]),
        .I5(pc[23]),
        .O(display_data_reg_0_63_0_2_i_149_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    display_data_reg_0_63_0_2_i_15
       (.I0(display_w_addr[11]),
        .I1(display_data_reg_0_63_0_2_i_37_n_0),
        .I2(display_w_addr[10]),
        .I3(display_w_addr[9]),
        .I4(display_w_addr[8]),
        .O(display_data_reg_0_63_0_2_i_15_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    display_data_reg_0_63_0_2_i_150
       (.I0(inst[31]),
        .I1(display_w_addr[0]),
        .I2(inst[27]),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(\display_addr_reg[5]_0 [0]),
        .O(display_data_reg_0_63_0_2_i_150_n_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    display_data_reg_0_63_0_2_i_151
       (.I0(display_data_reg_0_63_0_2_i_189_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(pc[3]),
        .I4(display_w_addr[0]),
        .O(display_data_reg_0_63_0_2_i_151_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_152
       (.I0(display_data_reg_0_63_0_2_i_190_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(inst[3]),
        .I4(display_w_addr[0]),
        .I5(inst[7]),
        .O(display_data_reg_0_63_0_2_i_152_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_153
       (.I0(alu_res[11]),
        .I1(alu_res[15]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(alu_res[19]),
        .I4(display_w_addr[0]),
        .I5(alu_res[23]),
        .O(display_data_reg_0_63_0_2_i_153_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_154
       (.I0(dmem_i_data[11]),
        .I1(dmem_i_data[15]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_i_data[19]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[23]),
        .O(display_data_reg_0_63_0_2_i_154_n_0));
  LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
    display_data_reg_0_63_0_2_i_155
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(dmem_o_data[7]),
        .I2(display_data_reg_0_63_0_2_i_183_n_0),
        .I3(dmem_o_data[3]),
        .I4(display_data_reg_0_63_0_2_i_184_n_0),
        .I5(display_data_reg_0_63_0_2_i_191_n_0),
        .O(display_data_reg_0_63_0_2_i_155_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_156
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_o_data[27]),
        .I3(display_w_addr[0]),
        .I4(dmem_o_data[31]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_156_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_157
       (.I0(alu_res[8]),
        .I1(alu_res[12]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(alu_res[16]),
        .I4(display_w_addr[0]),
        .I5(alu_res[20]),
        .O(display_data_reg_0_63_0_2_i_157_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_158
       (.I0(dmem_i_data[8]),
        .I1(dmem_i_data[12]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_i_data[16]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[20]),
        .O(display_data_reg_0_63_0_2_i_158_n_0));
  LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
    display_data_reg_0_63_0_2_i_159
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(dmem_o_data[4]),
        .I2(display_data_reg_0_63_0_2_i_183_n_0),
        .I3(dmem_o_data[0]),
        .I4(display_data_reg_0_63_0_2_i_184_n_0),
        .I5(display_data_reg_0_63_0_2_i_192_n_0),
        .O(display_data_reg_0_63_0_2_i_159_n_0));
  LUT6 #(
    .INIT(64'h5555555555545454)) 
    display_data_reg_0_63_0_2_i_16
       (.I0(display_w_addr[11]),
        .I1(display_data_reg_0_63_0_2_i_38_n_0),
        .I2(display_data_reg_0_63_0_2_i_39_n_0),
        .I3(display_w_addr[0]),
        .I4(display_data_reg_0_63_0_2_i_40_n_0),
        .I5(display_data_reg_0_63_0_2_i_41_n_0),
        .O(display_data_reg_0_63_0_2_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_160
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_o_data[24]),
        .I3(display_w_addr[0]),
        .I4(dmem_o_data[28]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_160_n_0));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    display_data_reg_0_63_0_2_i_161
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(pc[28]),
        .I2(display_w_addr[0]),
        .I3(\display_addr_reg[5]_0 [0]),
        .I4(pc[24]),
        .I5(pc[20]),
        .O(display_data_reg_0_63_0_2_i_161_n_0));
  LUT5 #(
    .INIT(32'hE2000000)) 
    display_data_reg_0_63_0_2_i_162
       (.I0(inst[28]),
        .I1(display_w_addr[0]),
        .I2(inst[24]),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(\display_addr_reg[5]_0 [0]),
        .O(display_data_reg_0_63_0_2_i_162_n_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    display_data_reg_0_63_0_2_i_163
       (.I0(display_data_reg_0_63_0_2_i_193_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(pc[0]),
        .I4(display_w_addr[0]),
        .O(display_data_reg_0_63_0_2_i_163_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_164
       (.I0(display_data_reg_0_63_0_2_i_194_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(inst[0]),
        .I4(display_w_addr[0]),
        .I5(inst[4]),
        .O(display_data_reg_0_63_0_2_i_164_n_0));
  LUT6 #(
    .INIT(64'h00AA400000051000)) 
    display_data_reg_0_63_0_2_i_165
       (.I0(display_w_addr[6]),
        .I1(display_w_addr[9]),
        .I2(\display_addr_reg[1]_rep_0 [1]),
        .I3(display_w_addr[7]),
        .I4(display_w_addr[8]),
        .I5(\display_addr_reg[5]_0 [4]),
        .O(display_data_reg_0_63_0_2_i_165_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_166
       (.I0(display_data_reg_0_63_0_2_i_195_n_0),
        .I1(display_data_reg_0_63_0_2_i_196_n_0),
        .O(display_data_reg_0_63_0_2_i_166_n_0),
        .S(display_w_addr[6]));
  LUT6 #(
    .INIT(64'h00000010000C0000)) 
    display_data_reg_0_63_0_2_i_167
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[10]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(display_w_addr[8]),
        .O(display_data_reg_0_63_0_2_i_167_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h11155119)) 
    display_data_reg_0_63_0_2_i_168
       (.I0(display_w_addr[10]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(\display_addr_reg[5]_0 [4]),
        .I3(display_w_addr[6]),
        .I4(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_168_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0224)) 
    display_data_reg_0_63_0_2_i_169
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_169_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_0_63_0_2_i_17
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    display_data_reg_0_63_0_2_i_170
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(\display_addr_reg[1]_rep_0 [1]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[7]),
        .I4(display_w_addr[6]),
        .I5(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_170_n_0));
  LUT6 #(
    .INIT(64'h2022222202020020)) 
    display_data_reg_0_63_0_2_i_171
       (.I0(display_data_reg_384_447_0_2_i_2_n_0),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(display_w_addr[6]),
        .I3(\display_addr_reg[1]_rep_0 [1]),
        .I4(\display_addr_reg[5]_0 [3]),
        .I5(\display_addr_reg[5]_0 [4]),
        .O(display_data_reg_0_63_0_2_i_171_n_0));
  LUT6 #(
    .INIT(64'h0000AAAA30000000)) 
    display_data_reg_0_63_0_2_i_172
       (.I0(display_data_reg_0_63_0_2_i_197_n_0),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(display_data_reg_0_63_0_2_i_198_n_0),
        .I3(display_w_addr[6]),
        .I4(display_w_addr[8]),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_172_n_0));
  LUT6 #(
    .INIT(64'hCFFFF3F28E38C2CE)) 
    display_data_reg_0_63_0_2_i_173
       (.I0(\display_addr_reg[1]_rep_0 [1]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[7]),
        .I3(\display_addr_reg[5]_0 [3]),
        .I4(display_w_addr[6]),
        .I5(display_w_addr[8]),
        .O(display_data_reg_0_63_0_2_i_173_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    display_data_reg_0_63_0_2_i_174
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_174_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0A0A4000)) 
    display_data_reg_0_63_0_2_i_175
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(\display_addr_reg[1]_rep_0 [1]),
        .I2(display_w_addr[7]),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(display_w_addr[6]),
        .O(display_data_reg_0_63_0_2_i_175_n_0));
  LUT6 #(
    .INIT(64'h4000400015405440)) 
    display_data_reg_0_63_0_2_i_176
       (.I0(display_w_addr[6]),
        .I1(display_w_addr[9]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(display_w_addr[8]),
        .I4(\display_addr_reg[1]_rep_0 [1]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_176_n_0));
  LUT6 #(
    .INIT(64'h0004004454015001)) 
    display_data_reg_0_63_0_2_i_177
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[6]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(display_w_addr[8]),
        .I4(\display_addr_reg[1]_rep_0 [1]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_177_n_0));
  LUT6 #(
    .INIT(64'h3088CC8C00CC00C8)) 
    display_data_reg_0_63_0_2_i_178
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_w_addr[9]),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_w_addr[6]),
        .I4(display_w_addr[8]),
        .I5(\display_addr_reg[5]_0 [4]),
        .O(display_data_reg_0_63_0_2_i_178_n_0));
  LUT6 #(
    .INIT(64'h444500EC55004588)) 
    display_data_reg_0_63_0_2_i_179
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_w_addr[8]),
        .I4(display_w_addr[6]),
        .I5(display_w_addr[9]),
        .O(display_data_reg_0_63_0_2_i_179_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h24)) 
    display_data_reg_0_63_0_2_i_180
       (.I0(\display_addr_reg[1]_rep_0 [1]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_0_63_0_2_i_180_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_181
       (.I0(pc[6]),
        .I1(pc[10]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(pc[14]),
        .I4(display_w_addr[0]),
        .I5(pc[18]),
        .O(display_data_reg_0_63_0_2_i_181_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_182
       (.I0(inst[10]),
        .I1(inst[14]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(inst[18]),
        .I4(display_w_addr[0]),
        .I5(inst[22]),
        .O(display_data_reg_0_63_0_2_i_182_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    display_data_reg_0_63_0_2_i_183
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_w_addr[0]),
        .I2(\display_addr_reg[5]_0 [0]),
        .O(display_data_reg_0_63_0_2_i_183_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hB)) 
    display_data_reg_0_63_0_2_i_184
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_184_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_185
       (.I0(dmem_o_data[10]),
        .I1(dmem_o_data[14]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_o_data[18]),
        .I4(display_w_addr[0]),
        .I5(dmem_o_data[22]),
        .O(display_data_reg_0_63_0_2_i_185_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_186
       (.I0(pc[5]),
        .I1(pc[9]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(pc[13]),
        .I4(display_w_addr[0]),
        .I5(pc[17]),
        .O(display_data_reg_0_63_0_2_i_186_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_187
       (.I0(inst[9]),
        .I1(inst[13]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(inst[17]),
        .I4(display_w_addr[0]),
        .I5(inst[21]),
        .O(display_data_reg_0_63_0_2_i_187_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_188
       (.I0(dmem_o_data[9]),
        .I1(dmem_o_data[13]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_o_data[17]),
        .I4(display_w_addr[0]),
        .I5(dmem_o_data[21]),
        .O(display_data_reg_0_63_0_2_i_188_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_189
       (.I0(pc[7]),
        .I1(pc[11]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(pc[15]),
        .I4(display_w_addr[0]),
        .I5(pc[19]),
        .O(display_data_reg_0_63_0_2_i_189_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_190
       (.I0(inst[11]),
        .I1(inst[15]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(inst[19]),
        .I4(display_w_addr[0]),
        .I5(inst[23]),
        .O(display_data_reg_0_63_0_2_i_190_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_191
       (.I0(dmem_o_data[11]),
        .I1(dmem_o_data[15]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_o_data[19]),
        .I4(display_w_addr[0]),
        .I5(dmem_o_data[23]),
        .O(display_data_reg_0_63_0_2_i_191_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_192
       (.I0(dmem_o_data[8]),
        .I1(dmem_o_data[12]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_o_data[16]),
        .I4(display_w_addr[0]),
        .I5(dmem_o_data[20]),
        .O(display_data_reg_0_63_0_2_i_192_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_193
       (.I0(pc[4]),
        .I1(pc[8]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(pc[12]),
        .I4(display_w_addr[0]),
        .I5(pc[16]),
        .O(display_data_reg_0_63_0_2_i_193_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_194
       (.I0(inst[8]),
        .I1(inst[12]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(inst[16]),
        .I4(display_w_addr[0]),
        .I5(inst[20]),
        .O(display_data_reg_0_63_0_2_i_194_n_0));
  LUT6 #(
    .INIT(64'hFFE7EFFDEEEEEEEE)) 
    display_data_reg_0_63_0_2_i_195
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[10]),
        .I2(\display_addr_reg[5]_0 [4]),
        .I3(display_w_addr[8]),
        .I4(\display_addr_reg[5]_0 [3]),
        .I5(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_195_n_0));
  LUT6 #(
    .INIT(64'hFEFEEEFAFEFEFEBE)) 
    display_data_reg_0_63_0_2_i_196
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[10]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(display_w_addr[7]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_196_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h04004444)) 
    display_data_reg_0_63_0_2_i_197
       (.I0(display_w_addr[6]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(\display_addr_reg[1]_rep_0 [1]),
        .I3(\display_addr_reg[5]_0 [3]),
        .I4(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_197_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_0_63_0_2_i_198
       (.I0(\display_addr_reg[1]_rep_0 [1]),
        .I1(\display_addr_reg[5]_0 [4]),
        .O(display_data_reg_0_63_0_2_i_198_n_0));
  LUT5 #(
    .INIT(32'h30FF8A00)) 
    display_data_reg_0_63_0_2_i_2
       (.I0(display_data_reg_0_63_0_2_i_9_n_0),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_12_n_0),
        .I3(display_data_reg_0_63_0_2_i_11_n_0),
        .I4(display_data_reg_0_63_0_2_i_10_n_0),
        .O(display_w_data[1]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    display_data_reg_0_63_0_2_i_26
       (.I0(display_w_addr[8]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[9]),
        .I3(display_w_addr[6]),
        .I4(display_data_reg_0_63_0_2_i_43_n_0),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_26_n_0));
  LUT6 #(
    .INIT(64'h50FF440050004400)) 
    display_data_reg_0_63_0_2_i_27
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_0_63_0_2_i_44_n_0),
        .I2(display_data_reg_0_63_0_2_i_45_n_0),
        .I3(\display_addr_reg[5]_0 [4]),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_0_63_0_2_i_46_n_0),
        .O(display_data_reg_0_63_0_2_i_27_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    display_data_reg_0_63_0_2_i_28
       (.I0(display_w_addr[8]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[9]),
        .I3(display_w_addr[6]),
        .I4(display_data_reg_0_63_0_2_i_47_n_0),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_28_n_0));
  LUT6 #(
    .INIT(64'h50FF440050004400)) 
    display_data_reg_0_63_0_2_i_29
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_0_63_0_2_i_48_n_0),
        .I2(display_data_reg_0_63_0_2_i_49_n_0),
        .I3(\display_addr_reg[5]_0 [4]),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_0_63_0_2_i_50_n_0),
        .O(display_data_reg_0_63_0_2_i_29_n_0));
  LUT5 #(
    .INIT(32'hF2FF0000)) 
    display_data_reg_0_63_0_2_i_3
       (.I0(display_data_reg_0_63_0_2_i_12_n_0),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_10_n_0),
        .I3(display_data_reg_0_63_0_2_i_11_n_0),
        .I4(display_data_reg_0_63_0_2_i_9_n_0),
        .O(display_w_data[2]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    display_data_reg_0_63_0_2_i_30
       (.I0(display_w_addr[8]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[9]),
        .I3(display_w_addr[6]),
        .I4(display_data_reg_0_63_0_2_i_51_n_0),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_30_n_0));
  LUT6 #(
    .INIT(64'h50FF440050004400)) 
    display_data_reg_0_63_0_2_i_31
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_0_63_0_2_i_52_n_0),
        .I2(display_data_reg_0_63_0_2_i_53_n_0),
        .I3(\display_addr_reg[5]_0 [4]),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_0_63_0_2_i_54_n_0),
        .O(display_data_reg_0_63_0_2_i_31_n_0));
  LUT6 #(
    .INIT(64'h50FF440050004400)) 
    display_data_reg_0_63_0_2_i_32
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_0_63_0_2_i_55_n_0),
        .I2(display_data_reg_0_63_0_2_i_56_n_0),
        .I3(\display_addr_reg[5]_0 [4]),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_0_63_0_2_i_57_n_0),
        .O(display_data_reg_0_63_0_2_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    display_data_reg_0_63_0_2_i_33
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(display_data_reg_0_63_0_2_i_58_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(ADDRD[2]),
        .I4(display_w_addr[6]),
        .I5(display_w_addr[9]),
        .O(display_data_reg_0_63_0_2_i_33_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    display_data_reg_0_63_0_2_i_34
       (.I0(display_w_addr[8]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[9]),
        .I3(display_w_addr[6]),
        .I4(display_data_reg_0_63_0_2_i_59_n_0),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_34_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_35
       (.I0(display_data_reg_0_63_0_2_i_61_n_0),
        .I1(display_data_reg_0_63_0_2_i_62_n_0),
        .O(display_data_reg_0_63_0_2_i_35_n_0),
        .S(display_data_reg_0_63_0_2_i_60_n_0));
  LUT6 #(
    .INIT(64'h0000000055155500)) 
    display_data_reg_0_63_0_2_i_36
       (.I0(display_data_reg_0_63_0_2_i_63_n_0),
        .I1(display_w_addr[10]),
        .I2(display_data_reg_0_63_0_2_i_64_n_0),
        .I3(display_w_addr[0]),
        .I4(display_data_reg_0_63_0_2_i_65_n_0),
        .I5(display_data_reg_0_63_0_2_i_66_n_0),
        .O(display_data_reg_0_63_0_2_i_36_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_37
       (.I0(display_data_reg_0_63_0_2_i_67_n_0),
        .I1(display_data_reg_0_63_0_2_i_68_n_0),
        .O(display_data_reg_0_63_0_2_i_37_n_0),
        .S(display_w_addr[7]));
  MUXF7 display_data_reg_0_63_0_2_i_38
       (.I0(display_data_reg_0_63_0_2_i_69_n_0),
        .I1(display_data_reg_0_63_0_2_i_70_n_0),
        .O(display_data_reg_0_63_0_2_i_38_n_0),
        .S(display_w_addr[10]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    display_data_reg_0_63_0_2_i_39
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(display_w_addr[6]),
        .I2(display_data_reg_0_63_0_2_i_71_n_0),
        .I3(\display_addr_reg[5]_0 [1]),
        .I4(display_w_addr[0]),
        .I5(display_data_reg_0_63_0_2_i_72_n_0),
        .O(display_data_reg_0_63_0_2_i_39_n_0));
  LUT6 #(
    .INIT(64'h000000008A8A8A80)) 
    display_data_reg_0_63_0_2_i_4
       (.I0(display_data_reg_0_63_0_2_i_13_n_0),
        .I1(display_data_reg_0_63_0_2_i_14_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_15_n_0),
        .I4(display_data_reg_0_63_0_2_i_16_n_0),
        .I5(display_data_reg_0_63_0_2_i_17_n_0),
        .O(\display_addr_reg[3]_rep__0_1 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    display_data_reg_0_63_0_2_i_40
       (.I0(display_data_reg_0_63_0_2_i_73_n_0),
        .I1(display_w_addr[9]),
        .I2(\display_addr_reg[1]_rep_0 [1]),
        .I3(display_data_reg_0_63_0_2_i_74_n_0),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_0_63_0_2_i_75_n_0),
        .O(display_data_reg_0_63_0_2_i_40_n_0));
  LUT6 #(
    .INIT(64'h0000010000010000)) 
    display_data_reg_0_63_0_2_i_41
       (.I0(display_w_addr[0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(display_data_reg_0_63_0_2_i_76_n_0),
        .I3(display_w_addr[7]),
        .I4(display_w_addr[8]),
        .I5(display_w_addr[9]),
        .O(display_data_reg_0_63_0_2_i_41_n_0));
  MUXF8 display_data_reg_0_63_0_2_i_43
       (.I0(display_data_reg_0_63_0_2_i_77_n_0),
        .I1(display_data_reg_0_63_0_2_i_78_n_0),
        .O(display_data_reg_0_63_0_2_i_43_n_0),
        .S(ADDRD[2]));
  MUXF7 display_data_reg_0_63_0_2_i_44
       (.I0(display_data_reg_0_63_0_2_i_79_n_0),
        .I1(display_data_reg_0_63_0_2_i_80_n_0),
        .O(display_data_reg_0_63_0_2_i_44_n_0),
        .S(ADDRD[2]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    display_data_reg_0_63_0_2_i_45
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_81_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_data_reg_0_63_0_2_i_82_n_0),
        .I4(ADDRD[2]),
        .I5(display_data_reg_0_63_0_2_i_83_n_0),
        .O(display_data_reg_0_63_0_2_i_45_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    display_data_reg_0_63_0_2_i_46
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_84_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_85_n_0),
        .I5(display_data_reg_0_63_0_2_i_86_n_0),
        .O(display_data_reg_0_63_0_2_i_46_n_0));
  MUXF8 display_data_reg_0_63_0_2_i_47
       (.I0(display_data_reg_0_63_0_2_i_87_n_0),
        .I1(display_data_reg_0_63_0_2_i_88_n_0),
        .O(display_data_reg_0_63_0_2_i_47_n_0),
        .S(ADDRD[2]));
  MUXF7 display_data_reg_0_63_0_2_i_48
       (.I0(display_data_reg_0_63_0_2_i_89_n_0),
        .I1(display_data_reg_0_63_0_2_i_90_n_0),
        .O(display_data_reg_0_63_0_2_i_48_n_0),
        .S(ADDRD[2]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    display_data_reg_0_63_0_2_i_49
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_91_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_data_reg_0_63_0_2_i_92_n_0),
        .I4(ADDRD[2]),
        .I5(display_data_reg_0_63_0_2_i_93_n_0),
        .O(display_data_reg_0_63_0_2_i_49_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    display_data_reg_0_63_0_2_i_50
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_94_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_85_n_0),
        .I5(display_data_reg_0_63_0_2_i_95_n_0),
        .O(display_data_reg_0_63_0_2_i_50_n_0));
  MUXF8 display_data_reg_0_63_0_2_i_51
       (.I0(display_data_reg_0_63_0_2_i_96_n_0),
        .I1(display_data_reg_0_63_0_2_i_97_n_0),
        .O(display_data_reg_0_63_0_2_i_51_n_0),
        .S(ADDRD[2]));
  MUXF7 display_data_reg_0_63_0_2_i_52
       (.I0(display_data_reg_0_63_0_2_i_98_n_0),
        .I1(display_data_reg_0_63_0_2_i_99_n_0),
        .O(display_data_reg_0_63_0_2_i_52_n_0),
        .S(ADDRD[2]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    display_data_reg_0_63_0_2_i_53
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_100_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_data_reg_0_63_0_2_i_101_n_0),
        .I4(ADDRD[2]),
        .I5(display_data_reg_0_63_0_2_i_102_n_0),
        .O(display_data_reg_0_63_0_2_i_53_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    display_data_reg_0_63_0_2_i_54
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_103_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_85_n_0),
        .I5(display_data_reg_0_63_0_2_i_104_n_0),
        .O(display_data_reg_0_63_0_2_i_54_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_55
       (.I0(display_data_reg_0_63_0_2_i_105_n_0),
        .I1(display_data_reg_0_63_0_2_i_106_n_0),
        .O(display_data_reg_0_63_0_2_i_55_n_0),
        .S(ADDRD[2]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    display_data_reg_0_63_0_2_i_56
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_107_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_data_reg_0_63_0_2_i_108_n_0),
        .I4(ADDRD[2]),
        .I5(display_data_reg_0_63_0_2_i_109_n_0),
        .O(display_data_reg_0_63_0_2_i_56_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    display_data_reg_0_63_0_2_i_57
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_110_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_85_n_0),
        .I5(display_data_reg_0_63_0_2_i_111_n_0),
        .O(display_data_reg_0_63_0_2_i_57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    display_data_reg_0_63_0_2_i_58
       (.I0(display_w_addr[0]),
        .I1(mem_wen),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_58_n_0));
  MUXF8 display_data_reg_0_63_0_2_i_59
       (.I0(display_data_reg_0_63_0_2_i_112_n_0),
        .I1(display_data_reg_0_63_0_2_i_113_n_0),
        .O(display_data_reg_0_63_0_2_i_59_n_0),
        .S(ADDRD[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    display_data_reg_0_63_0_2_i_60
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[0]),
        .I2(\display_addr_reg[1]_rep_0 [1]),
        .I3(\display_addr_reg[5]_0 [3]),
        .I4(\display_addr_reg[5]_0 [1]),
        .I5(display_data_reg_0_63_0_2_i_114_n_0),
        .O(display_data_reg_0_63_0_2_i_60_n_0));
  LUT6 #(
    .INIT(64'h0000000084D48484)) 
    display_data_reg_0_63_0_2_i_61
       (.I0(display_w_addr[6]),
        .I1(\display_addr_reg[5]_0 [3]),
        .I2(\display_addr_reg[1]_rep_0 [1]),
        .I3(display_w_addr[0]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_61_n_0));
  LUT6 #(
    .INIT(64'h5555FFFDBF000000)) 
    display_data_reg_0_63_0_2_i_62
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(\display_addr_reg[1]_rep_0 [1]),
        .I2(display_w_addr[0]),
        .I3(display_w_addr[6]),
        .I4(\display_addr_reg[5]_0 [3]),
        .I5(display_w_addr[7]),
        .O(display_data_reg_0_63_0_2_i_62_n_0));
  LUT6 #(
    .INIT(64'hFFFF000000100010)) 
    display_data_reg_0_63_0_2_i_63
       (.I0(display_data_reg_0_63_0_2_i_115_n_0),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(display_data_reg_0_63_0_2_i_116_n_0),
        .I3(display_w_addr[10]),
        .I4(display_data_reg_0_63_0_2_i_117_n_0),
        .I5(display_w_addr[0]),
        .O(display_data_reg_0_63_0_2_i_63_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    display_data_reg_0_63_0_2_i_64
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[8]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_64_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_65
       (.I0(display_data_reg_0_63_0_2_i_118_n_0),
        .I1(display_data_reg_0_63_0_2_i_119_n_0),
        .O(display_data_reg_0_63_0_2_i_65_n_0),
        .S(\display_addr_reg[1]_rep_0 [1]));
  MUXF7 display_data_reg_0_63_0_2_i_66
       (.I0(display_data_reg_0_63_0_2_i_120_n_0),
        .I1(display_data_reg_0_63_0_2_i_121_n_0),
        .O(display_data_reg_0_63_0_2_i_66_n_0),
        .S(display_w_addr[10]));
  LUT6 #(
    .INIT(64'h0080800000008000)) 
    display_data_reg_0_63_0_2_i_67
       (.I0(\display_addr_reg[1]_rep_0 [1]),
        .I1(display_w_addr[0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(display_w_addr[6]),
        .I4(\display_addr_reg[5]_0 [4]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_67_n_0));
  LUT6 #(
    .INIT(64'h00000020F2F2FBFB)) 
    display_data_reg_0_63_0_2_i_68
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(display_w_addr[6]),
        .I2(\display_addr_reg[5]_0 [4]),
        .I3(display_w_addr[0]),
        .I4(\display_addr_reg[1]_rep_0 [1]),
        .I5(\display_addr_reg[5]_0 [1]),
        .O(display_data_reg_0_63_0_2_i_68_n_0));
  LUT6 #(
    .INIT(64'hFFFFA88888888888)) 
    display_data_reg_0_63_0_2_i_69
       (.I0(\display_addr_reg[5]_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_122_n_0),
        .I2(display_w_addr[6]),
        .I3(display_data_reg_0_63_0_2_i_123_n_0),
        .I4(display_data_reg_0_63_0_2_i_124_n_0),
        .I5(\display_addr_reg[1]_rep_0 [1]),
        .O(display_data_reg_0_63_0_2_i_69_n_0));
  LUT6 #(
    .INIT(64'h1F101F1F1F101010)) 
    display_data_reg_0_63_0_2_i_70
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_0_63_0_2_i_125_n_0),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_data_reg_0_63_0_2_i_126_n_0),
        .I4(\display_addr_reg[5]_0 [1]),
        .I5(display_data_reg_0_63_0_2_i_127_n_0),
        .O(display_data_reg_0_63_0_2_i_70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    display_data_reg_0_63_0_2_i_71
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[10]),
        .O(display_data_reg_0_63_0_2_i_71_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_0_63_0_2_i_72
       (.I0(display_w_addr[7]),
        .I1(\display_addr_reg[5]_0 [4]),
        .O(display_data_reg_0_63_0_2_i_72_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAAAAEFF)) 
    display_data_reg_0_63_0_2_i_73
       (.I0(display_data_reg_0_63_0_2_i_128_n_0),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(display_w_addr[8]),
        .I3(display_data_reg_0_63_0_2_i_129_n_0),
        .I4(display_w_addr[10]),
        .O(display_data_reg_0_63_0_2_i_73_n_0));
  LUT6 #(
    .INIT(64'h0000038000000808)) 
    display_data_reg_0_63_0_2_i_74
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .I4(display_w_addr[7]),
        .I5(\display_addr_reg[5]_0 [4]),
        .O(display_data_reg_0_63_0_2_i_74_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hBA000000)) 
    display_data_reg_0_63_0_2_i_75
       (.I0(display_w_addr[7]),
        .I1(\display_addr_reg[5]_0 [3]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .I4(display_data_reg_0_63_0_2_i_130_n_0),
        .O(display_data_reg_0_63_0_2_i_75_n_0));
  LUT6 #(
    .INIT(64'hF7F7F777FFFFFFFF)) 
    display_data_reg_0_63_0_2_i_76
       (.I0(display_w_addr[10]),
        .I1(\display_addr_reg[5]_0 [4]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .I4(\display_addr_reg[1]_rep_0 [1]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_76_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_77
       (.I0(display_data_reg_0_63_0_2_i_131_n_0),
        .I1(display_data_reg_0_63_0_2_i_132_n_0),
        .O(display_data_reg_0_63_0_2_i_77_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  MUXF7 display_data_reg_0_63_0_2_i_78
       (.I0(display_data_reg_0_63_0_2_i_133_n_0),
        .I1(display_data_reg_0_63_0_2_i_134_n_0),
        .O(display_data_reg_0_63_0_2_i_78_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'h0200020202000000)) 
    display_data_reg_0_63_0_2_i_79
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(alu_res[2]),
        .I4(display_w_addr[0]),
        .I5(alu_res[6]),
        .O(display_data_reg_0_63_0_2_i_79_n_0));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    display_data_reg_0_63_0_2_i_80
       (.I0(alu_res[30]),
        .I1(display_data_reg_0_63_0_2_i_135_n_0),
        .I2(alu_res[26]),
        .I3(display_data_reg_0_63_0_2_i_136_n_0),
        .I4(display_data_reg_0_63_0_2_i_137_n_0),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_81
       (.I0(dmem_addr[18]),
        .I1(dmem_addr[22]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[26]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[30]),
        .O(display_data_reg_0_63_0_2_i_81_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_82
       (.I0(display_data_reg_0_63_0_2_i_138_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(dmem_i_data[2]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[6]),
        .O(display_data_reg_0_63_0_2_i_82_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_83
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_i_data[26]),
        .I3(display_w_addr[0]),
        .I4(dmem_i_data[30]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_84
       (.I0(dmem_addr[2]),
        .I1(dmem_addr[6]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[10]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[14]),
        .O(display_data_reg_0_63_0_2_i_84_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    display_data_reg_0_63_0_2_i_85
       (.I0(\display_addr_reg[5]_0 [4]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .O(display_data_reg_0_63_0_2_i_85_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_86
       (.I0(display_data_reg_0_63_0_2_i_139_n_0),
        .I1(display_data_reg_0_63_0_2_i_140_n_0),
        .O(display_data_reg_0_63_0_2_i_86_n_0),
        .S(ADDRD[2]));
  MUXF7 display_data_reg_0_63_0_2_i_87
       (.I0(display_data_reg_0_63_0_2_i_141_n_0),
        .I1(display_data_reg_0_63_0_2_i_142_n_0),
        .O(display_data_reg_0_63_0_2_i_87_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  MUXF7 display_data_reg_0_63_0_2_i_88
       (.I0(display_data_reg_0_63_0_2_i_143_n_0),
        .I1(display_data_reg_0_63_0_2_i_144_n_0),
        .O(display_data_reg_0_63_0_2_i_88_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'h0200020202000000)) 
    display_data_reg_0_63_0_2_i_89
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(alu_res[1]),
        .I4(display_w_addr[0]),
        .I5(alu_res[5]),
        .O(display_data_reg_0_63_0_2_i_89_n_0));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    display_data_reg_0_63_0_2_i_9
       (.I0(display_data_reg_0_63_0_2_i_26_n_0),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[8]),
        .I3(display_data_reg_0_63_0_2_i_27_n_0),
        .I4(display_w_addr[7]),
        .I5(display_w_addr[11]),
        .O(display_data_reg_0_63_0_2_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    display_data_reg_0_63_0_2_i_90
       (.I0(alu_res[29]),
        .I1(display_data_reg_0_63_0_2_i_135_n_0),
        .I2(alu_res[25]),
        .I3(display_data_reg_0_63_0_2_i_136_n_0),
        .I4(display_data_reg_0_63_0_2_i_145_n_0),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_91
       (.I0(dmem_addr[17]),
        .I1(dmem_addr[21]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[25]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[29]),
        .O(display_data_reg_0_63_0_2_i_91_n_0));
  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    display_data_reg_0_63_0_2_i_92
       (.I0(display_data_reg_0_63_0_2_i_146_n_0),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(dmem_i_data[1]),
        .I4(display_w_addr[0]),
        .I5(dmem_i_data[5]),
        .O(display_data_reg_0_63_0_2_i_92_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_0_63_0_2_i_93
       (.I0(\display_addr_reg[5]_0 [0]),
        .I1(\display_addr_reg[5]_0 [1]),
        .I2(dmem_i_data[25]),
        .I3(display_w_addr[0]),
        .I4(dmem_i_data[29]),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    display_data_reg_0_63_0_2_i_94
       (.I0(dmem_addr[1]),
        .I1(dmem_addr[5]),
        .I2(\display_addr_reg[5]_0 [0]),
        .I3(dmem_addr[9]),
        .I4(display_w_addr[0]),
        .I5(dmem_addr[13]),
        .O(display_data_reg_0_63_0_2_i_94_n_0));
  MUXF7 display_data_reg_0_63_0_2_i_95
       (.I0(display_data_reg_0_63_0_2_i_147_n_0),
        .I1(display_data_reg_0_63_0_2_i_148_n_0),
        .O(display_data_reg_0_63_0_2_i_95_n_0),
        .S(ADDRD[2]));
  MUXF7 display_data_reg_0_63_0_2_i_96
       (.I0(display_data_reg_0_63_0_2_i_149_n_0),
        .I1(display_data_reg_0_63_0_2_i_150_n_0),
        .O(display_data_reg_0_63_0_2_i_96_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  MUXF7 display_data_reg_0_63_0_2_i_97
       (.I0(display_data_reg_0_63_0_2_i_151_n_0),
        .I1(display_data_reg_0_63_0_2_i_152_n_0),
        .O(display_data_reg_0_63_0_2_i_97_n_0),
        .S(\display_addr_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'h0200020202000000)) 
    display_data_reg_0_63_0_2_i_98
       (.I0(\display_addr_reg[5]_0 [3]),
        .I1(\display_addr_reg[5]_0 [0]),
        .I2(\display_addr_reg[5]_0 [1]),
        .I3(alu_res[3]),
        .I4(display_w_addr[0]),
        .I5(alu_res[7]),
        .O(display_data_reg_0_63_0_2_i_98_n_0));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    display_data_reg_0_63_0_2_i_99
       (.I0(alu_res[31]),
        .I1(display_data_reg_0_63_0_2_i_135_n_0),
        .I2(alu_res[27]),
        .I3(display_data_reg_0_63_0_2_i_136_n_0),
        .I4(display_data_reg_0_63_0_2_i_153_n_0),
        .I5(\display_addr_reg[5]_0 [3]),
        .O(display_data_reg_0_63_0_2_i_99_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    display_data_reg_0_63_3_5_i_1
       (.I0(display_data_reg_0_63_0_2_i_11_n_0),
        .I1(display_data_reg_0_63_0_2_i_9_n_0),
        .I2(display_data_reg_0_63_0_2_i_10_n_0),
        .O(display_w_data[3]));
  LUT3 #(
    .INIT(8'h1F)) 
    display_data_reg_0_63_3_5_i_2
       (.I0(display_data_reg_0_63_0_2_i_9_n_0),
        .I1(display_data_reg_0_63_0_2_i_10_n_0),
        .I2(display_data_reg_0_63_0_2_i_11_n_0),
        .O(\display_addr_reg[10]_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    display_data_reg_0_63_6_6_i_1
       (.I0(display_data_reg_0_63_0_2_i_11_n_0),
        .I1(display_data_reg_0_63_0_2_i_10_n_0),
        .I2(display_data_reg_0_63_0_2_i_9_n_0),
        .O(display_w_data[4]));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    display_data_reg_1024_1087_0_2_i_1
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_0_63_0_2_i_17_n_0),
        .O(\display_addr_reg[10]_2 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_1088_1151_0_2_i_1
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[6]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_1088_1151_0_2_i_2_n_0),
        .O(\display_addr_reg[10]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_1088_1151_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_1088_1151_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_1152_1215_0_2_i_1
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[7]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_1152_1215_0_2_i_2_n_0),
        .O(\display_addr_reg[10]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_1152_1215_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_1152_1215_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_1216_1279_0_2_i_1
       (.I0(display_data_reg_1216_1279_0_2_i_2_n_0),
        .I1(display_data_reg_448_511_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[10]),
        .O(\display_addr_reg[3]_rep_7 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_1216_1279_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_1216_1279_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h4540000000000000)) 
    display_data_reg_1280_1343_0_2_i_1
       (.I0(display_data_reg_1280_1343_0_2_i_2_n_0),
        .I1(display_data_reg_0_63_0_2_i_14_n_0),
        .I2(\display_addr_reg[3]_rep_0 ),
        .I3(display_data_reg_64_127_0_2_i_2_n_0),
        .I4(display_data_reg_1280_1343_0_2_i_3_n_0),
        .I5(display_data_reg_1280_1343_0_2_i_4_n_0),
        .O(\display_addr_reg[3]_rep_8 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_1280_1343_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[10]),
        .O(display_data_reg_1280_1343_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    display_data_reg_1280_1343_0_2_i_3
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[6]),
        .O(display_data_reg_1280_1343_0_2_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    display_data_reg_1280_1343_0_2_i_4
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .O(display_data_reg_1280_1343_0_2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    display_data_reg_128_191_0_2_i_1
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_128_191_0_2_i_2_n_0),
        .O(\display_addr_reg[7]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_128_191_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_128_191_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_1344_1407_0_2_i_1
       (.I0(display_data_reg_1344_1407_0_2_i_2_n_0),
        .I1(display_data_reg_832_895_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[10]),
        .O(\display_addr_reg[3]_rep_1 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_1344_1407_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[7]),
        .O(display_data_reg_1344_1407_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_1408_1471_0_2_i_1
       (.I0(display_data_reg_1408_1471_0_2_i_2_n_0),
        .I1(display_data_reg_896_959_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[10]),
        .O(\display_addr_reg[3]_rep_2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_1408_1471_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[6]),
        .I2(display_w_addr[9]),
        .O(display_data_reg_1408_1471_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_1472_1535_0_2_i_1
       (.I0(display_w_addr[9]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[3]_rep_0 ),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[11]),
        .I5(display_data_reg_1472_1535_0_2_i_2_n_0),
        .O(\display_addr_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_1472_1535_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_1472_1535_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_1536_1599_0_2_i_1
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[9]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_1536_1599_0_2_i_2_n_0),
        .O(\display_addr_reg[10]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_1536_1599_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_1536_1599_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_1600_1663_0_2_i_1
       (.I0(display_data_reg_1600_1663_0_2_i_2_n_0),
        .I1(display_data_reg_1600_1663_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[10]),
        .O(\display_addr_reg[3]_rep_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_1600_1663_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_1600_1663_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_1600_1663_0_2_i_3
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[6]),
        .O(display_data_reg_1600_1663_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_1664_1727_0_2_i_1
       (.I0(display_data_reg_1664_1727_0_2_i_2_n_0),
        .I1(display_data_reg_1664_1727_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[10]),
        .O(\display_addr_reg[3]_rep_4 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_1664_1727_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[6]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_1664_1727_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_1664_1727_0_2_i_3
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[7]),
        .O(display_data_reg_1664_1727_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_1728_1791_0_2_i_1
       (.I0(display_w_addr[8]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[3]_rep_0 ),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[11]),
        .I5(display_data_reg_1728_1791_0_2_i_2_n_0),
        .O(\display_addr_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_1728_1791_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_1728_1791_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h4440004000000000)) 
    display_data_reg_1792_1855_0_2_i_1
       (.I0(display_data_reg_1792_1855_0_2_i_2_n_0),
        .I1(display_data_reg_1792_1855_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[3]_rep_0 ),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[10]),
        .O(\display_addr_reg[3]_rep_5 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_1792_1855_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[6]),
        .O(display_data_reg_1792_1855_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    display_data_reg_1792_1855_0_2_i_3
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[9]),
        .O(display_data_reg_1792_1855_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_1856_1919_0_2_i_1
       (.I0(display_w_addr[7]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[3]_rep_0 ),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[11]),
        .I5(display_data_reg_1856_1919_0_2_i_2_n_0),
        .O(\display_addr_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_1856_1919_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_1856_1919_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_1920_1983_0_2_i_1
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[3]_rep_0 ),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[11]),
        .I5(display_data_reg_1920_1983_0_2_i_2_n_0),
        .O(\display_addr_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_1920_1983_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_1920_1983_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_192_255_0_2_i_1
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[6]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_192_255_0_2_i_2_n_0),
        .O(\display_addr_reg[7]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_192_255_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[9]),
        .O(display_data_reg_192_255_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    display_data_reg_1984_2047_0_2_i_1
       (.I0(display_data_reg_64_127_0_2_i_2_n_0),
        .I1(\display_addr_reg[3]_rep_0 ),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(display_w_addr[10]),
        .I4(display_w_addr[11]),
        .I5(display_data_reg_960_1023_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_rep_6 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    display_data_reg_2048_2111_0_2_i_1
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_0_63_0_2_i_17_n_0),
        .O(\display_addr_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_2112_2175_0_2_i_1
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[6]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_64_127_0_2_i_3_n_0),
        .O(\display_addr_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_2176_2239_0_2_i_1
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[7]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_128_191_0_2_i_2_n_0),
        .O(\display_addr_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    display_data_reg_2240_2303_0_2_i_1
       (.I0(display_data_reg_2240_2303_0_2_i_2_n_0),
        .I1(display_data_reg_448_511_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h01)) 
    display_data_reg_2240_2303_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_2240_2303_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_2304_2367_0_2_i_1
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[8]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_256_319_0_2_i_2_n_0),
        .O(\display_addr_reg[11]_3 ));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_2368_2431_0_2_i_1
       (.I0(display_data_reg_2368_2431_0_2_i_2_n_0),
        .I1(display_data_reg_832_895_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_2368_2431_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[7]),
        .O(display_data_reg_2368_2431_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_2432_2495_0_2_i_1
       (.I0(display_data_reg_2432_2495_0_2_i_2_n_0),
        .I1(display_data_reg_896_959_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_2432_2495_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[6]),
        .I2(display_w_addr[9]),
        .O(display_data_reg_2432_2495_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_2496_2559_0_2_i_1
       (.I0(display_w_addr[9]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[5]_0 [2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_2496_2559_0_2_i_2_n_0),
        .O(\display_addr_reg[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_2496_2559_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[8]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_2496_2559_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_2560_2623_0_2_i_1
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_512_575_0_2_i_2_n_0),
        .O(\display_addr_reg[11]_4 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    display_data_reg_256_319_0_2_i_1
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_256_319_0_2_i_2_n_0),
        .O(\display_addr_reg[8]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_256_319_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_256_319_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_2624_2687_0_2_i_1
       (.I0(display_data_reg_2624_2687_0_2_i_2_n_0),
        .I1(display_data_reg_1600_1663_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_2624_2687_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_2624_2687_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_2688_2751_0_2_i_1
       (.I0(display_data_reg_2688_2751_0_2_i_2_n_0),
        .I1(display_data_reg_1664_1727_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_2688_2751_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[6]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_2688_2751_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_2752_2815_0_2_i_1
       (.I0(display_w_addr[8]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[5]_0 [2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_2752_2815_0_2_i_2_n_0),
        .O(\display_addr_reg[8]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_2752_2815_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_2752_2815_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h4440004000000000)) 
    display_data_reg_2816_2879_0_2_i_1
       (.I0(display_data_reg_2816_2879_0_2_i_2_n_0),
        .I1(display_data_reg_1792_1855_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(\display_addr_reg[5]_0 [2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_2816_2879_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[6]),
        .O(display_data_reg_2816_2879_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_2880_2943_0_2_i_1
       (.I0(display_w_addr[7]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[5]_0 [2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_2880_2943_0_2_i_2_n_0),
        .O(\display_addr_reg[7]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_2880_2943_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_2880_2943_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_2944_3007_0_2_i_1
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(\display_addr_reg[5]_0 [2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_2944_3007_0_2_i_2_n_0),
        .O(\display_addr_reg[6]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_2944_3007_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_2944_3007_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    display_data_reg_3008_3071_0_2_i_1
       (.I0(display_data_reg_64_127_0_2_i_2_n_0),
        .I1(\display_addr_reg[5]_0 [2]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(display_w_addr[11]),
        .I4(display_w_addr[10]),
        .I5(display_data_reg_960_1023_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_5 ));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_3072_3135_0_2_i_1
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_0_63_0_2_i_17_n_0),
        .O(\display_addr_reg[11]_5 ));
  LUT6 #(
    .INIT(64'h4440004000000000)) 
    display_data_reg_3136_3199_0_2_i_1
       (.I0(display_data_reg_3136_3199_0_2_i_2_n_0),
        .I1(display_data_reg_3136_3199_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_rep__0_8 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_3136_3199_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_3136_3199_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    display_data_reg_3136_3199_0_2_i_3
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[6]),
        .O(display_data_reg_3136_3199_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h4440004000000000)) 
    display_data_reg_3200_3263_0_2_i_1
       (.I0(display_data_reg_3200_3263_0_2_i_2_n_0),
        .I1(display_data_reg_3200_3263_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_rep__0_9 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_3200_3263_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[6]),
        .I2(display_w_addr[8]),
        .O(display_data_reg_3200_3263_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    display_data_reg_3200_3263_0_2_i_3
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[7]),
        .O(display_data_reg_3200_3263_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_320_383_0_2_i_1
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[6]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_320_383_0_2_i_2_n_0),
        .O(\display_addr_reg[8]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_320_383_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[9]),
        .O(display_data_reg_320_383_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_3264_3327_0_2_i_1
       (.I0(display_w_addr[8]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_3264_3327_0_2_i_2_n_0),
        .O(\display_addr_reg[8]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_3264_3327_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_3264_3327_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_3328_3391_0_2_i_1
       (.I0(display_data_reg_3328_3391_0_2_i_2_n_0),
        .I1(display_data_reg_3328_3391_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_rep__0_10 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_3328_3391_0_2_i_2
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[6]),
        .O(display_data_reg_3328_3391_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_3328_3391_0_2_i_3
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[8]),
        .O(display_data_reg_3328_3391_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_3392_3455_0_2_i_1
       (.I0(display_w_addr[7]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_3392_3455_0_2_i_2_n_0),
        .O(\display_addr_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_3392_3455_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_3392_3455_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_3456_3519_0_2_i_1
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_3456_3519_0_2_i_2_n_0),
        .O(\display_addr_reg[6]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_3456_3519_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_3456_3519_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    display_data_reg_3520_3583_0_2_i_1
       (.I0(display_data_reg_64_127_0_2_i_2_n_0),
        .I1(ADDRD[2]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(display_w_addr[11]),
        .I4(display_w_addr[9]),
        .I5(display_data_reg_1472_1535_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_rep__0_11 ));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_3584_3647_0_2_i_1
       (.I0(display_data_reg_3584_3647_0_2_i_2_n_0),
        .I1(display_data_reg_3584_3647_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[11]),
        .O(\display_addr_reg[3]_rep__0_12 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_3584_3647_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[6]),
        .O(display_data_reg_3584_3647_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_3584_3647_0_2_i_3
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[10]),
        .O(display_data_reg_3584_3647_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_3648_3711_0_2_i_1
       (.I0(display_w_addr[7]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[8]),
        .I5(display_data_reg_3648_3711_0_2_i_2_n_0),
        .O(\display_addr_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_3648_3711_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[9]),
        .O(display_data_reg_3648_3711_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_3712_3775_0_2_i_1
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[8]),
        .I5(display_data_reg_3712_3775_0_2_i_2_n_0),
        .O(\display_addr_reg[6]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_3712_3775_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[9]),
        .O(display_data_reg_3712_3775_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    display_data_reg_3776_3839_0_2_i_1
       (.I0(display_data_reg_64_127_0_2_i_2_n_0),
        .I1(ADDRD[2]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(display_w_addr[11]),
        .I4(display_w_addr[8]),
        .I5(display_data_reg_1728_1791_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_rep__0_13 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_3840_3903_0_2_i_1
       (.I0(display_w_addr[6]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[7]),
        .I5(display_data_reg_3840_3903_0_2_i_2_n_0),
        .O(\display_addr_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_3840_3903_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[8]),
        .I3(display_w_addr[9]),
        .O(display_data_reg_3840_3903_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h00008A8000000000)) 
    display_data_reg_384_447_0_2_i_1
       (.I0(display_data_reg_384_447_0_2_i_2_n_0),
        .I1(display_data_reg_0_63_0_2_i_14_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_64_127_0_2_i_2_n_0),
        .I4(display_data_reg_384_447_0_2_i_3_n_0),
        .I5(display_data_reg_0_63_0_2_i_13_n_0),
        .O(\display_addr_reg[3]_rep__0_2 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    display_data_reg_384_447_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[7]),
        .O(display_data_reg_384_447_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    display_data_reg_384_447_0_2_i_3
       (.I0(display_w_addr[6]),
        .I1(display_w_addr[9]),
        .O(display_data_reg_384_447_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    display_data_reg_3904_3967_0_2_i_1
       (.I0(display_data_reg_64_127_0_2_i_2_n_0),
        .I1(ADDRD[2]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(display_w_addr[11]),
        .I4(display_w_addr[7]),
        .I5(display_data_reg_1856_1919_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_rep__0_14 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    display_data_reg_3968_4031_0_2_i_1
       (.I0(display_data_reg_64_127_0_2_i_2_n_0),
        .I1(ADDRD[2]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(display_w_addr[11]),
        .I4(display_w_addr[6]),
        .I5(display_data_reg_1920_1983_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_rep__0_15 ));
  LUT6 #(
    .INIT(64'h000000000000BBB8)) 
    display_data_reg_4032_4095_0_2_i_1
       (.I0(display_data_reg_0_63_0_2_i_14_n_0),
        .I1(ADDRD[2]),
        .I2(display_data_reg_0_63_0_2_i_15_n_0),
        .I3(display_data_reg_0_63_0_2_i_16_n_0),
        .I4(display_data_reg_4032_4095_0_2_i_2_n_0),
        .I5(display_data_reg_960_1023_0_2_i_2_n_0),
        .O(\display_addr_reg[3]_rep__0_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_4032_4095_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[11]),
        .O(display_data_reg_4032_4095_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_448_511_0_2_i_1
       (.I0(display_data_reg_448_511_0_2_i_2_n_0),
        .I1(display_data_reg_448_511_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[8]),
        .O(\display_addr_reg[3]_rep__0_3 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_448_511_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[9]),
        .O(display_data_reg_448_511_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_448_511_0_2_i_3
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[6]),
        .O(display_data_reg_448_511_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    display_data_reg_512_575_0_2_i_1
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_512_575_0_2_i_2_n_0),
        .O(\display_addr_reg[9]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_512_575_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_512_575_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_576_639_0_2_i_1
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[6]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_576_639_0_2_i_2_n_0),
        .O(\display_addr_reg[9]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_576_639_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_576_639_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h4540000000000000)) 
    display_data_reg_640_703_0_2_i_1
       (.I0(display_data_reg_640_703_0_2_i_2_n_0),
        .I1(display_data_reg_0_63_0_2_i_14_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_64_127_0_2_i_2_n_0),
        .I4(display_data_reg_640_703_0_2_i_3_n_0),
        .I5(display_data_reg_0_63_0_2_i_13_n_0),
        .O(\display_addr_reg[3]_rep__0_4 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_640_703_0_2_i_2
       (.I0(display_w_addr[7]),
        .I1(display_w_addr[9]),
        .O(display_data_reg_640_703_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h1)) 
    display_data_reg_640_703_0_2_i_3
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[6]),
        .O(display_data_reg_640_703_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    display_data_reg_64_127_0_2_i_1
       (.I0(display_w_addr[6]),
        .I1(display_w_addr[11]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_64_127_0_2_i_3_n_0),
        .O(\display_addr_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h88888888FFFFFFF0)) 
    display_data_reg_64_127_0_2_i_2
       (.I0(display_data_reg_2240_2303_0_2_i_2_n_0),
        .I1(display_data_reg_0_63_0_2_i_37_n_0),
        .I2(display_data_reg_64_127_0_2_i_4_n_0),
        .I3(display_data_reg_0_63_0_2_i_39_n_0),
        .I4(display_data_reg_0_63_0_2_i_38_n_0),
        .I5(display_w_addr[11]),
        .O(display_data_reg_64_127_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_64_127_0_2_i_3
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[10]),
        .I2(display_w_addr[7]),
        .I3(display_w_addr[8]),
        .O(display_data_reg_64_127_0_2_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    display_data_reg_64_127_0_2_i_4
       (.I0(display_data_reg_0_63_0_2_i_41_n_0),
        .I1(display_data_reg_0_63_0_2_i_73_n_0),
        .I2(display_w_addr[9]),
        .I3(display_data_reg_64_127_0_2_i_5_n_0),
        .I4(display_w_addr[0]),
        .O(display_data_reg_64_127_0_2_i_4_n_0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    display_data_reg_64_127_0_2_i_5
       (.I0(\display_addr_reg[1]_rep_0 [1]),
        .I1(display_data_reg_0_63_0_2_i_74_n_0),
        .I2(display_w_addr[10]),
        .I3(display_data_reg_64_127_0_2_i_6_n_0),
        .I4(display_data_reg_0_63_0_2_i_130_n_0),
        .O(display_data_reg_64_127_0_2_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    display_data_reg_64_127_0_2_i_6
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[6]),
        .I2(\display_addr_reg[5]_0 [3]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_64_127_0_2_i_6_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_704_767_0_2_i_1
       (.I0(display_data_reg_704_767_0_2_i_2_n_0),
        .I1(display_data_reg_448_511_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[9]),
        .O(\display_addr_reg[3]_rep__0_7 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_704_767_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[8]),
        .I2(display_w_addr[10]),
        .O(display_data_reg_704_767_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080888000)) 
    display_data_reg_768_831_0_2_i_1
       (.I0(display_w_addr[9]),
        .I1(display_w_addr[8]),
        .I2(display_data_reg_0_63_0_2_i_14_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_64_127_0_2_i_2_n_0),
        .I5(display_data_reg_768_831_0_2_i_2_n_0),
        .O(\display_addr_reg[9]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    display_data_reg_768_831_0_2_i_2
       (.I0(display_w_addr[10]),
        .I1(display_w_addr[11]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_768_831_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_832_895_0_2_i_1
       (.I0(display_data_reg_832_895_0_2_i_2_n_0),
        .I1(display_data_reg_832_895_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[9]),
        .O(\display_addr_reg[3]_rep__0_5 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_832_895_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[7]),
        .I2(display_w_addr[10]),
        .O(display_data_reg_832_895_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_832_895_0_2_i_3
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[6]),
        .O(display_data_reg_832_895_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    display_data_reg_896_959_0_2_i_1
       (.I0(display_data_reg_896_959_0_2_i_2_n_0),
        .I1(display_data_reg_896_959_0_2_i_3_n_0),
        .I2(display_data_reg_64_127_0_2_i_2_n_0),
        .I3(ADDRD[2]),
        .I4(display_data_reg_0_63_0_2_i_14_n_0),
        .I5(display_w_addr[9]),
        .O(\display_addr_reg[3]_rep__0_6 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    display_data_reg_896_959_0_2_i_2
       (.I0(display_w_addr[11]),
        .I1(display_w_addr[6]),
        .I2(display_w_addr[10]),
        .O(display_data_reg_896_959_0_2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_data_reg_896_959_0_2_i_3
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[7]),
        .O(display_data_reg_896_959_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    display_data_reg_960_1023_0_2_i_1
       (.I0(display_w_addr[10]),
        .I1(display_data_reg_64_127_0_2_i_2_n_0),
        .I2(ADDRD[2]),
        .I3(display_data_reg_0_63_0_2_i_14_n_0),
        .I4(display_w_addr[11]),
        .I5(display_data_reg_960_1023_0_2_i_2_n_0),
        .O(\display_addr_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_data_reg_960_1023_0_2_i_2
       (.I0(display_w_addr[8]),
        .I1(display_w_addr[9]),
        .I2(display_w_addr[6]),
        .I3(display_w_addr[7]),
        .O(display_data_reg_960_1023_0_2_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDisplay
   (sel,
    \v_count_reg[0] ,
    \vga_b[0]_INST_0_i_209_0 ,
    \vga_b[0]_INST_0_i_143_0 ,
    \vga_b[0]_INST_0_i_35_0 ,
    \vga_b[0]_INST_0_i_339 ,
    \vga_b[0]_INST_0_i_283_0 ,
    g48_b7,
    \h_count_reg[1] ,
    \h_count_reg[1]_0 ,
    S,
    clk_100m,
    display_w_data,
    text_ascii_carry__0_i_57_0,
    text_index,
    text_ascii_carry_i_96_0,
    ADDRD,
    text_ascii_carry__0_i_57_1,
    text_ascii_carry_i_96_1,
    text_ascii_carry__0_i_57_2,
    text_ascii_carry__0_i_57_3,
    text_ascii_carry__0_i_58_0,
    text_ascii_carry__0_i_58_1,
    text_ascii_carry__0_i_58_2,
    text_ascii_carry__0_i_58_3,
    text_ascii_carry__0_i_59_0,
    text_ascii_carry__0_i_59_1,
    text_ascii_carry__0_i_59_2,
    text_ascii_carry__0_i_59_3,
    text_ascii_carry__0_i_60_0,
    text_ascii_carry__0_i_60_1,
    text_ascii_carry__0_i_60_2,
    text_ascii_carry__0_i_60_3,
    text_ascii_carry__0_i_53_0,
    text_ascii_carry_i_92_0,
    text_ascii_carry__0_i_53_1,
    text_ascii_carry__0_i_53_2,
    text_ascii_carry__0_i_53_3,
    text_ascii_carry__0_i_54_0,
    text_ascii_carry__0_i_54_1,
    text_ascii_carry__0_i_54_2,
    text_ascii_carry__0_i_54_3,
    text_ascii_carry__0_i_55_0,
    text_ascii_carry__0_i_55_1,
    text_ascii_carry__0_i_55_2,
    text_ascii_carry__0_i_55_3,
    text_ascii_carry__0_i_56_0,
    text_ascii_carry__0_i_56_1,
    text_ascii_carry__0_i_56_2,
    text_ascii_carry__0_i_56_3,
    text_ascii_carry__0_i_49_0,
    ADDRC,
    text_ascii_carry_i_88_0,
    text_ascii_carry__0_i_49_1,
    text_ascii_carry__0_i_49_2,
    text_ascii_carry__0_i_49_3,
    text_ascii_carry__0_i_50_0,
    text_ascii_carry__0_i_50_1,
    text_ascii_carry__0_i_50_2,
    text_ascii_carry__0_i_50_3,
    text_ascii_carry__0_i_51_0,
    text_ascii_carry__0_i_51_1,
    text_ascii_carry__0_i_51_2,
    text_ascii_carry__0_i_51_3,
    text_ascii_carry__0_i_52_0,
    text_ascii_carry__0_i_52_1,
    text_ascii_carry__0_i_52_2,
    text_ascii_carry__0_i_52_3,
    text_ascii_carry__0_i_45_0,
    text_ascii_carry__0_i_45_1,
    text_ascii_carry__0_i_45_2,
    text_ascii_carry__0_i_45_3,
    text_ascii_carry__0_i_46_0,
    text_ascii_carry__0_i_46_1,
    text_ascii_carry__0_i_46_2,
    text_ascii_carry__0_i_46_3,
    text_ascii_carry__0_i_47_0,
    text_ascii_carry__0_i_47_1,
    text_ascii_carry__0_i_47_2,
    text_ascii_carry__0_i_47_3,
    text_ascii_carry__0_i_48_0,
    text_ascii_carry__0_i_48_1,
    text_ascii_carry__0_i_48_2,
    text_ascii_carry_i_87_0,
    text_ascii_carry__0_i_64_0,
    text_ascii_carry__0_i_73_0,
    text_ascii_carry__0_i_65_0,
    text_ascii_carry__0_i_68_0,
    text_ascii_carry__0_i_57_4,
    text_ascii_carry__0_i_57_5,
    text_ascii_carry__0_i_57_6,
    text_ascii_carry__0_i_57_7,
    C,
    \vga_b[0]_INST_0_i_9_0 ,
    g0_b0_i_4_0,
    \vga_b[0]_INST_0_i_287_0 ,
    \vga_b[0]_INST_0_i_54_0 ,
    \vga_b[0]_INST_0_i_143_1 ,
    \vga_b[0]_INST_0_i_338_0 ,
    \vga_b[0]_INST_0_i_24_0 ,
    \vga_b[0]_INST_0_i_242 ,
    \vga_b[0]_INST_0_i_316_0 ,
    C__0,
    \vga_b[0]_INST_0_i_2_0 ,
    \vga_b[0]_INST_0_i_9_1 ,
    \vga_b[0]_INST_0_i_26_0 ,
    \vga_b[0]_INST_0_i_54_1 ,
    \vga_b[0]_INST_0_i_8_0 ,
    \vga_b[0]_INST_0_i_2_1 ,
    \vga_b[0]_INST_0_i_4_0 ,
    \vga_b[0]_INST_0_i_42 ,
    \vga_b[0]_INST_0_i_104_0 ,
    \vga_b[0]_INST_0_i_17_0 ,
    \vga_b[0]_INST_0_i_17_1 ,
    \vga_b[0]_INST_0_i_17_2 ,
    \vga_b[0]_INST_0_i_28_0 ,
    \vga_b[0]_INST_0_i_28_1 ,
    \vga_b[0]_INST_0_i_10_0 ,
    \vga_b[0]_INST_0_i_10_1 ,
    \vga_b[0]_INST_0_i_10_2 ,
    \vga_b[0]_INST_0_i_31 ,
    \vga_b[0]_INST_0_i_70_0 ,
    \vga_b[0]_INST_0_i_5 ,
    \vga_b[0]_INST_0_i_19_0 ,
    \vga_b[0]_INST_0_i_45_0 ,
    \vga_b[0]_INST_0_i_45_1 ,
    \vga_b[0]_INST_0_i_45_2 ,
    \vga_b[0]_INST_0_i_111_0 ,
    \vga_b[0]_INST_0_i_226_0 ,
    \vga_b[0]_INST_0_i_114 ,
    \vga_b[0]_INST_0_i_241_0 ,
    \vga_b[0]_INST_0_i_14_0 ,
    \vga_b[0]_INST_0_i_14_1 ,
    \vga_b[0]_INST_0_i_75 ,
    \vga_b[0]_INST_0_i_163_0 ,
    \vga_b[0]_INST_0_i_34_0 ,
    \vga_b[0]_INST_0_i_76_0 ,
    \vga_b[0]_INST_0_i_167_0 ,
    \vga_b[0]_INST_0_i_76_1 ,
    \vga_b[0]_INST_0_i_166_0 ,
    \vga_b[0]_INST_0_i_76_2 ,
    \vga_b[0]_INST_0_i_165_0 ,
    \vga_b[0]_INST_0_i_35_1 ,
    \vga_b[0]_INST_0_i_35_2 ,
    \vga_b[0]_INST_0_i_35_3 ,
    \vga_b[0]_INST_0_i_36_0 ,
    \vga_b[0]_INST_0_i_36_1 ,
    \vga_b[0]_INST_0_i_4_1 ,
    \vga_b[0]_INST_0_i_15_0 ,
    \vga_b[0]_INST_0_i_15_1 ,
    \vga_b[0]_INST_0_i_15_2 ,
    \vga_b[0]_INST_0_i_37 ,
    \vga_b[0]_INST_0_i_37_0 ,
    \vga_b[0]_INST_0_i_37_1 ,
    Q,
    \vga_r[3] ,
    \vga_r[3]_0 ,
    \vga_r[3]_1 ,
    display_data_reg_0_63_0_2_i_5,
    display_data_reg_0_63_0_2_i_5_0,
    display_data_reg_0_63_0_2_i_5_1,
    display_data_reg_0_63_0_2_i_5_2,
    display_data_reg_0_63_0_2_i_5_3);
  output [8:0]sel;
  output \v_count_reg[0] ;
  output \vga_b[0]_INST_0_i_209_0 ;
  output \vga_b[0]_INST_0_i_143_0 ;
  output [1:0]\vga_b[0]_INST_0_i_35_0 ;
  output \vga_b[0]_INST_0_i_339 ;
  output \vga_b[0]_INST_0_i_283_0 ;
  output g48_b7;
  output \h_count_reg[1] ;
  output \h_count_reg[1]_0 ;
  output [2:0]S;
  input clk_100m;
  input [4:0]display_w_data;
  input text_ascii_carry__0_i_57_0;
  input [8:0]text_index;
  input [2:0]text_ascii_carry_i_96_0;
  input [5:0]ADDRD;
  input text_ascii_carry__0_i_57_1;
  input [0:0]text_ascii_carry_i_96_1;
  input text_ascii_carry__0_i_57_2;
  input text_ascii_carry__0_i_57_3;
  input text_ascii_carry__0_i_58_0;
  input text_ascii_carry__0_i_58_1;
  input text_ascii_carry__0_i_58_2;
  input text_ascii_carry__0_i_58_3;
  input text_ascii_carry__0_i_59_0;
  input text_ascii_carry__0_i_59_1;
  input text_ascii_carry__0_i_59_2;
  input text_ascii_carry__0_i_59_3;
  input text_ascii_carry__0_i_60_0;
  input text_ascii_carry__0_i_60_1;
  input text_ascii_carry__0_i_60_2;
  input text_ascii_carry__0_i_60_3;
  input text_ascii_carry__0_i_53_0;
  input [1:0]text_ascii_carry_i_92_0;
  input text_ascii_carry__0_i_53_1;
  input text_ascii_carry__0_i_53_2;
  input text_ascii_carry__0_i_53_3;
  input text_ascii_carry__0_i_54_0;
  input text_ascii_carry__0_i_54_1;
  input text_ascii_carry__0_i_54_2;
  input text_ascii_carry__0_i_54_3;
  input text_ascii_carry__0_i_55_0;
  input text_ascii_carry__0_i_55_1;
  input text_ascii_carry__0_i_55_2;
  input text_ascii_carry__0_i_55_3;
  input text_ascii_carry__0_i_56_0;
  input text_ascii_carry__0_i_56_1;
  input text_ascii_carry__0_i_56_2;
  input text_ascii_carry__0_i_56_3;
  input text_ascii_carry__0_i_49_0;
  input [2:0]ADDRC;
  input [0:0]text_ascii_carry_i_88_0;
  input text_ascii_carry__0_i_49_1;
  input text_ascii_carry__0_i_49_2;
  input text_ascii_carry__0_i_49_3;
  input text_ascii_carry__0_i_50_0;
  input text_ascii_carry__0_i_50_1;
  input text_ascii_carry__0_i_50_2;
  input text_ascii_carry__0_i_50_3;
  input text_ascii_carry__0_i_51_0;
  input text_ascii_carry__0_i_51_1;
  input text_ascii_carry__0_i_51_2;
  input text_ascii_carry__0_i_51_3;
  input text_ascii_carry__0_i_52_0;
  input text_ascii_carry__0_i_52_1;
  input text_ascii_carry__0_i_52_2;
  input text_ascii_carry__0_i_52_3;
  input text_ascii_carry__0_i_45_0;
  input text_ascii_carry__0_i_45_1;
  input text_ascii_carry__0_i_45_2;
  input text_ascii_carry__0_i_45_3;
  input text_ascii_carry__0_i_46_0;
  input text_ascii_carry__0_i_46_1;
  input text_ascii_carry__0_i_46_2;
  input text_ascii_carry__0_i_46_3;
  input text_ascii_carry__0_i_47_0;
  input text_ascii_carry__0_i_47_1;
  input text_ascii_carry__0_i_47_2;
  input text_ascii_carry__0_i_47_3;
  input text_ascii_carry__0_i_48_0;
  input text_ascii_carry__0_i_48_1;
  input text_ascii_carry__0_i_48_2;
  input text_ascii_carry_i_87_0;
  input text_ascii_carry__0_i_64_0;
  input [2:0]text_ascii_carry__0_i_73_0;
  input [2:0]text_ascii_carry__0_i_65_0;
  input [0:0]text_ascii_carry__0_i_68_0;
  input text_ascii_carry__0_i_57_4;
  input text_ascii_carry__0_i_57_5;
  input text_ascii_carry__0_i_57_6;
  input text_ascii_carry__0_i_57_7;
  input [4:0]C;
  input \vga_b[0]_INST_0_i_9_0 ;
  input g0_b0_i_4_0;
  input \vga_b[0]_INST_0_i_287_0 ;
  input \vga_b[0]_INST_0_i_54_0 ;
  input \vga_b[0]_INST_0_i_143_1 ;
  input \vga_b[0]_INST_0_i_338_0 ;
  input \vga_b[0]_INST_0_i_24_0 ;
  input \vga_b[0]_INST_0_i_242 ;
  input \vga_b[0]_INST_0_i_316_0 ;
  input [0:0]C__0;
  input \vga_b[0]_INST_0_i_2_0 ;
  input \vga_b[0]_INST_0_i_9_1 ;
  input \vga_b[0]_INST_0_i_26_0 ;
  input \vga_b[0]_INST_0_i_54_1 ;
  input \vga_b[0]_INST_0_i_8_0 ;
  input \vga_b[0]_INST_0_i_2_1 ;
  input \vga_b[0]_INST_0_i_4_0 ;
  input \vga_b[0]_INST_0_i_42 ;
  input \vga_b[0]_INST_0_i_104_0 ;
  input \vga_b[0]_INST_0_i_17_0 ;
  input \vga_b[0]_INST_0_i_17_1 ;
  input \vga_b[0]_INST_0_i_17_2 ;
  input \vga_b[0]_INST_0_i_28_0 ;
  input \vga_b[0]_INST_0_i_28_1 ;
  input \vga_b[0]_INST_0_i_10_0 ;
  input \vga_b[0]_INST_0_i_10_1 ;
  input \vga_b[0]_INST_0_i_10_2 ;
  input \vga_b[0]_INST_0_i_31 ;
  input \vga_b[0]_INST_0_i_70_0 ;
  input \vga_b[0]_INST_0_i_5 ;
  input \vga_b[0]_INST_0_i_19_0 ;
  input \vga_b[0]_INST_0_i_45_0 ;
  input \vga_b[0]_INST_0_i_45_1 ;
  input \vga_b[0]_INST_0_i_45_2 ;
  input \vga_b[0]_INST_0_i_111_0 ;
  input \vga_b[0]_INST_0_i_226_0 ;
  input \vga_b[0]_INST_0_i_114 ;
  input \vga_b[0]_INST_0_i_241_0 ;
  input \vga_b[0]_INST_0_i_14_0 ;
  input \vga_b[0]_INST_0_i_14_1 ;
  input \vga_b[0]_INST_0_i_75 ;
  input \vga_b[0]_INST_0_i_163_0 ;
  input \vga_b[0]_INST_0_i_34_0 ;
  input \vga_b[0]_INST_0_i_76_0 ;
  input \vga_b[0]_INST_0_i_167_0 ;
  input \vga_b[0]_INST_0_i_76_1 ;
  input \vga_b[0]_INST_0_i_166_0 ;
  input \vga_b[0]_INST_0_i_76_2 ;
  input \vga_b[0]_INST_0_i_165_0 ;
  input \vga_b[0]_INST_0_i_35_1 ;
  input \vga_b[0]_INST_0_i_35_2 ;
  input \vga_b[0]_INST_0_i_35_3 ;
  input \vga_b[0]_INST_0_i_36_0 ;
  input \vga_b[0]_INST_0_i_36_1 ;
  input \vga_b[0]_INST_0_i_4_1 ;
  input \vga_b[0]_INST_0_i_15_0 ;
  input \vga_b[0]_INST_0_i_15_1 ;
  input \vga_b[0]_INST_0_i_15_2 ;
  input \vga_b[0]_INST_0_i_37 ;
  input \vga_b[0]_INST_0_i_37_0 ;
  input \vga_b[0]_INST_0_i_37_1 ;
  input [5:0]Q;
  input \vga_r[3] ;
  input \vga_r[3]_0 ;
  input \vga_r[3]_1 ;
  input display_data_reg_0_63_0_2_i_5;
  input display_data_reg_0_63_0_2_i_5_0;
  input display_data_reg_0_63_0_2_i_5_1;
  input display_data_reg_0_63_0_2_i_5_2;
  input display_data_reg_0_63_0_2_i_5_3;

  wire [2:0]ADDRC;
  wire [5:0]ADDRD;
  wire [4:0]C;
  wire [0:0]C__0;
  wire [5:0]Q;
  wire [2:0]S;
  wire clk_100m;
  wire display_data_reg_0_63_0_2_i_5;
  wire display_data_reg_0_63_0_2_i_5_0;
  wire display_data_reg_0_63_0_2_i_5_1;
  wire display_data_reg_0_63_0_2_i_5_2;
  wire display_data_reg_0_63_0_2_i_5_3;
  wire display_data_reg_0_63_0_2_n_0;
  wire display_data_reg_0_63_0_2_n_1;
  wire display_data_reg_0_63_0_2_n_2;
  wire display_data_reg_0_63_3_5_n_0;
  wire display_data_reg_0_63_3_5_n_1;
  wire display_data_reg_0_63_3_5_n_2;
  wire display_data_reg_0_63_6_6_n_0;
  wire display_data_reg_1024_1087_0_2_n_0;
  wire display_data_reg_1024_1087_0_2_n_1;
  wire display_data_reg_1024_1087_0_2_n_2;
  wire display_data_reg_1024_1087_3_5_n_0;
  wire display_data_reg_1024_1087_3_5_n_1;
  wire display_data_reg_1024_1087_3_5_n_2;
  wire display_data_reg_1024_1087_6_6_n_0;
  wire display_data_reg_1088_1151_0_2_n_0;
  wire display_data_reg_1088_1151_0_2_n_1;
  wire display_data_reg_1088_1151_0_2_n_2;
  wire display_data_reg_1088_1151_3_5_n_0;
  wire display_data_reg_1088_1151_3_5_n_1;
  wire display_data_reg_1088_1151_3_5_n_2;
  wire display_data_reg_1088_1151_6_6_n_0;
  wire display_data_reg_1152_1215_0_2_n_0;
  wire display_data_reg_1152_1215_0_2_n_1;
  wire display_data_reg_1152_1215_0_2_n_2;
  wire display_data_reg_1152_1215_3_5_n_0;
  wire display_data_reg_1152_1215_3_5_n_1;
  wire display_data_reg_1152_1215_3_5_n_2;
  wire display_data_reg_1152_1215_6_6_n_0;
  wire display_data_reg_1216_1279_0_2_n_0;
  wire display_data_reg_1216_1279_0_2_n_1;
  wire display_data_reg_1216_1279_0_2_n_2;
  wire display_data_reg_1216_1279_3_5_n_0;
  wire display_data_reg_1216_1279_3_5_n_1;
  wire display_data_reg_1216_1279_3_5_n_2;
  wire display_data_reg_1216_1279_6_6_n_0;
  wire display_data_reg_1280_1343_0_2_n_0;
  wire display_data_reg_1280_1343_0_2_n_1;
  wire display_data_reg_1280_1343_0_2_n_2;
  wire display_data_reg_1280_1343_3_5_n_0;
  wire display_data_reg_1280_1343_3_5_n_1;
  wire display_data_reg_1280_1343_3_5_n_2;
  wire display_data_reg_1280_1343_6_6_n_0;
  wire display_data_reg_128_191_0_2_n_0;
  wire display_data_reg_128_191_0_2_n_1;
  wire display_data_reg_128_191_0_2_n_2;
  wire display_data_reg_128_191_3_5_n_0;
  wire display_data_reg_128_191_3_5_n_1;
  wire display_data_reg_128_191_3_5_n_2;
  wire display_data_reg_128_191_6_6_n_0;
  wire display_data_reg_1344_1407_0_2_n_0;
  wire display_data_reg_1344_1407_0_2_n_1;
  wire display_data_reg_1344_1407_0_2_n_2;
  wire display_data_reg_1344_1407_3_5_n_0;
  wire display_data_reg_1344_1407_3_5_n_1;
  wire display_data_reg_1344_1407_3_5_n_2;
  wire display_data_reg_1344_1407_6_6_n_0;
  wire display_data_reg_1408_1471_0_2_n_0;
  wire display_data_reg_1408_1471_0_2_n_1;
  wire display_data_reg_1408_1471_0_2_n_2;
  wire display_data_reg_1408_1471_3_5_n_0;
  wire display_data_reg_1408_1471_3_5_n_1;
  wire display_data_reg_1408_1471_3_5_n_2;
  wire display_data_reg_1408_1471_6_6_n_0;
  wire display_data_reg_1472_1535_0_2_n_0;
  wire display_data_reg_1472_1535_0_2_n_1;
  wire display_data_reg_1472_1535_0_2_n_2;
  wire display_data_reg_1472_1535_3_5_n_0;
  wire display_data_reg_1472_1535_3_5_n_1;
  wire display_data_reg_1472_1535_3_5_n_2;
  wire display_data_reg_1472_1535_6_6_n_0;
  wire display_data_reg_1536_1599_0_2_n_0;
  wire display_data_reg_1536_1599_0_2_n_1;
  wire display_data_reg_1536_1599_0_2_n_2;
  wire display_data_reg_1536_1599_3_5_n_0;
  wire display_data_reg_1536_1599_3_5_n_1;
  wire display_data_reg_1536_1599_3_5_n_2;
  wire display_data_reg_1536_1599_6_6_n_0;
  wire display_data_reg_1600_1663_0_2_n_0;
  wire display_data_reg_1600_1663_0_2_n_1;
  wire display_data_reg_1600_1663_0_2_n_2;
  wire display_data_reg_1600_1663_3_5_n_0;
  wire display_data_reg_1600_1663_3_5_n_1;
  wire display_data_reg_1600_1663_3_5_n_2;
  wire display_data_reg_1600_1663_6_6_n_0;
  wire display_data_reg_1664_1727_0_2_n_0;
  wire display_data_reg_1664_1727_0_2_n_1;
  wire display_data_reg_1664_1727_0_2_n_2;
  wire display_data_reg_1664_1727_3_5_n_0;
  wire display_data_reg_1664_1727_3_5_n_1;
  wire display_data_reg_1664_1727_3_5_n_2;
  wire display_data_reg_1664_1727_6_6_n_0;
  wire display_data_reg_1728_1791_0_2_n_0;
  wire display_data_reg_1728_1791_0_2_n_1;
  wire display_data_reg_1728_1791_0_2_n_2;
  wire display_data_reg_1728_1791_3_5_n_0;
  wire display_data_reg_1728_1791_3_5_n_1;
  wire display_data_reg_1728_1791_3_5_n_2;
  wire display_data_reg_1728_1791_6_6_n_0;
  wire display_data_reg_1792_1855_0_2_n_0;
  wire display_data_reg_1792_1855_0_2_n_1;
  wire display_data_reg_1792_1855_0_2_n_2;
  wire display_data_reg_1792_1855_3_5_n_0;
  wire display_data_reg_1792_1855_3_5_n_1;
  wire display_data_reg_1792_1855_3_5_n_2;
  wire display_data_reg_1792_1855_6_6_n_0;
  wire display_data_reg_1856_1919_0_2_n_0;
  wire display_data_reg_1856_1919_0_2_n_1;
  wire display_data_reg_1856_1919_0_2_n_2;
  wire display_data_reg_1856_1919_3_5_n_0;
  wire display_data_reg_1856_1919_3_5_n_1;
  wire display_data_reg_1856_1919_3_5_n_2;
  wire display_data_reg_1856_1919_6_6_n_0;
  wire display_data_reg_1920_1983_0_2_n_0;
  wire display_data_reg_1920_1983_0_2_n_1;
  wire display_data_reg_1920_1983_0_2_n_2;
  wire display_data_reg_1920_1983_3_5_n_0;
  wire display_data_reg_1920_1983_3_5_n_1;
  wire display_data_reg_1920_1983_3_5_n_2;
  wire display_data_reg_1920_1983_6_6_n_0;
  wire display_data_reg_192_255_0_2_n_0;
  wire display_data_reg_192_255_0_2_n_1;
  wire display_data_reg_192_255_0_2_n_2;
  wire display_data_reg_192_255_3_5_n_0;
  wire display_data_reg_192_255_3_5_n_1;
  wire display_data_reg_192_255_3_5_n_2;
  wire display_data_reg_192_255_6_6_n_0;
  wire display_data_reg_1984_2047_0_2_n_0;
  wire display_data_reg_1984_2047_0_2_n_1;
  wire display_data_reg_1984_2047_0_2_n_2;
  wire display_data_reg_1984_2047_3_5_n_0;
  wire display_data_reg_1984_2047_3_5_n_1;
  wire display_data_reg_1984_2047_3_5_n_2;
  wire display_data_reg_1984_2047_6_6_n_0;
  wire display_data_reg_2048_2111_0_2_n_0;
  wire display_data_reg_2048_2111_0_2_n_1;
  wire display_data_reg_2048_2111_0_2_n_2;
  wire display_data_reg_2048_2111_3_5_n_0;
  wire display_data_reg_2048_2111_3_5_n_1;
  wire display_data_reg_2048_2111_3_5_n_2;
  wire display_data_reg_2048_2111_6_6_n_0;
  wire display_data_reg_2112_2175_0_2_n_0;
  wire display_data_reg_2112_2175_0_2_n_1;
  wire display_data_reg_2112_2175_0_2_n_2;
  wire display_data_reg_2112_2175_3_5_n_0;
  wire display_data_reg_2112_2175_3_5_n_1;
  wire display_data_reg_2112_2175_3_5_n_2;
  wire display_data_reg_2112_2175_6_6_n_0;
  wire display_data_reg_2176_2239_0_2_n_0;
  wire display_data_reg_2176_2239_0_2_n_1;
  wire display_data_reg_2176_2239_0_2_n_2;
  wire display_data_reg_2176_2239_3_5_n_0;
  wire display_data_reg_2176_2239_3_5_n_1;
  wire display_data_reg_2176_2239_3_5_n_2;
  wire display_data_reg_2176_2239_6_6_n_0;
  wire display_data_reg_2240_2303_0_2_n_0;
  wire display_data_reg_2240_2303_0_2_n_1;
  wire display_data_reg_2240_2303_0_2_n_2;
  wire display_data_reg_2240_2303_3_5_n_0;
  wire display_data_reg_2240_2303_3_5_n_1;
  wire display_data_reg_2240_2303_3_5_n_2;
  wire display_data_reg_2240_2303_6_6_n_0;
  wire display_data_reg_2304_2367_0_2_n_0;
  wire display_data_reg_2304_2367_0_2_n_1;
  wire display_data_reg_2304_2367_0_2_n_2;
  wire display_data_reg_2304_2367_3_5_n_0;
  wire display_data_reg_2304_2367_3_5_n_1;
  wire display_data_reg_2304_2367_3_5_n_2;
  wire display_data_reg_2304_2367_6_6_n_0;
  wire display_data_reg_2368_2431_0_2_n_0;
  wire display_data_reg_2368_2431_0_2_n_1;
  wire display_data_reg_2368_2431_0_2_n_2;
  wire display_data_reg_2368_2431_3_5_n_0;
  wire display_data_reg_2368_2431_3_5_n_1;
  wire display_data_reg_2368_2431_3_5_n_2;
  wire display_data_reg_2368_2431_6_6_n_0;
  wire display_data_reg_2432_2495_0_2_n_0;
  wire display_data_reg_2432_2495_0_2_n_1;
  wire display_data_reg_2432_2495_0_2_n_2;
  wire display_data_reg_2432_2495_3_5_n_0;
  wire display_data_reg_2432_2495_3_5_n_1;
  wire display_data_reg_2432_2495_3_5_n_2;
  wire display_data_reg_2432_2495_6_6_n_0;
  wire display_data_reg_2496_2559_0_2_n_0;
  wire display_data_reg_2496_2559_0_2_n_1;
  wire display_data_reg_2496_2559_0_2_n_2;
  wire display_data_reg_2496_2559_3_5_n_0;
  wire display_data_reg_2496_2559_3_5_n_1;
  wire display_data_reg_2496_2559_3_5_n_2;
  wire display_data_reg_2496_2559_6_6_n_0;
  wire display_data_reg_2560_2623_0_2_n_0;
  wire display_data_reg_2560_2623_0_2_n_1;
  wire display_data_reg_2560_2623_0_2_n_2;
  wire display_data_reg_2560_2623_3_5_n_0;
  wire display_data_reg_2560_2623_3_5_n_1;
  wire display_data_reg_2560_2623_3_5_n_2;
  wire display_data_reg_2560_2623_6_6_n_0;
  wire display_data_reg_256_319_0_2_n_0;
  wire display_data_reg_256_319_0_2_n_1;
  wire display_data_reg_256_319_0_2_n_2;
  wire display_data_reg_256_319_3_5_n_0;
  wire display_data_reg_256_319_3_5_n_1;
  wire display_data_reg_256_319_3_5_n_2;
  wire display_data_reg_256_319_6_6_n_0;
  wire display_data_reg_2624_2687_0_2_n_0;
  wire display_data_reg_2624_2687_0_2_n_1;
  wire display_data_reg_2624_2687_0_2_n_2;
  wire display_data_reg_2624_2687_3_5_n_0;
  wire display_data_reg_2624_2687_3_5_n_1;
  wire display_data_reg_2624_2687_3_5_n_2;
  wire display_data_reg_2624_2687_6_6_n_0;
  wire display_data_reg_2688_2751_0_2_n_0;
  wire display_data_reg_2688_2751_0_2_n_1;
  wire display_data_reg_2688_2751_0_2_n_2;
  wire display_data_reg_2688_2751_3_5_n_0;
  wire display_data_reg_2688_2751_3_5_n_1;
  wire display_data_reg_2688_2751_3_5_n_2;
  wire display_data_reg_2688_2751_6_6_n_0;
  wire display_data_reg_2752_2815_0_2_n_0;
  wire display_data_reg_2752_2815_0_2_n_1;
  wire display_data_reg_2752_2815_0_2_n_2;
  wire display_data_reg_2752_2815_3_5_n_0;
  wire display_data_reg_2752_2815_3_5_n_1;
  wire display_data_reg_2752_2815_3_5_n_2;
  wire display_data_reg_2752_2815_6_6_n_0;
  wire display_data_reg_2816_2879_0_2_n_0;
  wire display_data_reg_2816_2879_0_2_n_1;
  wire display_data_reg_2816_2879_0_2_n_2;
  wire display_data_reg_2816_2879_3_5_n_0;
  wire display_data_reg_2816_2879_3_5_n_1;
  wire display_data_reg_2816_2879_3_5_n_2;
  wire display_data_reg_2816_2879_6_6_n_0;
  wire display_data_reg_2880_2943_0_2_n_0;
  wire display_data_reg_2880_2943_0_2_n_1;
  wire display_data_reg_2880_2943_0_2_n_2;
  wire display_data_reg_2880_2943_3_5_n_0;
  wire display_data_reg_2880_2943_3_5_n_1;
  wire display_data_reg_2880_2943_3_5_n_2;
  wire display_data_reg_2880_2943_6_6_n_0;
  wire display_data_reg_2944_3007_0_2_n_0;
  wire display_data_reg_2944_3007_0_2_n_1;
  wire display_data_reg_2944_3007_0_2_n_2;
  wire display_data_reg_2944_3007_3_5_n_0;
  wire display_data_reg_2944_3007_3_5_n_1;
  wire display_data_reg_2944_3007_3_5_n_2;
  wire display_data_reg_2944_3007_6_6_n_0;
  wire display_data_reg_3008_3071_0_2_n_0;
  wire display_data_reg_3008_3071_0_2_n_1;
  wire display_data_reg_3008_3071_0_2_n_2;
  wire display_data_reg_3008_3071_3_5_n_0;
  wire display_data_reg_3008_3071_3_5_n_1;
  wire display_data_reg_3008_3071_3_5_n_2;
  wire display_data_reg_3008_3071_6_6_n_0;
  wire display_data_reg_3072_3135_0_2_n_0;
  wire display_data_reg_3072_3135_0_2_n_1;
  wire display_data_reg_3072_3135_0_2_n_2;
  wire display_data_reg_3072_3135_3_5_n_0;
  wire display_data_reg_3072_3135_3_5_n_1;
  wire display_data_reg_3072_3135_3_5_n_2;
  wire display_data_reg_3072_3135_6_6_n_0;
  wire display_data_reg_3136_3199_0_2_n_0;
  wire display_data_reg_3136_3199_0_2_n_1;
  wire display_data_reg_3136_3199_0_2_n_2;
  wire display_data_reg_3136_3199_3_5_n_0;
  wire display_data_reg_3136_3199_3_5_n_1;
  wire display_data_reg_3136_3199_3_5_n_2;
  wire display_data_reg_3136_3199_6_6_n_0;
  wire display_data_reg_3200_3263_0_2_n_0;
  wire display_data_reg_3200_3263_0_2_n_1;
  wire display_data_reg_3200_3263_0_2_n_2;
  wire display_data_reg_3200_3263_3_5_n_0;
  wire display_data_reg_3200_3263_3_5_n_1;
  wire display_data_reg_3200_3263_3_5_n_2;
  wire display_data_reg_3200_3263_6_6_n_0;
  wire display_data_reg_320_383_0_2_n_0;
  wire display_data_reg_320_383_0_2_n_1;
  wire display_data_reg_320_383_0_2_n_2;
  wire display_data_reg_320_383_3_5_n_0;
  wire display_data_reg_320_383_3_5_n_1;
  wire display_data_reg_320_383_6_6_n_0;
  wire display_data_reg_3264_3327_0_2_n_0;
  wire display_data_reg_3264_3327_0_2_n_1;
  wire display_data_reg_3264_3327_0_2_n_2;
  wire display_data_reg_3264_3327_3_5_n_0;
  wire display_data_reg_3264_3327_3_5_n_1;
  wire display_data_reg_3264_3327_3_5_n_2;
  wire display_data_reg_3264_3327_6_6_n_0;
  wire display_data_reg_3328_3391_0_2_n_0;
  wire display_data_reg_3328_3391_0_2_n_1;
  wire display_data_reg_3328_3391_0_2_n_2;
  wire display_data_reg_3328_3391_3_5_n_0;
  wire display_data_reg_3328_3391_3_5_n_1;
  wire display_data_reg_3328_3391_3_5_n_2;
  wire display_data_reg_3328_3391_6_6_n_0;
  wire display_data_reg_3392_3455_0_2_n_0;
  wire display_data_reg_3392_3455_0_2_n_1;
  wire display_data_reg_3392_3455_0_2_n_2;
  wire display_data_reg_3392_3455_3_5_n_0;
  wire display_data_reg_3392_3455_3_5_n_1;
  wire display_data_reg_3392_3455_3_5_n_2;
  wire display_data_reg_3392_3455_6_6_n_0;
  wire display_data_reg_3456_3519_0_2_n_0;
  wire display_data_reg_3456_3519_0_2_n_1;
  wire display_data_reg_3456_3519_0_2_n_2;
  wire display_data_reg_3456_3519_3_5_n_0;
  wire display_data_reg_3456_3519_3_5_n_1;
  wire display_data_reg_3456_3519_3_5_n_2;
  wire display_data_reg_3456_3519_6_6_n_0;
  wire display_data_reg_3520_3583_0_2_n_0;
  wire display_data_reg_3520_3583_0_2_n_1;
  wire display_data_reg_3520_3583_0_2_n_2;
  wire display_data_reg_3520_3583_3_5_n_0;
  wire display_data_reg_3520_3583_3_5_n_1;
  wire display_data_reg_3520_3583_3_5_n_2;
  wire display_data_reg_3520_3583_6_6_n_0;
  wire display_data_reg_3584_3647_0_2_n_0;
  wire display_data_reg_3584_3647_0_2_n_1;
  wire display_data_reg_3584_3647_0_2_n_2;
  wire display_data_reg_3584_3647_3_5_n_0;
  wire display_data_reg_3584_3647_3_5_n_1;
  wire display_data_reg_3584_3647_3_5_n_2;
  wire display_data_reg_3584_3647_6_6_n_0;
  wire display_data_reg_3648_3711_0_2_n_0;
  wire display_data_reg_3648_3711_0_2_n_1;
  wire display_data_reg_3648_3711_0_2_n_2;
  wire display_data_reg_3648_3711_3_5_n_0;
  wire display_data_reg_3648_3711_3_5_n_1;
  wire display_data_reg_3648_3711_3_5_n_2;
  wire display_data_reg_3648_3711_6_6_n_0;
  wire display_data_reg_3712_3775_0_2_n_0;
  wire display_data_reg_3712_3775_0_2_n_1;
  wire display_data_reg_3712_3775_0_2_n_2;
  wire display_data_reg_3712_3775_3_5_n_0;
  wire display_data_reg_3712_3775_3_5_n_1;
  wire display_data_reg_3712_3775_3_5_n_2;
  wire display_data_reg_3712_3775_6_6_n_0;
  wire display_data_reg_3776_3839_0_2_n_0;
  wire display_data_reg_3776_3839_0_2_n_1;
  wire display_data_reg_3776_3839_0_2_n_2;
  wire display_data_reg_3776_3839_3_5_n_0;
  wire display_data_reg_3776_3839_3_5_n_1;
  wire display_data_reg_3776_3839_3_5_n_2;
  wire display_data_reg_3776_3839_6_6_n_0;
  wire display_data_reg_3840_3903_0_2_n_0;
  wire display_data_reg_3840_3903_0_2_n_1;
  wire display_data_reg_3840_3903_0_2_n_2;
  wire display_data_reg_3840_3903_3_5_n_0;
  wire display_data_reg_3840_3903_3_5_n_1;
  wire display_data_reg_3840_3903_3_5_n_2;
  wire display_data_reg_3840_3903_6_6_n_0;
  wire display_data_reg_384_447_0_2_n_0;
  wire display_data_reg_384_447_0_2_n_1;
  wire display_data_reg_384_447_0_2_n_2;
  wire display_data_reg_384_447_3_5_n_0;
  wire display_data_reg_384_447_3_5_n_1;
  wire display_data_reg_384_447_3_5_n_2;
  wire display_data_reg_384_447_6_6_n_0;
  wire display_data_reg_3904_3967_0_2_n_0;
  wire display_data_reg_3904_3967_0_2_n_1;
  wire display_data_reg_3904_3967_0_2_n_2;
  wire display_data_reg_3904_3967_3_5_n_0;
  wire display_data_reg_3904_3967_3_5_n_1;
  wire display_data_reg_3904_3967_3_5_n_2;
  wire display_data_reg_3904_3967_6_6_n_0;
  wire display_data_reg_3968_4031_0_2_n_0;
  wire display_data_reg_3968_4031_0_2_n_1;
  wire display_data_reg_3968_4031_0_2_n_2;
  wire display_data_reg_3968_4031_3_5_n_0;
  wire display_data_reg_3968_4031_3_5_n_1;
  wire display_data_reg_3968_4031_3_5_n_2;
  wire display_data_reg_3968_4031_6_6_n_0;
  wire display_data_reg_4032_4095_0_2_n_0;
  wire display_data_reg_4032_4095_0_2_n_1;
  wire display_data_reg_4032_4095_0_2_n_2;
  wire display_data_reg_4032_4095_3_5_n_0;
  wire display_data_reg_4032_4095_3_5_n_1;
  wire display_data_reg_4032_4095_3_5_n_2;
  wire display_data_reg_4032_4095_6_6_n_0;
  wire display_data_reg_448_511_0_2_n_0;
  wire display_data_reg_448_511_0_2_n_1;
  wire display_data_reg_448_511_0_2_n_2;
  wire display_data_reg_448_511_3_5_n_0;
  wire display_data_reg_448_511_3_5_n_1;
  wire display_data_reg_448_511_3_5_n_2;
  wire display_data_reg_448_511_6_6_n_0;
  wire display_data_reg_512_575_0_2_n_0;
  wire display_data_reg_512_575_0_2_n_1;
  wire display_data_reg_512_575_0_2_n_2;
  wire display_data_reg_512_575_3_5_n_0;
  wire display_data_reg_512_575_3_5_n_1;
  wire display_data_reg_512_575_3_5_n_2;
  wire display_data_reg_512_575_6_6_n_0;
  wire display_data_reg_576_639_0_2_n_0;
  wire display_data_reg_576_639_0_2_n_1;
  wire display_data_reg_576_639_0_2_n_2;
  wire display_data_reg_576_639_3_5_n_0;
  wire display_data_reg_576_639_3_5_n_1;
  wire display_data_reg_576_639_3_5_n_2;
  wire display_data_reg_576_639_6_6_n_0;
  wire display_data_reg_640_703_0_2_n_0;
  wire display_data_reg_640_703_0_2_n_1;
  wire display_data_reg_640_703_0_2_n_2;
  wire display_data_reg_640_703_3_5_n_0;
  wire display_data_reg_640_703_3_5_n_1;
  wire display_data_reg_640_703_6_6_n_0;
  wire display_data_reg_64_127_0_2_n_0;
  wire display_data_reg_64_127_0_2_n_1;
  wire display_data_reg_64_127_0_2_n_2;
  wire display_data_reg_64_127_3_5_n_0;
  wire display_data_reg_64_127_3_5_n_1;
  wire display_data_reg_64_127_3_5_n_2;
  wire display_data_reg_64_127_6_6_n_0;
  wire display_data_reg_704_767_0_2_n_0;
  wire display_data_reg_704_767_0_2_n_1;
  wire display_data_reg_704_767_0_2_n_2;
  wire display_data_reg_704_767_3_5_n_0;
  wire display_data_reg_704_767_3_5_n_1;
  wire display_data_reg_704_767_3_5_n_2;
  wire display_data_reg_704_767_6_6_n_0;
  wire display_data_reg_768_831_0_2_n_0;
  wire display_data_reg_768_831_0_2_n_1;
  wire display_data_reg_768_831_0_2_n_2;
  wire display_data_reg_768_831_3_5_n_0;
  wire display_data_reg_768_831_3_5_n_1;
  wire display_data_reg_768_831_3_5_n_2;
  wire display_data_reg_768_831_6_6_n_0;
  wire display_data_reg_832_895_0_2_n_0;
  wire display_data_reg_832_895_0_2_n_1;
  wire display_data_reg_832_895_0_2_n_2;
  wire display_data_reg_832_895_3_5_n_0;
  wire display_data_reg_832_895_3_5_n_1;
  wire display_data_reg_832_895_3_5_n_2;
  wire display_data_reg_832_895_6_6_n_0;
  wire display_data_reg_896_959_0_2_n_0;
  wire display_data_reg_896_959_0_2_n_1;
  wire display_data_reg_896_959_0_2_n_2;
  wire display_data_reg_896_959_3_5_n_0;
  wire display_data_reg_896_959_3_5_n_1;
  wire display_data_reg_896_959_3_5_n_2;
  wire display_data_reg_896_959_6_6_n_0;
  wire display_data_reg_960_1023_0_2_n_0;
  wire display_data_reg_960_1023_0_2_n_1;
  wire display_data_reg_960_1023_0_2_n_2;
  wire display_data_reg_960_1023_3_5_n_0;
  wire display_data_reg_960_1023_3_5_n_1;
  wire display_data_reg_960_1023_3_5_n_2;
  wire display_data_reg_960_1023_6_6_n_0;
  wire [4:0]display_w_data;
  wire [7:0]font_addr0;
  wire g0_b0_i_4_0;
  wire g0_b0_i_4_n_0;
  wire g0_b0_i_4_n_1;
  wire g0_b0_i_4_n_2;
  wire g0_b0_i_4_n_3;
  wire g0_b0_i_5_n_0;
  wire g0_b0_i_6_n_0;
  wire g0_b0_i_7_n_0;
  wire g17_b5_n_0;
  wire g18_b6_n_0;
  wire g19_b2_n_0;
  wire g22_b6_n_0;
  wire g26_b6_n_0;
  wire g2_b0_n_0;
  wire g2_b1_n_0;
  wire g2_b6_n_0;
  wire g44_b0_n_0;
  wire g44_b2_n_0;
  wire g44_b3_n_0;
  wire g44_b7_n_0;
  wire g46_b7_n_0;
  wire g47_b1_n_0;
  wire g48_b7;
  wire g51_b7_n_0;
  wire g5_b0_n_0;
  wire \h_count_reg[1] ;
  wire \h_count_reg[1]_0 ;
  wire [8:0]sel;
  wire [6:0]text_ascii0;
  wire text_ascii_carry__0_i_10_n_0;
  wire text_ascii_carry__0_i_11_n_0;
  wire text_ascii_carry__0_i_12_n_0;
  wire text_ascii_carry__0_i_13_n_0;
  wire text_ascii_carry__0_i_14_n_0;
  wire text_ascii_carry__0_i_15_n_0;
  wire text_ascii_carry__0_i_16_n_0;
  wire text_ascii_carry__0_i_17_n_0;
  wire text_ascii_carry__0_i_18_n_0;
  wire text_ascii_carry__0_i_20_n_0;
  wire text_ascii_carry__0_i_21_n_0;
  wire text_ascii_carry__0_i_22_n_0;
  wire text_ascii_carry__0_i_23_n_0;
  wire text_ascii_carry__0_i_24_n_0;
  wire text_ascii_carry__0_i_25_n_0;
  wire text_ascii_carry__0_i_26_n_0;
  wire text_ascii_carry__0_i_27_n_0;
  wire text_ascii_carry__0_i_28_n_0;
  wire text_ascii_carry__0_i_29_n_0;
  wire text_ascii_carry__0_i_30_n_0;
  wire text_ascii_carry__0_i_31_n_0;
  wire text_ascii_carry__0_i_32_n_0;
  wire text_ascii_carry__0_i_33_n_0;
  wire text_ascii_carry__0_i_34_n_0;
  wire text_ascii_carry__0_i_35_n_0;
  wire text_ascii_carry__0_i_36_n_0;
  wire text_ascii_carry__0_i_37_n_0;
  wire text_ascii_carry__0_i_38_n_0;
  wire text_ascii_carry__0_i_39_n_0;
  wire text_ascii_carry__0_i_40_n_0;
  wire text_ascii_carry__0_i_41_n_0;
  wire text_ascii_carry__0_i_42_n_0;
  wire text_ascii_carry__0_i_43_n_0;
  wire text_ascii_carry__0_i_45_0;
  wire text_ascii_carry__0_i_45_1;
  wire text_ascii_carry__0_i_45_2;
  wire text_ascii_carry__0_i_45_3;
  wire text_ascii_carry__0_i_45_n_0;
  wire text_ascii_carry__0_i_46_0;
  wire text_ascii_carry__0_i_46_1;
  wire text_ascii_carry__0_i_46_2;
  wire text_ascii_carry__0_i_46_3;
  wire text_ascii_carry__0_i_46_n_0;
  wire text_ascii_carry__0_i_47_0;
  wire text_ascii_carry__0_i_47_1;
  wire text_ascii_carry__0_i_47_2;
  wire text_ascii_carry__0_i_47_3;
  wire text_ascii_carry__0_i_47_n_0;
  wire text_ascii_carry__0_i_48_0;
  wire text_ascii_carry__0_i_48_1;
  wire text_ascii_carry__0_i_48_2;
  wire text_ascii_carry__0_i_48_n_0;
  wire text_ascii_carry__0_i_49_0;
  wire text_ascii_carry__0_i_49_1;
  wire text_ascii_carry__0_i_49_2;
  wire text_ascii_carry__0_i_49_3;
  wire text_ascii_carry__0_i_49_n_0;
  wire text_ascii_carry__0_i_4_n_0;
  wire text_ascii_carry__0_i_50_0;
  wire text_ascii_carry__0_i_50_1;
  wire text_ascii_carry__0_i_50_2;
  wire text_ascii_carry__0_i_50_3;
  wire text_ascii_carry__0_i_50_n_0;
  wire text_ascii_carry__0_i_51_0;
  wire text_ascii_carry__0_i_51_1;
  wire text_ascii_carry__0_i_51_2;
  wire text_ascii_carry__0_i_51_3;
  wire text_ascii_carry__0_i_51_n_0;
  wire text_ascii_carry__0_i_52_0;
  wire text_ascii_carry__0_i_52_1;
  wire text_ascii_carry__0_i_52_2;
  wire text_ascii_carry__0_i_52_3;
  wire text_ascii_carry__0_i_52_n_0;
  wire text_ascii_carry__0_i_53_0;
  wire text_ascii_carry__0_i_53_1;
  wire text_ascii_carry__0_i_53_2;
  wire text_ascii_carry__0_i_53_3;
  wire text_ascii_carry__0_i_53_n_0;
  wire text_ascii_carry__0_i_54_0;
  wire text_ascii_carry__0_i_54_1;
  wire text_ascii_carry__0_i_54_2;
  wire text_ascii_carry__0_i_54_3;
  wire text_ascii_carry__0_i_54_n_0;
  wire text_ascii_carry__0_i_55_0;
  wire text_ascii_carry__0_i_55_1;
  wire text_ascii_carry__0_i_55_2;
  wire text_ascii_carry__0_i_55_3;
  wire text_ascii_carry__0_i_55_n_0;
  wire text_ascii_carry__0_i_56_0;
  wire text_ascii_carry__0_i_56_1;
  wire text_ascii_carry__0_i_56_2;
  wire text_ascii_carry__0_i_56_3;
  wire text_ascii_carry__0_i_56_n_0;
  wire text_ascii_carry__0_i_57_0;
  wire text_ascii_carry__0_i_57_1;
  wire text_ascii_carry__0_i_57_2;
  wire text_ascii_carry__0_i_57_3;
  wire text_ascii_carry__0_i_57_4;
  wire text_ascii_carry__0_i_57_5;
  wire text_ascii_carry__0_i_57_6;
  wire text_ascii_carry__0_i_57_7;
  wire text_ascii_carry__0_i_57_n_0;
  wire text_ascii_carry__0_i_58_0;
  wire text_ascii_carry__0_i_58_1;
  wire text_ascii_carry__0_i_58_2;
  wire text_ascii_carry__0_i_58_3;
  wire text_ascii_carry__0_i_58_n_0;
  wire text_ascii_carry__0_i_59_0;
  wire text_ascii_carry__0_i_59_1;
  wire text_ascii_carry__0_i_59_2;
  wire text_ascii_carry__0_i_59_3;
  wire text_ascii_carry__0_i_59_n_0;
  wire text_ascii_carry__0_i_5_n_0;
  wire text_ascii_carry__0_i_60_0;
  wire text_ascii_carry__0_i_60_1;
  wire text_ascii_carry__0_i_60_2;
  wire text_ascii_carry__0_i_60_3;
  wire text_ascii_carry__0_i_60_n_0;
  wire text_ascii_carry__0_i_61_n_0;
  wire text_ascii_carry__0_i_62_n_0;
  wire text_ascii_carry__0_i_63_n_0;
  wire text_ascii_carry__0_i_64_0;
  wire text_ascii_carry__0_i_64_n_0;
  wire [2:0]text_ascii_carry__0_i_65_0;
  wire text_ascii_carry__0_i_65_n_0;
  wire text_ascii_carry__0_i_66_n_0;
  wire text_ascii_carry__0_i_67_n_0;
  wire [0:0]text_ascii_carry__0_i_68_0;
  wire text_ascii_carry__0_i_68_n_0;
  wire text_ascii_carry__0_i_69_n_0;
  wire text_ascii_carry__0_i_6_n_0;
  wire text_ascii_carry__0_i_70_n_0;
  wire text_ascii_carry__0_i_71_n_0;
  wire text_ascii_carry__0_i_72_n_0;
  wire [2:0]text_ascii_carry__0_i_73_0;
  wire text_ascii_carry__0_i_73_n_0;
  wire text_ascii_carry__0_i_74_n_0;
  wire text_ascii_carry__0_i_75_n_0;
  wire text_ascii_carry__0_i_76_n_0;
  wire text_ascii_carry__0_i_77_n_0;
  wire text_ascii_carry__0_i_78_n_0;
  wire text_ascii_carry__0_i_79_n_0;
  wire text_ascii_carry__0_i_7_n_0;
  wire text_ascii_carry__0_i_80_n_0;
  wire text_ascii_carry__0_i_81_n_0;
  wire text_ascii_carry__0_i_82_n_0;
  wire text_ascii_carry__0_i_83_n_0;
  wire text_ascii_carry__0_i_84_n_0;
  wire text_ascii_carry__0_i_85_n_0;
  wire text_ascii_carry__0_i_86_n_0;
  wire text_ascii_carry__0_i_87_n_0;
  wire text_ascii_carry__0_i_88_n_0;
  wire text_ascii_carry__0_i_89_n_0;
  wire text_ascii_carry__0_i_8_n_0;
  wire text_ascii_carry__0_i_90_n_0;
  wire text_ascii_carry__0_i_91_n_0;
  wire text_ascii_carry__0_i_92_n_0;
  wire text_ascii_carry__0_i_9_n_0;
  wire text_ascii_carry__0_n_1;
  wire text_ascii_carry__0_n_2;
  wire text_ascii_carry__0_n_3;
  wire text_ascii_carry_i_100_n_0;
  wire text_ascii_carry_i_101_n_0;
  wire text_ascii_carry_i_102_n_0;
  wire text_ascii_carry_i_103_n_0;
  wire text_ascii_carry_i_104_n_0;
  wire text_ascii_carry_i_105_n_0;
  wire text_ascii_carry_i_106_n_0;
  wire text_ascii_carry_i_107_n_0;
  wire text_ascii_carry_i_108_n_0;
  wire text_ascii_carry_i_109_n_0;
  wire text_ascii_carry_i_10_n_0;
  wire text_ascii_carry_i_110_n_0;
  wire text_ascii_carry_i_111_n_0;
  wire text_ascii_carry_i_112_n_0;
  wire text_ascii_carry_i_113_n_0;
  wire text_ascii_carry_i_114_n_0;
  wire text_ascii_carry_i_115_n_0;
  wire text_ascii_carry_i_116_n_0;
  wire text_ascii_carry_i_117_n_0;
  wire text_ascii_carry_i_118_n_0;
  wire text_ascii_carry_i_119_n_0;
  wire text_ascii_carry_i_120_n_0;
  wire text_ascii_carry_i_121_n_0;
  wire text_ascii_carry_i_122_n_0;
  wire text_ascii_carry_i_123_n_0;
  wire text_ascii_carry_i_124_n_0;
  wire text_ascii_carry_i_125_n_0;
  wire text_ascii_carry_i_126_n_0;
  wire text_ascii_carry_i_127_n_0;
  wire text_ascii_carry_i_128_n_0;
  wire text_ascii_carry_i_129_n_0;
  wire text_ascii_carry_i_12_n_0;
  wire text_ascii_carry_i_130_n_0;
  wire text_ascii_carry_i_131_n_0;
  wire text_ascii_carry_i_14_n_0;
  wire text_ascii_carry_i_15_n_0;
  wire text_ascii_carry_i_16_n_0;
  wire text_ascii_carry_i_17_n_0;
  wire text_ascii_carry_i_18_n_0;
  wire text_ascii_carry_i_19_n_0;
  wire text_ascii_carry_i_20_n_0;
  wire text_ascii_carry_i_21_n_0;
  wire text_ascii_carry_i_22_n_0;
  wire text_ascii_carry_i_23_n_0;
  wire text_ascii_carry_i_24_n_0;
  wire text_ascii_carry_i_25_n_0;
  wire text_ascii_carry_i_26_n_0;
  wire text_ascii_carry_i_29_n_0;
  wire text_ascii_carry_i_30_n_0;
  wire text_ascii_carry_i_31_n_0;
  wire text_ascii_carry_i_32_n_0;
  wire text_ascii_carry_i_34_n_0;
  wire text_ascii_carry_i_35_n_0;
  wire text_ascii_carry_i_40_n_0;
  wire text_ascii_carry_i_41_n_0;
  wire text_ascii_carry_i_42_n_0;
  wire text_ascii_carry_i_43_n_0;
  wire text_ascii_carry_i_44_n_0;
  wire text_ascii_carry_i_45_n_0;
  wire text_ascii_carry_i_46_n_0;
  wire text_ascii_carry_i_47_n_0;
  wire text_ascii_carry_i_48_n_0;
  wire text_ascii_carry_i_49_n_0;
  wire text_ascii_carry_i_50_n_0;
  wire text_ascii_carry_i_51_n_0;
  wire text_ascii_carry_i_52_n_0;
  wire text_ascii_carry_i_53_n_0;
  wire text_ascii_carry_i_54_n_0;
  wire text_ascii_carry_i_55_n_0;
  wire text_ascii_carry_i_56_n_0;
  wire text_ascii_carry_i_57_n_0;
  wire text_ascii_carry_i_58_n_0;
  wire text_ascii_carry_i_59_n_0;
  wire text_ascii_carry_i_5_n_0;
  wire text_ascii_carry_i_60_n_0;
  wire text_ascii_carry_i_61_n_0;
  wire text_ascii_carry_i_62_n_0;
  wire text_ascii_carry_i_63_n_0;
  wire text_ascii_carry_i_64_n_0;
  wire text_ascii_carry_i_65_n_0;
  wire text_ascii_carry_i_67_n_0;
  wire text_ascii_carry_i_68_n_0;
  wire text_ascii_carry_i_69_n_0;
  wire text_ascii_carry_i_6_n_0;
  wire text_ascii_carry_i_70_n_0;
  wire text_ascii_carry_i_71_n_0;
  wire text_ascii_carry_i_72_n_0;
  wire text_ascii_carry_i_73_n_0;
  wire text_ascii_carry_i_74_n_0;
  wire text_ascii_carry_i_76_n_0;
  wire text_ascii_carry_i_77_n_0;
  wire text_ascii_carry_i_78_n_0;
  wire text_ascii_carry_i_79_n_0;
  wire text_ascii_carry_i_7_n_0;
  wire text_ascii_carry_i_80_n_0;
  wire text_ascii_carry_i_81_n_0;
  wire text_ascii_carry_i_82_n_0;
  wire text_ascii_carry_i_83_n_0;
  wire text_ascii_carry_i_84_n_0;
  wire text_ascii_carry_i_85_n_0;
  wire text_ascii_carry_i_86_n_0;
  wire text_ascii_carry_i_87_0;
  wire text_ascii_carry_i_87_n_0;
  wire [0:0]text_ascii_carry_i_88_0;
  wire text_ascii_carry_i_88_n_0;
  wire text_ascii_carry_i_89_n_0;
  wire text_ascii_carry_i_8_n_0;
  wire text_ascii_carry_i_90_n_0;
  wire text_ascii_carry_i_91_n_0;
  wire [1:0]text_ascii_carry_i_92_0;
  wire text_ascii_carry_i_92_n_0;
  wire text_ascii_carry_i_93_n_0;
  wire text_ascii_carry_i_94_n_0;
  wire text_ascii_carry_i_95_n_0;
  wire [2:0]text_ascii_carry_i_96_0;
  wire [0:0]text_ascii_carry_i_96_1;
  wire text_ascii_carry_i_96_n_0;
  wire text_ascii_carry_i_97_n_0;
  wire text_ascii_carry_i_98_n_0;
  wire text_ascii_carry_i_99_n_0;
  wire text_ascii_carry_i_9_n_0;
  wire text_ascii_carry_n_0;
  wire text_ascii_carry_n_1;
  wire text_ascii_carry_n_2;
  wire text_ascii_carry_n_3;
  wire [8:0]text_index;
  wire \v_count_reg[0] ;
  wire \vga_b[0]_INST_0_i_104_0 ;
  wire \vga_b[0]_INST_0_i_10_0 ;
  wire \vga_b[0]_INST_0_i_10_1 ;
  wire \vga_b[0]_INST_0_i_10_2 ;
  wire \vga_b[0]_INST_0_i_10_n_0 ;
  wire \vga_b[0]_INST_0_i_111_0 ;
  wire \vga_b[0]_INST_0_i_111_n_0 ;
  wire \vga_b[0]_INST_0_i_114 ;
  wire \vga_b[0]_INST_0_i_118_n_0 ;
  wire \vga_b[0]_INST_0_i_143_0 ;
  wire \vga_b[0]_INST_0_i_143_1 ;
  wire \vga_b[0]_INST_0_i_143_n_0 ;
  wire \vga_b[0]_INST_0_i_14_0 ;
  wire \vga_b[0]_INST_0_i_14_1 ;
  wire \vga_b[0]_INST_0_i_15_0 ;
  wire \vga_b[0]_INST_0_i_15_1 ;
  wire \vga_b[0]_INST_0_i_15_2 ;
  wire \vga_b[0]_INST_0_i_15_n_0 ;
  wire \vga_b[0]_INST_0_i_163_0 ;
  wire \vga_b[0]_INST_0_i_165_0 ;
  wire \vga_b[0]_INST_0_i_165_n_0 ;
  wire \vga_b[0]_INST_0_i_166_0 ;
  wire \vga_b[0]_INST_0_i_166_n_0 ;
  wire \vga_b[0]_INST_0_i_167_0 ;
  wire \vga_b[0]_INST_0_i_167_n_0 ;
  wire \vga_b[0]_INST_0_i_168_n_0 ;
  wire \vga_b[0]_INST_0_i_17_0 ;
  wire \vga_b[0]_INST_0_i_17_1 ;
  wire \vga_b[0]_INST_0_i_17_2 ;
  wire \vga_b[0]_INST_0_i_17_n_0 ;
  wire \vga_b[0]_INST_0_i_19_0 ;
  wire \vga_b[0]_INST_0_i_209_0 ;
  wire \vga_b[0]_INST_0_i_209_n_0 ;
  wire \vga_b[0]_INST_0_i_226_0 ;
  wire \vga_b[0]_INST_0_i_226_n_0 ;
  wire \vga_b[0]_INST_0_i_23_n_0 ;
  wire \vga_b[0]_INST_0_i_23_n_1 ;
  wire \vga_b[0]_INST_0_i_23_n_2 ;
  wire \vga_b[0]_INST_0_i_23_n_3 ;
  wire \vga_b[0]_INST_0_i_241_0 ;
  wire \vga_b[0]_INST_0_i_242 ;
  wire \vga_b[0]_INST_0_i_24_0 ;
  wire \vga_b[0]_INST_0_i_24_n_0 ;
  wire \vga_b[0]_INST_0_i_26_0 ;
  wire \vga_b[0]_INST_0_i_26_n_0 ;
  wire \vga_b[0]_INST_0_i_27_n_0 ;
  wire \vga_b[0]_INST_0_i_283_0 ;
  wire \vga_b[0]_INST_0_i_283_n_0 ;
  wire \vga_b[0]_INST_0_i_287_0 ;
  wire \vga_b[0]_INST_0_i_287_n_0 ;
  wire \vga_b[0]_INST_0_i_289_n_0 ;
  wire \vga_b[0]_INST_0_i_28_0 ;
  wire \vga_b[0]_INST_0_i_28_1 ;
  wire \vga_b[0]_INST_0_i_28_n_0 ;
  wire \vga_b[0]_INST_0_i_291_n_0 ;
  wire \vga_b[0]_INST_0_i_2_0 ;
  wire \vga_b[0]_INST_0_i_2_1 ;
  wire \vga_b[0]_INST_0_i_31 ;
  wire \vga_b[0]_INST_0_i_316_0 ;
  wire \vga_b[0]_INST_0_i_316_n_0 ;
  wire \vga_b[0]_INST_0_i_338_0 ;
  wire \vga_b[0]_INST_0_i_338_n_0 ;
  wire \vga_b[0]_INST_0_i_339 ;
  wire \vga_b[0]_INST_0_i_34_0 ;
  wire \vga_b[0]_INST_0_i_34_n_0 ;
  wire [1:0]\vga_b[0]_INST_0_i_35_0 ;
  wire \vga_b[0]_INST_0_i_35_1 ;
  wire \vga_b[0]_INST_0_i_35_2 ;
  wire \vga_b[0]_INST_0_i_35_3 ;
  wire \vga_b[0]_INST_0_i_35_n_0 ;
  wire \vga_b[0]_INST_0_i_36_0 ;
  wire \vga_b[0]_INST_0_i_36_1 ;
  wire \vga_b[0]_INST_0_i_36_n_0 ;
  wire \vga_b[0]_INST_0_i_37 ;
  wire \vga_b[0]_INST_0_i_37_0 ;
  wire \vga_b[0]_INST_0_i_37_1 ;
  wire \vga_b[0]_INST_0_i_40_n_0 ;
  wire \vga_b[0]_INST_0_i_42 ;
  wire \vga_b[0]_INST_0_i_45_0 ;
  wire \vga_b[0]_INST_0_i_45_1 ;
  wire \vga_b[0]_INST_0_i_45_2 ;
  wire \vga_b[0]_INST_0_i_45_n_0 ;
  wire \vga_b[0]_INST_0_i_49_n_0 ;
  wire \vga_b[0]_INST_0_i_4_0 ;
  wire \vga_b[0]_INST_0_i_4_1 ;
  wire \vga_b[0]_INST_0_i_5 ;
  wire \vga_b[0]_INST_0_i_50_n_0 ;
  wire \vga_b[0]_INST_0_i_54_0 ;
  wire \vga_b[0]_INST_0_i_54_1 ;
  wire \vga_b[0]_INST_0_i_54_n_0 ;
  wire \vga_b[0]_INST_0_i_55_n_0 ;
  wire \vga_b[0]_INST_0_i_70_0 ;
  wire \vga_b[0]_INST_0_i_75 ;
  wire \vga_b[0]_INST_0_i_76_0 ;
  wire \vga_b[0]_INST_0_i_76_1 ;
  wire \vga_b[0]_INST_0_i_76_2 ;
  wire \vga_b[0]_INST_0_i_76_n_0 ;
  wire \vga_b[0]_INST_0_i_77_n_0 ;
  wire \vga_b[0]_INST_0_i_79_n_0 ;
  wire \vga_b[0]_INST_0_i_8_0 ;
  wire \vga_b[0]_INST_0_i_8_n_0 ;
  wire \vga_b[0]_INST_0_i_95_n_0 ;
  wire \vga_b[0]_INST_0_i_9_0 ;
  wire \vga_b[0]_INST_0_i_9_1 ;
  wire \vga_b[0]_INST_0_i_9_n_0 ;
  wire \vga_r[3] ;
  wire \vga_r[3]_0 ;
  wire \vga_r[3]_1 ;
  wire NLW_display_data_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1024_1087_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1024_1087_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1024_1087_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1088_1151_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1088_1151_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1088_1151_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1152_1215_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1152_1215_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1152_1215_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1216_1279_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1216_1279_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1216_1279_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1280_1343_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1280_1343_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1280_1343_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_128_191_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1344_1407_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1344_1407_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1344_1407_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1408_1471_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1408_1471_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1408_1471_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1472_1535_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1472_1535_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1472_1535_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1536_1599_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1536_1599_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1536_1599_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1600_1663_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1600_1663_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1600_1663_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1664_1727_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1664_1727_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1664_1727_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1728_1791_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1728_1791_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1728_1791_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1792_1855_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1792_1855_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1792_1855_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1856_1919_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1856_1919_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1856_1919_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1920_1983_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1920_1983_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1920_1983_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_192_255_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_1984_2047_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1984_2047_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_1984_2047_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2048_2111_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2048_2111_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2048_2111_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2112_2175_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2112_2175_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2112_2175_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2176_2239_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2176_2239_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2176_2239_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2240_2303_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2240_2303_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2240_2303_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2304_2367_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2304_2367_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2304_2367_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2368_2431_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2368_2431_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2368_2431_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2432_2495_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2432_2495_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2432_2495_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2496_2559_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2496_2559_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2496_2559_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2560_2623_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2560_2623_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2560_2623_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_256_319_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2624_2687_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2624_2687_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2624_2687_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2688_2751_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2688_2751_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2688_2751_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2752_2815_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2752_2815_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2752_2815_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2816_2879_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2816_2879_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2816_2879_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2880_2943_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2880_2943_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2880_2943_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_2944_3007_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2944_3007_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_2944_3007_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3008_3071_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3008_3071_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3008_3071_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3072_3135_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3072_3135_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3072_3135_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3136_3199_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3136_3199_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3136_3199_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3200_3263_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3200_3263_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3200_3263_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_320_383_3_5_DOC_UNCONNECTED;
  wire NLW_display_data_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_320_383_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3264_3327_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3264_3327_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3264_3327_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3328_3391_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3328_3391_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3328_3391_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3392_3455_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3392_3455_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3392_3455_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3456_3519_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3456_3519_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3456_3519_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3520_3583_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3520_3583_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3520_3583_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3584_3647_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3584_3647_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3584_3647_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3648_3711_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3648_3711_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3648_3711_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3712_3775_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3712_3775_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3712_3775_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3776_3839_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3776_3839_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3776_3839_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3840_3903_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3840_3903_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3840_3903_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_384_447_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3904_3967_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3904_3967_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3904_3967_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_3968_4031_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3968_4031_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_3968_4031_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_4032_4095_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_4032_4095_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_4032_4095_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_448_511_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_512_575_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_576_639_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_640_703_3_5_DOC_UNCONNECTED;
  wire NLW_display_data_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_640_703_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_64_127_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_704_767_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_768_831_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_832_895_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_896_959_6_6_SPO_UNCONNECTED;
  wire NLW_display_data_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_display_data_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_display_data_reg_960_1023_6_6_SPO_UNCONNECTED;
  wire [3:3]NLW_text_ascii_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_vga_b[0]_INST_0_i_11_CO_UNCONNECTED ;
  wire [3:1]\NLW_vga_b[0]_INST_0_i_11_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000000000055D5A8),
    .INIT_B(64'h000000000011469E),
    .INIT_C(64'h0000000000461E04),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_0_63_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD(ADDRD),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_0_63_0_2_n_0),
        .DOB(display_data_reg_0_63_0_2_n_1),
        .DOC(display_data_reg_0_63_0_2_n_2),
        .DOD(NLW_display_data_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_0));
  LUT5 #(
    .INIT(32'h96999999)) 
    display_data_reg_0_63_0_2_i_21
       (.I0(g0_b0_i_4_0),
        .I1(C[1]),
        .I2(display_data_reg_0_63_0_2_i_5_2),
        .I3(display_data_reg_0_63_0_2_i_5_3),
        .I4(Q[5]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h66699999AAAAAAAA)) 
    display_data_reg_0_63_0_2_i_22
       (.I0(C[2]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(display_data_reg_0_63_0_2_i_5_1),
        .I4(Q[3]),
        .I5(display_data_reg_0_63_0_2_i_5_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h99999996AAAAAAAA)) 
    display_data_reg_0_63_0_2_i_23
       (.I0(C[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(display_data_reg_0_63_0_2_i_5),
        .I4(Q[2]),
        .I5(display_data_reg_0_63_0_2_i_5_0),
        .O(S[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000028B20),
    .INIT_B(64'h000000000060809E),
    .INIT_C(64'h00000000000FBF59),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_0_63_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_0_63_3_5_n_0),
        .DOB(display_data_reg_0_63_3_5_n_1),
        .DOC(display_data_reg_0_63_3_5_n_2),
        .DOD(NLW_display_data_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000000000077DFA6)) 
    display_data_reg_0_63_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_0_63_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000150040000),
    .INIT_B(64'h00000004F81E0000),
    .INIT_C(64'h00000002C0000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1024_1087_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1024_1087_0_2_n_0),
        .DOB(display_data_reg_1024_1087_0_2_n_1),
        .DOC(display_data_reg_1024_1087_0_2_n_2),
        .DOD(NLW_display_data_reg_1024_1087_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000640100000),
    .INIT_B(64'h00000FF4F8DE0000),
    .INIT_C(64'h00000FFFBFFF0000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1024_1087_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1024_1087_3_5_n_0),
        .DOB(display_data_reg_1024_1087_3_5_n_1),
        .DOC(display_data_reg_1024_1087_3_5_n_2),
        .DOD(NLW_display_data_reg_1024_1087_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h00000003D8060000)) 
    display_data_reg_1024_1087_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1024_1087_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1024_1087_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0015F00000000000),
    .INIT_B(64'h0021680A00000000),
    .INIT_C(64'h000B700400000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1088_1151_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1088_1151_0_2_n_0),
        .DOB(display_data_reg_1088_1151_0_2_n_1),
        .DOC(display_data_reg_1088_1151_0_2_n_2),
        .DOD(NLW_display_data_reg_1088_1151_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0021C00800000000),
    .INIT_B(64'h7FA948CA00000000),
    .INIT_C(64'hFFFEBFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1088_1151_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1088_1151_3_5_n_0),
        .DOB(display_data_reg_1088_1151_3_5_n_1),
        .DOC(display_data_reg_1088_1151_3_5_n_2),
        .DOD(NLW_display_data_reg_1088_1151_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h001FF80600000000)) 
    display_data_reg_1088_1151_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1088_1151_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1088_1151_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h00000000000000F8),
    .INIT_B(64'h0000000000000374),
    .INIT_C(64'h00000000000001F8),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1152_1215_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1152_1215_0_2_n_0),
        .DOB(display_data_reg_1152_1215_0_2_n_1),
        .DOC(display_data_reg_1152_1215_0_2_n_2),
        .DOD(NLW_display_data_reg_1152_1215_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000320),
    .INIT_B(64'h0000000000000A64),
    .INIT_C(64'h0000000000000FDF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1152_1215_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1152_1215_3_5_n_0),
        .DOB(display_data_reg_1152_1215_3_5_n_1),
        .DOC(display_data_reg_1152_1215_3_5_n_2),
        .DOD(NLW_display_data_reg_1152_1215_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h00000000000001FC)) 
    display_data_reg_1152_1215_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1152_1215_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1152_1215_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1216_1279_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1216_1279_0_2_n_0),
        .DOB(display_data_reg_1216_1279_0_2_n_1),
        .DOC(display_data_reg_1216_1279_0_2_n_2),
        .DOD(NLW_display_data_reg_1216_1279_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1216_1279_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1216_1279_3_5_n_0),
        .DOB(display_data_reg_1216_1279_3_5_n_1),
        .DOC(display_data_reg_1216_1279_3_5_n_2),
        .DOD(NLW_display_data_reg_1216_1279_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_1216_1279_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1216_1279_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1216_1279_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_53_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h00000381B817E07E),
    .INIT_B(64'h000004023030C08C),
    .INIT_C(64'h00000300E0028068),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1280_1343_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1280_1343_0_2_n_0),
        .DOB(display_data_reg_1280_1343_0_2_n_1),
        .DOC(display_data_reg_1280_1343_0_2_n_2),
        .DOD(NLW_display_data_reg_1280_1343_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h000007836824A0FA),
    .INIT_B(64'h000FF40AB0AAC28C),
    .INIT_C(64'h000FFFFFDFFF7FF7),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1280_1343_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1280_1343_3_5_n_0),
        .DOB(display_data_reg_1280_1343_3_5_n_1),
        .DOC(display_data_reg_1280_1343_3_5_n_2),
        .DOD(NLW_display_data_reg_1280_1343_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h00000381F81FE07E)) 
    display_data_reg_1280_1343_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1280_1343_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1280_1343_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0005000400000000),
    .INIT_B(64'h0016000C00000000),
    .INIT_C(64'h000A000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_128_191_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_128_191_0_2_n_0),
        .DOB(display_data_reg_128_191_0_2_n_1),
        .DOC(display_data_reg_128_191_0_2_n_2),
        .DOD(NLW_display_data_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0013000800000000),
    .INIT_B(64'h3FDC1FEA00000000),
    .INIT_C(64'h3FFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_128_191_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_128_191_3_5_n_0),
        .DOB(display_data_reg_128_191_3_5_n_1),
        .DOC(display_data_reg_128_191_3_5_n_2),
        .DOD(NLW_display_data_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000F000600000000)) 
    display_data_reg_128_191_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_128_191_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_128_191_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h01D0002800160000),
    .INIT_B(64'h1580009C004C0000),
    .INIT_C(64'h0AE00058002C0000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1344_1407_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1344_1407_0_2_n_0),
        .DOB(display_data_reg_1344_1407_0_2_n_1),
        .DOC(display_data_reg_1344_1407_0_2_n_2),
        .DOD(NLW_display_data_reg_1344_1407_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h18A000C800640000),
    .INIT_B(64'h56C1FE98FF4C0000),
    .INIT_C(64'hFF7FFFF7FFFB0000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1344_1407_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1344_1407_3_5_n_0),
        .DOB(display_data_reg_1344_1407_3_5_n_1),
        .DOC(display_data_reg_1344_1407_3_5_n_2),
        .DOD(NLW_display_data_reg_1344_1407_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0FF0007C003E0000)) 
    display_data_reg_1344_1407_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1344_1407_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1344_1407_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0D6000DA0000006C),
    .INIT_B(64'h1B2001B000000564),
    .INIT_C(64'h0540005C000002A8),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1408_1471_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1408_1471_0_2_n_0),
        .DOB(display_data_reg_1408_1471_0_2_n_1),
        .DOC(display_data_reg_1408_1471_0_2_n_2),
        .DOD(NLW_display_data_reg_1408_1471_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h1140011400000628),
    .INIT_B(64'h5B83FDB8000015B0),
    .INIT_C(64'h7EFFFFEF00001FDF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1408_1471_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1408_1471_3_5_n_0),
        .DOB(display_data_reg_1408_1471_3_5_n_1),
        .DOC(display_data_reg_1408_1471_3_5_n_2),
        .DOD(NLW_display_data_reg_1408_1471_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0FE000FE000003FC)) 
    display_data_reg_1408_1471_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1408_1471_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1408_1471_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1472_1535_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1472_1535_0_2_n_0),
        .DOB(display_data_reg_1472_1535_0_2_n_1),
        .DOC(display_data_reg_1472_1535_0_2_n_2),
        .DOD(NLW_display_data_reg_1472_1535_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1472_1535_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1472_1535_3_5_n_0),
        .DOB(display_data_reg_1472_1535_3_5_n_1),
        .DOC(display_data_reg_1472_1535_3_5_n_2),
        .DOD(NLW_display_data_reg_1472_1535_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_1472_1535_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1472_1535_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1472_1535_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_54_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1536_1599_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1536_1599_0_2_n_0),
        .DOB(display_data_reg_1536_1599_0_2_n_1),
        .DOC(display_data_reg_1536_1599_0_2_n_2),
        .DOD(NLW_display_data_reg_1536_1599_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1536_1599_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1536_1599_3_5_n_0),
        .DOB(display_data_reg_1536_1599_3_5_n_1),
        .DOC(display_data_reg_1536_1599_3_5_n_2),
        .DOD(NLW_display_data_reg_1536_1599_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_1536_1599_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1536_1599_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1536_1599_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000000017017014E),
    .INIT_B(64'h0000000CE04E05BC),
    .INIT_C(64'h0000000240240088),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1600_1663_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1600_1663_0_2_n_0),
        .DOB(display_data_reg_1600_1663_0_2_n_1),
        .DOC(display_data_reg_1600_1663_0_2_n_2),
        .DOD(NLW_display_data_reg_1600_1663_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000AD06D068A),
    .INIT_B(64'h0000002C6146142C),
    .INIT_C(64'h000001FFBFFBFFF7),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1600_1663_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1600_1663_3_5_n_0),
        .DOB(display_data_reg_1600_1663_3_5_n_1),
        .DOC(display_data_reg_1600_1663_3_5_n_2),
        .DOD(NLW_display_data_reg_1600_1663_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h00000007F03F03FE)) 
    display_data_reg_1600_1663_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1600_1663_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1600_1663_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000000A6014C0000),
    .INIT_B(64'h000002DE05BC0000),
    .INIT_C(64'h00000044008E0000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1664_1727_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1664_1727_0_2_n_0),
        .DOB(display_data_reg_1664_1727_0_2_n_1),
        .DOC(display_data_reg_1664_1727_0_2_n_2),
        .DOD(NLW_display_data_reg_1664_1727_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h00000344068C0000),
    .INIT_B(64'h0007FA1514280000),
    .INIT_C(64'h0007FFFBFFF70000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1664_1727_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1664_1727_3_5_n_0),
        .DOB(display_data_reg_1664_1727_3_5_n_1),
        .DOC(display_data_reg_1664_1727_3_5_n_2),
        .DOD(NLW_display_data_reg_1664_1727_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000001FF03FE0000)) 
    display_data_reg_1664_1727_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1664_1727_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1664_1727_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1728_1791_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1728_1791_0_2_n_0),
        .DOB(display_data_reg_1728_1791_0_2_n_1),
        .DOC(display_data_reg_1728_1791_0_2_n_2),
        .DOD(NLW_display_data_reg_1728_1791_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1728_1791_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1728_1791_3_5_n_0),
        .DOB(display_data_reg_1728_1791_3_5_n_1),
        .DOC(display_data_reg_1728_1791_3_5_n_2),
        .DOD(NLW_display_data_reg_1728_1791_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_1728_1791_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1728_1791_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1728_1791_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_55_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hC07E000000000000),
    .INIT_B(64'h01B0000000000000),
    .INIT_C(64'hC0FE000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1792_1855_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1792_1855_0_2_n_0),
        .DOB(display_data_reg_1792_1855_0_2_n_1),
        .DOC(display_data_reg_1792_1855_0_2_n_2),
        .DOD(NLW_display_data_reg_1792_1855_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h419A000000000000),
    .INIT_B(64'h0530000000000000),
    .INIT_C(64'hFFEF000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1792_1855_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1792_1855_3_5_n_0),
        .DOB(display_data_reg_1792_1855_3_5_n_1),
        .DOC(display_data_reg_1792_1855_3_5_n_2),
        .DOD(NLW_display_data_reg_1792_1855_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'hC0FE000000000000)) 
    display_data_reg_1792_1855_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1792_1855_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1792_1855_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000000000000000B),
    .INIT_B(64'h0000000000000036),
    .INIT_C(64'h000000000000001B),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1856_1919_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1856_1919_0_2_n_0),
        .DOB(display_data_reg_1856_1919_0_2_n_1),
        .DOC(display_data_reg_1856_1919_0_2_n_2),
        .DOD(NLW_display_data_reg_1856_1919_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000033),
    .INIT_B(64'h00000000000000A6),
    .INIT_C(64'h00000000000000FD),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1856_1919_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1856_1919_3_5_n_0),
        .DOB(display_data_reg_1856_1919_3_5_n_1),
        .DOC(display_data_reg_1856_1919_3_5_n_2),
        .DOD(NLW_display_data_reg_1856_1919_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000000000000001F)) 
    display_data_reg_1856_1919_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1856_1919_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1856_1919_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h007C000AFC000AFC),
    .INIT_B(64'h06200010A00010E0),
    .INIT_C(64'h01BE0005BE0005FE),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1920_1983_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1920_1983_0_2_n_0),
        .DOB(display_data_reg_1920_1983_0_2_n_1),
        .DOC(display_data_reg_1920_1983_0_2_n_2),
        .DOD(NLW_display_data_reg_1920_1983_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h04340010F40010F4),
    .INIT_B(64'hF6203FD4A03FD4A0),
    .INIT_C(64'hFFDFFFFF5FFFFF5F),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1920_1983_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1920_1983_3_5_n_0),
        .DOB(display_data_reg_1920_1983_3_5_n_1),
        .DOC(display_data_reg_1920_1983_3_5_n_2),
        .DOD(NLW_display_data_reg_1920_1983_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h03FE000FFE000FFE)) 
    display_data_reg_1920_1983_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1920_1983_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1920_1983_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_192_255_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_192_255_0_2_n_0),
        .DOB(display_data_reg_192_255_0_2_n_1),
        .DOC(display_data_reg_192_255_0_2_n_2),
        .DOD(NLW_display_data_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_192_255_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_192_255_3_5_n_0),
        .DOB(display_data_reg_192_255_3_5_n_1),
        .DOC(display_data_reg_192_255_3_5_n_2),
        .DOD(NLW_display_data_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_192_255_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_192_255_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_192_255_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1984_2047_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_1984_2047_0_2_n_0),
        .DOB(display_data_reg_1984_2047_0_2_n_1),
        .DOC(display_data_reg_1984_2047_0_2_n_2),
        .DOD(NLW_display_data_reg_1984_2047_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h000000000000000F),
    .INIT_C(64'h000000000000000F),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_1984_2047_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_92_0[1],ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_1984_2047_3_5_n_0),
        .DOB(display_data_reg_1984_2047_3_5_n_1),
        .DOC(display_data_reg_1984_2047_3_5_n_2),
        .DOD(NLW_display_data_reg_1984_2047_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_1984_2047_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_92_0[1]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_1984_2047_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_1984_2047_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_56_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "2111" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h6006C07600000000),
    .INIT_B(64'hE02BC1BE00000000),
    .INIT_C(64'h001A00F000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2048_2111_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2048_2111_0_2_n_0),
        .DOB(display_data_reg_2048_2111_0_2_n_1),
        .DOC(display_data_reg_2048_2111_0_2_n_2),
        .DOD(NLW_display_data_reg_2048_2111_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "2111" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h002E019000000000),
    .INIT_B(64'hC3A3853C00000000),
    .INIT_C(64'hFFFDFFEF00000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2048_2111_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2048_2111_3_5_n_0),
        .DOB(display_data_reg_2048_2111_3_5_n_1),
        .DOC(display_data_reg_2048_2111_3_5_n_2),
        .DOD(NLW_display_data_reg_2048_2111_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "2111" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'hE01FC0FE00000000)) 
    display_data_reg_2048_2111_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2048_2111_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2048_2111_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2112" *) 
  (* ram_addr_end = "2175" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h00D6000000155803),
    .INIT_B(64'h018400000021F82B),
    .INIT_C(64'h006A0000000B4015),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2112_2175_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2112_2175_0_2_n_0),
        .DOB(display_data_reg_2112_2175_0_2_n_1),
        .DOC(display_data_reg_2112_2175_0_2_n_2),
        .DOD(NLW_display_data_reg_2112_2175_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2112" *) 
  (* ram_addr_end = "2175" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0102000000214031),
    .INIT_B(64'hFDEC00007FA9F0AD),
    .INIT_C(64'hFFFF00007FFEBFFE),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2112_2175_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2112_2175_3_5_n_0),
        .DOB(display_data_reg_2112_2175_3_5_n_1),
        .DOC(display_data_reg_2112_2175_3_5_n_2),
        .DOD(NLW_display_data_reg_2112_2175_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2112" *) 
  (* ram_addr_end = "2175" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h00FE0000001FF81F)) 
    display_data_reg_2112_2175_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2112_2175_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2112_2175_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2176" *) 
  (* ram_addr_end = "2239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000024002C003F0),
    .INIT_B(64'h0000090006000520),
    .INIT_C(64'h000005C000C00290),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2176_2239_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2176_2239_0_2_n_0),
        .DOB(display_data_reg_2176_2239_0_2_n_1),
        .DOC(display_data_reg_2176_2239_0_2_n_2),
        .DOD(NLW_display_data_reg_2176_2239_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2176" *) 
  (* ram_addr_end = "2239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h00000C4004400410),
    .INIT_B(64'h001FE98FF50FF583),
    .INIT_C(64'h001FFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2176_2239_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2176_2239_3_5_n_0),
        .DOB(display_data_reg_2176_2239_3_5_n_1),
        .DOC(display_data_reg_2176_2239_3_5_n_2),
        .DOD(NLW_display_data_reg_2176_2239_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2176" *) 
  (* ram_addr_end = "2239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000007C003C003F0)) 
    display_data_reg_2176_2239_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2176_2239_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2176_2239_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2240" *) 
  (* ram_addr_end = "2303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000000C000700032),
    .INIT_B(64'h0000020000800068),
    .INIT_C(64'h000000400050001E),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2240_2303_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2240_2303_0_2_n_0),
        .DOB(display_data_reg_2240_2303_0_2_n_1),
        .DOC(display_data_reg_2240_2303_0_2_n_2),
        .DOD(NLW_display_data_reg_2240_2303_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2240" *) 
  (* ram_addr_end = "2303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h000002C000B00042),
    .INIT_B(64'h000FF30FF083FC4C),
    .INIT_C(64'h000FFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2240_2303_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2240_2303_3_5_n_0),
        .DOB(display_data_reg_2240_2303_3_5_n_1),
        .DOC(display_data_reg_2240_2303_3_5_n_2),
        .DOD(NLW_display_data_reg_2240_2303_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2240" *) 
  (* ram_addr_end = "2303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000001C00070003E)) 
    display_data_reg_2240_2303_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2240_2303_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2240_2303_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_49_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2304" *) 
  (* ram_addr_end = "2367" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2304_2367_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2304_2367_0_2_n_0),
        .DOB(display_data_reg_2304_2367_0_2_n_1),
        .DOC(display_data_reg_2304_2367_0_2_n_2),
        .DOD(NLW_display_data_reg_2304_2367_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2304" *) 
  (* ram_addr_end = "2367" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2304_2367_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2304_2367_3_5_n_0),
        .DOB(display_data_reg_2304_2367_3_5_n_1),
        .DOC(display_data_reg_2304_2367_3_5_n_2),
        .DOD(NLW_display_data_reg_2304_2367_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2304" *) 
  (* ram_addr_end = "2367" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2304_2367_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2304_2367_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2304_2367_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2368" *) 
  (* ram_addr_end = "2431" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2368_2431_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2368_2431_0_2_n_0),
        .DOB(display_data_reg_2368_2431_0_2_n_1),
        .DOC(display_data_reg_2368_2431_0_2_n_2),
        .DOD(NLW_display_data_reg_2368_2431_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2368" *) 
  (* ram_addr_end = "2431" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2368_2431_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2368_2431_3_5_n_0),
        .DOB(display_data_reg_2368_2431_3_5_n_1),
        .DOC(display_data_reg_2368_2431_3_5_n_2),
        .DOD(NLW_display_data_reg_2368_2431_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2368" *) 
  (* ram_addr_end = "2431" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2368_2431_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2368_2431_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2368_2431_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2432" *) 
  (* ram_addr_end = "2495" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2432_2495_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2432_2495_0_2_n_0),
        .DOB(display_data_reg_2432_2495_0_2_n_1),
        .DOC(display_data_reg_2432_2495_0_2_n_2),
        .DOD(NLW_display_data_reg_2432_2495_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2432" *) 
  (* ram_addr_end = "2495" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2432_2495_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2432_2495_3_5_n_0),
        .DOB(display_data_reg_2432_2495_3_5_n_1),
        .DOC(display_data_reg_2432_2495_3_5_n_2),
        .DOD(NLW_display_data_reg_2432_2495_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2432" *) 
  (* ram_addr_end = "2495" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2432_2495_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2432_2495_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2432_2495_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2496" *) 
  (* ram_addr_end = "2559" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2496_2559_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2496_2559_0_2_n_0),
        .DOB(display_data_reg_2496_2559_0_2_n_1),
        .DOC(display_data_reg_2496_2559_0_2_n_2),
        .DOD(NLW_display_data_reg_2496_2559_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2496" *) 
  (* ram_addr_end = "2559" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2496_2559_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2496_2559_3_5_n_0),
        .DOB(display_data_reg_2496_2559_3_5_n_1),
        .DOC(display_data_reg_2496_2559_3_5_n_2),
        .DOD(NLW_display_data_reg_2496_2559_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2496" *) 
  (* ram_addr_end = "2559" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2496_2559_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2496_2559_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2496_2559_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_50_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2560" *) 
  (* ram_addr_end = "2623" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2560_2623_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2560_2623_0_2_n_0),
        .DOB(display_data_reg_2560_2623_0_2_n_1),
        .DOC(display_data_reg_2560_2623_0_2_n_2),
        .DOD(NLW_display_data_reg_2560_2623_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2560" *) 
  (* ram_addr_end = "2623" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2560_2623_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2560_2623_3_5_n_0),
        .DOB(display_data_reg_2560_2623_3_5_n_1),
        .DOC(display_data_reg_2560_2623_3_5_n_2),
        .DOD(NLW_display_data_reg_2560_2623_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2560" *) 
  (* ram_addr_end = "2623" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2560_2623_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2560_2623_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2560_2623_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_256_319_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_256_319_0_2_n_0),
        .DOB(display_data_reg_256_319_0_2_n_1),
        .DOC(display_data_reg_256_319_0_2_n_2),
        .DOD(NLW_display_data_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_256_319_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_256_319_3_5_n_0),
        .DOB(display_data_reg_256_319_3_5_n_1),
        .DOC(display_data_reg_256_319_3_5_n_2),
        .DOD(NLW_display_data_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_256_319_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_256_319_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_256_319_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2624" *) 
  (* ram_addr_end = "2687" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2624_2687_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2624_2687_0_2_n_0),
        .DOB(display_data_reg_2624_2687_0_2_n_1),
        .DOC(display_data_reg_2624_2687_0_2_n_2),
        .DOD(NLW_display_data_reg_2624_2687_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2624" *) 
  (* ram_addr_end = "2687" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2624_2687_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2624_2687_3_5_n_0),
        .DOB(display_data_reg_2624_2687_3_5_n_1),
        .DOC(display_data_reg_2624_2687_3_5_n_2),
        .DOD(NLW_display_data_reg_2624_2687_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2624" *) 
  (* ram_addr_end = "2687" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2624_2687_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2624_2687_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2624_2687_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2688" *) 
  (* ram_addr_end = "2751" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2688_2751_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2688_2751_0_2_n_0),
        .DOB(display_data_reg_2688_2751_0_2_n_1),
        .DOC(display_data_reg_2688_2751_0_2_n_2),
        .DOD(NLW_display_data_reg_2688_2751_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2688" *) 
  (* ram_addr_end = "2751" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2688_2751_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2688_2751_3_5_n_0),
        .DOB(display_data_reg_2688_2751_3_5_n_1),
        .DOC(display_data_reg_2688_2751_3_5_n_2),
        .DOD(NLW_display_data_reg_2688_2751_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2688" *) 
  (* ram_addr_end = "2751" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2688_2751_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2688_2751_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2688_2751_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2752" *) 
  (* ram_addr_end = "2815" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2752_2815_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2752_2815_0_2_n_0),
        .DOB(display_data_reg_2752_2815_0_2_n_1),
        .DOC(display_data_reg_2752_2815_0_2_n_2),
        .DOD(NLW_display_data_reg_2752_2815_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2752" *) 
  (* ram_addr_end = "2815" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2752_2815_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2752_2815_3_5_n_0),
        .DOB(display_data_reg_2752_2815_3_5_n_1),
        .DOC(display_data_reg_2752_2815_3_5_n_2),
        .DOD(NLW_display_data_reg_2752_2815_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2752" *) 
  (* ram_addr_end = "2815" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2752_2815_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2752_2815_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2752_2815_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_51_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2816" *) 
  (* ram_addr_end = "2879" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2816_2879_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2816_2879_0_2_n_0),
        .DOB(display_data_reg_2816_2879_0_2_n_1),
        .DOC(display_data_reg_2816_2879_0_2_n_2),
        .DOD(NLW_display_data_reg_2816_2879_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2816" *) 
  (* ram_addr_end = "2879" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2816_2879_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2816_2879_3_5_n_0),
        .DOB(display_data_reg_2816_2879_3_5_n_1),
        .DOC(display_data_reg_2816_2879_3_5_n_2),
        .DOD(NLW_display_data_reg_2816_2879_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2816" *) 
  (* ram_addr_end = "2879" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2816_2879_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2816_2879_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2816_2879_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2880" *) 
  (* ram_addr_end = "2943" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2880_2943_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2880_2943_0_2_n_0),
        .DOB(display_data_reg_2880_2943_0_2_n_1),
        .DOC(display_data_reg_2880_2943_0_2_n_2),
        .DOD(NLW_display_data_reg_2880_2943_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2880" *) 
  (* ram_addr_end = "2943" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2880_2943_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2880_2943_3_5_n_0),
        .DOB(display_data_reg_2880_2943_3_5_n_1),
        .DOC(display_data_reg_2880_2943_3_5_n_2),
        .DOD(NLW_display_data_reg_2880_2943_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2880" *) 
  (* ram_addr_end = "2943" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2880_2943_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2880_2943_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2880_2943_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2944" *) 
  (* ram_addr_end = "3007" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2944_3007_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_2944_3007_0_2_n_0),
        .DOB(display_data_reg_2944_3007_0_2_n_1),
        .DOC(display_data_reg_2944_3007_0_2_n_2),
        .DOD(NLW_display_data_reg_2944_3007_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2944" *) 
  (* ram_addr_end = "3007" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_2944_3007_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_2944_3007_3_5_n_0),
        .DOB(display_data_reg_2944_3007_3_5_n_1),
        .DOC(display_data_reg_2944_3007_3_5_n_2),
        .DOD(NLW_display_data_reg_2944_3007_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2944" *) 
  (* ram_addr_end = "3007" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_2944_3007_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_2944_3007_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_2944_3007_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3008" *) 
  (* ram_addr_end = "3071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3008_3071_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3008_3071_0_2_n_0),
        .DOB(display_data_reg_3008_3071_0_2_n_1),
        .DOC(display_data_reg_3008_3071_0_2_n_2),
        .DOD(NLW_display_data_reg_3008_3071_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3008" *) 
  (* ram_addr_end = "3071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3008_3071_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:4],text_ascii_carry_i_88_0,ADDRD[2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3008_3071_3_5_n_0),
        .DOB(display_data_reg_3008_3071_3_5_n_1),
        .DOC(display_data_reg_3008_3071_3_5_n_2),
        .DOD(NLW_display_data_reg_3008_3071_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3008" *) 
  (* ram_addr_end = "3071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3008_3071_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(text_ascii_carry_i_88_0),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3008_3071_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3008_3071_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_52_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3072" *) 
  (* ram_addr_end = "3135" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3072_3135_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3072_3135_0_2_n_0),
        .DOB(display_data_reg_3072_3135_0_2_n_1),
        .DOC(display_data_reg_3072_3135_0_2_n_2),
        .DOD(NLW_display_data_reg_3072_3135_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3072" *) 
  (* ram_addr_end = "3135" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3072_3135_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3072_3135_3_5_n_0),
        .DOB(display_data_reg_3072_3135_3_5_n_1),
        .DOC(display_data_reg_3072_3135_3_5_n_2),
        .DOD(NLW_display_data_reg_3072_3135_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3072" *) 
  (* ram_addr_end = "3135" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3072_3135_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3072_3135_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3072_3135_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3136" *) 
  (* ram_addr_end = "3199" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3136_3199_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3136_3199_0_2_n_0),
        .DOB(display_data_reg_3136_3199_0_2_n_1),
        .DOC(display_data_reg_3136_3199_0_2_n_2),
        .DOD(NLW_display_data_reg_3136_3199_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3136" *) 
  (* ram_addr_end = "3199" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3136_3199_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3136_3199_3_5_n_0),
        .DOB(display_data_reg_3136_3199_3_5_n_1),
        .DOC(display_data_reg_3136_3199_3_5_n_2),
        .DOD(NLW_display_data_reg_3136_3199_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3136" *) 
  (* ram_addr_end = "3199" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3136_3199_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3136_3199_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3136_3199_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3200" *) 
  (* ram_addr_end = "3263" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3200_3263_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3200_3263_0_2_n_0),
        .DOB(display_data_reg_3200_3263_0_2_n_1),
        .DOC(display_data_reg_3200_3263_0_2_n_2),
        .DOD(NLW_display_data_reg_3200_3263_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3200" *) 
  (* ram_addr_end = "3263" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3200_3263_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3200_3263_3_5_n_0),
        .DOB(display_data_reg_3200_3263_3_5_n_1),
        .DOC(display_data_reg_3200_3263_3_5_n_2),
        .DOD(NLW_display_data_reg_3200_3263_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3200" *) 
  (* ram_addr_end = "3263" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3200_3263_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3200_3263_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3200_3263_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000400080020000),
    .INIT_B(64'h8001400280050008),
    .INIT_C(64'h2000400000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_320_383_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_320_383_0_2_n_0),
        .DOB(display_data_reg_320_383_0_2_n_1),
        .DOC(display_data_reg_320_383_0_2_n_2),
        .DOD(NLW_display_data_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h800100020004000A),
    .INIT_B(64'hE3FD87FB8FF51FEE),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_320_383_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_320_383_3_5_n_0),
        .DOB(display_data_reg_320_383_3_5_n_1),
        .DOC(NLW_display_data_reg_320_383_3_5_DOC_UNCONNECTED),
        .DOD(NLW_display_data_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h6000C00180030002)) 
    display_data_reg_320_383_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_320_383_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_320_383_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3264" *) 
  (* ram_addr_end = "3327" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3264_3327_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3264_3327_0_2_n_0),
        .DOB(display_data_reg_3264_3327_0_2_n_1),
        .DOC(display_data_reg_3264_3327_0_2_n_2),
        .DOD(NLW_display_data_reg_3264_3327_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3264" *) 
  (* ram_addr_end = "3327" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3264_3327_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3264_3327_3_5_n_0),
        .DOB(display_data_reg_3264_3327_3_5_n_1),
        .DOC(display_data_reg_3264_3327_3_5_n_2),
        .DOD(NLW_display_data_reg_3264_3327_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3264" *) 
  (* ram_addr_end = "3327" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3264_3327_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3264_3327_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3264_3327_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_45_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3328" *) 
  (* ram_addr_end = "3391" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3328_3391_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3328_3391_0_2_n_0),
        .DOB(display_data_reg_3328_3391_0_2_n_1),
        .DOC(display_data_reg_3328_3391_0_2_n_2),
        .DOD(NLW_display_data_reg_3328_3391_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3328" *) 
  (* ram_addr_end = "3391" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3328_3391_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3328_3391_3_5_n_0),
        .DOB(display_data_reg_3328_3391_3_5_n_1),
        .DOC(display_data_reg_3328_3391_3_5_n_2),
        .DOD(NLW_display_data_reg_3328_3391_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3328" *) 
  (* ram_addr_end = "3391" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3328_3391_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3328_3391_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3328_3391_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3392" *) 
  (* ram_addr_end = "3455" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3392_3455_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3392_3455_0_2_n_0),
        .DOB(display_data_reg_3392_3455_0_2_n_1),
        .DOC(display_data_reg_3392_3455_0_2_n_2),
        .DOD(NLW_display_data_reg_3392_3455_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3392" *) 
  (* ram_addr_end = "3455" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3392_3455_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3392_3455_3_5_n_0),
        .DOB(display_data_reg_3392_3455_3_5_n_1),
        .DOC(display_data_reg_3392_3455_3_5_n_2),
        .DOD(NLW_display_data_reg_3392_3455_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3392" *) 
  (* ram_addr_end = "3455" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3392_3455_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3392_3455_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3392_3455_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3456" *) 
  (* ram_addr_end = "3519" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3456_3519_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3456_3519_0_2_n_0),
        .DOB(display_data_reg_3456_3519_0_2_n_1),
        .DOC(display_data_reg_3456_3519_0_2_n_2),
        .DOD(NLW_display_data_reg_3456_3519_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3456" *) 
  (* ram_addr_end = "3519" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3456_3519_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3456_3519_3_5_n_0),
        .DOB(display_data_reg_3456_3519_3_5_n_1),
        .DOC(display_data_reg_3456_3519_3_5_n_2),
        .DOD(NLW_display_data_reg_3456_3519_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3456" *) 
  (* ram_addr_end = "3519" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3456_3519_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3456_3519_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3456_3519_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3520" *) 
  (* ram_addr_end = "3583" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3520_3583_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3520_3583_0_2_n_0),
        .DOB(display_data_reg_3520_3583_0_2_n_1),
        .DOC(display_data_reg_3520_3583_0_2_n_2),
        .DOD(NLW_display_data_reg_3520_3583_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3520" *) 
  (* ram_addr_end = "3583" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3520_3583_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3520_3583_3_5_n_0),
        .DOB(display_data_reg_3520_3583_3_5_n_1),
        .DOC(display_data_reg_3520_3583_3_5_n_2),
        .DOD(NLW_display_data_reg_3520_3583_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3520" *) 
  (* ram_addr_end = "3583" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3520_3583_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3520_3583_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3520_3583_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_46_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3584" *) 
  (* ram_addr_end = "3647" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3584_3647_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3584_3647_0_2_n_0),
        .DOB(display_data_reg_3584_3647_0_2_n_1),
        .DOC(display_data_reg_3584_3647_0_2_n_2),
        .DOD(NLW_display_data_reg_3584_3647_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3584" *) 
  (* ram_addr_end = "3647" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3584_3647_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3584_3647_3_5_n_0),
        .DOB(display_data_reg_3584_3647_3_5_n_1),
        .DOC(display_data_reg_3584_3647_3_5_n_2),
        .DOD(NLW_display_data_reg_3584_3647_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3584" *) 
  (* ram_addr_end = "3647" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3584_3647_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3584_3647_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3584_3647_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3648" *) 
  (* ram_addr_end = "3711" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3648_3711_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3648_3711_0_2_n_0),
        .DOB(display_data_reg_3648_3711_0_2_n_1),
        .DOC(display_data_reg_3648_3711_0_2_n_2),
        .DOD(NLW_display_data_reg_3648_3711_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3648" *) 
  (* ram_addr_end = "3711" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3648_3711_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3648_3711_3_5_n_0),
        .DOB(display_data_reg_3648_3711_3_5_n_1),
        .DOC(display_data_reg_3648_3711_3_5_n_2),
        .DOD(NLW_display_data_reg_3648_3711_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3648" *) 
  (* ram_addr_end = "3711" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3648_3711_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3648_3711_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3648_3711_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3712" *) 
  (* ram_addr_end = "3775" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3712_3775_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3712_3775_0_2_n_0),
        .DOB(display_data_reg_3712_3775_0_2_n_1),
        .DOC(display_data_reg_3712_3775_0_2_n_2),
        .DOD(NLW_display_data_reg_3712_3775_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3712" *) 
  (* ram_addr_end = "3775" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3712_3775_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3712_3775_3_5_n_0),
        .DOB(display_data_reg_3712_3775_3_5_n_1),
        .DOC(display_data_reg_3712_3775_3_5_n_2),
        .DOD(NLW_display_data_reg_3712_3775_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3712" *) 
  (* ram_addr_end = "3775" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3712_3775_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3712_3775_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3712_3775_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3776" *) 
  (* ram_addr_end = "3839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3776_3839_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3776_3839_0_2_n_0),
        .DOB(display_data_reg_3776_3839_0_2_n_1),
        .DOC(display_data_reg_3776_3839_0_2_n_2),
        .DOD(NLW_display_data_reg_3776_3839_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3776" *) 
  (* ram_addr_end = "3839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3776_3839_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3776_3839_3_5_n_0),
        .DOB(display_data_reg_3776_3839_3_5_n_1),
        .DOC(display_data_reg_3776_3839_3_5_n_2),
        .DOD(NLW_display_data_reg_3776_3839_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3776" *) 
  (* ram_addr_end = "3839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3776_3839_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3776_3839_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3776_3839_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_47_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3840" *) 
  (* ram_addr_end = "3903" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3840_3903_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3840_3903_0_2_n_0),
        .DOB(display_data_reg_3840_3903_0_2_n_1),
        .DOC(display_data_reg_3840_3903_0_2_n_2),
        .DOD(NLW_display_data_reg_3840_3903_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3840" *) 
  (* ram_addr_end = "3903" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3840_3903_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3840_3903_3_5_n_0),
        .DOB(display_data_reg_3840_3903_3_5_n_1),
        .DOC(display_data_reg_3840_3903_3_5_n_2),
        .DOD(NLW_display_data_reg_3840_3903_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3840" *) 
  (* ram_addr_end = "3903" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3840_3903_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3840_3903_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3840_3903_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h4000000200000000),
    .INIT_B(64'h4003000400080000),
    .INIT_C(64'h0000800100020000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_384_447_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_384_447_0_2_n_0),
        .DOB(display_data_reg_384_447_0_2_n_1),
        .DOC(display_data_reg_384_447_0_2_n_2),
        .DOD(NLW_display_data_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0002000400080000),
    .INIT_B(64'hC7FB8FF71FEE01FE),
    .INIT_C(64'hFFFFFFFFFFFF01FF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_384_447_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_384_447_3_5_n_0),
        .DOB(display_data_reg_384_447_3_5_n_1),
        .DOC(display_data_reg_384_447_3_5_n_2),
        .DOD(NLW_display_data_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h4000800100020000)) 
    display_data_reg_384_447_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_384_447_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_384_447_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3904" *) 
  (* ram_addr_end = "3967" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3904_3967_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3904_3967_0_2_n_0),
        .DOB(display_data_reg_3904_3967_0_2_n_1),
        .DOC(display_data_reg_3904_3967_0_2_n_2),
        .DOD(NLW_display_data_reg_3904_3967_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3904" *) 
  (* ram_addr_end = "3967" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3904_3967_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3904_3967_3_5_n_0),
        .DOB(display_data_reg_3904_3967_3_5_n_1),
        .DOC(display_data_reg_3904_3967_3_5_n_2),
        .DOD(NLW_display_data_reg_3904_3967_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3904" *) 
  (* ram_addr_end = "3967" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3904_3967_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3904_3967_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3904_3967_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3968" *) 
  (* ram_addr_end = "4031" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3968_4031_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_3968_4031_0_2_n_0),
        .DOB(display_data_reg_3968_4031_0_2_n_1),
        .DOC(display_data_reg_3968_4031_0_2_n_2),
        .DOD(NLW_display_data_reg_3968_4031_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3968" *) 
  (* ram_addr_end = "4031" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_3968_4031_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_3968_4031_3_5_n_0),
        .DOB(display_data_reg_3968_4031_3_5_n_1),
        .DOC(display_data_reg_3968_4031_3_5_n_2),
        .DOD(NLW_display_data_reg_3968_4031_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "3968" *) 
  (* ram_addr_end = "4031" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_3968_4031_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_3968_4031_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_3968_4031_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_48_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4032" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_4032_4095_0_2
       (.ADDRA({text_index[2:0],ADDRC}),
        .ADDRB({text_index[2:0],ADDRC}),
        .ADDRC({text_index[2:0],ADDRC}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_4032_4095_0_2_n_0),
        .DOB(display_data_reg_4032_4095_0_2_n_1),
        .DOC(display_data_reg_4032_4095_0_2_n_2),
        .DOD(NLW_display_data_reg_4032_4095_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry_i_87_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4032" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_4032_4095_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_65_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry__0_i_68_0,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_4032_4095_3_5_n_0),
        .DOB(display_data_reg_4032_4095_3_5_n_1),
        .DOC(display_data_reg_4032_4095_3_5_n_2),
        .DOD(NLW_display_data_reg_4032_4095_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry_i_87_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4032" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_4032_4095_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_4032_4095_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_4032_4095_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry_i_87_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h8003000200006000),
    .INIT_B(64'h000400080000A001),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_448_511_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_448_511_0_2_n_0),
        .DOB(display_data_reg_448_511_0_2_n_1),
        .DOC(display_data_reg_448_511_0_2_n_2),
        .DOD(NLW_display_data_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0004000800008001),
    .INIT_B(64'h0FF61FEC01FEE3FD),
    .INIT_C(64'hFFFFFFFF01FFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_448_511_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_448_511_3_5_n_0),
        .DOB(display_data_reg_448_511_3_5_n_1),
        .DOC(display_data_reg_448_511_3_5_n_2),
        .DOD(NLW_display_data_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h8001000200002000)) 
    display_data_reg_448_511_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_448_511_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_448_511_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_58_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000600002000C000),
    .INIT_B(64'h0008000080018003),
    .INIT_C(64'h0004000040000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_512_575_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_512_575_0_2_n_0),
        .DOB(display_data_reg_512_575_0_2_n_1),
        .DOC(display_data_reg_512_575_0_2_n_2),
        .DOD(NLW_display_data_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0008000080010002),
    .INIT_B(64'h1FEC01FEC3FD87FB),
    .INIT_C(64'hFFFF01FFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_512_575_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_512_575_3_5_n_0),
        .DOB(display_data_reg_512_575_3_5_n_1),
        .DOC(display_data_reg_512_575_3_5_n_2),
        .DOD(NLW_display_data_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0002000020004000)) 
    display_data_reg_512_575_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_512_575_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_512_575_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000600040018001),
    .INIT_B(64'h0000E001C0030006),
    .INIT_C(64'h0000000000010002),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_576_639_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_576_639_0_2_n_0),
        .DOB(display_data_reg_576_639_0_2_n_1),
        .DOC(display_data_reg_576_639_0_2_n_2),
        .DOD(NLW_display_data_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000800100020004),
    .INIT_B(64'h01FEE3FDC7FB0FF6),
    .INIT_C(64'h01FFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_576_639_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_576_639_3_5_n_0),
        .DOB(display_data_reg_576_639_3_5_n_1),
        .DOC(display_data_reg_576_639_3_5_n_2),
        .DOD(NLW_display_data_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000200040008001)) 
    display_data_reg_576_639_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_576_639_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_576_639_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h2000C00080030002),
    .INIT_B(64'hA001C0038005000A),
    .INIT_C(64'h0000800100020004),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_640_703_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_640_703_0_2_n_0),
        .DOB(display_data_reg_640_703_0_2_n_1),
        .DOC(display_data_reg_640_703_0_2_n_2),
        .DOD(NLW_display_data_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'hC001000200040008),
    .INIT_B(64'hE3FDC7FB8FF71FEE),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_640_703_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_640_703_3_5_n_0),
        .DOB(display_data_reg_640_703_3_5_n_1),
        .DOC(NLW_display_data_reg_640_703_3_5_DOC_UNCONNECTED),
        .DOD(NLW_display_data_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h2000400080010002)) 
    display_data_reg_640_703_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_640_703_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_640_703_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_64_127_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_64_127_0_2_n_0),
        .DOB(display_data_reg_64_127_0_2_n_1),
        .DOC(display_data_reg_64_127_0_2_n_2),
        .DOD(NLW_display_data_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_64_127_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_64_127_3_5_n_0),
        .DOB(display_data_reg_64_127_3_5_n_1),
        .DOC(display_data_reg_64_127_3_5_n_2),
        .DOD(NLW_display_data_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_64_127_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_64_127_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_64_127_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_57_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h8001C00180060000),
    .INIT_B(64'h80024004800A0000),
    .INIT_C(64'h4000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_704_767_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_704_767_0_2_n_0),
        .DOB(display_data_reg_704_767_0_2_n_1),
        .DOC(display_data_reg_704_767_0_2_n_2),
        .DOD(NLW_display_data_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h00020004000C0000),
    .INIT_B(64'hC7FBCFF79FEE01FE),
    .INIT_C(64'hFFFFFFFFFFFF01FF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_704_767_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_704_767_3_5_n_0),
        .DOB(display_data_reg_704_767_3_5_n_1),
        .DOC(display_data_reg_704_767_3_5_n_2),
        .DOD(NLW_display_data_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h4000400080020000)) 
    display_data_reg_704_767_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_704_767_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_704_767_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_59_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000400000000),
    .INIT_B(64'h0006000800008001),
    .INIT_C(64'h0003000600006000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_768_831_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_768_831_0_2_n_0),
        .DOB(display_data_reg_768_831_0_2_n_1),
        .DOC(display_data_reg_768_831_0_2_n_2),
        .DOD(NLW_display_data_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0004000800008001),
    .INIT_B(64'h0FF71FEE01FEE3FD),
    .INIT_C(64'h0FFFFFFF01FFFFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_768_831_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_768_831_3_5_n_0),
        .DOB(display_data_reg_768_831_3_5_n_1),
        .DOC(display_data_reg_768_831_3_5_n_2),
        .DOD(NLW_display_data_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_0));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0001000200002000)) 
    display_data_reg_768_831_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_768_831_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_768_831_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_832_895_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_832_895_0_2_n_0),
        .DOB(display_data_reg_832_895_0_2_n_1),
        .DOC(display_data_reg_832_895_0_2_n_2),
        .DOD(NLW_display_data_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_832_895_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_832_895_3_5_n_0),
        .DOB(display_data_reg_832_895_3_5_n_1),
        .DOC(display_data_reg_832_895_3_5_n_2),
        .DOD(NLW_display_data_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_1));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_832_895_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_832_895_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_832_895_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_896_959_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_896_959_0_2_n_0),
        .DOB(display_data_reg_896_959_0_2_n_1),
        .DOC(display_data_reg_896_959_0_2_n_2),
        .DOD(NLW_display_data_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_896_959_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_896_959_3_5_n_0),
        .DOB(display_data_reg_896_959_3_5_n_1),
        .DOC(display_data_reg_896_959_3_5_n_2),
        .DOD(NLW_display_data_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_2));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    display_data_reg_896_959_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_896_959_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_896_959_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000000000001700C),
    .INIT_B(64'h000000000004D816),
    .INIT_C(64'h000000000002C000),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_960_1023_0_2
       (.ADDRA({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRB({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRC({text_index[2:0],text_ascii_carry_i_96_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,ADDRD[0]}),
        .DIA(display_w_data[0]),
        .DIB(display_w_data[1]),
        .DIC(display_w_data[2]),
        .DID(1'b0),
        .DOA(display_data_reg_960_1023_0_2_n_0),
        .DOB(display_data_reg_960_1023_0_2_n_1),
        .DOC(display_data_reg_960_1023_0_2_n_2),
        .DOD(NLW_display_data_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000064010),
    .INIT_B(64'h000000000FF4F8DE),
    .INIT_C(64'h000000000FFFBFFF),
    .INIT_D(64'h0000000000000000)) 
    display_data_reg_960_1023_3_5
       (.ADDRA({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRB({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRC({text_index[2:0],text_ascii_carry__0_i_73_0}),
        .ADDRD({ADDRD[5:2],text_ascii_carry_i_96_1,text_ascii_carry_i_92_0[0]}),
        .DIA(display_w_data[3]),
        .DIB(text_ascii_carry__0_i_64_0),
        .DIC(1'b1),
        .DID(1'b0),
        .DOA(display_data_reg_960_1023_3_5_n_0),
        .DOB(display_data_reg_960_1023_3_5_n_1),
        .DOC(display_data_reg_960_1023_3_5_n_2),
        .DOD(NLW_display_data_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_3));
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "inst__0/vga_display/display_data" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h000000000003D806)) 
    display_data_reg_960_1023_6_6
       (.A0(text_ascii_carry__0_i_57_4),
        .A1(text_ascii_carry__0_i_68_0),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(display_w_data[4]),
        .DPO(display_data_reg_960_1023_6_6_n_0),
        .DPRA0(text_ascii_carry__0_i_57_5),
        .DPRA1(text_ascii_carry__0_i_57_6),
        .DPRA2(text_ascii_carry__0_i_57_7),
        .DPRA3(text_index[0]),
        .DPRA4(text_index[1]),
        .DPRA5(text_index[2]),
        .SPO(NLW_display_data_reg_960_1023_6_6_SPO_UNCONNECTED),
        .WCLK(clk_100m),
        .WE(text_ascii_carry__0_i_60_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g0_b0_i_4
       (.CI(1'b0),
        .CO({g0_b0_i_4_n_0,g0_b0_i_4_n_1,g0_b0_i_4_n_2,g0_b0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({font_addr0[2:0],1'b0}),
        .O(sel[3:0]),
        .S({g0_b0_i_5_n_0,g0_b0_i_6_n_0,g0_b0_i_7_n_0,C[0]}));
  LUT2 #(
    .INIT(4'h9)) 
    g0_b0_i_5
       (.I0(font_addr0[2]),
        .I1(g0_b0_i_4_0),
        .O(g0_b0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_6
       (.I0(font_addr0[1]),
        .I1(C[2]),
        .O(g0_b0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_7
       (.I0(font_addr0[0]),
        .I1(C[1]),
        .O(g0_b0_i_7_n_0));
  LUT5 #(
    .INIT(32'h223E3E3E)) 
    g17_b5
       (.I0(\vga_b[0]_INST_0_i_143_1 ),
        .I1(\vga_b[0]_INST_0_i_338_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g17_b5_n_0));
  LUT5 #(
    .INIT(32'h3E30003E)) 
    g18_b6
       (.I0(\vga_b[0]_INST_0_i_287_0 ),
        .I1(\vga_b[0]_INST_0_i_54_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g18_b6_n_0));
  LUT5 #(
    .INIT(32'h3E3E3E20)) 
    g19_b2
       (.I0(\vga_b[0]_INST_0_i_143_1 ),
        .I1(\vga_b[0]_INST_0_i_338_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g19_b2_n_0));
  LUT5 #(
    .INIT(32'h00320636)) 
    g22_b6
       (.I0(\vga_b[0]_INST_0_i_287_0 ),
        .I1(\vga_b[0]_INST_0_i_54_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g22_b6_n_0));
  LUT5 #(
    .INIT(32'h3E40003E)) 
    g26_b6
       (.I0(\vga_b[0]_INST_0_i_287_0 ),
        .I1(\vga_b[0]_INST_0_i_54_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g26_b6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g2_b0
       (.I0(sel[1]),
        .O(g2_b0_n_0));
  LUT5 #(
    .INIT(32'h06E718FF)) 
    g2_b1
       (.I0(\vga_b[0]_INST_0_i_287_0 ),
        .I1(\vga_b[0]_INST_0_i_54_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g2_b1_n_0));
  LUT5 #(
    .INIT(32'h38E718FF)) 
    g2_b6
       (.I0(\vga_b[0]_INST_0_i_287_0 ),
        .I1(\vga_b[0]_INST_0_i_54_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g2_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h35)) 
    g44_b0
       (.I0(\vga_b[0]_INST_0_i_24_0 ),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(g44_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h28)) 
    g44_b1
       (.I0(\vga_b[0]_INST_0_i_242 ),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(\v_count_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h36)) 
    g44_b2
       (.I0(\vga_b[0]_INST_0_i_242 ),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(g44_b2_n_0));
  LUT3 #(
    .INIT(8'hD8)) 
    g44_b3
       (.I0(\vga_b[0]_INST_0_i_316_0 ),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(g44_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h18)) 
    g44_b7
       (.I0(\vga_b[0]_INST_0_i_242 ),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(g44_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h08000808)) 
    g46_b7
       (.I0(\vga_b[0]_INST_0_i_242 ),
        .I1(C__0),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g46_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    g47_b1
       (.I0(sel[0]),
        .I1(sel[2]),
        .O(g47_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h08080800)) 
    g51_b7
       (.I0(\vga_b[0]_INST_0_i_242 ),
        .I1(C__0),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g51_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h0000003E)) 
    g5_b0
       (.I0(\vga_b[0]_INST_0_i_287_0 ),
        .I1(\vga_b[0]_INST_0_i_54_0 ),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .O(g5_b0_n_0));
  CARRY4 text_ascii_carry
       (.CI(1'b0),
        .CO({text_ascii_carry_n_0,text_ascii_carry_n_1,text_ascii_carry_n_2,text_ascii_carry_n_3}),
        .CYINIT(1'b1),
        .DI(text_ascii0[3:0]),
        .O(font_addr0[3:0]),
        .S({text_ascii_carry_i_5_n_0,text_ascii_carry_i_6_n_0,text_ascii_carry_i_7_n_0,text_ascii_carry_i_8_n_0}));
  CARRY4 text_ascii_carry__0
       (.CI(text_ascii_carry_n_0),
        .CO({NLW_text_ascii_carry__0_CO_UNCONNECTED[3],text_ascii_carry__0_n_1,text_ascii_carry__0_n_2,text_ascii_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,text_ascii0[6:4]}),
        .O(font_addr0[7:4]),
        .S({1'b1,text_ascii_carry__0_i_4_n_0,text_ascii_carry__0_i_5_n_0,text_ascii_carry__0_i_6_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_1
       (.I0(text_ascii_carry__0_i_7_n_0),
        .I1(text_ascii_carry__0_i_8_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry__0_i_9_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry__0_i_10_n_0),
        .O(text_ascii0[6]));
  MUXF8 text_ascii_carry__0_i_10
       (.I0(text_ascii_carry__0_i_26_n_0),
        .I1(text_ascii_carry__0_i_27_n_0),
        .O(text_ascii_carry__0_i_10_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_11
       (.I0(text_ascii_carry__0_i_28_n_0),
        .I1(text_ascii_carry__0_i_29_n_0),
        .O(text_ascii_carry__0_i_11_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_12
       (.I0(text_ascii_carry__0_i_30_n_0),
        .I1(text_ascii_carry__0_i_31_n_0),
        .O(text_ascii_carry__0_i_12_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_13
       (.I0(text_ascii_carry__0_i_32_n_0),
        .I1(text_ascii_carry__0_i_33_n_0),
        .O(text_ascii_carry__0_i_13_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_14
       (.I0(text_ascii_carry__0_i_34_n_0),
        .I1(text_ascii_carry__0_i_35_n_0),
        .O(text_ascii_carry__0_i_14_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_15
       (.I0(text_ascii_carry__0_i_36_n_0),
        .I1(text_ascii_carry__0_i_37_n_0),
        .O(text_ascii_carry__0_i_15_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_16
       (.I0(text_ascii_carry__0_i_38_n_0),
        .I1(text_ascii_carry__0_i_39_n_0),
        .O(text_ascii_carry__0_i_16_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_17
       (.I0(text_ascii_carry__0_i_40_n_0),
        .I1(text_ascii_carry__0_i_41_n_0),
        .O(text_ascii_carry__0_i_17_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry__0_i_18
       (.I0(text_ascii_carry__0_i_42_n_0),
        .I1(text_ascii_carry__0_i_43_n_0),
        .O(text_ascii_carry__0_i_18_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_2
       (.I0(text_ascii_carry__0_i_11_n_0),
        .I1(text_ascii_carry__0_i_12_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry__0_i_13_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry__0_i_14_n_0),
        .O(text_ascii0[5]));
  MUXF7 text_ascii_carry__0_i_20
       (.I0(text_ascii_carry__0_i_45_n_0),
        .I1(text_ascii_carry__0_i_46_n_0),
        .O(text_ascii_carry__0_i_20_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_21
       (.I0(text_ascii_carry__0_i_47_n_0),
        .I1(text_ascii_carry__0_i_48_n_0),
        .O(text_ascii_carry__0_i_21_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_22
       (.I0(text_ascii_carry__0_i_49_n_0),
        .I1(text_ascii_carry__0_i_50_n_0),
        .O(text_ascii_carry__0_i_22_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_23
       (.I0(text_ascii_carry__0_i_51_n_0),
        .I1(text_ascii_carry__0_i_52_n_0),
        .O(text_ascii_carry__0_i_23_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_24
       (.I0(text_ascii_carry__0_i_53_n_0),
        .I1(text_ascii_carry__0_i_54_n_0),
        .O(text_ascii_carry__0_i_24_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_25
       (.I0(text_ascii_carry__0_i_55_n_0),
        .I1(text_ascii_carry__0_i_56_n_0),
        .O(text_ascii_carry__0_i_25_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_26
       (.I0(text_ascii_carry__0_i_57_n_0),
        .I1(text_ascii_carry__0_i_58_n_0),
        .O(text_ascii_carry__0_i_26_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_27
       (.I0(text_ascii_carry__0_i_59_n_0),
        .I1(text_ascii_carry__0_i_60_n_0),
        .O(text_ascii_carry__0_i_27_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_28
       (.I0(text_ascii_carry__0_i_61_n_0),
        .I1(text_ascii_carry__0_i_62_n_0),
        .O(text_ascii_carry__0_i_28_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_29
       (.I0(text_ascii_carry__0_i_63_n_0),
        .I1(text_ascii_carry__0_i_64_n_0),
        .O(text_ascii_carry__0_i_29_n_0),
        .S(text_index[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_3
       (.I0(text_ascii_carry__0_i_15_n_0),
        .I1(text_ascii_carry__0_i_16_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry__0_i_17_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry__0_i_18_n_0),
        .O(text_ascii0[4]));
  MUXF7 text_ascii_carry__0_i_30
       (.I0(text_ascii_carry__0_i_65_n_0),
        .I1(text_ascii_carry__0_i_66_n_0),
        .O(text_ascii_carry__0_i_30_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_31
       (.I0(text_ascii_carry__0_i_67_n_0),
        .I1(text_ascii_carry__0_i_68_n_0),
        .O(text_ascii_carry__0_i_31_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_32
       (.I0(text_ascii_carry__0_i_69_n_0),
        .I1(text_ascii_carry__0_i_70_n_0),
        .O(text_ascii_carry__0_i_32_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_33
       (.I0(text_ascii_carry__0_i_71_n_0),
        .I1(text_ascii_carry__0_i_72_n_0),
        .O(text_ascii_carry__0_i_33_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_34
       (.I0(text_ascii_carry__0_i_73_n_0),
        .I1(text_ascii_carry__0_i_74_n_0),
        .O(text_ascii_carry__0_i_34_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_35
       (.I0(text_ascii_carry__0_i_75_n_0),
        .I1(text_ascii_carry__0_i_76_n_0),
        .O(text_ascii_carry__0_i_35_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_36
       (.I0(text_ascii_carry__0_i_77_n_0),
        .I1(text_ascii_carry__0_i_78_n_0),
        .O(text_ascii_carry__0_i_36_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_37
       (.I0(text_ascii_carry__0_i_79_n_0),
        .I1(text_ascii_carry__0_i_80_n_0),
        .O(text_ascii_carry__0_i_37_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_38
       (.I0(text_ascii_carry__0_i_81_n_0),
        .I1(text_ascii_carry__0_i_82_n_0),
        .O(text_ascii_carry__0_i_38_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_39
       (.I0(text_ascii_carry__0_i_83_n_0),
        .I1(text_ascii_carry__0_i_84_n_0),
        .O(text_ascii_carry__0_i_39_n_0),
        .S(text_index[5]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    text_ascii_carry__0_i_4
       (.I0(text_ascii_carry__0_i_7_n_0),
        .I1(text_ascii_carry__0_i_8_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry__0_i_9_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry__0_i_10_n_0),
        .O(text_ascii_carry__0_i_4_n_0));
  MUXF7 text_ascii_carry__0_i_40
       (.I0(text_ascii_carry__0_i_85_n_0),
        .I1(text_ascii_carry__0_i_86_n_0),
        .O(text_ascii_carry__0_i_40_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_41
       (.I0(text_ascii_carry__0_i_87_n_0),
        .I1(text_ascii_carry__0_i_88_n_0),
        .O(text_ascii_carry__0_i_41_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_42
       (.I0(text_ascii_carry__0_i_89_n_0),
        .I1(text_ascii_carry__0_i_90_n_0),
        .O(text_ascii_carry__0_i_42_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry__0_i_43
       (.I0(text_ascii_carry__0_i_91_n_0),
        .I1(text_ascii_carry__0_i_92_n_0),
        .O(text_ascii_carry__0_i_43_n_0),
        .S(text_index[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_45
       (.I0(display_data_reg_3264_3327_6_6_n_0),
        .I1(display_data_reg_3200_3263_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_6_6_n_0),
        .O(text_ascii_carry__0_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_46
       (.I0(display_data_reg_3520_3583_6_6_n_0),
        .I1(display_data_reg_3456_3519_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_6_6_n_0),
        .O(text_ascii_carry__0_i_46_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_47
       (.I0(display_data_reg_3776_3839_6_6_n_0),
        .I1(display_data_reg_3712_3775_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_6_6_n_0),
        .O(text_ascii_carry__0_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_48
       (.I0(display_data_reg_4032_4095_6_6_n_0),
        .I1(display_data_reg_3968_4031_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_6_6_n_0),
        .O(text_ascii_carry__0_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_49
       (.I0(display_data_reg_2240_2303_6_6_n_0),
        .I1(display_data_reg_2176_2239_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_6_6_n_0),
        .O(text_ascii_carry__0_i_49_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    text_ascii_carry__0_i_5
       (.I0(text_ascii_carry__0_i_11_n_0),
        .I1(text_ascii_carry__0_i_12_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry__0_i_13_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry__0_i_14_n_0),
        .O(text_ascii_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_50
       (.I0(display_data_reg_2496_2559_6_6_n_0),
        .I1(display_data_reg_2432_2495_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_6_6_n_0),
        .O(text_ascii_carry__0_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_51
       (.I0(display_data_reg_2752_2815_6_6_n_0),
        .I1(display_data_reg_2688_2751_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_6_6_n_0),
        .O(text_ascii_carry__0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_52
       (.I0(display_data_reg_3008_3071_6_6_n_0),
        .I1(display_data_reg_2944_3007_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_6_6_n_0),
        .O(text_ascii_carry__0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_53
       (.I0(display_data_reg_1216_1279_6_6_n_0),
        .I1(display_data_reg_1152_1215_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_6_6_n_0),
        .O(text_ascii_carry__0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_54
       (.I0(display_data_reg_1472_1535_6_6_n_0),
        .I1(display_data_reg_1408_1471_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_6_6_n_0),
        .O(text_ascii_carry__0_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_55
       (.I0(display_data_reg_1728_1791_6_6_n_0),
        .I1(display_data_reg_1664_1727_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_6_6_n_0),
        .O(text_ascii_carry__0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_56
       (.I0(display_data_reg_1984_2047_6_6_n_0),
        .I1(display_data_reg_1920_1983_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_6_6_n_0),
        .O(text_ascii_carry__0_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_57
       (.I0(display_data_reg_192_255_6_6_n_0),
        .I1(display_data_reg_128_191_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_6_6_n_0),
        .O(text_ascii_carry__0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_58
       (.I0(display_data_reg_448_511_6_6_n_0),
        .I1(display_data_reg_384_447_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_320_383_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_256_319_6_6_n_0),
        .O(text_ascii_carry__0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_59
       (.I0(display_data_reg_704_767_6_6_n_0),
        .I1(display_data_reg_640_703_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_576_639_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_512_575_6_6_n_0),
        .O(text_ascii_carry__0_i_59_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    text_ascii_carry__0_i_6
       (.I0(text_ascii0[4]),
        .I1(C[4]),
        .O(text_ascii_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_60
       (.I0(display_data_reg_960_1023_6_6_n_0),
        .I1(display_data_reg_896_959_6_6_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_6_6_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_6_6_n_0),
        .O(text_ascii_carry__0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_61
       (.I0(display_data_reg_3264_3327_3_5_n_2),
        .I1(display_data_reg_3200_3263_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_3_5_n_2),
        .O(text_ascii_carry__0_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_62
       (.I0(display_data_reg_3520_3583_3_5_n_2),
        .I1(display_data_reg_3456_3519_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_3_5_n_2),
        .O(text_ascii_carry__0_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_63
       (.I0(display_data_reg_3776_3839_3_5_n_2),
        .I1(display_data_reg_3712_3775_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_3_5_n_2),
        .O(text_ascii_carry__0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_64
       (.I0(display_data_reg_4032_4095_3_5_n_2),
        .I1(display_data_reg_3968_4031_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_3_5_n_2),
        .O(text_ascii_carry__0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_65
       (.I0(display_data_reg_2240_2303_3_5_n_2),
        .I1(display_data_reg_2176_2239_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_3_5_n_2),
        .O(text_ascii_carry__0_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_66
       (.I0(display_data_reg_2496_2559_3_5_n_2),
        .I1(display_data_reg_2432_2495_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_3_5_n_2),
        .O(text_ascii_carry__0_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_67
       (.I0(display_data_reg_2752_2815_3_5_n_2),
        .I1(display_data_reg_2688_2751_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_3_5_n_2),
        .O(text_ascii_carry__0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_68
       (.I0(display_data_reg_3008_3071_3_5_n_2),
        .I1(display_data_reg_2944_3007_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_3_5_n_2),
        .O(text_ascii_carry__0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_69
       (.I0(display_data_reg_1216_1279_3_5_n_2),
        .I1(display_data_reg_1152_1215_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_3_5_n_2),
        .O(text_ascii_carry__0_i_69_n_0));
  MUXF8 text_ascii_carry__0_i_7
       (.I0(text_ascii_carry__0_i_20_n_0),
        .I1(text_ascii_carry__0_i_21_n_0),
        .O(text_ascii_carry__0_i_7_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_70
       (.I0(display_data_reg_1472_1535_3_5_n_2),
        .I1(display_data_reg_1408_1471_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_3_5_n_2),
        .O(text_ascii_carry__0_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_71
       (.I0(display_data_reg_1728_1791_3_5_n_2),
        .I1(display_data_reg_1664_1727_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_3_5_n_2),
        .O(text_ascii_carry__0_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_72
       (.I0(display_data_reg_1984_2047_3_5_n_2),
        .I1(display_data_reg_1920_1983_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_3_5_n_2),
        .O(text_ascii_carry__0_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_73
       (.I0(display_data_reg_192_255_3_5_n_2),
        .I1(display_data_reg_128_191_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_3_5_n_2),
        .O(text_ascii_carry__0_i_73_n_0));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    text_ascii_carry__0_i_74
       (.I0(display_data_reg_448_511_3_5_n_2),
        .I1(display_data_reg_384_447_3_5_n_2),
        .I2(text_index[4]),
        .I3(text_index[3]),
        .I4(display_data_reg_256_319_3_5_n_2),
        .O(text_ascii_carry__0_i_74_n_0));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    text_ascii_carry__0_i_75
       (.I0(display_data_reg_704_767_3_5_n_2),
        .I1(text_index[4]),
        .I2(display_data_reg_576_639_3_5_n_2),
        .I3(text_index[3]),
        .I4(display_data_reg_512_575_3_5_n_2),
        .O(text_ascii_carry__0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_76
       (.I0(display_data_reg_960_1023_3_5_n_2),
        .I1(display_data_reg_896_959_3_5_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_3_5_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_3_5_n_2),
        .O(text_ascii_carry__0_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_77
       (.I0(display_data_reg_3264_3327_3_5_n_1),
        .I1(display_data_reg_3200_3263_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_3_5_n_1),
        .O(text_ascii_carry__0_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_78
       (.I0(display_data_reg_3520_3583_3_5_n_1),
        .I1(display_data_reg_3456_3519_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_3_5_n_1),
        .O(text_ascii_carry__0_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_79
       (.I0(display_data_reg_3776_3839_3_5_n_1),
        .I1(display_data_reg_3712_3775_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_3_5_n_1),
        .O(text_ascii_carry__0_i_79_n_0));
  MUXF8 text_ascii_carry__0_i_8
       (.I0(text_ascii_carry__0_i_22_n_0),
        .I1(text_ascii_carry__0_i_23_n_0),
        .O(text_ascii_carry__0_i_8_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_80
       (.I0(display_data_reg_4032_4095_3_5_n_1),
        .I1(display_data_reg_3968_4031_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_3_5_n_1),
        .O(text_ascii_carry__0_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_81
       (.I0(display_data_reg_2240_2303_3_5_n_1),
        .I1(display_data_reg_2176_2239_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_3_5_n_1),
        .O(text_ascii_carry__0_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_82
       (.I0(display_data_reg_2496_2559_3_5_n_1),
        .I1(display_data_reg_2432_2495_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_3_5_n_1),
        .O(text_ascii_carry__0_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_83
       (.I0(display_data_reg_2752_2815_3_5_n_1),
        .I1(display_data_reg_2688_2751_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_3_5_n_1),
        .O(text_ascii_carry__0_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_84
       (.I0(display_data_reg_3008_3071_3_5_n_1),
        .I1(display_data_reg_2944_3007_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_3_5_n_1),
        .O(text_ascii_carry__0_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_85
       (.I0(display_data_reg_1216_1279_3_5_n_1),
        .I1(display_data_reg_1152_1215_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_3_5_n_1),
        .O(text_ascii_carry__0_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_86
       (.I0(display_data_reg_1472_1535_3_5_n_1),
        .I1(display_data_reg_1408_1471_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_3_5_n_1),
        .O(text_ascii_carry__0_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_87
       (.I0(display_data_reg_1728_1791_3_5_n_1),
        .I1(display_data_reg_1664_1727_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_3_5_n_1),
        .O(text_ascii_carry__0_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_88
       (.I0(display_data_reg_1984_2047_3_5_n_1),
        .I1(display_data_reg_1920_1983_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_3_5_n_1),
        .O(text_ascii_carry__0_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_89
       (.I0(display_data_reg_192_255_3_5_n_1),
        .I1(display_data_reg_128_191_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_3_5_n_1),
        .O(text_ascii_carry__0_i_89_n_0));
  MUXF8 text_ascii_carry__0_i_9
       (.I0(text_ascii_carry__0_i_24_n_0),
        .I1(text_ascii_carry__0_i_25_n_0),
        .O(text_ascii_carry__0_i_9_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_90
       (.I0(display_data_reg_448_511_3_5_n_1),
        .I1(display_data_reg_384_447_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_320_383_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_256_319_3_5_n_1),
        .O(text_ascii_carry__0_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_91
       (.I0(display_data_reg_704_767_3_5_n_1),
        .I1(display_data_reg_640_703_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_576_639_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_512_575_3_5_n_1),
        .O(text_ascii_carry__0_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry__0_i_92
       (.I0(display_data_reg_960_1023_3_5_n_1),
        .I1(display_data_reg_896_959_3_5_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_3_5_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_3_5_n_1),
        .O(text_ascii_carry__0_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_1
       (.I0(text_ascii_carry_i_9_n_0),
        .I1(text_ascii_carry_i_10_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry_i_12_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry_i_14_n_0),
        .O(text_ascii0[3]));
  MUXF8 text_ascii_carry_i_10
       (.I0(text_ascii_carry_i_31_n_0),
        .I1(text_ascii_carry_i_32_n_0),
        .O(text_ascii_carry_i_10_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_100
       (.I0(display_data_reg_3264_3327_0_2_n_1),
        .I1(display_data_reg_3200_3263_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_0_2_n_1),
        .O(text_ascii_carry_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_101
       (.I0(display_data_reg_3520_3583_0_2_n_1),
        .I1(display_data_reg_3456_3519_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_0_2_n_1),
        .O(text_ascii_carry_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_102
       (.I0(display_data_reg_3776_3839_0_2_n_1),
        .I1(display_data_reg_3712_3775_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_0_2_n_1),
        .O(text_ascii_carry_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_103
       (.I0(display_data_reg_4032_4095_0_2_n_1),
        .I1(display_data_reg_3968_4031_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_0_2_n_1),
        .O(text_ascii_carry_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_104
       (.I0(display_data_reg_2240_2303_0_2_n_1),
        .I1(display_data_reg_2176_2239_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_0_2_n_1),
        .O(text_ascii_carry_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_105
       (.I0(display_data_reg_2496_2559_0_2_n_1),
        .I1(display_data_reg_2432_2495_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_0_2_n_1),
        .O(text_ascii_carry_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_106
       (.I0(display_data_reg_2752_2815_0_2_n_1),
        .I1(display_data_reg_2688_2751_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_0_2_n_1),
        .O(text_ascii_carry_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_107
       (.I0(display_data_reg_3008_3071_0_2_n_1),
        .I1(display_data_reg_2944_3007_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_0_2_n_1),
        .O(text_ascii_carry_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_108
       (.I0(display_data_reg_1216_1279_0_2_n_1),
        .I1(display_data_reg_1152_1215_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_0_2_n_1),
        .O(text_ascii_carry_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_109
       (.I0(display_data_reg_1472_1535_0_2_n_1),
        .I1(display_data_reg_1408_1471_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_0_2_n_1),
        .O(text_ascii_carry_i_109_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_110
       (.I0(display_data_reg_1728_1791_0_2_n_1),
        .I1(display_data_reg_1664_1727_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_0_2_n_1),
        .O(text_ascii_carry_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_111
       (.I0(display_data_reg_1984_2047_0_2_n_1),
        .I1(display_data_reg_1920_1983_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_0_2_n_1),
        .O(text_ascii_carry_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_112
       (.I0(display_data_reg_192_255_0_2_n_1),
        .I1(display_data_reg_128_191_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_0_2_n_1),
        .O(text_ascii_carry_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_113
       (.I0(display_data_reg_448_511_0_2_n_1),
        .I1(display_data_reg_384_447_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_320_383_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_256_319_0_2_n_1),
        .O(text_ascii_carry_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_114
       (.I0(display_data_reg_704_767_0_2_n_1),
        .I1(display_data_reg_640_703_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_576_639_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_512_575_0_2_n_1),
        .O(text_ascii_carry_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_115
       (.I0(display_data_reg_960_1023_0_2_n_1),
        .I1(display_data_reg_896_959_0_2_n_1),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_0_2_n_1),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_0_2_n_1),
        .O(text_ascii_carry_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_116
       (.I0(display_data_reg_3264_3327_0_2_n_0),
        .I1(display_data_reg_3200_3263_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_0_2_n_0),
        .O(text_ascii_carry_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_117
       (.I0(display_data_reg_3520_3583_0_2_n_0),
        .I1(display_data_reg_3456_3519_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_0_2_n_0),
        .O(text_ascii_carry_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_118
       (.I0(display_data_reg_3776_3839_0_2_n_0),
        .I1(display_data_reg_3712_3775_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_0_2_n_0),
        .O(text_ascii_carry_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_119
       (.I0(display_data_reg_4032_4095_0_2_n_0),
        .I1(display_data_reg_3968_4031_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_0_2_n_0),
        .O(text_ascii_carry_i_119_n_0));
  MUXF8 text_ascii_carry_i_12
       (.I0(text_ascii_carry_i_34_n_0),
        .I1(text_ascii_carry_i_35_n_0),
        .O(text_ascii_carry_i_12_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_120
       (.I0(display_data_reg_2240_2303_0_2_n_0),
        .I1(display_data_reg_2176_2239_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_0_2_n_0),
        .O(text_ascii_carry_i_120_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_121
       (.I0(display_data_reg_2496_2559_0_2_n_0),
        .I1(display_data_reg_2432_2495_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_0_2_n_0),
        .O(text_ascii_carry_i_121_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_122
       (.I0(display_data_reg_2752_2815_0_2_n_0),
        .I1(display_data_reg_2688_2751_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_0_2_n_0),
        .O(text_ascii_carry_i_122_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_123
       (.I0(display_data_reg_3008_3071_0_2_n_0),
        .I1(display_data_reg_2944_3007_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_0_2_n_0),
        .O(text_ascii_carry_i_123_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_124
       (.I0(display_data_reg_1216_1279_0_2_n_0),
        .I1(display_data_reg_1152_1215_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_0_2_n_0),
        .O(text_ascii_carry_i_124_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_125
       (.I0(display_data_reg_1472_1535_0_2_n_0),
        .I1(display_data_reg_1408_1471_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_0_2_n_0),
        .O(text_ascii_carry_i_125_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_126
       (.I0(display_data_reg_1728_1791_0_2_n_0),
        .I1(display_data_reg_1664_1727_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_0_2_n_0),
        .O(text_ascii_carry_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_127
       (.I0(display_data_reg_1984_2047_0_2_n_0),
        .I1(display_data_reg_1920_1983_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_0_2_n_0),
        .O(text_ascii_carry_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_128
       (.I0(display_data_reg_192_255_0_2_n_0),
        .I1(display_data_reg_128_191_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_0_2_n_0),
        .O(text_ascii_carry_i_128_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_129
       (.I0(display_data_reg_448_511_0_2_n_0),
        .I1(display_data_reg_384_447_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_320_383_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_256_319_0_2_n_0),
        .O(text_ascii_carry_i_129_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_130
       (.I0(display_data_reg_704_767_0_2_n_0),
        .I1(display_data_reg_640_703_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_576_639_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_512_575_0_2_n_0),
        .O(text_ascii_carry_i_130_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_131
       (.I0(display_data_reg_960_1023_0_2_n_0),
        .I1(display_data_reg_896_959_0_2_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_0_2_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_0_2_n_0),
        .O(text_ascii_carry_i_131_n_0));
  MUXF8 text_ascii_carry_i_14
       (.I0(text_ascii_carry_i_40_n_0),
        .I1(text_ascii_carry_i_41_n_0),
        .O(text_ascii_carry_i_14_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_15
       (.I0(text_ascii_carry_i_42_n_0),
        .I1(text_ascii_carry_i_43_n_0),
        .O(text_ascii_carry_i_15_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_16
       (.I0(text_ascii_carry_i_44_n_0),
        .I1(text_ascii_carry_i_45_n_0),
        .O(text_ascii_carry_i_16_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_17
       (.I0(text_ascii_carry_i_46_n_0),
        .I1(text_ascii_carry_i_47_n_0),
        .O(text_ascii_carry_i_17_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_18
       (.I0(text_ascii_carry_i_48_n_0),
        .I1(text_ascii_carry_i_49_n_0),
        .O(text_ascii_carry_i_18_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_19
       (.I0(text_ascii_carry_i_50_n_0),
        .I1(text_ascii_carry_i_51_n_0),
        .O(text_ascii_carry_i_19_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_2
       (.I0(text_ascii_carry_i_15_n_0),
        .I1(text_ascii_carry_i_16_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry_i_17_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry_i_18_n_0),
        .O(text_ascii0[2]));
  MUXF8 text_ascii_carry_i_20
       (.I0(text_ascii_carry_i_52_n_0),
        .I1(text_ascii_carry_i_53_n_0),
        .O(text_ascii_carry_i_20_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_21
       (.I0(text_ascii_carry_i_54_n_0),
        .I1(text_ascii_carry_i_55_n_0),
        .O(text_ascii_carry_i_21_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_22
       (.I0(text_ascii_carry_i_56_n_0),
        .I1(text_ascii_carry_i_57_n_0),
        .O(text_ascii_carry_i_22_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_23
       (.I0(text_ascii_carry_i_58_n_0),
        .I1(text_ascii_carry_i_59_n_0),
        .O(text_ascii_carry_i_23_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_24
       (.I0(text_ascii_carry_i_60_n_0),
        .I1(text_ascii_carry_i_61_n_0),
        .O(text_ascii_carry_i_24_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_25
       (.I0(text_ascii_carry_i_62_n_0),
        .I1(text_ascii_carry_i_63_n_0),
        .O(text_ascii_carry_i_25_n_0),
        .S(text_index[6]));
  MUXF8 text_ascii_carry_i_26
       (.I0(text_ascii_carry_i_64_n_0),
        .I1(text_ascii_carry_i_65_n_0),
        .O(text_ascii_carry_i_26_n_0),
        .S(text_index[6]));
  MUXF7 text_ascii_carry_i_29
       (.I0(text_ascii_carry_i_67_n_0),
        .I1(text_ascii_carry_i_68_n_0),
        .O(text_ascii_carry_i_29_n_0),
        .S(text_index[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_3
       (.I0(text_ascii_carry_i_19_n_0),
        .I1(text_ascii_carry_i_20_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry_i_21_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry_i_22_n_0),
        .O(text_ascii0[1]));
  MUXF7 text_ascii_carry_i_30
       (.I0(text_ascii_carry_i_69_n_0),
        .I1(text_ascii_carry_i_70_n_0),
        .O(text_ascii_carry_i_30_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_31
       (.I0(text_ascii_carry_i_71_n_0),
        .I1(text_ascii_carry_i_72_n_0),
        .O(text_ascii_carry_i_31_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_32
       (.I0(text_ascii_carry_i_73_n_0),
        .I1(text_ascii_carry_i_74_n_0),
        .O(text_ascii_carry_i_32_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_34
       (.I0(text_ascii_carry_i_76_n_0),
        .I1(text_ascii_carry_i_77_n_0),
        .O(text_ascii_carry_i_34_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_35
       (.I0(text_ascii_carry_i_78_n_0),
        .I1(text_ascii_carry_i_79_n_0),
        .O(text_ascii_carry_i_35_n_0),
        .S(text_index[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_4
       (.I0(text_ascii_carry_i_23_n_0),
        .I1(text_ascii_carry_i_24_n_0),
        .I2(text_index[8]),
        .I3(text_ascii_carry_i_25_n_0),
        .I4(text_index[7]),
        .I5(text_ascii_carry_i_26_n_0),
        .O(text_ascii0[0]));
  MUXF7 text_ascii_carry_i_40
       (.I0(text_ascii_carry_i_80_n_0),
        .I1(text_ascii_carry_i_81_n_0),
        .O(text_ascii_carry_i_40_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_41
       (.I0(text_ascii_carry_i_82_n_0),
        .I1(text_ascii_carry_i_83_n_0),
        .O(text_ascii_carry_i_41_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_42
       (.I0(text_ascii_carry_i_84_n_0),
        .I1(text_ascii_carry_i_85_n_0),
        .O(text_ascii_carry_i_42_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_43
       (.I0(text_ascii_carry_i_86_n_0),
        .I1(text_ascii_carry_i_87_n_0),
        .O(text_ascii_carry_i_43_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_44
       (.I0(text_ascii_carry_i_88_n_0),
        .I1(text_ascii_carry_i_89_n_0),
        .O(text_ascii_carry_i_44_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_45
       (.I0(text_ascii_carry_i_90_n_0),
        .I1(text_ascii_carry_i_91_n_0),
        .O(text_ascii_carry_i_45_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_46
       (.I0(text_ascii_carry_i_92_n_0),
        .I1(text_ascii_carry_i_93_n_0),
        .O(text_ascii_carry_i_46_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_47
       (.I0(text_ascii_carry_i_94_n_0),
        .I1(text_ascii_carry_i_95_n_0),
        .O(text_ascii_carry_i_47_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_48
       (.I0(text_ascii_carry_i_96_n_0),
        .I1(text_ascii_carry_i_97_n_0),
        .O(text_ascii_carry_i_48_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_49
       (.I0(text_ascii_carry_i_98_n_0),
        .I1(text_ascii_carry_i_99_n_0),
        .O(text_ascii_carry_i_49_n_0),
        .S(text_index[5]));
  LUT2 #(
    .INIT(4'h9)) 
    text_ascii_carry_i_5
       (.I0(text_ascii0[3]),
        .I1(C[3]),
        .O(text_ascii_carry_i_5_n_0));
  MUXF7 text_ascii_carry_i_50
       (.I0(text_ascii_carry_i_100_n_0),
        .I1(text_ascii_carry_i_101_n_0),
        .O(text_ascii_carry_i_50_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_51
       (.I0(text_ascii_carry_i_102_n_0),
        .I1(text_ascii_carry_i_103_n_0),
        .O(text_ascii_carry_i_51_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_52
       (.I0(text_ascii_carry_i_104_n_0),
        .I1(text_ascii_carry_i_105_n_0),
        .O(text_ascii_carry_i_52_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_53
       (.I0(text_ascii_carry_i_106_n_0),
        .I1(text_ascii_carry_i_107_n_0),
        .O(text_ascii_carry_i_53_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_54
       (.I0(text_ascii_carry_i_108_n_0),
        .I1(text_ascii_carry_i_109_n_0),
        .O(text_ascii_carry_i_54_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_55
       (.I0(text_ascii_carry_i_110_n_0),
        .I1(text_ascii_carry_i_111_n_0),
        .O(text_ascii_carry_i_55_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_56
       (.I0(text_ascii_carry_i_112_n_0),
        .I1(text_ascii_carry_i_113_n_0),
        .O(text_ascii_carry_i_56_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_57
       (.I0(text_ascii_carry_i_114_n_0),
        .I1(text_ascii_carry_i_115_n_0),
        .O(text_ascii_carry_i_57_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_58
       (.I0(text_ascii_carry_i_116_n_0),
        .I1(text_ascii_carry_i_117_n_0),
        .O(text_ascii_carry_i_58_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_59
       (.I0(text_ascii_carry_i_118_n_0),
        .I1(text_ascii_carry_i_119_n_0),
        .O(text_ascii_carry_i_59_n_0),
        .S(text_index[5]));
  LUT2 #(
    .INIT(4'h6)) 
    text_ascii_carry_i_6
       (.I0(text_ascii0[2]),
        .I1(g0_b0_i_4_0),
        .O(text_ascii_carry_i_6_n_0));
  MUXF7 text_ascii_carry_i_60
       (.I0(text_ascii_carry_i_120_n_0),
        .I1(text_ascii_carry_i_121_n_0),
        .O(text_ascii_carry_i_60_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_61
       (.I0(text_ascii_carry_i_122_n_0),
        .I1(text_ascii_carry_i_123_n_0),
        .O(text_ascii_carry_i_61_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_62
       (.I0(text_ascii_carry_i_124_n_0),
        .I1(text_ascii_carry_i_125_n_0),
        .O(text_ascii_carry_i_62_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_63
       (.I0(text_ascii_carry_i_126_n_0),
        .I1(text_ascii_carry_i_127_n_0),
        .O(text_ascii_carry_i_63_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_64
       (.I0(text_ascii_carry_i_128_n_0),
        .I1(text_ascii_carry_i_129_n_0),
        .O(text_ascii_carry_i_64_n_0),
        .S(text_index[5]));
  MUXF7 text_ascii_carry_i_65
       (.I0(text_ascii_carry_i_130_n_0),
        .I1(text_ascii_carry_i_131_n_0),
        .O(text_ascii_carry_i_65_n_0),
        .S(text_index[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_67
       (.I0(display_data_reg_3264_3327_3_5_n_0),
        .I1(display_data_reg_3200_3263_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_3_5_n_0),
        .O(text_ascii_carry_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_68
       (.I0(display_data_reg_3520_3583_3_5_n_0),
        .I1(display_data_reg_3456_3519_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_3_5_n_0),
        .O(text_ascii_carry_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_69
       (.I0(display_data_reg_3776_3839_3_5_n_0),
        .I1(display_data_reg_3712_3775_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_3_5_n_0),
        .O(text_ascii_carry_i_69_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    text_ascii_carry_i_7
       (.I0(text_ascii0[1]),
        .I1(C[2]),
        .O(text_ascii_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_70
       (.I0(display_data_reg_4032_4095_3_5_n_0),
        .I1(display_data_reg_3968_4031_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_3_5_n_0),
        .O(text_ascii_carry_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_71
       (.I0(display_data_reg_2240_2303_3_5_n_0),
        .I1(display_data_reg_2176_2239_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_3_5_n_0),
        .O(text_ascii_carry_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_72
       (.I0(display_data_reg_2496_2559_3_5_n_0),
        .I1(display_data_reg_2432_2495_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_3_5_n_0),
        .O(text_ascii_carry_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_73
       (.I0(display_data_reg_2752_2815_3_5_n_0),
        .I1(display_data_reg_2688_2751_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_3_5_n_0),
        .O(text_ascii_carry_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_74
       (.I0(display_data_reg_3008_3071_3_5_n_0),
        .I1(display_data_reg_2944_3007_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_3_5_n_0),
        .O(text_ascii_carry_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_76
       (.I0(display_data_reg_1216_1279_3_5_n_0),
        .I1(display_data_reg_1152_1215_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_3_5_n_0),
        .O(text_ascii_carry_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_77
       (.I0(display_data_reg_1472_1535_3_5_n_0),
        .I1(display_data_reg_1408_1471_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_3_5_n_0),
        .O(text_ascii_carry_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_78
       (.I0(display_data_reg_1728_1791_3_5_n_0),
        .I1(display_data_reg_1664_1727_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_3_5_n_0),
        .O(text_ascii_carry_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_79
       (.I0(display_data_reg_1984_2047_3_5_n_0),
        .I1(display_data_reg_1920_1983_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_3_5_n_0),
        .O(text_ascii_carry_i_79_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    text_ascii_carry_i_8
       (.I0(text_ascii0[0]),
        .I1(C[1]),
        .O(text_ascii_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_80
       (.I0(display_data_reg_192_255_3_5_n_0),
        .I1(display_data_reg_128_191_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_3_5_n_0),
        .O(text_ascii_carry_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_81
       (.I0(display_data_reg_448_511_3_5_n_0),
        .I1(display_data_reg_384_447_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_320_383_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_256_319_3_5_n_0),
        .O(text_ascii_carry_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_82
       (.I0(display_data_reg_704_767_3_5_n_0),
        .I1(display_data_reg_640_703_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_576_639_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_512_575_3_5_n_0),
        .O(text_ascii_carry_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_83
       (.I0(display_data_reg_960_1023_3_5_n_0),
        .I1(display_data_reg_896_959_3_5_n_0),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_3_5_n_0),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_3_5_n_0),
        .O(text_ascii_carry_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_84
       (.I0(display_data_reg_3264_3327_0_2_n_2),
        .I1(display_data_reg_3200_3263_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3136_3199_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3072_3135_0_2_n_2),
        .O(text_ascii_carry_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_85
       (.I0(display_data_reg_3520_3583_0_2_n_2),
        .I1(display_data_reg_3456_3519_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3392_3455_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3328_3391_0_2_n_2),
        .O(text_ascii_carry_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_86
       (.I0(display_data_reg_3776_3839_0_2_n_2),
        .I1(display_data_reg_3712_3775_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3648_3711_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3584_3647_0_2_n_2),
        .O(text_ascii_carry_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_87
       (.I0(display_data_reg_4032_4095_0_2_n_2),
        .I1(display_data_reg_3968_4031_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_3904_3967_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_3840_3903_0_2_n_2),
        .O(text_ascii_carry_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_88
       (.I0(display_data_reg_2240_2303_0_2_n_2),
        .I1(display_data_reg_2176_2239_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2112_2175_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2048_2111_0_2_n_2),
        .O(text_ascii_carry_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_89
       (.I0(display_data_reg_2496_2559_0_2_n_2),
        .I1(display_data_reg_2432_2495_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2368_2431_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2304_2367_0_2_n_2),
        .O(text_ascii_carry_i_89_n_0));
  MUXF8 text_ascii_carry_i_9
       (.I0(text_ascii_carry_i_29_n_0),
        .I1(text_ascii_carry_i_30_n_0),
        .O(text_ascii_carry_i_9_n_0),
        .S(text_index[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_90
       (.I0(display_data_reg_2752_2815_0_2_n_2),
        .I1(display_data_reg_2688_2751_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2624_2687_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2560_2623_0_2_n_2),
        .O(text_ascii_carry_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_91
       (.I0(display_data_reg_3008_3071_0_2_n_2),
        .I1(display_data_reg_2944_3007_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_2880_2943_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_2816_2879_0_2_n_2),
        .O(text_ascii_carry_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_92
       (.I0(display_data_reg_1216_1279_0_2_n_2),
        .I1(display_data_reg_1152_1215_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1088_1151_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1024_1087_0_2_n_2),
        .O(text_ascii_carry_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_93
       (.I0(display_data_reg_1472_1535_0_2_n_2),
        .I1(display_data_reg_1408_1471_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1344_1407_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1280_1343_0_2_n_2),
        .O(text_ascii_carry_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_94
       (.I0(display_data_reg_1728_1791_0_2_n_2),
        .I1(display_data_reg_1664_1727_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1600_1663_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1536_1599_0_2_n_2),
        .O(text_ascii_carry_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_95
       (.I0(display_data_reg_1984_2047_0_2_n_2),
        .I1(display_data_reg_1920_1983_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_1856_1919_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_1792_1855_0_2_n_2),
        .O(text_ascii_carry_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_96
       (.I0(display_data_reg_192_255_0_2_n_2),
        .I1(display_data_reg_128_191_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_64_127_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_0_63_0_2_n_2),
        .O(text_ascii_carry_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_97
       (.I0(display_data_reg_448_511_0_2_n_2),
        .I1(display_data_reg_384_447_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_320_383_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_256_319_0_2_n_2),
        .O(text_ascii_carry_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_98
       (.I0(display_data_reg_704_767_0_2_n_2),
        .I1(display_data_reg_640_703_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_576_639_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_512_575_0_2_n_2),
        .O(text_ascii_carry_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    text_ascii_carry_i_99
       (.I0(display_data_reg_960_1023_0_2_n_2),
        .I1(display_data_reg_896_959_0_2_n_2),
        .I2(text_index[4]),
        .I3(display_data_reg_832_895_0_2_n_2),
        .I4(text_index[3]),
        .I5(display_data_reg_768_831_0_2_n_2),
        .O(text_ascii_carry_i_99_n_0));
  MUXF7 \vga_b[0]_INST_0_i_10 
       (.I0(\vga_b[0]_INST_0_i_28_n_0 ),
        .I1(\vga_b[0]_INST_0_i_2_1 ),
        .O(\vga_b[0]_INST_0_i_10_n_0 ),
        .S(sel[7]));
  MUXF8 \vga_b[0]_INST_0_i_104 
       (.I0(\vga_b[0]_INST_0_i_42 ),
        .I1(\vga_b[0]_INST_0_i_209_n_0 ),
        .O(\vga_b[0]_INST_0_i_209_0 ),
        .S(sel[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \vga_b[0]_INST_0_i_11 
       (.CI(\vga_b[0]_INST_0_i_23_n_0 ),
        .CO(\NLW_vga_b[0]_INST_0_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_vga_b[0]_INST_0_i_11_O_UNCONNECTED [3:1],sel[8]}),
        .S({1'b0,1'b0,1'b0,font_addr0[7]}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_111 
       (.I0(\vga_b[0]_INST_0_i_226_n_0 ),
        .I1(\vga_b[0]_INST_0_i_45_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_45_1 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_45_2 ),
        .O(\vga_b[0]_INST_0_i_111_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_118 
       (.I0(g2_b0_n_0),
        .I1(\vga_b[0]_INST_0_i_54_1 ),
        .O(\vga_b[0]_INST_0_i_118_n_0 ),
        .S(sel[3]));
  MUXF8 \vga_b[0]_INST_0_i_14 
       (.I0(\vga_b[0]_INST_0_i_34_n_0 ),
        .I1(\vga_b[0]_INST_0_i_35_n_0 ),
        .O(\vga_b[0]_INST_0_i_35_0 [1]),
        .S(sel[8]));
  MUXF7 \vga_b[0]_INST_0_i_143 
       (.I0(\vga_b[0]_INST_0_i_70_0 ),
        .I1(g19_b2_n_0),
        .O(\vga_b[0]_INST_0_i_143_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_15 
       (.I0(\vga_b[0]_INST_0_i_36_n_0 ),
        .I1(\vga_b[0]_INST_0_i_4_1 ),
        .O(\vga_b[0]_INST_0_i_15_n_0 ),
        .S(sel[7]));
  MUXF8 \vga_b[0]_INST_0_i_163 
       (.I0(\vga_b[0]_INST_0_i_75 ),
        .I1(\vga_b[0]_INST_0_i_283_n_0 ),
        .O(\vga_b[0]_INST_0_i_283_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_165 
       (.I0(\vga_b[0]_INST_0_i_76_2 ),
        .I1(\vga_b[0]_INST_0_i_287_n_0 ),
        .O(\vga_b[0]_INST_0_i_165_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_166 
       (.I0(\vga_b[0]_INST_0_i_76_1 ),
        .I1(\vga_b[0]_INST_0_i_289_n_0 ),
        .O(\vga_b[0]_INST_0_i_166_n_0 ),
        .S(sel[4]));
  MUXF8 \vga_b[0]_INST_0_i_167 
       (.I0(\vga_b[0]_INST_0_i_76_0 ),
        .I1(\vga_b[0]_INST_0_i_291_n_0 ),
        .O(\vga_b[0]_INST_0_i_167_n_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_168 
       (.I0(\vga_b[0]_INST_0_i_36_0 ),
        .I1(g46_b7_n_0),
        .I2(sel[4]),
        .I3(\vga_b[0]_INST_0_i_36_1 ),
        .I4(sel[3]),
        .I5(g44_b2_n_0),
        .O(\vga_b[0]_INST_0_i_168_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_17 
       (.I0(\vga_b[0]_INST_0_i_40_n_0 ),
        .I1(\vga_b[0]_INST_0_i_4_0 ),
        .O(\vga_b[0]_INST_0_i_17_n_0 ),
        .S(sel[7]));
  MUXF8 \vga_b[0]_INST_0_i_19 
       (.I0(\vga_b[0]_INST_0_i_5 ),
        .I1(\vga_b[0]_INST_0_i_45_n_0 ),
        .O(\vga_b[0]_INST_0_i_35_0 [0]),
        .S(sel[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_2 
       (.I0(\vga_b[0]_INST_0_i_8_n_0 ),
        .I1(\vga_b[0]_INST_0_i_9_n_0 ),
        .I2(Q[0]),
        .I3(\vga_b[0]_INST_0_i_10_n_0 ),
        .I4(sel[8]),
        .I5(\vga_r[3] ),
        .O(\h_count_reg[1] ));
  MUXF7 \vga_b[0]_INST_0_i_209 
       (.I0(g2_b1_n_0),
        .I1(\vga_b[0]_INST_0_i_104_0 ),
        .O(\vga_b[0]_INST_0_i_209_n_0 ),
        .S(sel[3]));
  MUXF8 \vga_b[0]_INST_0_i_226 
       (.I0(\vga_b[0]_INST_0_i_316_n_0 ),
        .I1(\vga_b[0]_INST_0_i_111_0 ),
        .O(\vga_b[0]_INST_0_i_226_n_0 ),
        .S(sel[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \vga_b[0]_INST_0_i_23 
       (.CI(g0_b0_i_4_n_0),
        .CO({\vga_b[0]_INST_0_i_23_n_0 ,\vga_b[0]_INST_0_i_23_n_1 ,\vga_b[0]_INST_0_i_23_n_2 ,\vga_b[0]_INST_0_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,font_addr0[4:3]}),
        .O(sel[7:4]),
        .S({font_addr0[6:5],\vga_b[0]_INST_0_i_49_n_0 ,\vga_b[0]_INST_0_i_50_n_0 }));
  LUT6 #(
    .INIT(64'h3000000000800080)) 
    \vga_b[0]_INST_0_i_24 
       (.I0(g44_b0_n_0),
        .I1(sel[6]),
        .I2(sel[5]),
        .I3(sel[3]),
        .I4(\vga_b[0]_INST_0_i_8_0 ),
        .I5(sel[4]),
        .O(\vga_b[0]_INST_0_i_24_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_241 
       (.I0(\vga_b[0]_INST_0_i_338_n_0 ),
        .I1(\vga_b[0]_INST_0_i_114 ),
        .O(\vga_b[0]_INST_0_i_339 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \vga_b[0]_INST_0_i_26 
       (.I0(\vga_b[0]_INST_0_i_9_1 ),
        .I1(sel[3]),
        .I2(sel[4]),
        .I3(sel[5]),
        .I4(sel[6]),
        .I5(\vga_b[0]_INST_0_i_54_n_0 ),
        .O(\vga_b[0]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \vga_b[0]_INST_0_i_27 
       (.I0(sel[4]),
        .I1(\vga_b[0]_INST_0_i_9_0 ),
        .I2(sel[3]),
        .I3(sel[5]),
        .I4(sel[6]),
        .O(\vga_b[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_28 
       (.I0(\vga_b[0]_INST_0_i_55_n_0 ),
        .I1(\vga_b[0]_INST_0_i_10_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_10_1 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_10_2 ),
        .O(\vga_b[0]_INST_0_i_28_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_283 
       (.I0(g2_b6_n_0),
        .I1(\vga_b[0]_INST_0_i_163_0 ),
        .O(\vga_b[0]_INST_0_i_283_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_287 
       (.I0(g26_b6_n_0),
        .I1(\vga_b[0]_INST_0_i_165_0 ),
        .O(\vga_b[0]_INST_0_i_287_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_289 
       (.I0(g22_b6_n_0),
        .I1(\vga_b[0]_INST_0_i_166_0 ),
        .O(\vga_b[0]_INST_0_i_289_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_291 
       (.I0(g18_b6_n_0),
        .I1(\vga_b[0]_INST_0_i_167_0 ),
        .O(\vga_b[0]_INST_0_i_291_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_316 
       (.I0(g44_b3_n_0),
        .I1(\vga_b[0]_INST_0_i_226_0 ),
        .O(\vga_b[0]_INST_0_i_316_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_338 
       (.I0(\vga_b[0]_INST_0_i_241_0 ),
        .I1(g17_b5_n_0),
        .O(\vga_b[0]_INST_0_i_338_n_0 ),
        .S(sel[3]));
  MUXF7 \vga_b[0]_INST_0_i_34 
       (.I0(\vga_b[0]_INST_0_i_14_0 ),
        .I1(\vga_b[0]_INST_0_i_76_n_0 ),
        .O(\vga_b[0]_INST_0_i_34_n_0 ),
        .S(sel[7]));
  MUXF7 \vga_b[0]_INST_0_i_35 
       (.I0(\vga_b[0]_INST_0_i_77_n_0 ),
        .I1(\vga_b[0]_INST_0_i_14_1 ),
        .O(\vga_b[0]_INST_0_i_35_n_0 ),
        .S(sel[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_36 
       (.I0(\vga_b[0]_INST_0_i_79_n_0 ),
        .I1(\vga_b[0]_INST_0_i_15_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_15_1 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_15_2 ),
        .O(\vga_b[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_4 
       (.I0(\vga_b[0]_INST_0_i_15_n_0 ),
        .I1(\vga_r[3]_0 ),
        .I2(Q[0]),
        .I3(\vga_b[0]_INST_0_i_17_n_0 ),
        .I4(sel[8]),
        .I5(\vga_r[3]_1 ),
        .O(\h_count_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_40 
       (.I0(\vga_b[0]_INST_0_i_95_n_0 ),
        .I1(\vga_b[0]_INST_0_i_17_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_17_1 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_17_2 ),
        .O(\vga_b[0]_INST_0_i_40_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_45 
       (.I0(\vga_b[0]_INST_0_i_111_n_0 ),
        .I1(\vga_b[0]_INST_0_i_19_0 ),
        .O(\vga_b[0]_INST_0_i_45_n_0 ),
        .S(sel[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_b[0]_INST_0_i_49 
       (.I0(font_addr0[4]),
        .I1(C[4]),
        .O(\vga_b[0]_INST_0_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vga_b[0]_INST_0_i_50 
       (.I0(font_addr0[3]),
        .I1(C[3]),
        .O(\vga_b[0]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0F008F8F0F008080)) 
    \vga_b[0]_INST_0_i_54 
       (.I0(g5_b0_n_0),
        .I1(sel[3]),
        .I2(sel[5]),
        .I3(\vga_b[0]_INST_0_i_118_n_0 ),
        .I4(sel[4]),
        .I5(\vga_b[0]_INST_0_i_26_0 ),
        .O(\vga_b[0]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_55 
       (.I0(g47_b1_n_0),
        .I1(\vga_b[0]_INST_0_i_28_0 ),
        .I2(sel[4]),
        .I3(\vga_b[0]_INST_0_i_28_1 ),
        .I4(sel[3]),
        .I5(g44_b2_n_0),
        .O(\vga_b[0]_INST_0_i_55_n_0 ));
  MUXF8 \vga_b[0]_INST_0_i_70 
       (.I0(\vga_b[0]_INST_0_i_31 ),
        .I1(\vga_b[0]_INST_0_i_143_n_0 ),
        .O(\vga_b[0]_INST_0_i_143_0 ),
        .S(sel[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_76 
       (.I0(\vga_b[0]_INST_0_i_34_0 ),
        .I1(\vga_b[0]_INST_0_i_165_n_0 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_166_n_0 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_167_n_0 ),
        .O(\vga_b[0]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_77 
       (.I0(\vga_b[0]_INST_0_i_168_n_0 ),
        .I1(\vga_b[0]_INST_0_i_35_1 ),
        .I2(sel[6]),
        .I3(\vga_b[0]_INST_0_i_35_2 ),
        .I4(sel[5]),
        .I5(\vga_b[0]_INST_0_i_35_3 ),
        .O(\vga_b[0]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_79 
       (.I0(\vga_b[0]_INST_0_i_36_0 ),
        .I1(g46_b7_n_0),
        .I2(sel[4]),
        .I3(\vga_b[0]_INST_0_i_36_1 ),
        .I4(sel[3]),
        .I5(g44_b7_n_0),
        .O(\vga_b[0]_INST_0_i_79_n_0 ));
  MUXF7 \vga_b[0]_INST_0_i_8 
       (.I0(\vga_b[0]_INST_0_i_24_n_0 ),
        .I1(\vga_b[0]_INST_0_i_2_0 ),
        .O(\vga_b[0]_INST_0_i_8_n_0 ),
        .S(sel[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_86 
       (.I0(g51_b7_n_0),
        .I1(\vga_b[0]_INST_0_i_37 ),
        .I2(sel[4]),
        .I3(\vga_b[0]_INST_0_i_37_0 ),
        .I4(sel[3]),
        .I5(\vga_b[0]_INST_0_i_37_1 ),
        .O(g48_b7));
  MUXF7 \vga_b[0]_INST_0_i_9 
       (.I0(\vga_b[0]_INST_0_i_26_n_0 ),
        .I1(\vga_b[0]_INST_0_i_27_n_0 ),
        .O(\vga_b[0]_INST_0_i_9_n_0 ),
        .S(sel[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_INST_0_i_95 
       (.I0(g47_b1_n_0),
        .I1(\vga_b[0]_INST_0_i_28_0 ),
        .I2(sel[4]),
        .I3(\vga_b[0]_INST_0_i_28_1 ),
        .I4(sel[3]),
        .I5(\v_count_reg[0] ),
        .O(\vga_b[0]_INST_0_i_95_n_0 ));
endmodule
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
