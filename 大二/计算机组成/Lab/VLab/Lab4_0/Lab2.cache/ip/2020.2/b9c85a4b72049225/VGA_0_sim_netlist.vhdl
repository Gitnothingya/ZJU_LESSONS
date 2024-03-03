-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 17:08:03 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_0_sim_netlist.vhdl
-- Design      : VGA_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaController is
  port (
    hs : out STD_LOGIC;
    vs : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \v_count_reg[0]_0\ : out STD_LOGIC;
    \h_count_reg[8]_0\ : out STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \v_count_reg[5]_0\ : out STD_LOGIC;
    \v_count_reg[0]_1\ : out STD_LOGIC;
    \v_count_reg[0]_2\ : out STD_LOGIC;
    \v_count_reg[0]_3\ : out STD_LOGIC;
    \v_count_reg[0]_4\ : out STD_LOGIC;
    \v_count_reg[1]_0\ : out STD_LOGIC;
    \v_count_reg[1]_1\ : out STD_LOGIC;
    \v_count_reg[0]_5\ : out STD_LOGIC;
    \v_count_reg[0]_6\ : out STD_LOGIC;
    \v_count_reg[0]_7\ : out STD_LOGIC;
    \v_count_reg[0]_8\ : out STD_LOGIC;
    \v_count_reg[0]_9\ : out STD_LOGIC;
    \v_count_reg[0]_10\ : out STD_LOGIC;
    \v_count_reg[0]_11\ : out STD_LOGIC;
    \v_count_reg[0]_12\ : out STD_LOGIC;
    \v_count_reg[0]_13\ : out STD_LOGIC;
    \C__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v_count_reg[0]_14\ : out STD_LOGIC;
    \v_count_reg[0]_15\ : out STD_LOGIC;
    \v_count_reg[0]_16\ : out STD_LOGIC;
    \v_count_reg[0]_17\ : out STD_LOGIC;
    \v_count_reg[0]_18\ : out STD_LOGIC;
    \v_count_reg[0]_19\ : out STD_LOGIC;
    \v_count_reg[0]_20\ : out STD_LOGIC;
    \v_count_reg[0]_21\ : out STD_LOGIC;
    \v_count_reg[0]_22\ : out STD_LOGIC;
    \v_count_reg[0]_23\ : out STD_LOGIC;
    g1_b0_0 : out STD_LOGIC;
    \vga_b[0]_INST_0_i_53_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_62_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_62_1\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_43_0\ : out STD_LOGIC;
    g1_b1_0 : out STD_LOGIC;
    \vga_b[0]_INST_0_i_201_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_199_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_197_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_31_0\ : out STD_LOGIC;
    g17_b2_0 : out STD_LOGIC;
    \vga_b[0]_INST_0_i_125_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_123_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_121_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_110_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_323_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_321_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_319_0\ : out STD_LOGIC;
    g47_b3_0 : out STD_LOGIC;
    \vga_b[0]_INST_0_i_233_0\ : out STD_LOGIC;
    g19_b5_0 : out STD_LOGIC;
    \vga_b[0]_INST_0_i_163\ : out STD_LOGIC;
    g1_b6_0 : out STD_LOGIC;
    g17_b6_0 : out STD_LOGIC;
    g21_b6_0 : out STD_LOGIC;
    g25_b6_0 : out STD_LOGIC;
    \vga_b[0]_INST_0_i_285_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_297_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_295_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_293_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_86\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_39_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_179_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_177_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_175_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_86_0\ : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 0 to 0 );
    \h_count_reg[2]_0\ : out STD_LOGIC;
    \h_count_reg[3]_0\ : out STD_LOGIC;
    \h_count_reg[5]_0\ : out STD_LOGIC;
    \h_count_reg[4]_0\ : out STD_LOGIC;
    \h_count_reg[5]_1\ : out STD_LOGIC;
    \h_count_reg[8]_1\ : out STD_LOGIC;
    \h_count_reg[8]_2\ : out STD_LOGIC;
    ADDRC : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \h_count_reg[5]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \h_count_reg[5]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \h_count_reg[5]_4\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    text_index : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rst : in STD_LOGIC;
    clk_25m : in STD_LOGIC;
    \vga_r[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \vga_b[0]_INST_0_i_18_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_12_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_46_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_115_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_34\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_15\ : in STD_LOGIC;
    \vga_r[3]_0\ : in STD_LOGIC;
    \vga_r[3]_1\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaController;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaController is
  signal \^c\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^c__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal display_data_reg_0_63_0_2_i_18_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_24_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_5_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_5_n_1 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_5_n_2 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_5_n_3 : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g10_b1_n_0 : STD_LOGIC;
  signal g10_b2_n_0 : STD_LOGIC;
  signal g10_b3_n_0 : STD_LOGIC;
  signal g10_b4_n_0 : STD_LOGIC;
  signal g10_b5_n_0 : STD_LOGIC;
  signal g11_b1_n_0 : STD_LOGIC;
  signal g11_b2_n_0 : STD_LOGIC;
  signal g11_b3_n_0 : STD_LOGIC;
  signal g11_b4_n_0 : STD_LOGIC;
  signal g11_b5_n_0 : STD_LOGIC;
  signal g11_b6_n_0 : STD_LOGIC;
  signal g11_b7_n_0 : STD_LOGIC;
  signal g12_b1_n_0 : STD_LOGIC;
  signal g12_b2_n_0 : STD_LOGIC;
  signal g12_b3_n_0 : STD_LOGIC;
  signal g12_b4_n_0 : STD_LOGIC;
  signal g12_b5_n_0 : STD_LOGIC;
  signal g12_b6_n_0 : STD_LOGIC;
  signal g12_b7_n_0 : STD_LOGIC;
  signal g13_b1_n_0 : STD_LOGIC;
  signal g13_b2_n_0 : STD_LOGIC;
  signal g13_b3_n_0 : STD_LOGIC;
  signal g13_b4_n_0 : STD_LOGIC;
  signal g13_b5_n_0 : STD_LOGIC;
  signal g13_b6_n_0 : STD_LOGIC;
  signal g13_b7_n_0 : STD_LOGIC;
  signal g14_b1_n_0 : STD_LOGIC;
  signal g14_b2_n_0 : STD_LOGIC;
  signal g14_b3_n_0 : STD_LOGIC;
  signal g14_b4_n_0 : STD_LOGIC;
  signal g14_b5_n_0 : STD_LOGIC;
  signal g14_b6_n_0 : STD_LOGIC;
  signal g14_b7_n_0 : STD_LOGIC;
  signal g15_b1_n_0 : STD_LOGIC;
  signal g15_b2_n_0 : STD_LOGIC;
  signal g15_b3_n_0 : STD_LOGIC;
  signal g15_b4_n_0 : STD_LOGIC;
  signal g15_b5_n_0 : STD_LOGIC;
  signal g15_b6_n_0 : STD_LOGIC;
  signal g15_b7_n_0 : STD_LOGIC;
  signal g16_b1_n_0 : STD_LOGIC;
  signal g16_b2_n_0 : STD_LOGIC;
  signal g16_b3_n_0 : STD_LOGIC;
  signal g16_b4_n_0 : STD_LOGIC;
  signal g16_b6_n_0 : STD_LOGIC;
  signal g16_b7_n_0 : STD_LOGIC;
  signal g17_b1_n_0 : STD_LOGIC;
  signal g17_b2_n_0 : STD_LOGIC;
  signal g17_b3_n_0 : STD_LOGIC;
  signal g17_b4_n_0 : STD_LOGIC;
  signal g17_b6_n_0 : STD_LOGIC;
  signal g17_b7_n_0 : STD_LOGIC;
  signal g18_b1_n_0 : STD_LOGIC;
  signal g18_b3_n_0 : STD_LOGIC;
  signal g18_b4_n_0 : STD_LOGIC;
  signal g18_b5_n_0 : STD_LOGIC;
  signal g18_b7_n_0 : STD_LOGIC;
  signal g19_b1_n_0 : STD_LOGIC;
  signal g19_b3_n_0 : STD_LOGIC;
  signal g19_b4_n_0 : STD_LOGIC;
  signal g19_b5_n_0 : STD_LOGIC;
  signal g19_b7_n_0 : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal g1_b4_n_0 : STD_LOGIC;
  signal g1_b5_n_0 : STD_LOGIC;
  signal g1_b6_n_0 : STD_LOGIC;
  signal g1_b7_n_0 : STD_LOGIC;
  signal g20_b1_n_0 : STD_LOGIC;
  signal g20_b2_n_0 : STD_LOGIC;
  signal g20_b3_n_0 : STD_LOGIC;
  signal g20_b4_n_0 : STD_LOGIC;
  signal g20_b5_n_0 : STD_LOGIC;
  signal g20_b6_n_0 : STD_LOGIC;
  signal g20_b7_n_0 : STD_LOGIC;
  signal g21_b1_n_0 : STD_LOGIC;
  signal g21_b2_n_0 : STD_LOGIC;
  signal g21_b3_n_0 : STD_LOGIC;
  signal g21_b4_n_0 : STD_LOGIC;
  signal g21_b5_n_0 : STD_LOGIC;
  signal g21_b6_n_0 : STD_LOGIC;
  signal g21_b7_n_0 : STD_LOGIC;
  signal g22_b1_n_0 : STD_LOGIC;
  signal g22_b2_n_0 : STD_LOGIC;
  signal g22_b3_n_0 : STD_LOGIC;
  signal g22_b4_n_0 : STD_LOGIC;
  signal g22_b5_n_0 : STD_LOGIC;
  signal g22_b7_n_0 : STD_LOGIC;
  signal g23_b1_n_0 : STD_LOGIC;
  signal g23_b2_n_0 : STD_LOGIC;
  signal g23_b3_n_0 : STD_LOGIC;
  signal g23_b4_n_0 : STD_LOGIC;
  signal g23_b5_n_0 : STD_LOGIC;
  signal g23_b7_n_0 : STD_LOGIC;
  signal g24_b1_n_0 : STD_LOGIC;
  signal g24_b2_n_0 : STD_LOGIC;
  signal g24_b3_n_0 : STD_LOGIC;
  signal g24_b4_n_0 : STD_LOGIC;
  signal g24_b5_n_0 : STD_LOGIC;
  signal g24_b6_n_0 : STD_LOGIC;
  signal g24_b7_n_0 : STD_LOGIC;
  signal g25_b1_n_0 : STD_LOGIC;
  signal g25_b2_n_0 : STD_LOGIC;
  signal g25_b3_n_0 : STD_LOGIC;
  signal g25_b4_n_0 : STD_LOGIC;
  signal g25_b5_n_0 : STD_LOGIC;
  signal g25_b6_n_0 : STD_LOGIC;
  signal g25_b7_n_0 : STD_LOGIC;
  signal g26_b1_n_0 : STD_LOGIC;
  signal g26_b2_n_0 : STD_LOGIC;
  signal g26_b3_n_0 : STD_LOGIC;
  signal g26_b4_n_0 : STD_LOGIC;
  signal g26_b5_n_0 : STD_LOGIC;
  signal g26_b7_n_0 : STD_LOGIC;
  signal g27_b1_n_0 : STD_LOGIC;
  signal g27_b2_n_0 : STD_LOGIC;
  signal g27_b3_n_0 : STD_LOGIC;
  signal g27_b4_n_0 : STD_LOGIC;
  signal g27_b5_n_0 : STD_LOGIC;
  signal g27_b7_n_0 : STD_LOGIC;
  signal g28_b1_n_0 : STD_LOGIC;
  signal g28_b2_n_0 : STD_LOGIC;
  signal g28_b3_n_0 : STD_LOGIC;
  signal g28_b4_n_0 : STD_LOGIC;
  signal g28_b5_n_0 : STD_LOGIC;
  signal g28_b6_n_0 : STD_LOGIC;
  signal g28_b7_n_0 : STD_LOGIC;
  signal g29_b1_n_0 : STD_LOGIC;
  signal g29_b2_n_0 : STD_LOGIC;
  signal g29_b3_n_0 : STD_LOGIC;
  signal g29_b4_n_0 : STD_LOGIC;
  signal g29_b5_n_0 : STD_LOGIC;
  signal g29_b6_n_0 : STD_LOGIC;
  signal g29_b7_n_0 : STD_LOGIC;
  signal g2_b2_n_0 : STD_LOGIC;
  signal g2_b3_n_0 : STD_LOGIC;
  signal g2_b4_n_0 : STD_LOGIC;
  signal g2_b5_n_0 : STD_LOGIC;
  signal g2_b7_n_0 : STD_LOGIC;
  signal g30_b1_n_0 : STD_LOGIC;
  signal g30_b2_n_0 : STD_LOGIC;
  signal g30_b3_n_0 : STD_LOGIC;
  signal g30_b4_n_0 : STD_LOGIC;
  signal g30_b5_n_0 : STD_LOGIC;
  signal g30_b6_n_0 : STD_LOGIC;
  signal g30_b7_n_0 : STD_LOGIC;
  signal g31_b1_n_0 : STD_LOGIC;
  signal g31_b2_n_0 : STD_LOGIC;
  signal g31_b3_n_0 : STD_LOGIC;
  signal g31_b4_n_0 : STD_LOGIC;
  signal g31_b5_n_0 : STD_LOGIC;
  signal g31_b6_n_0 : STD_LOGIC;
  signal g31_b7_n_0 : STD_LOGIC;
  signal g32_b1_n_0 : STD_LOGIC;
  signal g32_b2_n_0 : STD_LOGIC;
  signal g32_b3_n_0 : STD_LOGIC;
  signal g32_b4_n_0 : STD_LOGIC;
  signal g32_b5_n_0 : STD_LOGIC;
  signal g32_b6_i_1_n_0 : STD_LOGIC;
  signal g32_b6_n_0 : STD_LOGIC;
  signal g32_b7_n_0 : STD_LOGIC;
  signal g33_b1_n_0 : STD_LOGIC;
  signal g33_b2_n_0 : STD_LOGIC;
  signal g33_b3_n_0 : STD_LOGIC;
  signal g33_b4_n_0 : STD_LOGIC;
  signal g33_b5_n_0 : STD_LOGIC;
  signal g33_b6_n_0 : STD_LOGIC;
  signal g33_b7_n_0 : STD_LOGIC;
  signal g34_b1_n_0 : STD_LOGIC;
  signal g34_b2_n_0 : STD_LOGIC;
  signal g34_b3_n_0 : STD_LOGIC;
  signal g34_b4_n_0 : STD_LOGIC;
  signal g34_b5_n_0 : STD_LOGIC;
  signal g34_b6_n_0 : STD_LOGIC;
  signal g34_b7_n_0 : STD_LOGIC;
  signal g35_b1_n_0 : STD_LOGIC;
  signal g35_b2_n_0 : STD_LOGIC;
  signal g35_b3_n_0 : STD_LOGIC;
  signal g35_b4_n_0 : STD_LOGIC;
  signal g35_b5_n_0 : STD_LOGIC;
  signal g35_b6_n_0 : STD_LOGIC;
  signal g35_b7_n_0 : STD_LOGIC;
  signal g36_b1_n_0 : STD_LOGIC;
  signal g36_b2_n_0 : STD_LOGIC;
  signal g36_b3_n_0 : STD_LOGIC;
  signal g36_b4_n_0 : STD_LOGIC;
  signal g36_b5_n_0 : STD_LOGIC;
  signal g36_b6_n_0 : STD_LOGIC;
  signal g36_b7_n_0 : STD_LOGIC;
  signal g37_b1_n_0 : STD_LOGIC;
  signal g37_b2_n_0 : STD_LOGIC;
  signal g37_b3_n_0 : STD_LOGIC;
  signal g37_b4_n_0 : STD_LOGIC;
  signal g37_b5_n_0 : STD_LOGIC;
  signal g37_b6_n_0 : STD_LOGIC;
  signal g37_b7_n_0 : STD_LOGIC;
  signal g38_b1_n_0 : STD_LOGIC;
  signal g38_b2_n_0 : STD_LOGIC;
  signal g38_b3_n_0 : STD_LOGIC;
  signal g38_b4_n_0 : STD_LOGIC;
  signal g38_b5_n_0 : STD_LOGIC;
  signal g38_b6_n_0 : STD_LOGIC;
  signal g38_b7_n_0 : STD_LOGIC;
  signal g39_b1_n_0 : STD_LOGIC;
  signal g39_b2_n_0 : STD_LOGIC;
  signal g39_b3_n_0 : STD_LOGIC;
  signal g39_b4_n_0 : STD_LOGIC;
  signal g39_b5_n_0 : STD_LOGIC;
  signal g39_b6_n_0 : STD_LOGIC;
  signal g39_b7_n_0 : STD_LOGIC;
  signal g3_b2_n_0 : STD_LOGIC;
  signal g3_b3_n_0 : STD_LOGIC;
  signal g3_b4_n_0 : STD_LOGIC;
  signal g3_b5_n_0 : STD_LOGIC;
  signal g3_b7_n_0 : STD_LOGIC;
  signal g40_b1_n_0 : STD_LOGIC;
  signal g40_b2_n_0 : STD_LOGIC;
  signal g40_b3_n_0 : STD_LOGIC;
  signal g40_b4_n_0 : STD_LOGIC;
  signal g40_b5_n_0 : STD_LOGIC;
  signal g40_b6_n_0 : STD_LOGIC;
  signal g40_b7_n_0 : STD_LOGIC;
  signal g41_b1_n_0 : STD_LOGIC;
  signal g41_b2_n_0 : STD_LOGIC;
  signal g41_b3_n_0 : STD_LOGIC;
  signal g41_b4_n_0 : STD_LOGIC;
  signal g41_b5_n_0 : STD_LOGIC;
  signal g41_b6_n_0 : STD_LOGIC;
  signal g41_b7_n_0 : STD_LOGIC;
  signal g42_b1_n_0 : STD_LOGIC;
  signal g42_b2_n_0 : STD_LOGIC;
  signal g42_b3_n_0 : STD_LOGIC;
  signal g42_b4_n_0 : STD_LOGIC;
  signal g42_b5_n_0 : STD_LOGIC;
  signal g42_b6_n_0 : STD_LOGIC;
  signal g42_b7_n_0 : STD_LOGIC;
  signal g43_b1_n_0 : STD_LOGIC;
  signal g43_b2_n_0 : STD_LOGIC;
  signal g43_b3_n_0 : STD_LOGIC;
  signal g43_b4_n_0 : STD_LOGIC;
  signal g43_b5_n_0 : STD_LOGIC;
  signal g43_b6_n_0 : STD_LOGIC;
  signal g43_b7_n_0 : STD_LOGIC;
  signal g44_b4_n_0 : STD_LOGIC;
  signal g45_b4_n_0 : STD_LOGIC;
  signal g45_b5_n_0 : STD_LOGIC;
  signal g46_b3_n_0 : STD_LOGIC;
  signal g46_b4_n_0 : STD_LOGIC;
  signal g46_b5_n_0 : STD_LOGIC;
  signal g47_b3_n_0 : STD_LOGIC;
  signal g47_b4_n_0 : STD_LOGIC;
  signal g47_b5_n_0 : STD_LOGIC;
  signal g48_b0_n_0 : STD_LOGIC;
  signal g48_b3_n_0 : STD_LOGIC;
  signal g49_b0_n_0 : STD_LOGIC;
  signal g49_b1_n_0 : STD_LOGIC;
  signal g49_b3_n_0 : STD_LOGIC;
  signal g49_b4_n_0 : STD_LOGIC;
  signal g49_b5_n_0 : STD_LOGIC;
  signal g4_b1_n_0 : STD_LOGIC;
  signal g4_b2_n_0 : STD_LOGIC;
  signal g4_b3_n_0 : STD_LOGIC;
  signal g4_b4_n_0 : STD_LOGIC;
  signal g4_b5_n_0 : STD_LOGIC;
  signal g4_b6_n_0 : STD_LOGIC;
  signal g4_b7_n_0 : STD_LOGIC;
  signal g50_b0_n_0 : STD_LOGIC;
  signal g50_b1_n_0 : STD_LOGIC;
  signal g50_b3_n_0 : STD_LOGIC;
  signal g50_b4_n_0 : STD_LOGIC;
  signal g51_b1_n_0 : STD_LOGIC;
  signal g51_b3_n_0 : STD_LOGIC;
  signal g51_b4_n_0 : STD_LOGIC;
  signal g51_b5_n_0 : STD_LOGIC;
  signal g52_b1_n_0 : STD_LOGIC;
  signal g52_b3_n_0 : STD_LOGIC;
  signal g52_b4_n_0 : STD_LOGIC;
  signal g52_b7_n_0 : STD_LOGIC;
  signal g53_b0_n_0 : STD_LOGIC;
  signal g53_b1_n_0 : STD_LOGIC;
  signal g53_b3_n_0 : STD_LOGIC;
  signal g53_b4_n_0 : STD_LOGIC;
  signal g53_b5_n_0 : STD_LOGIC;
  signal g53_b7_n_0 : STD_LOGIC;
  signal g54_b0_n_0 : STD_LOGIC;
  signal g54_b3_n_0 : STD_LOGIC;
  signal g54_b7_n_0 : STD_LOGIC;
  signal g55_b0_n_0 : STD_LOGIC;
  signal g55_b7_n_0 : STD_LOGIC;
  signal g56_b1_n_0 : STD_LOGIC;
  signal g56_b2_n_0 : STD_LOGIC;
  signal g56_b3_n_0 : STD_LOGIC;
  signal g56_b4_n_0 : STD_LOGIC;
  signal g56_b5_n_0 : STD_LOGIC;
  signal g56_b6_n_0 : STD_LOGIC;
  signal g56_b7_n_0 : STD_LOGIC;
  signal g57_b1_n_0 : STD_LOGIC;
  signal g57_b2_n_0 : STD_LOGIC;
  signal g57_b3_n_0 : STD_LOGIC;
  signal g57_b4_n_0 : STD_LOGIC;
  signal g57_b5_n_0 : STD_LOGIC;
  signal g57_b6_n_0 : STD_LOGIC;
  signal g57_b7_n_0 : STD_LOGIC;
  signal g58_b1_n_0 : STD_LOGIC;
  signal g58_b2_n_0 : STD_LOGIC;
  signal g58_b3_n_0 : STD_LOGIC;
  signal g58_b4_n_0 : STD_LOGIC;
  signal g58_b5_n_0 : STD_LOGIC;
  signal g58_b6_n_0 : STD_LOGIC;
  signal g58_b7_n_0 : STD_LOGIC;
  signal g59_b0_n_0 : STD_LOGIC;
  signal g59_b1_n_0 : STD_LOGIC;
  signal g59_b2_n_0 : STD_LOGIC;
  signal g59_b3_n_0 : STD_LOGIC;
  signal g59_b4_n_0 : STD_LOGIC;
  signal g59_b5_n_0 : STD_LOGIC;
  signal g59_b6_n_0 : STD_LOGIC;
  signal g59_b7_n_0 : STD_LOGIC;
  signal g5_b1_n_0 : STD_LOGIC;
  signal g5_b2_n_0 : STD_LOGIC;
  signal g5_b3_n_0 : STD_LOGIC;
  signal g5_b4_n_0 : STD_LOGIC;
  signal g5_b5_n_0 : STD_LOGIC;
  signal g5_b6_n_0 : STD_LOGIC;
  signal g5_b7_n_0 : STD_LOGIC;
  signal g60_b0_n_0 : STD_LOGIC;
  signal g60_b1_n_0 : STD_LOGIC;
  signal g60_b2_n_0 : STD_LOGIC;
  signal g60_b3_n_0 : STD_LOGIC;
  signal g60_b4_n_0 : STD_LOGIC;
  signal g60_b5_n_0 : STD_LOGIC;
  signal g60_b6_n_0 : STD_LOGIC;
  signal g60_b7_n_0 : STD_LOGIC;
  signal g61_b0_n_0 : STD_LOGIC;
  signal g61_b1_n_0 : STD_LOGIC;
  signal g61_b2_n_0 : STD_LOGIC;
  signal g61_b3_n_0 : STD_LOGIC;
  signal g61_b4_n_0 : STD_LOGIC;
  signal g61_b5_n_0 : STD_LOGIC;
  signal g61_b6_n_0 : STD_LOGIC;
  signal g61_b7_n_0 : STD_LOGIC;
  signal g62_b0_n_0 : STD_LOGIC;
  signal g62_b2_n_0 : STD_LOGIC;
  signal g62_b3_n_0 : STD_LOGIC;
  signal g62_b4_n_0 : STD_LOGIC;
  signal g62_b5_n_0 : STD_LOGIC;
  signal g62_b6_n_0 : STD_LOGIC;
  signal g63_b2_n_0 : STD_LOGIC;
  signal g63_b3_n_0 : STD_LOGIC;
  signal g63_b4_n_0 : STD_LOGIC;
  signal g63_b5_n_0 : STD_LOGIC;
  signal g63_b6_n_0 : STD_LOGIC;
  signal g63_b7_n_0 : STD_LOGIC;
  signal g6_b1_n_0 : STD_LOGIC;
  signal g6_b2_n_0 : STD_LOGIC;
  signal g6_b3_n_0 : STD_LOGIC;
  signal g6_b4_n_0 : STD_LOGIC;
  signal g6_b5_n_0 : STD_LOGIC;
  signal g6_b6_n_0 : STD_LOGIC;
  signal g6_b7_n_0 : STD_LOGIC;
  signal g7_b1_n_0 : STD_LOGIC;
  signal g7_b2_n_0 : STD_LOGIC;
  signal g7_b3_n_0 : STD_LOGIC;
  signal g7_b4_n_0 : STD_LOGIC;
  signal g7_b6_n_0 : STD_LOGIC;
  signal g7_b7_n_0 : STD_LOGIC;
  signal g8_b1_n_0 : STD_LOGIC;
  signal g8_b2_n_0 : STD_LOGIC;
  signal g8_b3_n_0 : STD_LOGIC;
  signal g8_b4_n_0 : STD_LOGIC;
  signal g8_b6_n_0 : STD_LOGIC;
  signal g8_b7_n_0 : STD_LOGIC;
  signal g9_b1_n_0 : STD_LOGIC;
  signal g9_b2_n_0 : STD_LOGIC;
  signal g9_b3_n_0 : STD_LOGIC;
  signal g9_b4_n_0 : STD_LOGIC;
  signal g9_b5_n_0 : STD_LOGIC;
  signal g9_b6_n_0 : STD_LOGIC;
  signal g9_b7_n_0 : STD_LOGIC;
  signal h_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \h_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^h_count_reg[4]_0\ : STD_LOGIC;
  signal \^h_count_reg[5]_1\ : STD_LOGIC;
  signal \^h_count_reg[8]_0\ : STD_LOGIC;
  signal \^h_count_reg[8]_1\ : STD_LOGIC;
  signal \h_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[4]\ : STD_LOGIC;
  signal h_sync : STD_LOGIC;
  signal \text_ascii_carry__0_i_44_n_0\ : STD_LOGIC;
  signal text_ascii_carry_i_13_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_13_n_1 : STD_LOGIC;
  signal text_ascii_carry_i_13_n_2 : STD_LOGIC;
  signal text_ascii_carry_i_13_n_3 : STD_LOGIC;
  signal text_ascii_carry_i_37_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_66_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_75_n_0 : STD_LOGIC;
  signal text_index0 : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal v_count : STD_LOGIC;
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \^v_count_reg[0]_0\ : STD_LOGIC;
  signal \^v_count_reg[0]_1\ : STD_LOGIC;
  signal \^v_count_reg[0]_17\ : STD_LOGIC;
  signal \^v_count_reg[0]_19\ : STD_LOGIC;
  signal \^v_count_reg[0]_2\ : STD_LOGIC;
  signal \^v_count_reg[0]_3\ : STD_LOGIC;
  signal \^v_count_reg[0]_4\ : STD_LOGIC;
  signal \^v_count_reg[0]_8\ : STD_LOGIC;
  signal \^v_count_reg[1]_0\ : STD_LOGIC;
  signal \^v_count_reg[1]_1\ : STD_LOGIC;
  signal \^v_count_reg[5]_0\ : STD_LOGIC;
  signal \v_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[9]\ : STD_LOGIC;
  signal v_sync : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_100_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_101_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_102_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_103_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_105_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_106_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_107_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_108_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_109_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_110_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_113_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_114_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_115_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_116_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_117_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_120_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_121_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_122_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_123_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_124_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_125_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_126_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_127_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_128_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_129_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_130_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_131_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_132_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_133_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_134_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_135_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_136_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_137_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_138_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_139_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_140_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_141_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_144_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_145_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_146_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_147_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_148_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_149_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_150_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_151_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_152_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_153_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_154_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_155_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_156_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_157_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_158_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_159_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_160_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_161_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_162_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_172_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_173_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_174_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_175_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_176_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_177_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_178_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_179_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_180_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_181_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_182_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_183_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_184_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_185_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_186_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_187_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_188_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_189_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_190_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_191_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_192_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_193_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_194_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_195_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_196_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_197_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_198_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_199_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_200_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_201_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_202_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_203_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_204_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_205_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_206_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_207_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_210_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_211_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_212_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_213_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_214_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_215_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_216_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_217_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_218_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_219_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_220_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_221_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_222_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_223_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_224_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_225_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_230_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_231_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_232_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_233_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_234_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_235_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_236_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_237_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_238_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_239_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_240_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_242_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_243_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_244_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_245_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_246_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_247_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_248_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_249_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_250_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_251_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_252_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_253_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_254_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_255_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_256_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_257_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_258_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_259_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_260_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_261_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_262_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_263_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_264_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_265_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_266_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_267_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_268_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_269_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_270_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_271_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_272_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_273_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_274_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_275_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_276_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_277_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_278_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_279_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_280_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_281_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_284_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_285_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_292_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_293_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_294_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_295_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_296_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_297_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_298_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_299_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_300_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_301_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_302_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_303_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_304_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_305_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_306_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_307_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_308_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_309_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_310_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_311_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_312_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_313_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_314_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_315_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_318_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_319_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_320_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_321_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_322_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_323_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_324_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_325_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_326_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_327_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_328_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_329_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_330_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_331_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_332_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_333_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_334_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_335_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_336_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_337_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_340_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_341_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_342_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_343_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_344_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_345_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_346_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_347_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_348_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_349_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_83_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_84_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_85_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_87_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_88_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_89_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_90_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_91_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_92_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_93_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_94_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_99_n_0\ : STD_LOGIC;
  signal \vga_display/font_data\ : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal vs_i_2_n_0 : STD_LOGIC;
  signal NLW_text_ascii_carry_i_11_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_text_ascii_carry_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_25 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_42 : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of display_data_reg_0_63_0_2_i_5 : label is 35;
  attribute SOFT_HLUTNM of g47_b7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g48_b0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g49_b7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g50_b0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g50_b1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g50_b3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g51_b1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g53_b0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_count[9]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \text_ascii_carry__0_i_19\ : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD of text_ascii_carry_i_11 : label is 35;
  attribute ADDER_THRESHOLD of text_ascii_carry_i_13 : label is 35;
  attribute SOFT_HLUTNM of text_ascii_carry_i_66 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[9]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vga_b[0]_INST_0_i_21\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vga_b[0]_INST_0_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vga_b[0]_INST_0_i_48\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vga_b[0]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vs_i_2 : label is "soft_lutpair12";
begin
  C(4 downto 0) <= \^c\(4 downto 0);
  \C__0\(0) <= \^c__0\(0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  \h_count_reg[4]_0\ <= \^h_count_reg[4]_0\;
  \h_count_reg[5]_1\ <= \^h_count_reg[5]_1\;
  \h_count_reg[8]_0\ <= \^h_count_reg[8]_0\;
  \h_count_reg[8]_1\ <= \^h_count_reg[8]_1\;
  \v_count_reg[0]_0\ <= \^v_count_reg[0]_0\;
  \v_count_reg[0]_1\ <= \^v_count_reg[0]_1\;
  \v_count_reg[0]_17\ <= \^v_count_reg[0]_17\;
  \v_count_reg[0]_19\ <= \^v_count_reg[0]_19\;
  \v_count_reg[0]_2\ <= \^v_count_reg[0]_2\;
  \v_count_reg[0]_3\ <= \^v_count_reg[0]_3\;
  \v_count_reg[0]_4\ <= \^v_count_reg[0]_4\;
  \v_count_reg[0]_8\ <= \^v_count_reg[0]_8\;
  \v_count_reg[1]_0\ <= \^v_count_reg[1]_0\;
  \v_count_reg[1]_1\ <= \^v_count_reg[1]_1\;
  \v_count_reg[5]_0\ <= \^v_count_reg[5]_0\;
display_data_reg_0_63_0_2_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^c\(1),
      I1 => \^v_count_reg[5]_0\,
      O => display_data_reg_0_63_0_2_i_18_n_0
    );
display_data_reg_0_63_0_2_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAA8"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[4]\,
      I2 => \v_count_reg_n_0_[3]\,
      I3 => \v_count_reg_n_0_[2]\,
      I4 => \v_count[6]_i_2_n_0\,
      I5 => \v_count_reg_n_0_[5]\,
      O => \^c\(2)
    );
display_data_reg_0_63_0_2_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA88800000222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[3]\,
      I2 => \v_count_reg_n_0_[1]\,
      I3 => \v_count_reg_n_0_[0]\,
      I4 => \v_count_reg_n_0_[2]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => \^c\(1)
    );
display_data_reg_0_63_0_2_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \^q\(1),
      I2 => \^h_count_reg[4]_0\,
      I3 => \^q\(2),
      O => display_data_reg_0_63_0_2_i_24_n_0
    );
display_data_reg_0_63_0_2_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA888"
    )
        port map (
      I0 => \h_count_reg_n_0_[4]\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => \^h_count_reg[4]_0\
    );
display_data_reg_0_63_0_2_i_42: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^h_count_reg[4]_0\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \h_count_reg[8]_2\
    );
display_data_reg_0_63_0_2_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => display_data_reg_0_63_0_2_i_5_n_0,
      CO(2) => display_data_reg_0_63_0_2_i_5_n_1,
      CO(1) => display_data_reg_0_63_0_2_i_5_n_2,
      CO(0) => display_data_reg_0_63_0_2_i_5_n_3,
      CYINIT => '0',
      DI(3) => display_data_reg_0_63_0_2_i_18_n_0,
      DI(2 downto 1) => \^c\(2 downto 1),
      DI(0) => '0',
      O(3) => text_index(0),
      O(2 downto 0) => ADDRC(5 downto 3),
      S(3 downto 1) => S(2 downto 0),
      S(0) => display_data_reg_0_63_0_2_i_24_n_0
    );
display_data_reg_0_63_0_2_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \^h_count_reg[4]_0\,
      I2 => \^q\(1),
      O => \h_count_reg[5]_2\(2)
    );
display_data_reg_0_63_0_2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000222AAAAA888"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \h_count_reg_n_0_[2]\,
      I5 => \h_count_reg_n_0_[4]\,
      O => \h_count_reg[5]_2\(1)
    );
display_data_reg_0_63_0_2_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => \h_count_reg[5]_2\(0)
    );
display_data_reg_0_63_3_5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \^h_count_reg[4]_0\,
      I2 => \^q\(1),
      O => \h_count_reg[5]_4\(2)
    );
display_data_reg_0_63_3_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000222AAAAA888"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \h_count_reg_n_0_[2]\,
      I5 => \h_count_reg_n_0_[4]\,
      O => \h_count_reg[5]_4\(1)
    );
display_data_reg_0_63_3_5_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => \h_count_reg[5]_4\(0)
    );
display_data_reg_0_63_6_6_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => \h_count_reg[2]_0\
    );
display_data_reg_0_63_6_6_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000222AAAAA888"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \h_count_reg_n_0_[2]\,
      I5 => \h_count_reg_n_0_[4]\,
      O => \h_count_reg[3]_0\
    );
display_data_reg_0_63_6_6_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \^h_count_reg[4]_0\,
      I2 => \^q\(1),
      O => \h_count_reg[5]_0\
    );
display_data_reg_2048_2111_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \^h_count_reg[4]_0\,
      I2 => \^q\(1),
      O => ADDRC(2)
    );
display_data_reg_2048_2111_0_2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000222AAAAA888"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \h_count_reg_n_0_[2]\,
      I5 => \h_count_reg_n_0_[4]\,
      O => ADDRC(1)
    );
display_data_reg_2048_2111_0_2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => ADDRC(0)
    );
display_data_reg_2048_2111_3_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \^h_count_reg[4]_0\,
      I2 => \^q\(1),
      O => \h_count_reg[5]_3\(2)
    );
display_data_reg_2048_2111_3_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000222AAAAA888"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \h_count_reg_n_0_[2]\,
      I5 => \h_count_reg_n_0_[4]\,
      O => \h_count_reg[5]_3\(1)
    );
display_data_reg_2048_2111_3_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => \h_count_reg[5]_3\(0)
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F807F80000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b0_n_0
    );
g0_b0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[0]\,
      O => \^v_count_reg[0]_3\
    );
g0_b0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \v_count_reg_n_0_[0]\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \^h_count_reg[8]_0\,
      O => \^v_count_reg[0]_0\
    );
g0_b0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[2]\,
      O => \^v_count_reg[1]_0\
    );
g0_b0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[2]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[3]\,
      O => \^c\(0)
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E00FFC08040000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b1_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F00F6C08940000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b2_n_0
    );
g0_b2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[0]\,
      O => \^v_count_reg[0]_2\
    );
g0_b2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \v_count_reg_n_0_[0]\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \^h_count_reg[8]_0\,
      O => \^v_count_reg[0]_4\
    );
g0_b2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[2]\,
      O => \^v_count_reg[1]_1\
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F00E7C09840000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE00E7C09840000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F00F6C08940000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F00FFC08040000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E007F807F80000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g0_b7_n_0
    );
g10_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008002A000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g10_b1_n_0
    );
g10_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008003E003F00804"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g10_b2_n_0
    );
g10_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03E001C007F80C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g10_b3_n_0
    );
g10_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03E001C00C0C07F8"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g10_b4_n_0
    );
g10_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008003E0080403F0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g10_b5_n_0
    );
g10_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \^v_count_reg[0]_8\
    );
g11_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000000800000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b1_n_0
    );
g11_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060000000800000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b2_n_0
    );
g11_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C00C0000800E00"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b3_n_0
    );
g11_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01800C0000801E00"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b4_n_0
    );
g11_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000000801000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b5_n_0
    );
g11_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000000800000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b6_n_0
    );
g11_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00000000800000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g11_b7_n_0
    );
g12_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07B80C18080003F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b1_n_0
    );
g12_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC0C3C080007F8"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b2_n_0
    );
g12_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"084408640FFC0C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b3_n_0
    );
g12_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"084408C40FFC08C4"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b4_n_0
    );
g12_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0844098408180C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b5_n_0
    );
g12_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0F0C081007F8"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b6_n_0
    );
g12_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04080E08000003F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g12_b7_n_0
    );
g13_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003C078007840880"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b1_n_0
    );
g13_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007C0FC00FC40FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b2_n_0
    );
g13_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C4084408440FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b3_n_0
    );
g13_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F84084408440898"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b4_n_0
    );
g13_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F04084C084400B0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b5_n_0
    );
g13_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0FF80C7C00E0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b6_n_0
    );
g13_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C07F0047C00C0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g13_b7_n_0
    );
g14_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003F807B8"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b1_n_0
    );
g14_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000007FC0FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b2_n_0
    );
g14_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"063006300C440844"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b3_n_0
    );
g14_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E30063008440844"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b4_n_0
    );
g14_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000008440844"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b5_n_0
    );
g14_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000087C0FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b6_n_0
    );
g14_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000003807B8"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g14_b7_n_0
    );
g15_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018008001200808"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b1_n_0
    );
g15_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003C01C001200C18"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b2_n_0
    );
g15_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DE4036001200630"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b3_n_0
    );
g15_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DC4063001200360"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b4_n_0
    );
g15_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040C18012001C0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b5_n_0
    );
g15_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001C080801200080"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b6_n_0
    );
g15_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018000000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g15_b7_n_0
    );
g16_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"061807B80FE001F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g16_b1_n_0
    );
g16_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0FFC0FF00BF8"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g16_b2_n_0
    );
g16_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0804084400980BC8"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g16_b3_n_0
    );
g16_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08040844008C0BC8"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g16_b4_n_0
    );
g16_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0FFC00980808"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_9\
    );
g16_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F80FFC0FF00FF8"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g16_b6_n_0
    );
g16_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F008040FE007F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g16_b7_n_0
    );
g17_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F98001C0E1C03F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g17_b1_n_0
    );
g17_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"078C000C0C0C07F8"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g17_b2_n_0
    );
g17_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088400E408E40C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g17_b3_n_0
    );
g17_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0884084408440804"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g17_b4_n_0
    );
g17_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F80FFC0FFC0FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g17_b6_n_0
    );
g17_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F0080408040804"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g17_b7_n_0
    );
g18_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E1C000400000FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g18_b1_n_0
    );
g18_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3C07FC08040FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_10\
    );
g18_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E00FFC0FFC0040"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g18_b3_n_0
    );
g18_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C008040FFC0040"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g18_b4_n_0
    );
g18_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC080008040040"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g18_b5_n_0
    );
g18_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0804070000000FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g18_b7_n_0
    );
g19_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F80FFC0FFC0E00"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g19_b1_n_0
    );
g19_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080400E000380800"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g19_b3_n_0
    );
g19_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0804007000700804"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g19_b4_n_0
    );
g19_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0804003800380FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g19_b5_n_0
    );
g19_b6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \^v_count_reg[0]_0\,
      I1 => \^v_count_reg[1]_0\,
      I2 => sel(0),
      O => \v_count_reg[0]_20\
    );
g19_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F80FFC0FFC0804"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g19_b7_n_0
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C001C00000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b0_n_0
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001E001C00080"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b1_n_0
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"018009F009F001C0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b2_n_0
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03C00FF80E3803E0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b3_n_0
    );
g1_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03C00FF80E3807F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b4_n_0
    );
g1_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"018009F009F003E0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b5_n_0
    );
g1_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001E001C001C0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b6_n_0
    );
g1_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C001C00080"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g1_b7_n_0
    );
g20_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07180F3827F80038"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b1_n_0
    );
g20_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F9C0FFC3FFC007C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b2_n_0
    );
g20_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08C400C43C040044"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b3_n_0
    );
g20_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"084400440E040844"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b4_n_0
    );
g20_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08640FFC08040FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b5_n_0
    );
g20_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E3C0FFC0FFC0FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b6_n_0
    );
g20_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0618080407F80804"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g20_b7_n_0
    );
g21_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FC01FC07FC001C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b1_n_0
    );
g21_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC03FC0FFC080C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b2_n_0
    );
g21_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E00060008000FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b3_n_0
    );
g21_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03C00C0008000FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b4_n_0
    );
g21_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0006000800080C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b5_n_0
    );
g21_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC03FC0FFC001C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b6_n_0
    );
g21_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FC01FC07FC0000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g21_b7_n_0
    );
g22_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E1C003C0C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g22_b1_n_0
    );
g22_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08040C3C087C0F3C"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g22_b2_n_0
    );
g22_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080408640FC003F0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g22_b3_n_0
    );
g22_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC08C40FC001E0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g22_b4_n_0
    );
g22_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC0984087C03F0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g22_b5_n_0
    );
g22_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E1C00000C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g22_b7_n_0
    );
g23_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_11\
    );
g23_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000800000E00"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g23_b1_n_0
    );
g23_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000C0FFC0700"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g23_b2_n_0
    );
g23_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200000060FFC0380"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g23_b3_n_0
    );
g23_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000003080401C0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g23_b4_n_0
    );
g23_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000006080400E0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g23_b5_n_0
    );
g23_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000C00000070"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_12\
    );
g23_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000800000038"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g23_b7_n_0
    );
g24_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440078008000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b1_n_0
    );
g24_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C600FC00FC00000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b2_n_0
    );
g24_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820086007E00004"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b3_n_0
    );
g24_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820082008A00007"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b4_n_0
    );
g24_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08200FFC08A00003"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b5_n_0
    );
g24_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE00FFC0FA00000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b6_n_0
    );
g24_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C0000407000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g24_b7_n_0
    );
g25_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000004C00800"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b1_n_0
    );
g25_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FE000180CE00FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b2_n_0
    );
g25_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FC0000C08A007FC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b3_n_0
    );
g25_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4820084408A00824"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b4_n_0
    );
g25_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48200FFC08A00860"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b5_n_0
    );
g25_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FE00FF80FE00FC0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b6_n_0
    );
g25_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27C0084007C00780"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g25_b7_n_0
    );
g26_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C203FEC00000FC0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g26_b1_n_0
    );
g26_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E607FEC08000FE0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g26_b2_n_0
    );
g26_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03C040200FEC0020"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g26_b3_n_0
    );
g26_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"018040000FEC0040"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g26_b4_n_0
    );
g26_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC700008200FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g26_b5_n_0
    );
g26_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0804000000000804"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g26_b7_n_0
    );
g27_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C00FC00FC00000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g27_b1_n_0
    );
g27_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE00FE00FE00800"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g27_b2_n_0
    );
g27_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820002000600FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g27_b3_n_0
    );
g27_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820002007C00FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g27_b4_n_0
    );
g27_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08200FC000600804"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g27_b5_n_0
    );
g27_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE00FE00FE00000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_13\
    );
g27_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C000200FE00000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g27_b7_n_0
    );
g28_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044000C0402007C0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b1_n_0
    );
g28_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E6000E07FE00FE0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b2_n_0
    );
g28_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B2000207FC00820"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b3_n_0
    );
g28_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0920086048204820"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b4_n_0
    );
g28_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09A00FC008207FC0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b5_n_0
    );
g28_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CE00FE00FE07FE0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b6_n_0
    );
g28_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440082007C04020"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g28_b7_n_0
    );
g29_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E003E008000400"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b1_n_0
    );
g29_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE007E00FE00C20"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b2_n_0
    );
g29_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000C0007E00820"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b3_n_0
    );
g29_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07800C0008000FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b4_n_0
    );
g29_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0007E0080007F8"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b5_n_0
    );
g29_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE003E00FE00020"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b6_n_0
    );
g29_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E0000007E00020"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g29_b7_n_0
    );
g2_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"078CF99F0660FE7F"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g2_b2_n_0
    );
g2_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDCFBDF0420FC3F"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g2_b3_n_0
    );
g2_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0874FBDF0420FC3F"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g2_b4_n_0
    );
g2_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0860F99F0660FE7F"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g2_b5_n_0
    );
g2_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0780FFFF0000FFFF"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g2_b7_n_0
    );
g30_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08040C201FE00820"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b1_n_0
    );
g30_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08040C603FE00C60"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b2_n_0
    );
g30_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBC08E0680007C0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b3_n_0
    );
g30_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F809A048000380"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b4_n_0
    );
g30_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400B20480007C0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b5_n_0
    );
g30_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400E604FE00C60"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b6_n_0
    );
g30_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C6047E00820"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g30_b7_n_0
    );
g31_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0780000400400000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b1_n_0
    );
g31_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C0000C00400000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b2_n_0
    );
g31_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0460000807F80FBC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b3_n_0
    );
g31_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0430000C0FBC0FBC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b4_n_0
    );
g31_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0460000408040000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b5_n_0
    );
g31_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C0000C08040000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b6_n_0
    );
g31_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0780000800000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g31_b7_n_0
    );
g32_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080004C008001318"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b1_n_0
    );
g32_b1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[0]\,
      O => \^v_count_reg[0]_1\
    );
g32_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC80CE20FE43E0C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b2_n_0
    );
g32_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07EC08A607E42C04"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b3_n_0
    );
g32_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A608AC08002404"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b4_n_0
    );
g32_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AC08A80800260C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b5_n_0
    );
g32_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FA80FE00FE423F8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b6_n_0
    );
g32_b6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \v_count_reg_n_0_[0]\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \^h_count_reg[8]_0\,
      O => g32_b6_i_1_n_0
    );
g32_b6_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[2]\,
      O => \^c__0\(0)
    );
g32_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"070007C007E401F0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g32_b7_n_0
    );
g33_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0920080008000800"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b1_n_0
    );
g33_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F300FC40FC00FC4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b2_n_0
    );
g33_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"161007EE07E807E4"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b3_n_0
    );
g33_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"121008AA08AC08A0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b4_n_0
    );
g33_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13F008AE08A608A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b5_n_0
    );
g33_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E00FA40FA20FA4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b6_n_0
    );
g33_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070007000704"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g33_b7_n_0
    );
g34_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000404C004C404C0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b1_n_0
    );
g34_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08040CE00CE40CE8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b2_n_0
    );
g34_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE008A808A008AC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b3_n_0
    );
g34_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE008AC08A008A6"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b4_n_0
    );
g34_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"082408A608A008AC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b5_n_0
    );
g34_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040FE20FE40FE8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b6_n_0
    );
g34_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007C007C407C0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g34_b7_n_0
    );
g35_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FC200000008"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b1_n_0
    );
g35_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE20FE20800080C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b2_n_0
    );
g35_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"013701300FE80FE6"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b3_n_0
    );
g35_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011501180FEC0FE6"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b4_n_0
    );
g35_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"013701300826082C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b5_n_0
    );
g35_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE20FE200020008"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b6_n_0
    );
g35_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FC200000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g35_b7_n_0
    );
g36_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C0084409C00C30"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b1_n_0
    );
g36_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE80FFC09E00CB0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b2_n_0
    );
g36_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"082C0FFC0F200891"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b3_n_0
    );
g36_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0826004407C00893"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b4_n_0
    );
g36_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"082C004C09C00FF6"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b5_n_0
    );
g36_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE80FF80F600FF4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b6_n_0
    );
g36_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C00FF006200810"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g36_b7_n_0
    );
g37_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080007C007C4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b1_n_0
    );
g37_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE00FE80FE00FE4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b2_n_0
    );
g37_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E807EC08280820"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b3_n_0
    );
g37_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080C0806082C0820"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b4_n_0
    );
g37_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0806080608260820"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b5_n_0
    );
g37_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE20FEC0FE20FE4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b6_n_0
    );
g37_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E007E807C007C4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g37_b7_n_0
    );
g38_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011007FA07F21FE4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b1_n_0
    );
g38_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03180FFA0FFA3FE4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b2_n_0
    );
g38_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E080008086800"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b3_n_0
    );
g38_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E080008084800"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b4_n_0
    );
g38_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F8080008084800"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b5_n_0
    );
g38_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F00FFA0FFA4FE4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b6_n_0
    );
g38_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007FA07F207E4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g38_b7_n_0
    );
g39_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_14\
    );
g39_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00460880014C0400"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b1_n_0
    );
g39_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00420FEC015C0C0C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b2_n_0
    );
g39_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFE07DE0FF00806"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b3_n_0
    );
g39_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFC00920FF00822"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b4_n_0
    );
g39_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20400012015C0FFE"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b5_n_0
    );
g39_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30400FFE014C0FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b6_n_0
    );
g39_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000FFE00000C20"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g39_b7_n_0
    );
g3_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A007FC001C0000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_5\
    );
g3_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A00FFC001C0278"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_6\
    );
g3_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C00E14001402FC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g3_b2_n_0
    );
g3_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F78001400140F84"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g3_b3_n_0
    );
g3_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F78001407FC0F84"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g3_b4_n_0
    );
g3_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C00FFC0FFC02FC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g3_b5_n_0
    );
g3_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A01FFC0E000278"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_7\
    );
g3_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A01C000C000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g3_b7_n_0
    );
g40_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080007C000000800"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b1_n_0
    );
g40_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE00FE008020FC0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b2_n_0
    );
g40_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E208220FE607E2"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b3_n_0
    );
g40_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080608260FEC08A6"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b4_n_0
    );
g40_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080C082C082808AC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b5_n_0
    );
g40_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE80FE800000FA8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b6_n_0
    );
g40_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E007C000000700"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g40_b7_n_0
    );
g41_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000500FF90FC4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b1_n_0
    );
g41_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004C005E0FFB0FEC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b2_n_0
    );
g41_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005E005E01C20028"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b3_n_0
    );
g41_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0052005200E3002C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b4_n_0
    );
g41_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005E005E00710FC4"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b5_n_0
    );
g41_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004C004C0FFB0FEC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b6_n_0
    );
g41_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFA0028"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g41_b7_n_0
    );
g42_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"241807C000400600"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b1_n_0
    );
g42_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E3007C000400E00"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b2_n_0
    );
g42_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A60004000400800"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b3_n_0
    );
g42_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32C000400040086C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b4_n_0
    );
g42_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21800040004008EC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b5_n_0
    );
g42_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033E004007C00F80"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b6_n_0
    );
g42_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"063E004007C00700"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g42_b7_n_0
    );
g43_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080022000003F18"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b1_n_0
    );
g43_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C0036007003F30"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b2_n_0
    );
g43_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"036001C00FEC0E60"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b3_n_0
    );
g43_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A002A00FEC0CC0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b4_n_0
    );
g43_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C0036007000980"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b5_n_0
    );
g43_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"036001C00000033E"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b6_n_0
    );
g43_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022000800000063E"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g43_b7_n_0
    );
g44_b4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => sel(2),
      O => g44_b4_n_0
    );
g45_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFF00000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_15\
    );
g45_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000FFFFFFFF"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_16\
    );
g45_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFFFFFFFFFF"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g45_b4_n_0
    );
g45_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFF00A00080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g45_b5_n_0
    );
g45_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000A00080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \^v_count_reg[0]_17\
    );
g46_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFFFF0000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \v_count_reg[0]_18\
    );
g46_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000000000FFE0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g46_b3_n_0
    );
g46_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFFFFFBFFFE0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g46_b4_n_0
    );
g46_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFFFFFBF00A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g46_b5_n_0
    );
g47_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8000FF00800080"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g47_b3_n_0
    );
g47_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8000FF00FF00BF"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g47_b4_n_0
    );
g47_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000A000FF00BF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g47_b5_n_0
    );
g47_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008000A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      O => \v_count_reg[0]_21\
    );
g48_b0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      O => g48_b0_n_0
    );
g48_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8000FF00FF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g48_b3_n_0
    );
g48_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000800000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => \^v_count_reg[0]_19\
    );
g49_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000A000800080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g49_b0_n_0
    );
g49_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A000800080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g49_b1_n_0
    );
g49_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFF0080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g49_b3_n_0
    );
g49_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g49_b4_n_0
    );
g49_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000800080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g49_b5_n_0
    );
g49_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(2),
      O => \v_count_reg[0]_22\
    );
g4_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFC01100FFE0040"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b1_n_0
    );
g4_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFC031807FC0040"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b2_n_0
    );
g4_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007FC03F800E0"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b3_n_0
    );
g4_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007FC01F001F0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b4_n_0
    );
g4_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFC031800E003F8"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b5_n_0
    );
g4_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFC0110004007FC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b6_n_0
    );
g4_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400FFE"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g4_b7_n_0
    );
g50_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^c__0\(0),
      I2 => sel(0),
      O => g50_b0_n_0
    );
g50_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA000BF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      O => g50_b1_n_0
    );
g50_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      O => g50_b3_n_0
    );
g50_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA000BFFFE000FF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g50_b4_n_0
    );
g50_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => \^c__0\(0),
      I2 => sel(0),
      I3 => sel(2),
      O => \v_count_reg[0]_23\
    );
g51_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0FFBF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      O => g51_b1_n_0
    );
g51_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF000000A00000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g51_b3_n_0
    );
g51_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BFFFBF00A0FFFF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g51_b4_n_0
    );
g51_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FFBF00A0FFFF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g51_b5_n_0
    );
g52_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF8000A000FF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g52_b1_n_0
    );
g52_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800080FFA00080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g52_b3_n_0
    );
g52_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF80FFA000FF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g52_b4_n_0
    );
g52_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000A00080"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g52_b7_n_0
    );
g53_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008000A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(2),
      O => g53_b0_n_0
    );
g53_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8000A000A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g53_b1_n_0
    );
g53_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800080FFE000FF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g53_b3_n_0
    );
g53_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF80FFE000FF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g53_b4_n_0
    );
g53_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g53_b5_n_0
    );
g53_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g53_b7_n_0
    );
g54_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0080000000A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g54_b0_n_0
    );
g54_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8000FFFFFF"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g54_b3_n_0
    );
g54_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000008000A0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g54_b7_n_0
    );
g55_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFFFF0000FF80"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g55_b0_n_0
    );
g55_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F0000FFFFFF80"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g55_b7_n_0
    );
g56_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001C07000820"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b1_n_0
    );
g56_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0001C0FB80C60"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b2_n_0
    );
g56_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0000408FC07C0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b3_n_0
    );
g56_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000400440FE0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b4_n_0
    );
g56_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0000400040820"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b5_n_0
    );
g56_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00FFC0FFC0FE0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b6_n_0
    );
g56_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100FFC0FF807C0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g56_b7_n_0
    );
g57_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001001F000200C18"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b1_n_0
    );
g57_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003003F000200C18"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b2_n_0
    );
g57_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0020007E00888"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b3_n_0
    );
g57_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF002000FE009C8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b4_n_0
    );
g57_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100FF008200B68"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b5_n_0
    );
g57_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00301FF00FE00E38"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b6_n_0
    );
g57_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020100007C00C18"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g57_b7_n_0
    );
g58_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C4087003E009C8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b1_n_0
    );
g58_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE40FF807F00BE8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b2_n_0
    );
g58_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08740F8C0C980E38"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b3_n_0
    );
g58_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"085C000408880E38"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b4_n_0
    );
g58_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC80F8C0C980BE8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b5_n_0
    );
g58_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07800FF807F009C8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b6_n_0
    );
g58_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000087003E00000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g58_b7_n_0
    );
g59_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001C801C0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b0_n_0
    );
g59_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0000003F803E0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b1_n_0
    );
g59_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF8084402300220"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b2_n_0
    );
g59_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008084402E003E0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b3_n_0
    );
g59_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080C4C03E003E0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b4_n_0
    );
g59_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000807F807200220"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b5_n_0
    );
g59_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF803F00FE003E0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b6_n_0
    );
g59_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0000009C001C0"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g59_b7_n_0
    );
g5_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09100F0008C40FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b1_n_0
    );
g5_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B180F001DE60004"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b2_n_0
    );
g5_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC0F0017320FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b3_n_0
    );
g5_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFC0F0012120FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b4_n_0
    );
g5_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B180F00133A0044"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b5_n_0
    );
g5_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09100F0019EE007C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b6_n_0
    );
g5_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0008C40038"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g5_b7_n_0
    );
g60_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b0_n_0
    );
g60_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800084008400490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b1_n_0
    );
g60_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0808E008400490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b2_n_0
    );
g60_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B1809B009F00490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b3_n_0
    );
g60_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09B00B1809F00490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b4_n_0
    );
g60_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08E00A0808400490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b5_n_0
    );
g60_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0840080008400490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b6_n_0
    );
g60_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000490"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g60_b7_n_0
    );
g61_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000018"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b0_n_0
    );
g61_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"012000800000001C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b1_n_0
    );
g61_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0360008000000004"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b2_n_0
    );
g61_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"024006B007FFFFFC"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b3_n_0
    );
g61_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"036006B00FFFFFF8"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b4_n_0
    );
g61_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0120008008000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b5_n_0
    );
g61_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"036000800F000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b6_n_0
    );
g61_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0240000007000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g61_b7_n_0
    );
g62_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g62_b0_n_0
    );
g62_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFE00000000000C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g62_b2_n_0
    );
g62_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFE01000180001E"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g62_b3_n_0
    );
g62_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00010001800012"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g62_b4_n_0
    );
g62_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"078000000000001E"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g62_b5_n_0
    );
g62_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"038000000000000C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g62_b6_n_0
    );
g63_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F00000007C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g63_b2_n_0
    );
g63_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F00064007E"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g63_b3_n_0
    );
g63_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F0004E0002"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g63_b4_n_0
    );
g63_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F0005A007C"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g63_b5_n_0
    );
g63_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F00076007E"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g63_b6_n_0
    );
g63_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000640002"
    )
        port map (
      I0 => \^v_count_reg[0]_1\,
      I1 => g32_b6_i_1_n_0,
      I2 => \^c__0\(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g63_b7_n_0
    );
g6_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008002000010"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g6_b1_n_0
    );
g6_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008001C006000018"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g6_b2_n_0
    );
g6_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008003E00FFC0FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g6_b3_n_0
    );
g6_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A00FFC"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(2),
      O => g6_b4_n_0
    );
g6_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03E0008006000018"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g6_b5_n_0
    );
g6_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C0008002000010"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g6_b6_n_0
    );
g6_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(2),
      O => g6_b7_n_0
    );
g7_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030060000800200"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g7_b1_n_0
    );
g7_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0078001C00200"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g7_b2_n_0
    );
g7_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F007E003E00200"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g7_b3_n_0
    );
g7_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F007F000800200"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g7_b4_n_0
    );
g7_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0078001C003C0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g7_b6_n_0
    );
g7_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00300600008003C0"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g7_b7_n_0
    );
g8_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220000E00000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g8_b1_n_0
    );
g8_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF8001E00380000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g8_b2_n_0
    );
g8_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF800000DFC0000"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g8_b3_n_0
    );
g8_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022000000DFC0000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g8_b4_n_0
    );
g8_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF8000E00000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g8_b6_n_0
    );
g8_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220000000000000"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g8_b7_n_0
    );
g9_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008400C300798"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b1_n_0
    );
g9_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FD80C600FCC"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b2_n_0
    );
g9_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007BC00C03847"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b3_n_0
    );
g9_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E08E401803847"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b4_n_0
    );
g9_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001E087C03000844"
    )
        port map (
      I0 => \^v_count_reg[0]_2\,
      I1 => \^v_count_reg[0]_4\,
      I2 => \^v_count_reg[1]_1\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b5_n_0
    );
g9_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100FD806300C7C"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b6_n_0
    );
g9_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007800C300638"
    )
        port map (
      I0 => \^v_count_reg[0]_3\,
      I1 => \^v_count_reg[0]_0\,
      I2 => \^v_count_reg[1]_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => g9_b7_n_0
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      O => h_count(0)
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      I1 => \^q\(0),
      O => h_count(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \h_count_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \h_count_reg_n_0_[0]\,
      O => h_count(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[3]\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      O => h_count(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[4]\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[2]\,
      O => h_count(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EFFFFFFF0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(1),
      I5 => \h_count[9]_i_2_n_0\,
      O => h_count(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \h_count[9]_i_2_n_0\,
      O => h_count(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \h_count[9]_i_2_n_0\,
      O => h_count(7)
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCCCCC4CCCCCCCC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \h_count[9]_i_2_n_0\,
      O => h_count(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \h_count[9]_i_2_n_0\,
      I5 => \^q\(5),
      O => h_count(9)
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \h_count_reg_n_0_[4]\,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \^q\(0),
      I3 => \h_count_reg_n_0_[0]\,
      I4 => \h_count_reg_n_0_[2]\,
      O => \h_count[9]_i_2_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(0),
      Q => \h_count_reg_n_0_[0]\,
      R => rst
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(1),
      Q => \^q\(0),
      R => rst
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(2),
      Q => \h_count_reg_n_0_[2]\,
      R => rst
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(3),
      Q => \h_count_reg_n_0_[3]\,
      R => rst
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(4),
      Q => \h_count_reg_n_0_[4]\,
      R => rst
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(5),
      Q => \^q\(1),
      R => rst
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(6),
      Q => \^q\(2),
      R => rst
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(7),
      Q => \^q\(3),
      R => rst
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(8),
      Q => \^q\(4),
      R => rst
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => '1',
      D => h_count(9),
      Q => \^q\(5),
      R => rst
    );
hs_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(3),
      O => h_sync
    );
hs_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_25m,
      CE => '1',
      D => h_sync,
      Q => hs,
      S => rst
    );
\text_ascii_carry__0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80002"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[7]\,
      I2 => \text_ascii_carry__0_i_44_n_0\,
      I3 => \v_count_reg_n_0_[6]\,
      I4 => \v_count_reg_n_0_[8]\,
      O => \^c\(4)
    );
\text_ascii_carry__0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA80"
    )
        port map (
      I0 => \v_count_reg_n_0_[5]\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[2]\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => \text_ascii_carry__0_i_44_n_0\
    );
text_ascii_carry_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => text_ascii_carry_i_13_n_0,
      CO(3 downto 0) => NLW_text_ascii_carry_i_11_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_text_ascii_carry_i_11_O_UNCONNECTED(3 downto 1),
      O(0) => text_index(5),
      S(3 downto 1) => B"000",
      S(0) => text_index0(11)
    );
text_ascii_carry_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => display_data_reg_0_63_0_2_i_5_n_0,
      CO(3) => text_ascii_carry_i_13_n_0,
      CO(2) => text_ascii_carry_i_13_n_1,
      CO(1) => text_ascii_carry_i_13_n_2,
      CO(0) => text_ascii_carry_i_13_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => text_index(4 downto 1),
      S(3) => text_index0(10),
      S(2) => text_ascii_carry_i_37_n_0,
      S(1 downto 0) => text_index0(8 downto 7)
    );
text_ascii_carry_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A888800202222"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \v_count_reg_n_0_[6]\,
      I2 => text_ascii_carry_i_66_n_0,
      I3 => \v_count[6]_i_2_n_0\,
      I4 => \v_count_reg_n_0_[5]\,
      I5 => \v_count_reg_n_0_[7]\,
      O => \^c\(3)
    );
text_ascii_carry_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F5580AAFFFFFFFF"
    )
        port map (
      I0 => \v_count_reg_n_0_[5]\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => text_ascii_carry_i_66_n_0,
      I4 => \v_count_reg_n_0_[6]\,
      I5 => \^h_count_reg[8]_0\,
      O => \^v_count_reg[5]_0\
    );
text_ascii_carry_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D050D040"
    )
        port map (
      I0 => \^v_count_reg[5]_0\,
      I1 => \^h_count_reg[8]_0\,
      I2 => \^c\(3),
      I3 => \^c\(2),
      I4 => \^c\(1),
      I5 => text_ascii_carry_i_75_n_0,
      O => text_index0(11)
    );
text_ascii_carry_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B3B4440"
    )
        port map (
      I0 => \^v_count_reg[5]_0\,
      I1 => \^c\(3),
      I2 => \^c\(2),
      I3 => \^c\(1),
      I4 => \^c\(4),
      O => text_index0(10)
    );
text_ascii_carry_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F0100F8"
    )
        port map (
      I0 => \^c\(1),
      I1 => \^c\(2),
      I2 => \^c\(4),
      I3 => \^v_count_reg[5]_0\,
      I4 => \^c\(3),
      O => text_ascii_carry_i_37_n_0
    );
text_ascii_carry_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FC0E817"
    )
        port map (
      I0 => \^c\(1),
      I1 => \^c\(2),
      I2 => \^c\(3),
      I3 => \^c\(4),
      I4 => \^v_count_reg[5]_0\,
      O => text_index0(8)
    );
text_ascii_carry_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^v_count_reg[5]_0\,
      I1 => \^c\(1),
      I2 => \^c\(2),
      I3 => \^c\(3),
      O => text_index0(7)
    );
text_ascii_carry_i_66: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \v_count_reg_n_0_[2]\,
      I1 => \v_count_reg_n_0_[3]\,
      I2 => \v_count_reg_n_0_[4]\,
      O => text_ascii_carry_i_66_n_0
    );
text_ascii_carry_i_75: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555656666"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count_reg_n_0_[6]\,
      I2 => text_ascii_carry_i_66_n_0,
      I3 => \v_count[6]_i_2_n_0\,
      I4 => \v_count_reg_n_0_[5]\,
      I5 => \v_count_reg_n_0_[7]\,
      O => text_ascii_carry_i_75_n_0
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45555555"
    )
        port map (
      I0 => \v_count_reg_n_0_[0]\,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[9]\,
      I3 => \v_count[3]_i_2_n_0\,
      I4 => \v_count_reg_n_0_[2]\,
      O => \v_count[0]_i_1_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_count_reg_n_0_[1]\,
      I1 => \v_count_reg_n_0_[0]\,
      O => \v_count[1]_i_1_n_0\
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"686A6A6A"
    )
        port map (
      I0 => \v_count_reg_n_0_[2]\,
      I1 => \v_count_reg_n_0_[0]\,
      I2 => \v_count_reg_n_0_[1]\,
      I3 => \v_count_reg_n_0_[9]\,
      I4 => \v_count[3]_i_2_n_0\,
      O => \v_count[2]_i_1_n_0\
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666AAAAAAAA2AAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[3]\,
      I1 => \v_count_reg_n_0_[2]\,
      I2 => \v_count[3]_i_2_n_0\,
      I3 => \v_count_reg_n_0_[9]\,
      I4 => \v_count_reg_n_0_[1]\,
      I5 => \v_count_reg_n_0_[0]\,
      O => \v_count[3]_i_1_n_0\
    );
\v_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \v_count_reg_n_0_[6]\,
      I1 => \v_count_reg_n_0_[5]\,
      I2 => \v_count_reg_n_0_[8]\,
      I3 => \v_count_reg_n_0_[7]\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => \v_count[3]_i_2_n_0\
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[4]\,
      I1 => \v_count_reg_n_0_[3]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[2]\,
      O => \v_count[4]_i_1_n_0\
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[5]\,
      I1 => \v_count_reg_n_0_[4]\,
      I2 => \v_count_reg_n_0_[2]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[0]\,
      I5 => \v_count_reg_n_0_[3]\,
      O => \v_count[5]_i_1_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[6]\,
      I1 => \v_count_reg_n_0_[5]\,
      I2 => \v_count_reg_n_0_[3]\,
      I3 => \v_count[6]_i_2_n_0\,
      I4 => \v_count_reg_n_0_[2]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => \v_count[6]_i_1_n_0\
    );
\v_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \v_count_reg_n_0_[1]\,
      I1 => \v_count_reg_n_0_[0]\,
      O => \v_count[6]_i_2_n_0\
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \v_count_reg_n_0_[7]\,
      I1 => \v_count_reg_n_0_[6]\,
      I2 => \v_count[8]_i_2_n_0\,
      O => \v_count[7]_i_1_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count_reg_n_0_[7]\,
      I2 => \v_count[8]_i_2_n_0\,
      I3 => \v_count_reg_n_0_[6]\,
      O => \v_count[8]_i_1_n_0\
    );
\v_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \v_count_reg_n_0_[4]\,
      I1 => \v_count_reg_n_0_[2]\,
      I2 => \v_count_reg_n_0_[1]\,
      I3 => \v_count_reg_n_0_[0]\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[5]\,
      O => \v_count[8]_i_2_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \h_count[9]_i_2_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => v_count
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878780878787878"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count[9]_i_3_n_0\,
      I2 => \v_count_reg_n_0_[9]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[0]\,
      I5 => \v_count[9]_i_4_n_0\,
      O => \v_count[9]_i_2_n_0\
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \v_count_reg_n_0_[6]\,
      I1 => \v_count[8]_i_2_n_0\,
      I2 => \v_count_reg_n_0_[7]\,
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \v_count_reg_n_0_[4]\,
      I1 => \v_count_reg_n_0_[3]\,
      I2 => vs_i_2_n_0,
      I3 => \v_count_reg_n_0_[2]\,
      O => \v_count[9]_i_4_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[0]_i_1_n_0\,
      Q => \v_count_reg_n_0_[0]\,
      R => rst
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[1]_i_1_n_0\,
      Q => \v_count_reg_n_0_[1]\,
      R => rst
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[2]_i_1_n_0\,
      Q => \v_count_reg_n_0_[2]\,
      R => rst
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[3]_i_1_n_0\,
      Q => \v_count_reg_n_0_[3]\,
      R => rst
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[4]_i_1_n_0\,
      Q => \v_count_reg_n_0_[4]\,
      R => rst
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[5]_i_1_n_0\,
      Q => \v_count_reg_n_0_[5]\,
      R => rst
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[6]_i_1_n_0\,
      Q => \v_count_reg_n_0_[6]\,
      R => rst
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[7]_i_1_n_0\,
      Q => \v_count_reg_n_0_[7]\,
      R => rst
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[8]_i_1_n_0\,
      Q => \v_count_reg_n_0_[8]\,
      R => rst
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25m,
      CE => v_count,
      D => \v_count[9]_i_2_n_0\,
      Q => \v_count_reg_n_0_[9]\,
      R => rst
    );
\vga_b[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08AA080A080000"
    )
        port map (
      I0 => \^h_count_reg[8]_0\,
      I1 => \vga_r[3]_0\,
      I2 => \h_count_reg_n_0_[2]\,
      I3 => \vga_b[0]_INST_0_i_3_n_0\,
      I4 => \vga_r[3]_1\,
      I5 => \vga_b[0]_INST_0_i_5_n_0\,
      O => vga_r(0)
    );
\vga_b[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^h_count_reg[5]_1\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^h_count_reg[8]_1\,
      O => \^h_count_reg[8]_0\
    );
\vga_b[0]_INST_0_i_100\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_202_n_0\,
      I1 => \vga_b[0]_INST_0_i_203_n_0\,
      O => \vga_b[0]_INST_0_i_100_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_101\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_204_n_0\,
      I1 => \vga_b[0]_INST_0_i_205_n_0\,
      O => \vga_b[0]_INST_0_i_101_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b1_n_0,
      I1 => g10_b1_n_0,
      I2 => sel(4),
      I3 => g9_b1_n_0,
      I4 => sel(3),
      I5 => g8_b1_n_0,
      O => \vga_b[0]_INST_0_i_102_n_0\
    );
\vga_b[0]_INST_0_i_103\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_206_n_0\,
      I1 => \vga_b[0]_INST_0_i_207_n_0\,
      O => \vga_b[0]_INST_0_i_103_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_105\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_210_n_0\,
      I1 => \vga_b[0]_INST_0_i_211_n_0\,
      O => \vga_b[0]_INST_0_i_105_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_106\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_212_n_0\,
      I1 => \vga_b[0]_INST_0_i_213_n_0\,
      O => \vga_b[0]_INST_0_i_106_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_107\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_214_n_0\,
      I1 => \vga_b[0]_INST_0_i_215_n_0\,
      O => \vga_b[0]_INST_0_i_107_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_108\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_216_n_0\,
      I1 => \vga_b[0]_INST_0_i_217_n_0\,
      O => \vga_b[0]_INST_0_i_108_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_109\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_218_n_0\,
      I1 => \vga_b[0]_INST_0_i_219_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_220_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_221_n_0\,
      O => \vga_b[0]_INST_0_i_109_n_0\
    );
\vga_b[0]_INST_0_i_110\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_222_n_0\,
      I1 => \vga_b[0]_INST_0_i_223_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_224_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_225_n_0\,
      O => \vga_b[0]_INST_0_i_110_n_0\
    );
\vga_b[0]_INST_0_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_230_n_0\,
      I1 => \vga_b[0]_INST_0_i_231_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_232_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_233_n_0\,
      O => \vga_b[0]_INST_0_i_233_0\
    );
\vga_b[0]_INST_0_i_113\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_234_n_0\,
      I1 => \vga_b[0]_INST_0_i_235_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_236_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_237_n_0\,
      O => \vga_b[0]_INST_0_i_113_n_0\
    );
\vga_b[0]_INST_0_i_114\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_238_n_0\,
      I1 => \vga_b[0]_INST_0_i_239_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_240_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_46_0\,
      O => \vga_b[0]_INST_0_i_114_n_0\
    );
\vga_b[0]_INST_0_i_115\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_242_n_0\,
      I1 => \vga_b[0]_INST_0_i_243_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_244_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_245_n_0\,
      O => \vga_b[0]_INST_0_i_115_n_0\
    );
\vga_b[0]_INST_0_i_116\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_246_n_0\,
      I1 => \vga_b[0]_INST_0_i_247_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_248_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_249_n_0\,
      O => \vga_b[0]_INST_0_i_116_n_0\
    );
\vga_b[0]_INST_0_i_117\: unisim.vcomponents.MUXF7
     port map (
      I0 => g60_b0_n_0,
      I1 => g61_b0_n_0,
      O => \vga_b[0]_INST_0_i_117_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_119\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => g1_b0_n_0,
      O => g1_b0_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_30_n_0\,
      I1 => \vga_b[0]_INST_0_i_31_n_0\,
      O => \vga_b[0]_INST_0_i_31_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_120\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b2_n_0,
      I1 => g41_b2_n_0,
      O => \vga_b[0]_INST_0_i_120_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_121\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b2_n_0,
      I1 => g43_b2_n_0,
      O => \vga_b[0]_INST_0_i_121_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_122\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b2_n_0,
      I1 => g37_b2_n_0,
      O => \vga_b[0]_INST_0_i_122_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_123\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b2_n_0,
      I1 => g39_b2_n_0,
      O => \vga_b[0]_INST_0_i_123_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_124\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b2_n_0,
      I1 => g33_b2_n_0,
      O => \vga_b[0]_INST_0_i_124_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_125\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b2_n_0,
      I1 => g35_b2_n_0,
      O => \vga_b[0]_INST_0_i_125_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_126\: unisim.vcomponents.MUXF7
     port map (
      I0 => g60_b2_n_0,
      I1 => g61_b2_n_0,
      O => \vga_b[0]_INST_0_i_126_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_127\: unisim.vcomponents.MUXF7
     port map (
      I0 => g62_b2_n_0,
      I1 => g63_b2_n_0,
      O => \vga_b[0]_INST_0_i_127_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_128\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b2_n_0,
      I1 => g57_b2_n_0,
      O => \vga_b[0]_INST_0_i_128_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_129\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b2_n_0,
      I1 => g59_b2_n_0,
      O => \vga_b[0]_INST_0_i_129_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_32_n_0\,
      I1 => \vga_b[0]_INST_0_i_33_n_0\,
      O => \vga_display/font_data\(4),
      S => sel(8)
    );
\vga_b[0]_INST_0_i_130\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b2_n_0,
      I1 => g13_b2_n_0,
      O => \vga_b[0]_INST_0_i_130_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_131\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b2_n_0,
      I1 => g15_b2_n_0,
      O => \vga_b[0]_INST_0_i_131_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_132\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b2_n_0,
      I1 => g5_b2_n_0,
      O => \vga_b[0]_INST_0_i_132_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_133\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b2_n_0,
      I1 => g7_b2_n_0,
      O => \vga_b[0]_INST_0_i_133_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_134\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => g1_b2_n_0,
      O => \vga_b[0]_INST_0_i_134_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_135\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b2_n_0,
      I1 => g3_b2_n_0,
      O => \vga_b[0]_INST_0_i_135_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_136\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b2_n_0,
      I1 => g29_b2_n_0,
      O => \vga_b[0]_INST_0_i_136_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_137\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b2_n_0,
      I1 => g31_b2_n_0,
      O => \vga_b[0]_INST_0_i_137_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_138\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b2_n_0,
      I1 => g25_b2_n_0,
      O => \vga_b[0]_INST_0_i_138_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_139\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b2_n_0,
      I1 => g27_b2_n_0,
      O => \vga_b[0]_INST_0_i_139_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_140\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b2_n_0,
      I1 => g21_b2_n_0,
      O => \vga_b[0]_INST_0_i_140_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_141\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b2_n_0,
      I1 => g23_b2_n_0,
      O => \vga_b[0]_INST_0_i_141_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_142\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b2_n_0,
      I1 => g17_b2_n_0,
      O => g17_b2_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_144\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_250_n_0\,
      I1 => \vga_b[0]_INST_0_i_251_n_0\,
      O => \vga_b[0]_INST_0_i_144_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_145\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_252_n_0\,
      I1 => \vga_b[0]_INST_0_i_253_n_0\,
      O => \vga_b[0]_INST_0_i_145_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_146\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_254_n_0\,
      I1 => \vga_b[0]_INST_0_i_255_n_0\,
      O => \vga_b[0]_INST_0_i_146_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_147\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_256_n_0\,
      I1 => \vga_b[0]_INST_0_i_257_n_0\,
      O => \vga_b[0]_INST_0_i_147_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_148\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_258_n_0\,
      I1 => \vga_b[0]_INST_0_i_259_n_0\,
      O => \vga_b[0]_INST_0_i_148_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_149\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_260_n_0\,
      I1 => \vga_b[0]_INST_0_i_261_n_0\,
      O => \vga_b[0]_INST_0_i_149_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_150\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_262_n_0\,
      I1 => \vga_b[0]_INST_0_i_263_n_0\,
      O => \vga_b[0]_INST_0_i_150_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_151\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_264_n_0\,
      I1 => \vga_b[0]_INST_0_i_265_n_0\,
      O => \vga_b[0]_INST_0_i_151_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_152\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_266_n_0\,
      I1 => \vga_b[0]_INST_0_i_267_n_0\,
      O => \vga_b[0]_INST_0_i_152_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_153\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_268_n_0\,
      I1 => \vga_b[0]_INST_0_i_269_n_0\,
      O => \vga_b[0]_INST_0_i_153_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_154\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_270_n_0\,
      I1 => \vga_b[0]_INST_0_i_271_n_0\,
      O => \vga_b[0]_INST_0_i_154_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_155\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_272_n_0\,
      I1 => \vga_b[0]_INST_0_i_273_n_0\,
      O => \vga_b[0]_INST_0_i_155_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_156\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_274_n_0\,
      I1 => \vga_b[0]_INST_0_i_275_n_0\,
      O => \vga_b[0]_INST_0_i_156_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_157\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_276_n_0\,
      I1 => \vga_b[0]_INST_0_i_277_n_0\,
      O => \vga_b[0]_INST_0_i_157_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_158\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g55_b7_n_0,
      I1 => g54_b3_n_0,
      I2 => sel(4),
      I3 => g53_b4_n_0,
      I4 => sel(3),
      I5 => g52_b4_n_0,
      O => \vga_b[0]_INST_0_i_158_n_0\
    );
\vga_b[0]_INST_0_i_159\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g51_b4_n_0,
      I1 => g50_b4_n_0,
      I2 => sel(4),
      I3 => g49_b4_n_0,
      I4 => sel(3),
      I5 => g48_b3_n_0,
      O => \vga_b[0]_INST_0_i_159_n_0\
    );
\vga_b[0]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_38_n_0\,
      I1 => \vga_b[0]_INST_0_i_39_n_0\,
      O => \vga_b[0]_INST_0_i_39_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_160\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_278_n_0\,
      I1 => \vga_b[0]_INST_0_i_279_n_0\,
      O => \vga_b[0]_INST_0_i_160_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_161\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b6_n_0,
      I1 => g10_b1_n_0,
      I2 => sel(4),
      I3 => g9_b6_n_0,
      I4 => sel(3),
      I5 => g8_b6_n_0,
      O => \vga_b[0]_INST_0_i_161_n_0\
    );
\vga_b[0]_INST_0_i_162\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_280_n_0\,
      I1 => \vga_b[0]_INST_0_i_281_n_0\,
      O => \vga_b[0]_INST_0_i_162_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_164\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_284_n_0\,
      I1 => \vga_b[0]_INST_0_i_285_n_0\,
      O => \vga_b[0]_INST_0_i_285_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_169\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_292_n_0\,
      I1 => \vga_b[0]_INST_0_i_293_n_0\,
      O => \vga_b[0]_INST_0_i_293_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_170\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_294_n_0\,
      I1 => \vga_b[0]_INST_0_i_295_n_0\,
      O => \vga_b[0]_INST_0_i_295_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_171\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_296_n_0\,
      I1 => \vga_b[0]_INST_0_i_297_n_0\,
      O => \vga_b[0]_INST_0_i_297_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_172\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_298_n_0\,
      I1 => \vga_b[0]_INST_0_i_299_n_0\,
      O => \vga_b[0]_INST_0_i_172_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_173\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_300_n_0\,
      I1 => \vga_b[0]_INST_0_i_301_n_0\,
      O => \vga_b[0]_INST_0_i_173_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_174\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b7_n_0,
      I1 => g41_b7_n_0,
      O => \vga_b[0]_INST_0_i_174_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_175\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b7_n_0,
      I1 => g43_b7_n_0,
      O => \vga_b[0]_INST_0_i_175_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_176\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b7_n_0,
      I1 => g37_b7_n_0,
      O => \vga_b[0]_INST_0_i_176_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_177\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b7_n_0,
      I1 => g39_b7_n_0,
      O => \vga_b[0]_INST_0_i_177_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_178\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b7_n_0,
      I1 => g33_b7_n_0,
      O => \vga_b[0]_INST_0_i_178_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_179\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b7_n_0,
      I1 => g35_b7_n_0,
      O => \vga_b[0]_INST_0_i_179_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_42_n_0\,
      I1 => \vga_b[0]_INST_0_i_43_n_0\,
      O => \vga_b[0]_INST_0_i_43_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_180\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b7_n_0,
      I1 => g57_b7_n_0,
      O => \vga_b[0]_INST_0_i_180_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_181\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b7_n_0,
      I1 => g59_b7_n_0,
      O => \vga_b[0]_INST_0_i_181_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_182\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b7_n_0,
      I1 => g13_b7_n_0,
      O => \vga_b[0]_INST_0_i_182_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_183\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b7_n_0,
      I1 => g15_b7_n_0,
      O => \vga_b[0]_INST_0_i_183_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_184\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b7_n_0,
      I1 => g5_b7_n_0,
      O => \vga_b[0]_INST_0_i_184_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_185\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b7_n_0,
      I1 => g7_b7_n_0,
      O => \vga_b[0]_INST_0_i_185_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_186\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b7_n_0,
      I1 => g1_b7_n_0,
      O => \vga_b[0]_INST_0_i_186_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_187\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b7_n_0,
      I1 => g3_b7_n_0,
      O => \vga_b[0]_INST_0_i_187_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_188\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b7_n_0,
      I1 => g29_b7_n_0,
      O => \vga_b[0]_INST_0_i_188_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_189\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b7_n_0,
      I1 => g31_b7_n_0,
      O => \vga_b[0]_INST_0_i_189_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_190\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b7_n_0,
      I1 => g25_b7_n_0,
      O => \vga_b[0]_INST_0_i_190_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_191\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b7_n_0,
      I1 => g27_b7_n_0,
      O => \vga_b[0]_INST_0_i_191_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_192\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b7_n_0,
      I1 => g21_b7_n_0,
      O => \vga_b[0]_INST_0_i_192_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_193\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b7_n_0,
      I1 => g23_b7_n_0,
      O => \vga_b[0]_INST_0_i_193_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_194\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b7_n_0,
      I1 => g17_b7_n_0,
      O => \vga_b[0]_INST_0_i_194_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_195\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b7_n_0,
      I1 => g19_b7_n_0,
      O => \vga_b[0]_INST_0_i_195_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_196\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b1_n_0,
      I1 => g41_b1_n_0,
      O => \vga_b[0]_INST_0_i_196_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_197\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b1_n_0,
      I1 => g43_b1_n_0,
      O => \vga_b[0]_INST_0_i_197_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_198\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b1_n_0,
      I1 => g37_b1_n_0,
      O => \vga_b[0]_INST_0_i_198_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_199\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b1_n_0,
      I1 => g39_b1_n_0,
      O => \vga_b[0]_INST_0_i_199_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_46_n_0\,
      I1 => \vga_b[0]_INST_0_i_47_n_0\,
      O => \vga_display/font_data\(5),
      S => sel(8)
    );
\vga_b[0]_INST_0_i_200\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b1_n_0,
      I1 => g33_b1_n_0,
      O => \vga_b[0]_INST_0_i_200_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_201\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b1_n_0,
      I1 => g35_b1_n_0,
      O => \vga_b[0]_INST_0_i_201_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_202\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b1_n_0,
      I1 => g57_b1_n_0,
      O => \vga_b[0]_INST_0_i_202_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_203\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b1_n_0,
      I1 => g59_b1_n_0,
      O => \vga_b[0]_INST_0_i_203_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_204\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b1_n_0,
      I1 => g13_b1_n_0,
      O => \vga_b[0]_INST_0_i_204_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_205\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b1_n_0,
      I1 => g15_b1_n_0,
      O => \vga_b[0]_INST_0_i_205_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_206\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b1_n_0,
      I1 => g5_b1_n_0,
      O => \vga_b[0]_INST_0_i_206_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_207\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b1_n_0,
      I1 => g7_b1_n_0,
      O => \vga_b[0]_INST_0_i_207_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_208\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => g1_b1_n_0,
      O => g1_b1_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \vga_b[0]_INST_0_i_21_n_0\
    );
\vga_b[0]_INST_0_i_210\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b1_n_0,
      I1 => g29_b1_n_0,
      O => \vga_b[0]_INST_0_i_210_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_211\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b1_n_0,
      I1 => g31_b1_n_0,
      O => \vga_b[0]_INST_0_i_211_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_212\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b1_n_0,
      I1 => g25_b1_n_0,
      O => \vga_b[0]_INST_0_i_212_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_213\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b1_n_0,
      I1 => g27_b1_n_0,
      O => \vga_b[0]_INST_0_i_213_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_214\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b1_n_0,
      I1 => g21_b1_n_0,
      O => \vga_b[0]_INST_0_i_214_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_215\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b1_n_0,
      I1 => g23_b1_n_0,
      O => \vga_b[0]_INST_0_i_215_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_216\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b1_n_0,
      I1 => g17_b1_n_0,
      O => \vga_b[0]_INST_0_i_216_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_217\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b1_n_0,
      I1 => g19_b1_n_0,
      O => \vga_b[0]_INST_0_i_217_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_218\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_302_n_0\,
      I1 => \vga_b[0]_INST_0_i_303_n_0\,
      O => \vga_b[0]_INST_0_i_218_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_219\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_304_n_0\,
      I1 => \vga_b[0]_INST_0_i_305_n_0\,
      O => \vga_b[0]_INST_0_i_219_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000C0F"
    )
        port map (
      I0 => \v_count[6]_i_2_n_0\,
      I1 => text_ascii_carry_i_66_n_0,
      I2 => \vga_b[0]_INST_0_i_48_n_0\,
      I3 => \v_count_reg_n_0_[5]\,
      I4 => \v_count_reg_n_0_[6]\,
      I5 => \v_count_reg_n_0_[9]\,
      O => \vga_b[0]_INST_0_i_22_n_0\
    );
\vga_b[0]_INST_0_i_220\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b3_n_0,
      I1 => g6_b3_n_0,
      I2 => sel(4),
      I3 => g5_b3_n_0,
      I4 => sel(3),
      I5 => g4_b3_n_0,
      O => \vga_b[0]_INST_0_i_220_n_0\
    );
\vga_b[0]_INST_0_i_221\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_306_n_0\,
      I1 => \vga_b[0]_INST_0_i_307_n_0\,
      O => \vga_b[0]_INST_0_i_221_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_222\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_308_n_0\,
      I1 => \vga_b[0]_INST_0_i_309_n_0\,
      O => \vga_b[0]_INST_0_i_222_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_223\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_310_n_0\,
      I1 => \vga_b[0]_INST_0_i_311_n_0\,
      O => \vga_b[0]_INST_0_i_223_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_224\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_312_n_0\,
      I1 => \vga_b[0]_INST_0_i_313_n_0\,
      O => \vga_b[0]_INST_0_i_224_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_225\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_314_n_0\,
      I1 => \vga_b[0]_INST_0_i_315_n_0\,
      O => \vga_b[0]_INST_0_i_225_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_227\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_318_n_0\,
      I1 => \vga_b[0]_INST_0_i_319_n_0\,
      O => \vga_b[0]_INST_0_i_319_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_228\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_320_n_0\,
      I1 => \vga_b[0]_INST_0_i_321_n_0\,
      O => \vga_b[0]_INST_0_i_321_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_229\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_322_n_0\,
      I1 => \vga_b[0]_INST_0_i_323_n_0\,
      O => \vga_b[0]_INST_0_i_323_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_230\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_324_n_0\,
      I1 => \vga_b[0]_INST_0_i_325_n_0\,
      O => \vga_b[0]_INST_0_i_230_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_231\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_326_n_0\,
      I1 => \vga_b[0]_INST_0_i_327_n_0\,
      O => \vga_b[0]_INST_0_i_231_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_232\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g55_b0_n_0,
      I1 => g54_b3_n_0,
      I2 => sel(4),
      I3 => g53_b3_n_0,
      I4 => sel(3),
      I5 => g52_b3_n_0,
      O => \vga_b[0]_INST_0_i_232_n_0\
    );
\vga_b[0]_INST_0_i_233\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g51_b3_n_0,
      I1 => g50_b3_n_0,
      I2 => sel(4),
      I3 => g49_b3_n_0,
      I4 => sel(3),
      I5 => g48_b3_n_0,
      O => \vga_b[0]_INST_0_i_233_n_0\
    );
\vga_b[0]_INST_0_i_234\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_328_n_0\,
      I1 => \vga_b[0]_INST_0_i_329_n_0\,
      O => \vga_b[0]_INST_0_i_234_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_235\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b5_n_0,
      I1 => g10_b5_n_0,
      I2 => sel(4),
      I3 => g9_b5_n_0,
      I4 => sel(3),
      I5 => g8_b2_n_0,
      O => \vga_b[0]_INST_0_i_235_n_0\
    );
\vga_b[0]_INST_0_i_236\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b3_n_0,
      I1 => g6_b5_n_0,
      I2 => sel(4),
      I3 => g5_b5_n_0,
      I4 => sel(3),
      I5 => g4_b5_n_0,
      O => \vga_b[0]_INST_0_i_236_n_0\
    );
\vga_b[0]_INST_0_i_237\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_330_n_0\,
      I1 => \vga_b[0]_INST_0_i_331_n_0\,
      O => \vga_b[0]_INST_0_i_237_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_238\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_332_n_0\,
      I1 => \vga_b[0]_INST_0_i_333_n_0\,
      O => \vga_b[0]_INST_0_i_238_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_239\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_334_n_0\,
      I1 => \vga_b[0]_INST_0_i_335_n_0\,
      O => \vga_b[0]_INST_0_i_239_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_240\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_336_n_0\,
      I1 => \vga_b[0]_INST_0_i_337_n_0\,
      O => \vga_b[0]_INST_0_i_240_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_242\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g47_b5_n_0,
      I1 => g46_b5_n_0,
      I2 => sel(4),
      I3 => g45_b5_n_0,
      I4 => sel(3),
      I5 => \vga_b[0]_INST_0_i_115_0\,
      O => \vga_b[0]_INST_0_i_242_n_0\
    );
\vga_b[0]_INST_0_i_243\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_340_n_0\,
      I1 => \vga_b[0]_INST_0_i_341_n_0\,
      O => \vga_b[0]_INST_0_i_243_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_244\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_342_n_0\,
      I1 => \vga_b[0]_INST_0_i_343_n_0\,
      O => \vga_b[0]_INST_0_i_244_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_245\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_344_n_0\,
      I1 => \vga_b[0]_INST_0_i_345_n_0\,
      O => \vga_b[0]_INST_0_i_245_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_246\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_346_n_0\,
      I1 => \vga_b[0]_INST_0_i_347_n_0\,
      O => \vga_b[0]_INST_0_i_246_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_247\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_348_n_0\,
      I1 => \vga_b[0]_INST_0_i_349_n_0\,
      O => \vga_b[0]_INST_0_i_247_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_248\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g55_b7_n_0,
      I1 => g54_b7_n_0,
      I2 => sel(4),
      I3 => g53_b5_n_0,
      I4 => sel(3),
      I5 => g52_b1_n_0,
      O => \vga_b[0]_INST_0_i_248_n_0\
    );
\vga_b[0]_INST_0_i_249\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g51_b5_n_0,
      I1 => g50_b4_n_0,
      I2 => sel(4),
      I3 => g49_b5_n_0,
      I4 => sel(3),
      I5 => \^v_count_reg[0]_19\,
      O => \vga_b[0]_INST_0_i_249_n_0\
    );
\vga_b[0]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_51_n_0\,
      I1 => sel(6),
      I2 => \vga_b[0]_INST_0_i_52_n_0\,
      I3 => sel(5),
      I4 => \vga_b[0]_INST_0_i_53_n_0\,
      O => \vga_b[0]_INST_0_i_53_0\
    );
\vga_b[0]_INST_0_i_250\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b4_n_0,
      I1 => g13_b4_n_0,
      O => \vga_b[0]_INST_0_i_250_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_251\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b4_n_0,
      I1 => g15_b4_n_0,
      O => \vga_b[0]_INST_0_i_251_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_252\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b4_n_0,
      I1 => g9_b4_n_0,
      O => \vga_b[0]_INST_0_i_252_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_253\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b4_n_0,
      I1 => g11_b4_n_0,
      O => \vga_b[0]_INST_0_i_253_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_254\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b4_n_0,
      I1 => g5_b4_n_0,
      O => \vga_b[0]_INST_0_i_254_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_255\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b4_n_0,
      I1 => g7_b4_n_0,
      O => \vga_b[0]_INST_0_i_255_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_256\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => g1_b4_n_0,
      O => \vga_b[0]_INST_0_i_256_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_257\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b4_n_0,
      I1 => g3_b4_n_0,
      O => \vga_b[0]_INST_0_i_257_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_258\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b4_n_0,
      I1 => g29_b4_n_0,
      O => \vga_b[0]_INST_0_i_258_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_259\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b4_n_0,
      I1 => g31_b4_n_0,
      O => \vga_b[0]_INST_0_i_259_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_260\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b4_n_0,
      I1 => g25_b4_n_0,
      O => \vga_b[0]_INST_0_i_260_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_261\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b4_n_0,
      I1 => g27_b4_n_0,
      O => \vga_b[0]_INST_0_i_261_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_262\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b4_n_0,
      I1 => g21_b4_n_0,
      O => \vga_b[0]_INST_0_i_262_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_263\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b4_n_0,
      I1 => g23_b4_n_0,
      O => \vga_b[0]_INST_0_i_263_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_264\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b4_n_0,
      I1 => g17_b4_n_0,
      O => \vga_b[0]_INST_0_i_264_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_265\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b4_n_0,
      I1 => g19_b4_n_0,
      O => \vga_b[0]_INST_0_i_265_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_266\: unisim.vcomponents.MUXF7
     port map (
      I0 => g44_b4_n_0,
      I1 => g45_b4_n_0,
      O => \vga_b[0]_INST_0_i_266_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_267\: unisim.vcomponents.MUXF7
     port map (
      I0 => g46_b4_n_0,
      I1 => g47_b4_n_0,
      O => \vga_b[0]_INST_0_i_267_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_268\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b4_n_0,
      I1 => g41_b4_n_0,
      O => \vga_b[0]_INST_0_i_268_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_269\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b4_n_0,
      I1 => g43_b4_n_0,
      O => \vga_b[0]_INST_0_i_269_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_270\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b4_n_0,
      I1 => g37_b4_n_0,
      O => \vga_b[0]_INST_0_i_270_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_271\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b4_n_0,
      I1 => g39_b4_n_0,
      O => \vga_b[0]_INST_0_i_271_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_272\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b4_n_0,
      I1 => g33_b4_n_0,
      O => \vga_b[0]_INST_0_i_272_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_273\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b4_n_0,
      I1 => g35_b4_n_0,
      O => \vga_b[0]_INST_0_i_273_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_274\: unisim.vcomponents.MUXF7
     port map (
      I0 => g60_b4_n_0,
      I1 => g61_b4_n_0,
      O => \vga_b[0]_INST_0_i_274_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_275\: unisim.vcomponents.MUXF7
     port map (
      I0 => g62_b4_n_0,
      I1 => g63_b4_n_0,
      O => \vga_b[0]_INST_0_i_275_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_276\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b4_n_0,
      I1 => g57_b4_n_0,
      O => \vga_b[0]_INST_0_i_276_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_277\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b4_n_0,
      I1 => g59_b4_n_0,
      O => \vga_b[0]_INST_0_i_277_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_278\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b6_n_0,
      I1 => g13_b6_n_0,
      O => \vga_b[0]_INST_0_i_278_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_279\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b6_n_0,
      I1 => g15_b6_n_0,
      O => \vga_b[0]_INST_0_i_279_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_280\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b6_n_0,
      I1 => g5_b6_n_0,
      O => \vga_b[0]_INST_0_i_280_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_281\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b6_n_0,
      I1 => g7_b6_n_0,
      O => \vga_b[0]_INST_0_i_281_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_282\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b6_n_0,
      I1 => g1_b6_n_0,
      O => g1_b6_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_284\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b6_n_0,
      I1 => g29_b6_n_0,
      O => \vga_b[0]_INST_0_i_284_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_285\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b6_n_0,
      I1 => g31_b6_n_0,
      O => \vga_b[0]_INST_0_i_285_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_286\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b6_n_0,
      I1 => g25_b6_n_0,
      O => g25_b6_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_288\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b6_n_0,
      I1 => g21_b6_n_0,
      O => g21_b6_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_59_n_0\,
      I1 => \vga_b[0]_INST_0_i_60_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_61_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_62_n_0\,
      O => \vga_b[0]_INST_0_i_62_0\
    );
\vga_b[0]_INST_0_i_290\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b6_n_0,
      I1 => g17_b6_n_0,
      O => g17_b6_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_292\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b6_n_0,
      I1 => g41_b6_n_0,
      O => \vga_b[0]_INST_0_i_292_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_293\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b6_n_0,
      I1 => g43_b6_n_0,
      O => \vga_b[0]_INST_0_i_293_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_294\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b6_n_0,
      I1 => g37_b6_n_0,
      O => \vga_b[0]_INST_0_i_294_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_295\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b6_n_0,
      I1 => g39_b6_n_0,
      O => \vga_b[0]_INST_0_i_295_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_296\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b6_n_0,
      I1 => g33_b6_n_0,
      O => \vga_b[0]_INST_0_i_296_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_297\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b6_n_0,
      I1 => g35_b6_n_0,
      O => \vga_b[0]_INST_0_i_297_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_298\: unisim.vcomponents.MUXF7
     port map (
      I0 => g60_b6_n_0,
      I1 => g61_b6_n_0,
      O => \vga_b[0]_INST_0_i_298_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_299\: unisim.vcomponents.MUXF7
     port map (
      I0 => g62_b6_n_0,
      I1 => g63_b6_n_0,
      O => \vga_b[0]_INST_0_i_299_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      I1 => \h_count_reg_n_0_[2]\,
      I2 => \vga_display/font_data\(4),
      I3 => \^q\(0),
      I4 => \vga_r[3]\(1),
      O => \vga_b[0]_INST_0_i_3_n_0\
    );
\vga_b[0]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_63_n_0\,
      I1 => \vga_b[0]_INST_0_i_64_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_65_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_66_n_0\,
      O => \vga_b[0]_INST_0_i_30_n_0\
    );
\vga_b[0]_INST_0_i_300\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b6_n_0,
      I1 => g57_b6_n_0,
      O => \vga_b[0]_INST_0_i_300_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_301\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b6_n_0,
      I1 => g59_b6_n_0,
      O => \vga_b[0]_INST_0_i_301_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_302\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b3_n_0,
      I1 => g13_b3_n_0,
      O => \vga_b[0]_INST_0_i_302_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_303\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b3_n_0,
      I1 => g15_b3_n_0,
      O => \vga_b[0]_INST_0_i_303_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_304\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b3_n_0,
      I1 => g9_b3_n_0,
      O => \vga_b[0]_INST_0_i_304_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_305\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b3_n_0,
      I1 => g11_b3_n_0,
      O => \vga_b[0]_INST_0_i_305_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_306\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => g1_b3_n_0,
      O => \vga_b[0]_INST_0_i_306_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_307\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b3_n_0,
      I1 => g3_b3_n_0,
      O => \vga_b[0]_INST_0_i_307_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_308\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b3_n_0,
      I1 => g29_b3_n_0,
      O => \vga_b[0]_INST_0_i_308_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_309\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b3_n_0,
      I1 => g31_b3_n_0,
      O => \vga_b[0]_INST_0_i_309_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_67_n_0\,
      I1 => \vga_b[0]_INST_0_i_68_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_69_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_12_0\,
      O => \vga_b[0]_INST_0_i_31_n_0\
    );
\vga_b[0]_INST_0_i_310\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b3_n_0,
      I1 => g25_b3_n_0,
      O => \vga_b[0]_INST_0_i_310_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_311\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b3_n_0,
      I1 => g27_b3_n_0,
      O => \vga_b[0]_INST_0_i_311_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_312\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b3_n_0,
      I1 => g21_b3_n_0,
      O => \vga_b[0]_INST_0_i_312_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_313\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b3_n_0,
      I1 => g23_b3_n_0,
      O => \vga_b[0]_INST_0_i_313_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_314\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b3_n_0,
      I1 => g17_b3_n_0,
      O => \vga_b[0]_INST_0_i_314_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_315\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b3_n_0,
      I1 => g19_b3_n_0,
      O => \vga_b[0]_INST_0_i_315_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_317\: unisim.vcomponents.MUXF7
     port map (
      I0 => g46_b3_n_0,
      I1 => g47_b3_n_0,
      O => g47_b3_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_318\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b3_n_0,
      I1 => g41_b3_n_0,
      O => \vga_b[0]_INST_0_i_318_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_319\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b3_n_0,
      I1 => g43_b3_n_0,
      O => \vga_b[0]_INST_0_i_319_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_71_n_0\,
      I1 => \vga_b[0]_INST_0_i_72_n_0\,
      O => \vga_b[0]_INST_0_i_32_n_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_320\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b3_n_0,
      I1 => g37_b3_n_0,
      O => \vga_b[0]_INST_0_i_320_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_321\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b3_n_0,
      I1 => g39_b3_n_0,
      O => \vga_b[0]_INST_0_i_321_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_322\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b3_n_0,
      I1 => g33_b3_n_0,
      O => \vga_b[0]_INST_0_i_322_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_323\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b3_n_0,
      I1 => g35_b3_n_0,
      O => \vga_b[0]_INST_0_i_323_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_324\: unisim.vcomponents.MUXF7
     port map (
      I0 => g60_b3_n_0,
      I1 => g61_b3_n_0,
      O => \vga_b[0]_INST_0_i_324_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_325\: unisim.vcomponents.MUXF7
     port map (
      I0 => g62_b3_n_0,
      I1 => g63_b3_n_0,
      O => \vga_b[0]_INST_0_i_325_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_326\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b3_n_0,
      I1 => g57_b3_n_0,
      O => \vga_b[0]_INST_0_i_326_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_327\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b3_n_0,
      I1 => g59_b3_n_0,
      O => \vga_b[0]_INST_0_i_327_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_328\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b5_n_0,
      I1 => g13_b5_n_0,
      O => \vga_b[0]_INST_0_i_328_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_329\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b5_n_0,
      I1 => g15_b5_n_0,
      O => \vga_b[0]_INST_0_i_329_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_73_n_0\,
      I1 => \vga_b[0]_INST_0_i_74_n_0\,
      O => \vga_b[0]_INST_0_i_33_n_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_330\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b5_n_0,
      I1 => g1_b5_n_0,
      O => \vga_b[0]_INST_0_i_330_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_331\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b5_n_0,
      I1 => g3_b5_n_0,
      O => \vga_b[0]_INST_0_i_331_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_332\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b5_n_0,
      I1 => g29_b5_n_0,
      O => \vga_b[0]_INST_0_i_332_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_333\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b5_n_0,
      I1 => g31_b5_n_0,
      O => \vga_b[0]_INST_0_i_333_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_334\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b5_n_0,
      I1 => g25_b5_n_0,
      O => \vga_b[0]_INST_0_i_334_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_335\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b5_n_0,
      I1 => g27_b5_n_0,
      O => \vga_b[0]_INST_0_i_335_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_336\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b5_n_0,
      I1 => g21_b5_n_0,
      O => \vga_b[0]_INST_0_i_336_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_337\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b5_n_0,
      I1 => g23_b5_n_0,
      O => \vga_b[0]_INST_0_i_337_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_339\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b5_n_0,
      I1 => g19_b5_n_0,
      O => g19_b5_0,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_340\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b5_n_0,
      I1 => g41_b5_n_0,
      O => \vga_b[0]_INST_0_i_340_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_341\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b5_n_0,
      I1 => g43_b5_n_0,
      O => \vga_b[0]_INST_0_i_341_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_342\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b5_n_0,
      I1 => g37_b5_n_0,
      O => \vga_b[0]_INST_0_i_342_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_343\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b5_n_0,
      I1 => g39_b5_n_0,
      O => \vga_b[0]_INST_0_i_343_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_344\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b5_n_0,
      I1 => g33_b5_n_0,
      O => \vga_b[0]_INST_0_i_344_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_345\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b5_n_0,
      I1 => g35_b5_n_0,
      O => \vga_b[0]_INST_0_i_345_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_346\: unisim.vcomponents.MUXF7
     port map (
      I0 => g60_b5_n_0,
      I1 => g61_b5_n_0,
      O => \vga_b[0]_INST_0_i_346_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_347\: unisim.vcomponents.MUXF7
     port map (
      I0 => g62_b5_n_0,
      I1 => g63_b5_n_0,
      O => \vga_b[0]_INST_0_i_347_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_348\: unisim.vcomponents.MUXF7
     port map (
      I0 => g56_b5_n_0,
      I1 => g57_b5_n_0,
      O => \vga_b[0]_INST_0_i_348_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_349\: unisim.vcomponents.MUXF7
     port map (
      I0 => g58_b5_n_0,
      I1 => g59_b5_n_0,
      O => \vga_b[0]_INST_0_i_349_n_0\,
      S => sel(3)
    );
\vga_b[0]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_83_n_0\,
      I1 => \vga_b[0]_INST_0_i_84_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_85_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_15\,
      O => \vga_b[0]_INST_0_i_86_0\
    );
\vga_b[0]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_87_n_0\,
      I1 => \vga_b[0]_INST_0_i_88_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_89_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_90_n_0\,
      O => \vga_b[0]_INST_0_i_38_n_0\
    );
\vga_b[0]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_91_n_0\,
      I1 => \vga_b[0]_INST_0_i_92_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_93_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_94_n_0\,
      O => \vga_b[0]_INST_0_i_39_n_0\
    );
\vga_b[0]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_99_n_0\,
      I1 => \vga_b[0]_INST_0_i_100_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_61_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_62_n_0\,
      O => \vga_b[0]_INST_0_i_62_1\
    );
\vga_b[0]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_101_n_0\,
      I1 => \vga_b[0]_INST_0_i_102_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_103_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_18_0\,
      O => \vga_b[0]_INST_0_i_42_n_0\
    );
\vga_b[0]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_105_n_0\,
      I1 => \vga_b[0]_INST_0_i_106_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_107_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_108_n_0\,
      O => \vga_b[0]_INST_0_i_43_n_0\
    );
\vga_b[0]_INST_0_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_109_n_0\,
      I1 => \vga_b[0]_INST_0_i_110_n_0\,
      O => \vga_b[0]_INST_0_i_110_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_46\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_113_n_0\,
      I1 => \vga_b[0]_INST_0_i_114_n_0\,
      O => \vga_b[0]_INST_0_i_46_n_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_115_n_0\,
      I1 => \vga_b[0]_INST_0_i_116_n_0\,
      O => \vga_b[0]_INST_0_i_47_n_0\,
      S => sel(7)
    );
\vga_b[0]_INST_0_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count_reg_n_0_[7]\,
      O => \vga_b[0]_INST_0_i_48_n_0\
    );
\vga_b[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80FFFF"
    )
        port map (
      I0 => \h_count_reg_n_0_[2]\,
      I1 => \vga_r[3]\(0),
      I2 => \^q\(0),
      I3 => \vga_display/font_data\(5),
      I4 => \h_count_reg_n_0_[0]\,
      O => \vga_b[0]_INST_0_i_5_n_0\
    );
\vga_b[0]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C0A0C0A0C0"
    )
        port map (
      I0 => g62_b0_n_0,
      I1 => \vga_b[0]_INST_0_i_117_n_0\,
      I2 => sel(5),
      I3 => sel(4),
      I4 => g59_b0_n_0,
      I5 => sel(3),
      O => \vga_b[0]_INST_0_i_51_n_0\
    );
\vga_b[0]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g55_b0_n_0,
      I1 => g54_b0_n_0,
      I2 => sel(4),
      I3 => g53_b0_n_0,
      I4 => sel(3),
      I5 => \^v_count_reg[0]_17\,
      O => \vga_b[0]_INST_0_i_52_n_0\
    );
\vga_b[0]_INST_0_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => g50_b0_n_0,
      I1 => sel(4),
      I2 => g49_b0_n_0,
      I3 => sel(3),
      I4 => g48_b0_n_0,
      O => \vga_b[0]_INST_0_i_53_n_0\
    );
\vga_b[0]_INST_0_i_56\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_120_n_0\,
      I1 => \vga_b[0]_INST_0_i_121_n_0\,
      O => \vga_b[0]_INST_0_i_121_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_57\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_122_n_0\,
      I1 => \vga_b[0]_INST_0_i_123_n_0\,
      O => \vga_b[0]_INST_0_i_123_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_58\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_124_n_0\,
      I1 => \vga_b[0]_INST_0_i_125_n_0\,
      O => \vga_b[0]_INST_0_i_125_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_59\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_126_n_0\,
      I1 => \vga_b[0]_INST_0_i_127_n_0\,
      O => \vga_b[0]_INST_0_i_59_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEAAAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \h_count_reg_n_0_[2]\,
      I5 => \h_count_reg_n_0_[4]\,
      O => \^h_count_reg[5]_1\
    );
\vga_b[0]_INST_0_i_60\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_128_n_0\,
      I1 => \vga_b[0]_INST_0_i_129_n_0\,
      O => \vga_b[0]_INST_0_i_60_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g55_b0_n_0,
      I1 => g54_b0_n_0,
      I2 => sel(4),
      I3 => g53_b1_n_0,
      I4 => sel(3),
      I5 => g52_b1_n_0,
      O => \vga_b[0]_INST_0_i_61_n_0\
    );
\vga_b[0]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g51_b1_n_0,
      I1 => g50_b1_n_0,
      I2 => sel(4),
      I3 => g49_b1_n_0,
      I4 => sel(3),
      I5 => g48_b0_n_0,
      O => \vga_b[0]_INST_0_i_62_n_0\
    );
\vga_b[0]_INST_0_i_63\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_130_n_0\,
      I1 => \vga_b[0]_INST_0_i_131_n_0\,
      O => \vga_b[0]_INST_0_i_63_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b2_n_0,
      I1 => g10_b2_n_0,
      I2 => sel(4),
      I3 => g9_b2_n_0,
      I4 => sel(3),
      I5 => g8_b2_n_0,
      O => \vga_b[0]_INST_0_i_64_n_0\
    );
\vga_b[0]_INST_0_i_65\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_132_n_0\,
      I1 => \vga_b[0]_INST_0_i_133_n_0\,
      O => \vga_b[0]_INST_0_i_65_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_66\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_134_n_0\,
      I1 => \vga_b[0]_INST_0_i_135_n_0\,
      O => \vga_b[0]_INST_0_i_66_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_67\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_136_n_0\,
      I1 => \vga_b[0]_INST_0_i_137_n_0\,
      O => \vga_b[0]_INST_0_i_67_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_68\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_138_n_0\,
      I1 => \vga_b[0]_INST_0_i_139_n_0\,
      O => \vga_b[0]_INST_0_i_68_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_69\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_140_n_0\,
      I1 => \vga_b[0]_INST_0_i_141_n_0\,
      O => \vga_b[0]_INST_0_i_69_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8880"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^h_count_reg[4]_0\,
      I3 => \vga_b[0]_INST_0_i_21_n_0\,
      I4 => \vga_b[0]_INST_0_i_22_n_0\,
      O => \^h_count_reg[8]_1\
    );
\vga_b[0]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_144_n_0\,
      I1 => \vga_b[0]_INST_0_i_145_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_146_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_147_n_0\,
      O => \vga_b[0]_INST_0_i_71_n_0\
    );
\vga_b[0]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_148_n_0\,
      I1 => \vga_b[0]_INST_0_i_149_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_150_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_151_n_0\,
      O => \vga_b[0]_INST_0_i_72_n_0\
    );
\vga_b[0]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_152_n_0\,
      I1 => \vga_b[0]_INST_0_i_153_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_154_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_155_n_0\,
      O => \vga_b[0]_INST_0_i_73_n_0\
    );
\vga_b[0]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_156_n_0\,
      I1 => \vga_b[0]_INST_0_i_157_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_158_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_159_n_0\,
      O => \vga_b[0]_INST_0_i_74_n_0\
    );
\vga_b[0]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_160_n_0\,
      I1 => \vga_b[0]_INST_0_i_161_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_162_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_34\,
      O => \vga_b[0]_INST_0_i_163\
    );
\vga_b[0]_INST_0_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_172_n_0\,
      I1 => \vga_b[0]_INST_0_i_173_n_0\,
      I2 => sel(6),
      I3 => \vga_b[0]_INST_0_i_85_n_0\,
      I4 => sel(5),
      I5 => \vga_b[0]_INST_0_i_15\,
      O => \vga_b[0]_INST_0_i_86\
    );
\vga_b[0]_INST_0_i_80\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_174_n_0\,
      I1 => \vga_b[0]_INST_0_i_175_n_0\,
      O => \vga_b[0]_INST_0_i_175_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_81\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_176_n_0\,
      I1 => \vga_b[0]_INST_0_i_177_n_0\,
      O => \vga_b[0]_INST_0_i_177_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_82\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_178_n_0\,
      I1 => \vga_b[0]_INST_0_i_179_n_0\,
      O => \vga_b[0]_INST_0_i_179_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g63_b7_n_0,
      I1 => g53_b7_n_0,
      I2 => sel(4),
      I3 => g61_b7_n_0,
      I4 => sel(3),
      I5 => g60_b7_n_0,
      O => \vga_b[0]_INST_0_i_83_n_0\
    );
\vga_b[0]_INST_0_i_84\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_180_n_0\,
      I1 => \vga_b[0]_INST_0_i_181_n_0\,
      O => \vga_b[0]_INST_0_i_84_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g55_b7_n_0,
      I1 => g54_b7_n_0,
      I2 => sel(4),
      I3 => g53_b7_n_0,
      I4 => sel(3),
      I5 => g52_b7_n_0,
      O => \vga_b[0]_INST_0_i_85_n_0\
    );
\vga_b[0]_INST_0_i_87\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_182_n_0\,
      I1 => \vga_b[0]_INST_0_i_183_n_0\,
      O => \vga_b[0]_INST_0_i_87_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g11_b7_n_0,
      I1 => \^v_count_reg[0]_8\,
      I2 => sel(4),
      I3 => g9_b7_n_0,
      I4 => sel(3),
      I5 => g8_b7_n_0,
      O => \vga_b[0]_INST_0_i_88_n_0\
    );
\vga_b[0]_INST_0_i_89\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_184_n_0\,
      I1 => \vga_b[0]_INST_0_i_185_n_0\,
      O => \vga_b[0]_INST_0_i_89_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_90\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_186_n_0\,
      I1 => \vga_b[0]_INST_0_i_187_n_0\,
      O => \vga_b[0]_INST_0_i_90_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_91\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_188_n_0\,
      I1 => \vga_b[0]_INST_0_i_189_n_0\,
      O => \vga_b[0]_INST_0_i_91_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_92\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_190_n_0\,
      I1 => \vga_b[0]_INST_0_i_191_n_0\,
      O => \vga_b[0]_INST_0_i_92_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_93\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_192_n_0\,
      I1 => \vga_b[0]_INST_0_i_193_n_0\,
      O => \vga_b[0]_INST_0_i_93_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_94\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_194_n_0\,
      I1 => \vga_b[0]_INST_0_i_195_n_0\,
      O => \vga_b[0]_INST_0_i_94_n_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_96\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_196_n_0\,
      I1 => \vga_b[0]_INST_0_i_197_n_0\,
      O => \vga_b[0]_INST_0_i_197_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_97\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_198_n_0\,
      I1 => \vga_b[0]_INST_0_i_199_n_0\,
      O => \vga_b[0]_INST_0_i_199_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_98\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_200_n_0\,
      I1 => \vga_b[0]_INST_0_i_201_n_0\,
      O => \vga_b[0]_INST_0_i_201_0\,
      S => sel(4)
    );
\vga_b[0]_INST_0_i_99\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => g62_b0_n_0,
      I1 => sel(4),
      I2 => g61_b1_n_0,
      I3 => sel(3),
      I4 => g60_b1_n_0,
      O => \vga_b[0]_INST_0_i_99_n_0\
    );
vs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => vs_i_2_n_0,
      I1 => \v_count_reg_n_0_[1]\,
      I2 => \v_count_reg_n_0_[9]\,
      I3 => \v_count_reg_n_0_[2]\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => v_sync
    );
vs_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_count_reg_n_0_[7]\,
      I1 => \v_count_reg_n_0_[8]\,
      I2 => \v_count_reg_n_0_[5]\,
      I3 => \v_count_reg_n_0_[6]\,
      O => vs_i_2_n_0
    );
vs_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_25m,
      CE => '1',
      D => v_sync,
      Q => vs,
      S => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDebugger is
  port (
    \display_addr_reg[10]_0\ : out STD_LOGIC;
    \display_addr_reg[5]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ADDRD : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \display_addr_reg[1]_rep_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \display_addr_reg[3]_rep__0_0\ : out STD_LOGIC;
    \display_addr_reg[10]_1\ : out STD_LOGIC;
    \display_addr_reg[7]_0\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \display_addr_reg[7]_1\ : out STD_LOGIC;
    \display_addr_reg[7]_2\ : out STD_LOGIC;
    \display_addr_reg[7]_3\ : out STD_LOGIC;
    \display_addr_reg[8]_0\ : out STD_LOGIC;
    \display_addr_reg[8]_1\ : out STD_LOGIC;
    \display_addr_reg[8]_2\ : out STD_LOGIC;
    \display_addr_reg[9]_0\ : out STD_LOGIC;
    \display_addr_reg[9]_1\ : out STD_LOGIC;
    \display_addr_reg[6]_0\ : out STD_LOGIC;
    \display_addr_reg[6]_1\ : out STD_LOGIC;
    \display_addr_reg[6]_2\ : out STD_LOGIC;
    \display_addr_reg[6]_3\ : out STD_LOGIC;
    \display_addr_reg[6]_4\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_1\ : out STD_LOGIC;
    \display_addr_reg[6]_5\ : out STD_LOGIC;
    \display_addr_reg[7]_4\ : out STD_LOGIC;
    \display_addr_reg[7]_5\ : out STD_LOGIC;
    \display_addr_reg[8]_3\ : out STD_LOGIC;
    \display_addr_reg[8]_4\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_2\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_3\ : out STD_LOGIC;
    \display_addr_reg[9]_2\ : out STD_LOGIC;
    \display_addr_reg[9]_3\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_4\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_5\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_6\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_7\ : out STD_LOGIC;
    \display_addr_reg[9]_4\ : out STD_LOGIC;
    \display_addr_reg[10]_2\ : out STD_LOGIC;
    \display_addr_reg[10]_3\ : out STD_LOGIC;
    \display_addr_reg[10]_4\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_1\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_2\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_3\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_4\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_5\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_6\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_7\ : out STD_LOGIC;
    \display_addr_reg[3]_rep_8\ : out STD_LOGIC;
    \display_addr_reg[10]_5\ : out STD_LOGIC;
    \display_addr_reg[11]_0\ : out STD_LOGIC;
    \display_addr_reg[11]_1\ : out STD_LOGIC;
    \display_addr_reg[11]_2\ : out STD_LOGIC;
    \display_addr_reg[3]_0\ : out STD_LOGIC;
    \display_addr_reg[3]_1\ : out STD_LOGIC;
    \display_addr_reg[3]_2\ : out STD_LOGIC;
    \display_addr_reg[3]_3\ : out STD_LOGIC;
    \display_addr_reg[3]_4\ : out STD_LOGIC;
    \display_addr_reg[3]_5\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_8\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_9\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_10\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_11\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_12\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_13\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_14\ : out STD_LOGIC;
    \display_addr_reg[3]_rep__0_15\ : out STD_LOGIC;
    \display_addr_reg[3]_6\ : out STD_LOGIC;
    \display_addr_reg[11]_3\ : out STD_LOGIC;
    \display_addr_reg[11]_4\ : out STD_LOGIC;
    \display_addr_reg[11]_5\ : out STD_LOGIC;
    \display_addr_reg[0]_rep__1_0\ : out STD_LOGIC;
    display_w_data : out STD_LOGIC_VECTOR ( 4 downto 0 );
    inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_o_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_i_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_wen : in STD_LOGIC;
    alu_res : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_100m : in STD_LOGIC;
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDebugger;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDebugger is
  signal \^addrd\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \display_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \display_addr[0]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \display_addr[0]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \display_addr[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \display_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \display_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \display_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \display_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \display_addr_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \display_addr_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \^display_addr_reg[1]_rep_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^display_addr_reg[3]_rep_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \display_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \display_addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \display_addr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \display_addr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \^display_addr_reg[5]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \display_addr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \display_addr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \display_addr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \display_addr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_100_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_101_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_102_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_103_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_104_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_105_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_106_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_107_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_108_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_109_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_10_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_110_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_111_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_112_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_113_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_114_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_115_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_116_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_117_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_118_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_119_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_11_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_120_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_121_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_122_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_123_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_124_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_125_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_126_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_127_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_128_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_129_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_12_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_130_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_131_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_132_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_133_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_134_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_135_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_136_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_137_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_138_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_139_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_13_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_140_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_141_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_142_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_143_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_144_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_145_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_146_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_147_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_148_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_149_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_14_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_150_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_151_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_152_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_153_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_154_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_155_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_156_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_157_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_158_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_159_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_15_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_160_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_161_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_162_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_163_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_164_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_165_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_166_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_167_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_168_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_169_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_16_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_170_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_171_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_172_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_173_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_174_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_175_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_176_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_177_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_178_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_179_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_17_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_180_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_181_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_182_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_183_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_184_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_185_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_186_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_187_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_188_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_189_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_190_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_191_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_192_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_193_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_194_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_195_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_196_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_197_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_198_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_26_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_27_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_28_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_29_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_30_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_31_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_32_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_33_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_34_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_35_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_36_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_37_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_38_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_39_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_40_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_41_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_43_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_44_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_45_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_46_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_47_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_48_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_49_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_50_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_51_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_52_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_53_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_54_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_55_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_56_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_57_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_58_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_59_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_60_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_61_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_62_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_63_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_64_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_65_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_66_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_67_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_68_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_69_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_70_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_71_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_72_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_73_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_74_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_75_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_76_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_77_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_78_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_79_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_80_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_81_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_82_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_83_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_84_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_85_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_86_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_87_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_88_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_89_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_90_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_91_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_92_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_93_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_94_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_95_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_96_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_97_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_98_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_99_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_i_9_n_0 : STD_LOGIC;
  signal display_data_reg_1088_1151_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1152_1215_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1216_1279_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1280_1343_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1280_1343_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_1280_1343_0_2_i_4_n_0 : STD_LOGIC;
  signal display_data_reg_128_191_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1344_1407_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1408_1471_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1472_1535_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1536_1599_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1600_1663_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1600_1663_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_1664_1727_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1664_1727_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_1728_1791_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1792_1855_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1792_1855_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_1856_1919_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_1920_1983_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_192_255_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2240_2303_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2368_2431_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2432_2495_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2496_2559_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_256_319_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2624_2687_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2688_2751_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2752_2815_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2816_2879_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2880_2943_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_2944_3007_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3136_3199_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3136_3199_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_3200_3263_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3200_3263_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_320_383_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3264_3327_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3328_3391_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3328_3391_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_3392_3455_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3456_3519_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3584_3647_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3584_3647_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_3648_3711_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3712_3775_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_3840_3903_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_384_447_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_384_447_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_4032_4095_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_448_511_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_448_511_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_512_575_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_576_639_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_640_703_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_640_703_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_i_4_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_i_5_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_i_6_n_0 : STD_LOGIC;
  signal display_data_reg_704_767_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_768_831_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_832_895_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_832_895_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_896_959_0_2_i_2_n_0 : STD_LOGIC;
  signal display_data_reg_896_959_0_2_i_3_n_0 : STD_LOGIC;
  signal display_data_reg_960_1023_0_2_i_2_n_0 : STD_LOGIC;
  signal display_w_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_display_addr_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_display_addr_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \display_addr[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \display_addr[11]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \display_addr[11]_i_5\ : label is "soft_lutpair55";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \display_addr_reg[0]\ : label is "display_addr_reg[0]";
  attribute ORIG_CELL_NAME of \display_addr_reg[0]_rep\ : label is "display_addr_reg[0]";
  attribute ORIG_CELL_NAME of \display_addr_reg[0]_rep__0\ : label is "display_addr_reg[0]";
  attribute ORIG_CELL_NAME of \display_addr_reg[0]_rep__1\ : label is "display_addr_reg[0]";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \display_addr_reg[11]_i_2\ : label is 35;
  attribute ORIG_CELL_NAME of \display_addr_reg[1]\ : label is "display_addr_reg[1]";
  attribute ORIG_CELL_NAME of \display_addr_reg[1]_rep\ : label is "display_addr_reg[1]";
  attribute ORIG_CELL_NAME of \display_addr_reg[1]_rep__0\ : label is "display_addr_reg[1]";
  attribute ORIG_CELL_NAME of \display_addr_reg[3]\ : label is "display_addr_reg[3]";
  attribute ORIG_CELL_NAME of \display_addr_reg[3]_rep\ : label is "display_addr_reg[3]";
  attribute ORIG_CELL_NAME of \display_addr_reg[3]_rep__0\ : label is "display_addr_reg[3]";
  attribute ADDER_THRESHOLD of \display_addr_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \display_addr_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_114 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_116 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_123 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_127 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_13 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_135 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_15 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_168 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_169 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_17 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_174 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_175 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_180 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_183 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_184 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_197 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_198 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_58 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_71 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_72 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_73 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_75 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of display_data_reg_0_63_0_2_i_85 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of display_data_reg_1088_1151_0_2_i_2 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of display_data_reg_1152_1215_0_2_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of display_data_reg_1216_1279_0_2_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of display_data_reg_1280_1343_0_2_i_2 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of display_data_reg_1280_1343_0_2_i_3 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of display_data_reg_1280_1343_0_2_i_4 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of display_data_reg_128_191_0_2_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of display_data_reg_1344_1407_0_2_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of display_data_reg_1408_1471_0_2_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of display_data_reg_1472_1535_0_2_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of display_data_reg_1536_1599_0_2_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of display_data_reg_1600_1663_0_2_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of display_data_reg_1600_1663_0_2_i_3 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of display_data_reg_1664_1727_0_2_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of display_data_reg_1664_1727_0_2_i_3 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of display_data_reg_1728_1791_0_2_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of display_data_reg_1792_1855_0_2_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of display_data_reg_1792_1855_0_2_i_3 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of display_data_reg_1856_1919_0_2_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of display_data_reg_1920_1983_0_2_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of display_data_reg_192_255_0_2_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of display_data_reg_2240_2303_0_2_i_2 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of display_data_reg_2368_2431_0_2_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of display_data_reg_2432_2495_0_2_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of display_data_reg_2496_2559_0_2_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of display_data_reg_256_319_0_2_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of display_data_reg_2624_2687_0_2_i_2 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of display_data_reg_2688_2751_0_2_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of display_data_reg_2752_2815_0_2_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of display_data_reg_2816_2879_0_2_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of display_data_reg_2880_2943_0_2_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of display_data_reg_2944_3007_0_2_i_2 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of display_data_reg_3136_3199_0_2_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of display_data_reg_3136_3199_0_2_i_3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of display_data_reg_3200_3263_0_2_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of display_data_reg_3200_3263_0_2_i_3 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of display_data_reg_320_383_0_2_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of display_data_reg_3264_3327_0_2_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of display_data_reg_3328_3391_0_2_i_2 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of display_data_reg_3328_3391_0_2_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of display_data_reg_3392_3455_0_2_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of display_data_reg_3456_3519_0_2_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of display_data_reg_3584_3647_0_2_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of display_data_reg_3584_3647_0_2_i_3 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of display_data_reg_3648_3711_0_2_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of display_data_reg_3712_3775_0_2_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of display_data_reg_3840_3903_0_2_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of display_data_reg_384_447_0_2_i_2 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of display_data_reg_384_447_0_2_i_3 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of display_data_reg_4032_4095_0_2_i_2 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of display_data_reg_448_511_0_2_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of display_data_reg_448_511_0_2_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of display_data_reg_512_575_0_2_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of display_data_reg_576_639_0_2_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of display_data_reg_640_703_0_2_i_2 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of display_data_reg_640_703_0_2_i_3 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of display_data_reg_64_127_0_2_i_3 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of display_data_reg_64_127_0_2_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of display_data_reg_64_127_0_2_i_6 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of display_data_reg_704_767_0_2_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of display_data_reg_768_831_0_2_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of display_data_reg_832_895_0_2_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of display_data_reg_832_895_0_2_i_3 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of display_data_reg_896_959_0_2_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of display_data_reg_896_959_0_2_i_3 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of display_data_reg_960_1023_0_2_i_2 : label is "soft_lutpair25";
begin
  ADDRD(2 downto 0) <= \^addrd\(2 downto 0);
  \display_addr_reg[1]_rep_0\(1 downto 0) <= \^display_addr_reg[1]_rep_0\(1 downto 0);
  \display_addr_reg[3]_rep_0\(0) <= \^display_addr_reg[3]_rep_0\(0);
  \display_addr_reg[5]_0\(4 downto 0) <= \^display_addr_reg[5]_0\(4 downto 0);
\display_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(0),
      O => \display_addr[0]_i_1_n_0\
    );
\display_addr[0]_rep__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(0),
      O => \display_addr[0]_rep__0_i_1_n_0\
    );
\display_addr[0]_rep__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(0),
      O => \display_addr[0]_rep__1_i_1_n_0\
    );
\display_addr[0]_rep_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(0),
      O => \display_addr[0]_rep_i_1_n_0\
    );
\display_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => display_w_addr(0),
      I1 => display_w_addr(8),
      I2 => \^addrd\(2),
      I3 => display_w_addr(11),
      I4 => \display_addr[11]_i_3_n_0\,
      O => \display_addr[11]_i_1_n_0\
    );
\display_addr[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => \^display_addr_reg[5]_0\(3),
      I2 => \display_addr[11]_i_4_n_0\,
      I3 => \display_addr[11]_i_5_n_0\,
      I4 => display_w_addr(10),
      I5 => \^display_addr_reg[5]_0\(4),
      O => \display_addr[11]_i_3_n_0\
    );
\display_addr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^display_addr_reg[1]_rep_0\(1),
      I1 => display_w_addr(6),
      O => \display_addr[11]_i_4_n_0\
    );
\display_addr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(9),
      O => \display_addr[11]_i_5_n_0\
    );
\display_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => \display_addr[0]_i_1_n_0\,
      Q => display_w_addr(0),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => \display_addr[0]_rep_i_1_n_0\,
      Q => \^addrd\(0),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[0]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => \display_addr[0]_rep__0_i_1_n_0\,
      Q => \^display_addr_reg[1]_rep_0\(0),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[0]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => \display_addr[0]_rep__1_i_1_n_0\,
      Q => \display_addr_reg[0]_rep__1_0\,
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(10),
      Q => display_w_addr(10),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(11),
      Q => display_w_addr(11),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \display_addr_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_display_addr_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \display_addr_reg[11]_i_2_n_2\,
      CO(0) => \display_addr_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_display_addr_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => display_w_addr(11 downto 9)
    );
\display_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(1),
      Q => \^display_addr_reg[5]_0\(0),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(1),
      Q => \^display_addr_reg[1]_rep_0\(1),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[1]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(1),
      Q => \^addrd\(1),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(2),
      Q => \^display_addr_reg[5]_0\(1),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(3),
      Q => \^display_addr_reg[5]_0\(2),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(3),
      Q => \^display_addr_reg[3]_rep_0\(0),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[3]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(3),
      Q => \^addrd\(2),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(4),
      Q => \^display_addr_reg[5]_0\(3),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \display_addr_reg[4]_i_1_n_0\,
      CO(2) => \display_addr_reg[4]_i_1_n_1\,
      CO(1) => \display_addr_reg[4]_i_1_n_2\,
      CO(0) => \display_addr_reg[4]_i_1_n_3\,
      CYINIT => display_w_addr(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \^display_addr_reg[5]_0\(3),
      S(2) => \^addrd\(2),
      S(1) => \^display_addr_reg[5]_0\(1),
      S(0) => \^display_addr_reg[1]_rep_0\(1)
    );
\display_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(5),
      Q => \^display_addr_reg[5]_0\(4),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(6),
      Q => display_w_addr(6),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(7),
      Q => display_w_addr(7),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(8),
      Q => display_w_addr(8),
      R => \display_addr[11]_i_1_n_0\
    );
\display_addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \display_addr_reg[4]_i_1_n_0\,
      CO(3) => \display_addr_reg[8]_i_1_n_0\,
      CO(2) => \display_addr_reg[8]_i_1_n_1\,
      CO(1) => \display_addr_reg[8]_i_1_n_2\,
      CO(0) => \display_addr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 1) => display_w_addr(8 downto 6),
      S(0) => \^display_addr_reg[5]_0\(4)
    );
\display_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100m,
      CE => '1',
      D => data0(9),
      Q => display_w_addr(9),
      R => \display_addr[11]_i_1_n_0\
    );
display_data_reg_0_63_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E01FE0"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_9_n_0,
      I1 => display_data_reg_0_63_0_2_i_10_n_0,
      I2 => display_data_reg_0_63_0_2_i_11_n_0,
      I3 => display_data_reg_0_63_0_2_i_12_n_0,
      I4 => display_w_addr(11),
      O => display_w_data(0)
    );
display_data_reg_0_63_0_2_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2222222"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_28_n_0,
      I1 => display_w_addr(10),
      I2 => display_w_addr(8),
      I3 => display_data_reg_0_63_0_2_i_29_n_0,
      I4 => display_w_addr(7),
      I5 => display_w_addr(11),
      O => display_data_reg_0_63_0_2_i_10_n_0
    );
display_data_reg_0_63_0_2_i_100: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(19),
      I1 => dmem_addr(23),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(27),
      I4 => display_w_addr(0),
      I5 => dmem_addr(31),
      O => display_data_reg_0_63_0_2_i_100_n_0
    );
display_data_reg_0_63_0_2_i_101: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_154_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => dmem_i_data(3),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(7),
      O => display_data_reg_0_63_0_2_i_101_n_0
    );
display_data_reg_0_63_0_2_i_102: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_i_data(27),
      I3 => display_w_addr(0),
      I4 => dmem_i_data(31),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_102_n_0
    );
display_data_reg_0_63_0_2_i_103: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(3),
      I1 => dmem_addr(7),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(11),
      I4 => display_w_addr(0),
      I5 => dmem_addr(15),
      O => display_data_reg_0_63_0_2_i_103_n_0
    );
display_data_reg_0_63_0_2_i_104: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_155_n_0,
      I1 => display_data_reg_0_63_0_2_i_156_n_0,
      O => display_data_reg_0_63_0_2_i_104_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_105: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020202000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => alu_res(0),
      I4 => display_w_addr(0),
      I5 => alu_res(4),
      O => display_data_reg_0_63_0_2_i_105_n_0
    );
display_data_reg_0_63_0_2_i_106: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => alu_res(28),
      I1 => display_data_reg_0_63_0_2_i_135_n_0,
      I2 => alu_res(24),
      I3 => display_data_reg_0_63_0_2_i_136_n_0,
      I4 => display_data_reg_0_63_0_2_i_157_n_0,
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_106_n_0
    );
display_data_reg_0_63_0_2_i_107: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(16),
      I1 => dmem_addr(20),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(24),
      I4 => display_w_addr(0),
      I5 => dmem_addr(28),
      O => display_data_reg_0_63_0_2_i_107_n_0
    );
display_data_reg_0_63_0_2_i_108: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_158_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => dmem_i_data(0),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(4),
      O => display_data_reg_0_63_0_2_i_108_n_0
    );
display_data_reg_0_63_0_2_i_109: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_i_data(24),
      I3 => display_w_addr(0),
      I4 => dmem_i_data(28),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_109_n_0
    );
display_data_reg_0_63_0_2_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2222222"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_30_n_0,
      I1 => display_w_addr(10),
      I2 => display_w_addr(8),
      I3 => display_data_reg_0_63_0_2_i_31_n_0,
      I4 => display_w_addr(7),
      I5 => display_w_addr(11),
      O => display_data_reg_0_63_0_2_i_11_n_0
    );
display_data_reg_0_63_0_2_i_110: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(0),
      I1 => dmem_addr(4),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(8),
      I4 => display_w_addr(0),
      I5 => dmem_addr(12),
      O => display_data_reg_0_63_0_2_i_110_n_0
    );
display_data_reg_0_63_0_2_i_111: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_159_n_0,
      I1 => display_data_reg_0_63_0_2_i_160_n_0,
      O => display_data_reg_0_63_0_2_i_111_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_112: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_161_n_0,
      I1 => display_data_reg_0_63_0_2_i_162_n_0,
      O => display_data_reg_0_63_0_2_i_112_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_113: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_163_n_0,
      I1 => display_data_reg_0_63_0_2_i_164_n_0,
      O => display_data_reg_0_63_0_2_i_113_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_114: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01015101"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => display_w_addr(7),
      I2 => \^display_addr_reg[1]_rep_0\(1),
      I3 => display_w_addr(6),
      I4 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_114_n_0
    );
display_data_reg_0_63_0_2_i_115: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3EBEBC3C8EBEBEB"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => display_w_addr(9),
      I2 => display_w_addr(8),
      I3 => display_w_addr(7),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => display_w_addr(6),
      O => display_data_reg_0_63_0_2_i_115_n_0
    );
display_data_reg_0_63_0_2_i_116: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCD303"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(8),
      I3 => display_w_addr(6),
      I4 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_116_n_0
    );
display_data_reg_0_63_0_2_i_117: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000007000000000"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(8),
      I2 => display_w_addr(10),
      I3 => \^display_addr_reg[5]_0\(3),
      I4 => \^display_addr_reg[5]_0\(1),
      I5 => display_data_reg_0_63_0_2_i_165_n_0,
      O => display_data_reg_0_63_0_2_i_117_n_0
    );
display_data_reg_0_63_0_2_i_118: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8B8B8B8B8B8B"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_166_n_0,
      I1 => display_w_addr(9),
      I2 => display_data_reg_0_63_0_2_i_167_n_0,
      I3 => display_data_reg_0_63_0_2_i_168_n_0,
      I4 => display_w_addr(8),
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_118_n_0
    );
display_data_reg_0_63_0_2_i_119: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => \^display_addr_reg[5]_0\(3),
      I2 => display_w_addr(8),
      I3 => display_w_addr(10),
      I4 => display_data_reg_0_63_0_2_i_169_n_0,
      O => display_data_reg_0_63_0_2_i_119_n_0
    );
display_data_reg_0_63_0_2_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_32_n_0,
      I1 => display_w_addr(7),
      I2 => display_w_addr(8),
      I3 => display_data_reg_0_63_0_2_i_33_n_0,
      I4 => display_w_addr(10),
      I5 => display_data_reg_0_63_0_2_i_34_n_0,
      O => display_data_reg_0_63_0_2_i_12_n_0
    );
display_data_reg_0_63_0_2_i_120: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAFEAAFEFFFE"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_170_n_0,
      I1 => display_data_reg_0_63_0_2_i_171_n_0,
      I2 => display_data_reg_0_63_0_2_i_172_n_0,
      I3 => display_w_addr(9),
      I4 => display_data_reg_0_63_0_2_i_173_n_0,
      I5 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_120_n_0
    );
display_data_reg_0_63_0_2_i_121: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088FF88F0880088"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_174_n_0,
      I1 => display_data_reg_0_63_0_2_i_175_n_0,
      I2 => display_data_reg_0_63_0_2_i_176_n_0,
      I3 => \^display_addr_reg[5]_0\(4),
      I4 => display_w_addr(7),
      I5 => display_data_reg_0_63_0_2_i_177_n_0,
      O => display_data_reg_0_63_0_2_i_121_n_0
    );
display_data_reg_0_63_0_2_i_122: unisim.vcomponents.LUT6
    generic map(
      INIT => X"655BA8A054572A80"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      I4 => display_w_addr(9),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_122_n_0
    );
display_data_reg_0_63_0_2_i_123: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(9),
      O => display_data_reg_0_63_0_2_i_123_n_0
    );
display_data_reg_0_63_0_2_i_124: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_178_n_0,
      I1 => display_data_reg_0_63_0_2_i_179_n_0,
      O => display_data_reg_0_63_0_2_i_124_n_0,
      S => display_w_addr(7)
    );
display_data_reg_0_63_0_2_i_125: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEBFFFBFFF97DF"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => display_w_addr(9),
      I2 => display_w_addr(8),
      I3 => display_w_addr(7),
      I4 => \^display_addr_reg[5]_0\(1),
      I5 => \^display_addr_reg[1]_rep_0\(1),
      O => display_data_reg_0_63_0_2_i_125_n_0
    );
display_data_reg_0_63_0_2_i_126: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000004404"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(6),
      I3 => \^display_addr_reg[1]_rep_0\(1),
      I4 => display_w_addr(8),
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_126_n_0
    );
display_data_reg_0_63_0_2_i_127: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(8),
      I3 => display_w_addr(9),
      I4 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_127_n_0
    );
display_data_reg_0_63_0_2_i_128: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000300"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_180_n_0,
      I1 => display_w_addr(7),
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => display_w_addr(6),
      I5 => display_w_addr(10),
      O => display_data_reg_0_63_0_2_i_128_n_0
    );
display_data_reg_0_63_0_2_i_129: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFFBF1FFBAAFFB"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => \^display_addr_reg[1]_rep_0\(1),
      I2 => display_w_addr(7),
      I3 => display_w_addr(6),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_129_n_0
    );
display_data_reg_0_63_0_2_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      O => display_data_reg_0_63_0_2_i_13_n_0
    );
display_data_reg_0_63_0_2_i_130: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEBFFEBAAEBAAEB"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_w_addr(6),
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^display_addr_reg[5]_0\(4),
      I4 => display_w_addr(7),
      I5 => \^display_addr_reg[1]_rep_0\(1),
      O => display_data_reg_0_63_0_2_i_130_n_0
    );
display_data_reg_0_63_0_2_i_131: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80A0800A800080"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => pc(30),
      I2 => display_w_addr(0),
      I3 => \^display_addr_reg[5]_0\(0),
      I4 => pc(26),
      I5 => pc(22),
      O => display_data_reg_0_63_0_2_i_131_n_0
    );
display_data_reg_0_63_0_2_i_132: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => inst(30),
      I1 => display_w_addr(0),
      I2 => inst(26),
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => \^display_addr_reg[5]_0\(0),
      O => display_data_reg_0_63_0_2_i_132_n_0
    );
display_data_reg_0_63_0_2_i_133: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_181_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => pc(2),
      I4 => display_w_addr(0),
      O => display_data_reg_0_63_0_2_i_133_n_0
    );
display_data_reg_0_63_0_2_i_134: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_182_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => inst(2),
      I4 => display_w_addr(0),
      I5 => inst(6),
      O => display_data_reg_0_63_0_2_i_134_n_0
    );
display_data_reg_0_63_0_2_i_135: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => display_w_addr(0),
      O => display_data_reg_0_63_0_2_i_135_n_0
    );
display_data_reg_0_63_0_2_i_136: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => \^display_addr_reg[5]_0\(0),
      O => display_data_reg_0_63_0_2_i_136_n_0
    );
display_data_reg_0_63_0_2_i_137: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => alu_res(10),
      I1 => alu_res(14),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => alu_res(18),
      I4 => display_w_addr(0),
      I5 => alu_res(22),
      O => display_data_reg_0_63_0_2_i_137_n_0
    );
display_data_reg_0_63_0_2_i_138: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_i_data(10),
      I1 => dmem_i_data(14),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_i_data(18),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(22),
      O => display_data_reg_0_63_0_2_i_138_n_0
    );
display_data_reg_0_63_0_2_i_139: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => dmem_o_data(6),
      I2 => display_data_reg_0_63_0_2_i_183_n_0,
      I3 => dmem_o_data(2),
      I4 => display_data_reg_0_63_0_2_i_184_n_0,
      I5 => display_data_reg_0_63_0_2_i_185_n_0,
      O => display_data_reg_0_63_0_2_i_139_n_0
    );
display_data_reg_0_63_0_2_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010001000000FFFF"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(9),
      I2 => display_w_addr(10),
      I3 => display_data_reg_0_63_0_2_i_35_n_0,
      I4 => display_data_reg_0_63_0_2_i_36_n_0,
      I5 => display_w_addr(11),
      O => display_data_reg_0_63_0_2_i_14_n_0
    );
display_data_reg_0_63_0_2_i_140: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_o_data(26),
      I3 => display_w_addr(0),
      I4 => dmem_o_data(30),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_140_n_0
    );
display_data_reg_0_63_0_2_i_141: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80A0800A800080"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => pc(29),
      I2 => display_w_addr(0),
      I3 => \^display_addr_reg[5]_0\(0),
      I4 => pc(25),
      I5 => pc(21),
      O => display_data_reg_0_63_0_2_i_141_n_0
    );
display_data_reg_0_63_0_2_i_142: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => inst(29),
      I1 => display_w_addr(0),
      I2 => inst(25),
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => \^display_addr_reg[5]_0\(0),
      O => display_data_reg_0_63_0_2_i_142_n_0
    );
display_data_reg_0_63_0_2_i_143: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_186_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => pc(1),
      I4 => display_w_addr(0),
      O => display_data_reg_0_63_0_2_i_143_n_0
    );
display_data_reg_0_63_0_2_i_144: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_187_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => inst(1),
      I4 => display_w_addr(0),
      I5 => inst(5),
      O => display_data_reg_0_63_0_2_i_144_n_0
    );
display_data_reg_0_63_0_2_i_145: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => alu_res(9),
      I1 => alu_res(13),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => alu_res(17),
      I4 => display_w_addr(0),
      I5 => alu_res(21),
      O => display_data_reg_0_63_0_2_i_145_n_0
    );
display_data_reg_0_63_0_2_i_146: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_i_data(9),
      I1 => dmem_i_data(13),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_i_data(17),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(21),
      O => display_data_reg_0_63_0_2_i_146_n_0
    );
display_data_reg_0_63_0_2_i_147: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => dmem_o_data(5),
      I2 => display_data_reg_0_63_0_2_i_183_n_0,
      I3 => dmem_o_data(1),
      I4 => display_data_reg_0_63_0_2_i_184_n_0,
      I5 => display_data_reg_0_63_0_2_i_188_n_0,
      O => display_data_reg_0_63_0_2_i_147_n_0
    );
display_data_reg_0_63_0_2_i_148: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_o_data(25),
      I3 => display_w_addr(0),
      I4 => dmem_o_data(29),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_148_n_0
    );
display_data_reg_0_63_0_2_i_149: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80A0800A800080"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => pc(31),
      I2 => display_w_addr(0),
      I3 => \^display_addr_reg[5]_0\(0),
      I4 => pc(27),
      I5 => pc(23),
      O => display_data_reg_0_63_0_2_i_149_n_0
    );
display_data_reg_0_63_0_2_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_data_reg_0_63_0_2_i_37_n_0,
      I2 => display_w_addr(10),
      I3 => display_w_addr(9),
      I4 => display_w_addr(8),
      O => display_data_reg_0_63_0_2_i_15_n_0
    );
display_data_reg_0_63_0_2_i_150: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => inst(31),
      I1 => display_w_addr(0),
      I2 => inst(27),
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => \^display_addr_reg[5]_0\(0),
      O => display_data_reg_0_63_0_2_i_150_n_0
    );
display_data_reg_0_63_0_2_i_151: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_189_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => pc(3),
      I4 => display_w_addr(0),
      O => display_data_reg_0_63_0_2_i_151_n_0
    );
display_data_reg_0_63_0_2_i_152: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_190_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => inst(3),
      I4 => display_w_addr(0),
      I5 => inst(7),
      O => display_data_reg_0_63_0_2_i_152_n_0
    );
display_data_reg_0_63_0_2_i_153: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => alu_res(11),
      I1 => alu_res(15),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => alu_res(19),
      I4 => display_w_addr(0),
      I5 => alu_res(23),
      O => display_data_reg_0_63_0_2_i_153_n_0
    );
display_data_reg_0_63_0_2_i_154: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_i_data(11),
      I1 => dmem_i_data(15),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_i_data(19),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(23),
      O => display_data_reg_0_63_0_2_i_154_n_0
    );
display_data_reg_0_63_0_2_i_155: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => dmem_o_data(7),
      I2 => display_data_reg_0_63_0_2_i_183_n_0,
      I3 => dmem_o_data(3),
      I4 => display_data_reg_0_63_0_2_i_184_n_0,
      I5 => display_data_reg_0_63_0_2_i_191_n_0,
      O => display_data_reg_0_63_0_2_i_155_n_0
    );
display_data_reg_0_63_0_2_i_156: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_o_data(27),
      I3 => display_w_addr(0),
      I4 => dmem_o_data(31),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_156_n_0
    );
display_data_reg_0_63_0_2_i_157: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => alu_res(8),
      I1 => alu_res(12),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => alu_res(16),
      I4 => display_w_addr(0),
      I5 => alu_res(20),
      O => display_data_reg_0_63_0_2_i_157_n_0
    );
display_data_reg_0_63_0_2_i_158: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_i_data(8),
      I1 => dmem_i_data(12),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_i_data(16),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(20),
      O => display_data_reg_0_63_0_2_i_158_n_0
    );
display_data_reg_0_63_0_2_i_159: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => dmem_o_data(4),
      I2 => display_data_reg_0_63_0_2_i_183_n_0,
      I3 => dmem_o_data(0),
      I4 => display_data_reg_0_63_0_2_i_184_n_0,
      I5 => display_data_reg_0_63_0_2_i_192_n_0,
      O => display_data_reg_0_63_0_2_i_159_n_0
    );
display_data_reg_0_63_0_2_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555545454"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_data_reg_0_63_0_2_i_38_n_0,
      I2 => display_data_reg_0_63_0_2_i_39_n_0,
      I3 => display_w_addr(0),
      I4 => display_data_reg_0_63_0_2_i_40_n_0,
      I5 => display_data_reg_0_63_0_2_i_41_n_0,
      O => display_data_reg_0_63_0_2_i_16_n_0
    );
display_data_reg_0_63_0_2_i_160: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_o_data(24),
      I3 => display_w_addr(0),
      I4 => dmem_o_data(28),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_160_n_0
    );
display_data_reg_0_63_0_2_i_161: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80A0800A800080"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => pc(28),
      I2 => display_w_addr(0),
      I3 => \^display_addr_reg[5]_0\(0),
      I4 => pc(24),
      I5 => pc(20),
      O => display_data_reg_0_63_0_2_i_161_n_0
    );
display_data_reg_0_63_0_2_i_162: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => inst(28),
      I1 => display_w_addr(0),
      I2 => inst(24),
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => \^display_addr_reg[5]_0\(0),
      O => display_data_reg_0_63_0_2_i_162_n_0
    );
display_data_reg_0_63_0_2_i_163: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_193_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => pc(0),
      I4 => display_w_addr(0),
      O => display_data_reg_0_63_0_2_i_163_n_0
    );
display_data_reg_0_63_0_2_i_164: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_194_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => inst(0),
      I4 => display_w_addr(0),
      I5 => inst(4),
      O => display_data_reg_0_63_0_2_i_164_n_0
    );
display_data_reg_0_63_0_2_i_165: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA400000051000"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_w_addr(9),
      I2 => \^display_addr_reg[1]_rep_0\(1),
      I3 => display_w_addr(7),
      I4 => display_w_addr(8),
      I5 => \^display_addr_reg[5]_0\(4),
      O => display_data_reg_0_63_0_2_i_165_n_0
    );
display_data_reg_0_63_0_2_i_166: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_195_n_0,
      I1 => display_data_reg_0_63_0_2_i_196_n_0,
      O => display_data_reg_0_63_0_2_i_166_n_0,
      S => display_w_addr(6)
    );
display_data_reg_0_63_0_2_i_167: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010000C0000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => display_w_addr(7),
      I2 => display_w_addr(6),
      I3 => display_w_addr(10),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => display_w_addr(8),
      O => display_data_reg_0_63_0_2_i_167_n_0
    );
display_data_reg_0_63_0_2_i_168: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11155119"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => \^display_addr_reg[5]_0\(4),
      I3 => display_w_addr(6),
      I4 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_168_n_0
    );
display_data_reg_0_63_0_2_i_169: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0224"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_169_n_0
    );
display_data_reg_0_63_0_2_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_17_n_0
    );
display_data_reg_0_63_0_2_i_170: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => \^display_addr_reg[1]_rep_0\(1),
      I2 => display_w_addr(8),
      I3 => display_w_addr(7),
      I4 => display_w_addr(6),
      I5 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_170_n_0
    );
display_data_reg_0_63_0_2_i_171: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022222202020020"
    )
        port map (
      I0 => display_data_reg_384_447_0_2_i_2_n_0,
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => display_w_addr(6),
      I3 => \^display_addr_reg[1]_rep_0\(1),
      I4 => \^display_addr_reg[5]_0\(3),
      I5 => \^display_addr_reg[5]_0\(4),
      O => display_data_reg_0_63_0_2_i_171_n_0
    );
display_data_reg_0_63_0_2_i_172: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA30000000"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_197_n_0,
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => display_data_reg_0_63_0_2_i_198_n_0,
      I3 => display_w_addr(6),
      I4 => display_w_addr(8),
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_172_n_0
    );
display_data_reg_0_63_0_2_i_173: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFF3F28E38C2CE"
    )
        port map (
      I0 => \^display_addr_reg[1]_rep_0\(1),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(7),
      I3 => \^display_addr_reg[5]_0\(3),
      I4 => display_w_addr(6),
      I5 => display_w_addr(8),
      O => display_data_reg_0_63_0_2_i_173_n_0
    );
display_data_reg_0_63_0_2_i_174: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(9),
      I2 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_174_n_0
    );
display_data_reg_0_63_0_2_i_175: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A4000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => \^display_addr_reg[1]_rep_0\(1),
      I2 => display_w_addr(7),
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => display_w_addr(6),
      O => display_data_reg_0_63_0_2_i_175_n_0
    );
display_data_reg_0_63_0_2_i_176: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400015405440"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_w_addr(9),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => display_w_addr(8),
      I4 => \^display_addr_reg[1]_rep_0\(1),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_176_n_0
    );
display_data_reg_0_63_0_2_i_177: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004004454015001"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(6),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => display_w_addr(8),
      I4 => \^display_addr_reg[1]_rep_0\(1),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_177_n_0
    );
display_data_reg_0_63_0_2_i_178: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088CC8C00CC00C8"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_w_addr(9),
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_w_addr(6),
      I4 => display_w_addr(8),
      I5 => \^display_addr_reg[5]_0\(4),
      O => display_data_reg_0_63_0_2_i_178_n_0
    );
display_data_reg_0_63_0_2_i_179: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444500EC55004588"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_w_addr(8),
      I4 => display_w_addr(6),
      I5 => display_w_addr(9),
      O => display_data_reg_0_63_0_2_i_179_n_0
    );
display_data_reg_0_63_0_2_i_180: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^display_addr_reg[1]_rep_0\(1),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(8),
      O => display_data_reg_0_63_0_2_i_180_n_0
    );
display_data_reg_0_63_0_2_i_181: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pc(6),
      I1 => pc(10),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => pc(14),
      I4 => display_w_addr(0),
      I5 => pc(18),
      O => display_data_reg_0_63_0_2_i_181_n_0
    );
display_data_reg_0_63_0_2_i_182: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => inst(10),
      I1 => inst(14),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => inst(18),
      I4 => display_w_addr(0),
      I5 => inst(22),
      O => display_data_reg_0_63_0_2_i_182_n_0
    );
display_data_reg_0_63_0_2_i_183: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_w_addr(0),
      I2 => \^display_addr_reg[5]_0\(0),
      O => display_data_reg_0_63_0_2_i_183_n_0
    );
display_data_reg_0_63_0_2_i_184: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_184_n_0
    );
display_data_reg_0_63_0_2_i_185: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_o_data(10),
      I1 => dmem_o_data(14),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_o_data(18),
      I4 => display_w_addr(0),
      I5 => dmem_o_data(22),
      O => display_data_reg_0_63_0_2_i_185_n_0
    );
display_data_reg_0_63_0_2_i_186: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pc(5),
      I1 => pc(9),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => pc(13),
      I4 => display_w_addr(0),
      I5 => pc(17),
      O => display_data_reg_0_63_0_2_i_186_n_0
    );
display_data_reg_0_63_0_2_i_187: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => inst(9),
      I1 => inst(13),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => inst(17),
      I4 => display_w_addr(0),
      I5 => inst(21),
      O => display_data_reg_0_63_0_2_i_187_n_0
    );
display_data_reg_0_63_0_2_i_188: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_o_data(9),
      I1 => dmem_o_data(13),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_o_data(17),
      I4 => display_w_addr(0),
      I5 => dmem_o_data(21),
      O => display_data_reg_0_63_0_2_i_188_n_0
    );
display_data_reg_0_63_0_2_i_189: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pc(7),
      I1 => pc(11),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => pc(15),
      I4 => display_w_addr(0),
      I5 => pc(19),
      O => display_data_reg_0_63_0_2_i_189_n_0
    );
display_data_reg_0_63_0_2_i_190: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => inst(11),
      I1 => inst(15),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => inst(19),
      I4 => display_w_addr(0),
      I5 => inst(23),
      O => display_data_reg_0_63_0_2_i_190_n_0
    );
display_data_reg_0_63_0_2_i_191: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_o_data(11),
      I1 => dmem_o_data(15),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_o_data(19),
      I4 => display_w_addr(0),
      I5 => dmem_o_data(23),
      O => display_data_reg_0_63_0_2_i_191_n_0
    );
display_data_reg_0_63_0_2_i_192: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_o_data(8),
      I1 => dmem_o_data(12),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_o_data(16),
      I4 => display_w_addr(0),
      I5 => dmem_o_data(20),
      O => display_data_reg_0_63_0_2_i_192_n_0
    );
display_data_reg_0_63_0_2_i_193: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pc(4),
      I1 => pc(8),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => pc(12),
      I4 => display_w_addr(0),
      I5 => pc(16),
      O => display_data_reg_0_63_0_2_i_193_n_0
    );
display_data_reg_0_63_0_2_i_194: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => inst(8),
      I1 => inst(12),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => inst(16),
      I4 => display_w_addr(0),
      I5 => inst(20),
      O => display_data_reg_0_63_0_2_i_194_n_0
    );
display_data_reg_0_63_0_2_i_195: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE7EFFDEEEEEEEE"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(10),
      I2 => \^display_addr_reg[5]_0\(4),
      I3 => display_w_addr(8),
      I4 => \^display_addr_reg[5]_0\(3),
      I5 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_195_n_0
    );
display_data_reg_0_63_0_2_i_196: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEEEFAFEFEFEBE"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(10),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => display_w_addr(7),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_196_n_0
    );
display_data_reg_0_63_0_2_i_197: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04004444"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => \^display_addr_reg[1]_rep_0\(1),
      I3 => \^display_addr_reg[5]_0\(3),
      I4 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_197_n_0
    );
display_data_reg_0_63_0_2_i_198: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^display_addr_reg[1]_rep_0\(1),
      I1 => \^display_addr_reg[5]_0\(4),
      O => display_data_reg_0_63_0_2_i_198_n_0
    );
display_data_reg_0_63_0_2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30FF8A00"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_9_n_0,
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_12_n_0,
      I3 => display_data_reg_0_63_0_2_i_11_n_0,
      I4 => display_data_reg_0_63_0_2_i_10_n_0,
      O => display_w_data(1)
    );
display_data_reg_0_63_0_2_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(9),
      I3 => display_w_addr(6),
      I4 => display_data_reg_0_63_0_2_i_43_n_0,
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_26_n_0
    );
display_data_reg_0_63_0_2_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50FF440050004400"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_0_63_0_2_i_44_n_0,
      I2 => display_data_reg_0_63_0_2_i_45_n_0,
      I3 => \^display_addr_reg[5]_0\(4),
      I4 => display_w_addr(9),
      I5 => display_data_reg_0_63_0_2_i_46_n_0,
      O => display_data_reg_0_63_0_2_i_27_n_0
    );
display_data_reg_0_63_0_2_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(9),
      I3 => display_w_addr(6),
      I4 => display_data_reg_0_63_0_2_i_47_n_0,
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_28_n_0
    );
display_data_reg_0_63_0_2_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50FF440050004400"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_0_63_0_2_i_48_n_0,
      I2 => display_data_reg_0_63_0_2_i_49_n_0,
      I3 => \^display_addr_reg[5]_0\(4),
      I4 => display_w_addr(9),
      I5 => display_data_reg_0_63_0_2_i_50_n_0,
      O => display_data_reg_0_63_0_2_i_29_n_0
    );
display_data_reg_0_63_0_2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FF0000"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_12_n_0,
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_10_n_0,
      I3 => display_data_reg_0_63_0_2_i_11_n_0,
      I4 => display_data_reg_0_63_0_2_i_9_n_0,
      O => display_w_data(2)
    );
display_data_reg_0_63_0_2_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(9),
      I3 => display_w_addr(6),
      I4 => display_data_reg_0_63_0_2_i_51_n_0,
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_30_n_0
    );
display_data_reg_0_63_0_2_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50FF440050004400"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_0_63_0_2_i_52_n_0,
      I2 => display_data_reg_0_63_0_2_i_53_n_0,
      I3 => \^display_addr_reg[5]_0\(4),
      I4 => display_w_addr(9),
      I5 => display_data_reg_0_63_0_2_i_54_n_0,
      O => display_data_reg_0_63_0_2_i_31_n_0
    );
display_data_reg_0_63_0_2_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50FF440050004400"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_0_63_0_2_i_55_n_0,
      I2 => display_data_reg_0_63_0_2_i_56_n_0,
      I3 => \^display_addr_reg[5]_0\(4),
      I4 => display_w_addr(9),
      I5 => display_data_reg_0_63_0_2_i_57_n_0,
      O => display_data_reg_0_63_0_2_i_32_n_0
    );
display_data_reg_0_63_0_2_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => display_data_reg_0_63_0_2_i_58_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^addrd\(2),
      I4 => display_w_addr(6),
      I5 => display_w_addr(9),
      O => display_data_reg_0_63_0_2_i_33_n_0
    );
display_data_reg_0_63_0_2_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(9),
      I3 => display_w_addr(6),
      I4 => display_data_reg_0_63_0_2_i_59_n_0,
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_34_n_0
    );
display_data_reg_0_63_0_2_i_35: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_61_n_0,
      I1 => display_data_reg_0_63_0_2_i_62_n_0,
      O => display_data_reg_0_63_0_2_i_35_n_0,
      S => display_data_reg_0_63_0_2_i_60_n_0
    );
display_data_reg_0_63_0_2_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055155500"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_63_n_0,
      I1 => display_w_addr(10),
      I2 => display_data_reg_0_63_0_2_i_64_n_0,
      I3 => display_w_addr(0),
      I4 => display_data_reg_0_63_0_2_i_65_n_0,
      I5 => display_data_reg_0_63_0_2_i_66_n_0,
      O => display_data_reg_0_63_0_2_i_36_n_0
    );
display_data_reg_0_63_0_2_i_37: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_67_n_0,
      I1 => display_data_reg_0_63_0_2_i_68_n_0,
      O => display_data_reg_0_63_0_2_i_37_n_0,
      S => display_w_addr(7)
    );
display_data_reg_0_63_0_2_i_38: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_69_n_0,
      I1 => display_data_reg_0_63_0_2_i_70_n_0,
      O => display_data_reg_0_63_0_2_i_38_n_0,
      S => display_w_addr(10)
    );
display_data_reg_0_63_0_2_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => display_w_addr(6),
      I2 => display_data_reg_0_63_0_2_i_71_n_0,
      I3 => \^display_addr_reg[5]_0\(1),
      I4 => display_w_addr(0),
      I5 => display_data_reg_0_63_0_2_i_72_n_0,
      O => display_data_reg_0_63_0_2_i_39_n_0
    );
display_data_reg_0_63_0_2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8A80"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_13_n_0,
      I1 => display_data_reg_0_63_0_2_i_14_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_15_n_0,
      I4 => display_data_reg_0_63_0_2_i_16_n_0,
      I5 => display_data_reg_0_63_0_2_i_17_n_0,
      O => \display_addr_reg[3]_rep__0_1\
    );
display_data_reg_0_63_0_2_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_73_n_0,
      I1 => display_w_addr(9),
      I2 => \^display_addr_reg[1]_rep_0\(1),
      I3 => display_data_reg_0_63_0_2_i_74_n_0,
      I4 => display_w_addr(10),
      I5 => display_data_reg_0_63_0_2_i_75_n_0,
      O => display_data_reg_0_63_0_2_i_40_n_0
    );
display_data_reg_0_63_0_2_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000010000"
    )
        port map (
      I0 => display_w_addr(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => display_data_reg_0_63_0_2_i_76_n_0,
      I3 => display_w_addr(7),
      I4 => display_w_addr(8),
      I5 => display_w_addr(9),
      O => display_data_reg_0_63_0_2_i_41_n_0
    );
display_data_reg_0_63_0_2_i_43: unisim.vcomponents.MUXF8
     port map (
      I0 => display_data_reg_0_63_0_2_i_77_n_0,
      I1 => display_data_reg_0_63_0_2_i_78_n_0,
      O => display_data_reg_0_63_0_2_i_43_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_44: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_79_n_0,
      I1 => display_data_reg_0_63_0_2_i_80_n_0,
      O => display_data_reg_0_63_0_2_i_44_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_81_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_data_reg_0_63_0_2_i_82_n_0,
      I4 => \^addrd\(2),
      I5 => display_data_reg_0_63_0_2_i_83_n_0,
      O => display_data_reg_0_63_0_2_i_45_n_0
    );
display_data_reg_0_63_0_2_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_84_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_85_n_0,
      I5 => display_data_reg_0_63_0_2_i_86_n_0,
      O => display_data_reg_0_63_0_2_i_46_n_0
    );
display_data_reg_0_63_0_2_i_47: unisim.vcomponents.MUXF8
     port map (
      I0 => display_data_reg_0_63_0_2_i_87_n_0,
      I1 => display_data_reg_0_63_0_2_i_88_n_0,
      O => display_data_reg_0_63_0_2_i_47_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_48: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_89_n_0,
      I1 => display_data_reg_0_63_0_2_i_90_n_0,
      O => display_data_reg_0_63_0_2_i_48_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_91_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_data_reg_0_63_0_2_i_92_n_0,
      I4 => \^addrd\(2),
      I5 => display_data_reg_0_63_0_2_i_93_n_0,
      O => display_data_reg_0_63_0_2_i_49_n_0
    );
display_data_reg_0_63_0_2_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_94_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_85_n_0,
      I5 => display_data_reg_0_63_0_2_i_95_n_0,
      O => display_data_reg_0_63_0_2_i_50_n_0
    );
display_data_reg_0_63_0_2_i_51: unisim.vcomponents.MUXF8
     port map (
      I0 => display_data_reg_0_63_0_2_i_96_n_0,
      I1 => display_data_reg_0_63_0_2_i_97_n_0,
      O => display_data_reg_0_63_0_2_i_51_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_52: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_98_n_0,
      I1 => display_data_reg_0_63_0_2_i_99_n_0,
      O => display_data_reg_0_63_0_2_i_52_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_100_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_data_reg_0_63_0_2_i_101_n_0,
      I4 => \^addrd\(2),
      I5 => display_data_reg_0_63_0_2_i_102_n_0,
      O => display_data_reg_0_63_0_2_i_53_n_0
    );
display_data_reg_0_63_0_2_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_103_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_85_n_0,
      I5 => display_data_reg_0_63_0_2_i_104_n_0,
      O => display_data_reg_0_63_0_2_i_54_n_0
    );
display_data_reg_0_63_0_2_i_55: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_105_n_0,
      I1 => display_data_reg_0_63_0_2_i_106_n_0,
      O => display_data_reg_0_63_0_2_i_55_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_107_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_data_reg_0_63_0_2_i_108_n_0,
      I4 => \^addrd\(2),
      I5 => display_data_reg_0_63_0_2_i_109_n_0,
      O => display_data_reg_0_63_0_2_i_56_n_0
    );
display_data_reg_0_63_0_2_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_110_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_85_n_0,
      I5 => display_data_reg_0_63_0_2_i_111_n_0,
      O => display_data_reg_0_63_0_2_i_57_n_0
    );
display_data_reg_0_63_0_2_i_58: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => display_w_addr(0),
      I1 => mem_wen,
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_58_n_0
    );
display_data_reg_0_63_0_2_i_59: unisim.vcomponents.MUXF8
     port map (
      I0 => display_data_reg_0_63_0_2_i_112_n_0,
      I1 => display_data_reg_0_63_0_2_i_113_n_0,
      O => display_data_reg_0_63_0_2_i_59_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_60: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1000"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(0),
      I2 => \^display_addr_reg[1]_rep_0\(1),
      I3 => \^display_addr_reg[5]_0\(3),
      I4 => \^display_addr_reg[5]_0\(1),
      I5 => display_data_reg_0_63_0_2_i_114_n_0,
      O => display_data_reg_0_63_0_2_i_60_n_0
    );
display_data_reg_0_63_0_2_i_61: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000084D48484"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => \^display_addr_reg[5]_0\(3),
      I2 => \^display_addr_reg[1]_rep_0\(1),
      I3 => display_w_addr(0),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_61_n_0
    );
display_data_reg_0_63_0_2_i_62: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFDBF000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => \^display_addr_reg[1]_rep_0\(1),
      I2 => display_w_addr(0),
      I3 => display_w_addr(6),
      I4 => \^display_addr_reg[5]_0\(3),
      I5 => display_w_addr(7),
      O => display_data_reg_0_63_0_2_i_62_n_0
    );
display_data_reg_0_63_0_2_i_63: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000100010"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_115_n_0,
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => display_data_reg_0_63_0_2_i_116_n_0,
      I3 => display_w_addr(10),
      I4 => display_data_reg_0_63_0_2_i_117_n_0,
      I5 => display_w_addr(0),
      O => display_data_reg_0_63_0_2_i_63_n_0
    );
display_data_reg_0_63_0_2_i_64: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(8),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_64_n_0
    );
display_data_reg_0_63_0_2_i_65: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_118_n_0,
      I1 => display_data_reg_0_63_0_2_i_119_n_0,
      O => display_data_reg_0_63_0_2_i_65_n_0,
      S => \^display_addr_reg[1]_rep_0\(1)
    );
display_data_reg_0_63_0_2_i_66: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_120_n_0,
      I1 => display_data_reg_0_63_0_2_i_121_n_0,
      O => display_data_reg_0_63_0_2_i_66_n_0,
      S => display_w_addr(10)
    );
display_data_reg_0_63_0_2_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080800000008000"
    )
        port map (
      I0 => \^display_addr_reg[1]_rep_0\(1),
      I1 => display_w_addr(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => display_w_addr(6),
      I4 => \^display_addr_reg[5]_0\(4),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_67_n_0
    );
display_data_reg_0_63_0_2_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020F2F2FBFB"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => display_w_addr(6),
      I2 => \^display_addr_reg[5]_0\(4),
      I3 => display_w_addr(0),
      I4 => \^display_addr_reg[1]_rep_0\(1),
      I5 => \^display_addr_reg[5]_0\(1),
      O => display_data_reg_0_63_0_2_i_68_n_0
    );
display_data_reg_0_63_0_2_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA88888888888"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(1),
      I1 => display_data_reg_0_63_0_2_i_122_n_0,
      I2 => display_w_addr(6),
      I3 => display_data_reg_0_63_0_2_i_123_n_0,
      I4 => display_data_reg_0_63_0_2_i_124_n_0,
      I5 => \^display_addr_reg[1]_rep_0\(1),
      O => display_data_reg_0_63_0_2_i_69_n_0
    );
display_data_reg_0_63_0_2_i_70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F101F1F1F101010"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_0_63_0_2_i_125_n_0,
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_data_reg_0_63_0_2_i_126_n_0,
      I4 => \^display_addr_reg[5]_0\(1),
      I5 => display_data_reg_0_63_0_2_i_127_n_0,
      O => display_data_reg_0_63_0_2_i_70_n_0
    );
display_data_reg_0_63_0_2_i_71: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(10),
      O => display_data_reg_0_63_0_2_i_71_n_0
    );
display_data_reg_0_63_0_2_i_72: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => \^display_addr_reg[5]_0\(4),
      O => display_data_reg_0_63_0_2_i_72_n_0
    );
display_data_reg_0_63_0_2_i_73: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEFF"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_128_n_0,
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => display_w_addr(8),
      I3 => display_data_reg_0_63_0_2_i_129_n_0,
      I4 => display_w_addr(10),
      O => display_data_reg_0_63_0_2_i_73_n_0
    );
display_data_reg_0_63_0_2_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000038000000808"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      I4 => display_w_addr(7),
      I5 => \^display_addr_reg[5]_0\(4),
      O => display_data_reg_0_63_0_2_i_74_n_0
    );
display_data_reg_0_63_0_2_i_75: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA000000"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => \^display_addr_reg[5]_0\(3),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      I4 => display_data_reg_0_63_0_2_i_130_n_0,
      O => display_data_reg_0_63_0_2_i_75_n_0
    );
display_data_reg_0_63_0_2_i_76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F777FFFFFFFF"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => \^display_addr_reg[5]_0\(4),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      I4 => \^display_addr_reg[1]_rep_0\(1),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_76_n_0
    );
display_data_reg_0_63_0_2_i_77: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_131_n_0,
      I1 => display_data_reg_0_63_0_2_i_132_n_0,
      O => display_data_reg_0_63_0_2_i_77_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_78: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_133_n_0,
      I1 => display_data_reg_0_63_0_2_i_134_n_0,
      O => display_data_reg_0_63_0_2_i_78_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_79: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020202000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => alu_res(2),
      I4 => display_w_addr(0),
      I5 => alu_res(6),
      O => display_data_reg_0_63_0_2_i_79_n_0
    );
display_data_reg_0_63_0_2_i_80: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => alu_res(30),
      I1 => display_data_reg_0_63_0_2_i_135_n_0,
      I2 => alu_res(26),
      I3 => display_data_reg_0_63_0_2_i_136_n_0,
      I4 => display_data_reg_0_63_0_2_i_137_n_0,
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_80_n_0
    );
display_data_reg_0_63_0_2_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(18),
      I1 => dmem_addr(22),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(26),
      I4 => display_w_addr(0),
      I5 => dmem_addr(30),
      O => display_data_reg_0_63_0_2_i_81_n_0
    );
display_data_reg_0_63_0_2_i_82: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_138_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => dmem_i_data(2),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(6),
      O => display_data_reg_0_63_0_2_i_82_n_0
    );
display_data_reg_0_63_0_2_i_83: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_i_data(26),
      I3 => display_w_addr(0),
      I4 => dmem_i_data(30),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_83_n_0
    );
display_data_reg_0_63_0_2_i_84: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(2),
      I1 => dmem_addr(6),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(10),
      I4 => display_w_addr(0),
      I5 => dmem_addr(14),
      O => display_data_reg_0_63_0_2_i_84_n_0
    );
display_data_reg_0_63_0_2_i_85: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(4),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      O => display_data_reg_0_63_0_2_i_85_n_0
    );
display_data_reg_0_63_0_2_i_86: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_139_n_0,
      I1 => display_data_reg_0_63_0_2_i_140_n_0,
      O => display_data_reg_0_63_0_2_i_86_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_87: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_141_n_0,
      I1 => display_data_reg_0_63_0_2_i_142_n_0,
      O => display_data_reg_0_63_0_2_i_87_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_88: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_143_n_0,
      I1 => display_data_reg_0_63_0_2_i_144_n_0,
      O => display_data_reg_0_63_0_2_i_88_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_89: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020202000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => alu_res(1),
      I4 => display_w_addr(0),
      I5 => alu_res(5),
      O => display_data_reg_0_63_0_2_i_89_n_0
    );
display_data_reg_0_63_0_2_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2222222"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_26_n_0,
      I1 => display_w_addr(10),
      I2 => display_w_addr(8),
      I3 => display_data_reg_0_63_0_2_i_27_n_0,
      I4 => display_w_addr(7),
      I5 => display_w_addr(11),
      O => display_data_reg_0_63_0_2_i_9_n_0
    );
display_data_reg_0_63_0_2_i_90: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => alu_res(29),
      I1 => display_data_reg_0_63_0_2_i_135_n_0,
      I2 => alu_res(25),
      I3 => display_data_reg_0_63_0_2_i_136_n_0,
      I4 => display_data_reg_0_63_0_2_i_145_n_0,
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_90_n_0
    );
display_data_reg_0_63_0_2_i_91: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(17),
      I1 => dmem_addr(21),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(25),
      I4 => display_w_addr(0),
      I5 => dmem_addr(29),
      O => display_data_reg_0_63_0_2_i_91_n_0
    );
display_data_reg_0_63_0_2_i_92: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A0A3A3A3A0A0A0A"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_146_n_0,
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => dmem_i_data(1),
      I4 => display_w_addr(0),
      I5 => dmem_i_data(5),
      O => display_data_reg_0_63_0_2_i_92_n_0
    );
display_data_reg_0_63_0_2_i_93: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(0),
      I1 => \^display_addr_reg[5]_0\(1),
      I2 => dmem_i_data(25),
      I3 => display_w_addr(0),
      I4 => dmem_i_data(29),
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_93_n_0
    );
display_data_reg_0_63_0_2_i_94: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dmem_addr(1),
      I1 => dmem_addr(5),
      I2 => \^display_addr_reg[5]_0\(0),
      I3 => dmem_addr(9),
      I4 => display_w_addr(0),
      I5 => dmem_addr(13),
      O => display_data_reg_0_63_0_2_i_94_n_0
    );
display_data_reg_0_63_0_2_i_95: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_147_n_0,
      I1 => display_data_reg_0_63_0_2_i_148_n_0,
      O => display_data_reg_0_63_0_2_i_95_n_0,
      S => \^addrd\(2)
    );
display_data_reg_0_63_0_2_i_96: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_149_n_0,
      I1 => display_data_reg_0_63_0_2_i_150_n_0,
      O => display_data_reg_0_63_0_2_i_96_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_97: unisim.vcomponents.MUXF7
     port map (
      I0 => display_data_reg_0_63_0_2_i_151_n_0,
      I1 => display_data_reg_0_63_0_2_i_152_n_0,
      O => display_data_reg_0_63_0_2_i_97_n_0,
      S => \^display_addr_reg[5]_0\(3)
    );
display_data_reg_0_63_0_2_i_98: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020202000000"
    )
        port map (
      I0 => \^display_addr_reg[5]_0\(3),
      I1 => \^display_addr_reg[5]_0\(0),
      I2 => \^display_addr_reg[5]_0\(1),
      I3 => alu_res(3),
      I4 => display_w_addr(0),
      I5 => alu_res(7),
      O => display_data_reg_0_63_0_2_i_98_n_0
    );
display_data_reg_0_63_0_2_i_99: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => alu_res(31),
      I1 => display_data_reg_0_63_0_2_i_135_n_0,
      I2 => alu_res(27),
      I3 => display_data_reg_0_63_0_2_i_136_n_0,
      I4 => display_data_reg_0_63_0_2_i_153_n_0,
      I5 => \^display_addr_reg[5]_0\(3),
      O => display_data_reg_0_63_0_2_i_99_n_0
    );
display_data_reg_0_63_3_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_11_n_0,
      I1 => display_data_reg_0_63_0_2_i_9_n_0,
      I2 => display_data_reg_0_63_0_2_i_10_n_0,
      O => display_w_data(3)
    );
display_data_reg_0_63_3_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_9_n_0,
      I1 => display_data_reg_0_63_0_2_i_10_n_0,
      I2 => display_data_reg_0_63_0_2_i_11_n_0,
      O => \display_addr_reg[10]_0\
    );
display_data_reg_0_63_6_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_11_n_0,
      I1 => display_data_reg_0_63_0_2_i_10_n_0,
      I2 => display_data_reg_0_63_0_2_i_9_n_0,
      O => display_w_data(4)
    );
display_data_reg_1024_1087_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_0_63_0_2_i_17_n_0,
      O => \display_addr_reg[10]_2\
    );
display_data_reg_1088_1151_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(6),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_1088_1151_0_2_i_2_n_0,
      O => \display_addr_reg[10]_3\
    );
display_data_reg_1088_1151_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(11),
      I2 => display_w_addr(7),
      I3 => display_w_addr(8),
      O => display_data_reg_1088_1151_0_2_i_2_n_0
    );
display_data_reg_1152_1215_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(7),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_1152_1215_0_2_i_2_n_0,
      O => \display_addr_reg[10]_4\
    );
display_data_reg_1152_1215_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(11),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      O => display_data_reg_1152_1215_0_2_i_2_n_0
    );
display_data_reg_1216_1279_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_1216_1279_0_2_i_2_n_0,
      I1 => display_data_reg_448_511_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(10),
      O => \display_addr_reg[3]_rep_7\
    );
display_data_reg_1216_1279_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      I2 => display_w_addr(8),
      O => display_data_reg_1216_1279_0_2_i_2_n_0
    );
display_data_reg_1280_1343_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540000000000000"
    )
        port map (
      I0 => display_data_reg_1280_1343_0_2_i_2_n_0,
      I1 => display_data_reg_0_63_0_2_i_14_n_0,
      I2 => \^display_addr_reg[3]_rep_0\(0),
      I3 => display_data_reg_64_127_0_2_i_2_n_0,
      I4 => display_data_reg_1280_1343_0_2_i_3_n_0,
      I5 => display_data_reg_1280_1343_0_2_i_4_n_0,
      O => \display_addr_reg[3]_rep_8\
    );
display_data_reg_1280_1343_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(10),
      O => display_data_reg_1280_1343_0_2_i_2_n_0
    );
display_data_reg_1280_1343_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(6),
      O => display_data_reg_1280_1343_0_2_i_3_n_0
    );
display_data_reg_1280_1343_0_2_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      O => display_data_reg_1280_1343_0_2_i_4_n_0
    );
display_data_reg_128_191_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_128_191_0_2_i_2_n_0,
      O => \display_addr_reg[7]_4\
    );
display_data_reg_128_191_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      O => display_data_reg_128_191_0_2_i_2_n_0
    );
display_data_reg_1344_1407_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_1344_1407_0_2_i_2_n_0,
      I1 => display_data_reg_832_895_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(10),
      O => \display_addr_reg[3]_rep_1\
    );
display_data_reg_1344_1407_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      I2 => display_w_addr(7),
      O => display_data_reg_1344_1407_0_2_i_2_n_0
    );
display_data_reg_1408_1471_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_1408_1471_0_2_i_2_n_0,
      I1 => display_data_reg_896_959_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(10),
      O => \display_addr_reg[3]_rep_2\
    );
display_data_reg_1408_1471_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(6),
      I2 => display_w_addr(9),
      O => display_data_reg_1408_1471_0_2_i_2_n_0
    );
display_data_reg_1472_1535_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[3]_rep_0\(0),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(11),
      I5 => display_data_reg_1472_1535_0_2_i_2_n_0,
      O => \display_addr_reg[9]_0\
    );
display_data_reg_1472_1535_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_1472_1535_0_2_i_2_n_0
    );
display_data_reg_1536_1599_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(9),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_1536_1599_0_2_i_2_n_0,
      O => \display_addr_reg[10]_5\
    );
display_data_reg_1536_1599_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(11),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_1536_1599_0_2_i_2_n_0
    );
display_data_reg_1600_1663_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_1600_1663_0_2_i_2_n_0,
      I1 => display_data_reg_1600_1663_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(10),
      O => \display_addr_reg[3]_rep_3\
    );
display_data_reg_1600_1663_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(7),
      I2 => display_w_addr(8),
      O => display_data_reg_1600_1663_0_2_i_2_n_0
    );
display_data_reg_1600_1663_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(6),
      O => display_data_reg_1600_1663_0_2_i_3_n_0
    );
display_data_reg_1664_1727_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_1664_1727_0_2_i_2_n_0,
      I1 => display_data_reg_1664_1727_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(10),
      O => \display_addr_reg[3]_rep_4\
    );
display_data_reg_1664_1727_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(6),
      I2 => display_w_addr(8),
      O => display_data_reg_1664_1727_0_2_i_2_n_0
    );
display_data_reg_1664_1727_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(7),
      O => display_data_reg_1664_1727_0_2_i_3_n_0
    );
display_data_reg_1728_1791_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[3]_rep_0\(0),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(11),
      I5 => display_data_reg_1728_1791_0_2_i_2_n_0,
      O => \display_addr_reg[8]_0\
    );
display_data_reg_1728_1791_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_1728_1791_0_2_i_2_n_0
    );
display_data_reg_1792_1855_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440004000000000"
    )
        port map (
      I0 => display_data_reg_1792_1855_0_2_i_2_n_0,
      I1 => display_data_reg_1792_1855_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[3]_rep_0\(0),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(10),
      O => \display_addr_reg[3]_rep_5\
    );
display_data_reg_1792_1855_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(7),
      I2 => display_w_addr(6),
      O => display_data_reg_1792_1855_0_2_i_2_n_0
    );
display_data_reg_1792_1855_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(9),
      O => display_data_reg_1792_1855_0_2_i_3_n_0
    );
display_data_reg_1856_1919_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[3]_rep_0\(0),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(11),
      I5 => display_data_reg_1856_1919_0_2_i_2_n_0,
      O => \display_addr_reg[7]_0\
    );
display_data_reg_1856_1919_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      O => display_data_reg_1856_1919_0_2_i_2_n_0
    );
display_data_reg_1920_1983_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[3]_rep_0\(0),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(11),
      I5 => display_data_reg_1920_1983_0_2_i_2_n_0,
      O => \display_addr_reg[6]_0\
    );
display_data_reg_1920_1983_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(9),
      I2 => display_w_addr(7),
      I3 => display_w_addr(8),
      O => display_data_reg_1920_1983_0_2_i_2_n_0
    );
display_data_reg_192_255_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(6),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_192_255_0_2_i_2_n_0,
      O => \display_addr_reg[7]_5\
    );
display_data_reg_192_255_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(11),
      I2 => display_w_addr(8),
      I3 => display_w_addr(9),
      O => display_data_reg_192_255_0_2_i_2_n_0
    );
display_data_reg_1984_2047_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => display_data_reg_64_127_0_2_i_2_n_0,
      I1 => \^display_addr_reg[3]_rep_0\(0),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => display_w_addr(10),
      I4 => display_w_addr(11),
      I5 => display_data_reg_960_1023_0_2_i_2_n_0,
      O => \display_addr_reg[3]_rep_6\
    );
display_data_reg_2048_2111_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_0_63_0_2_i_17_n_0,
      O => \display_addr_reg[11]_0\
    );
display_data_reg_2112_2175_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(6),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_64_127_0_2_i_3_n_0,
      O => \display_addr_reg[11]_1\
    );
display_data_reg_2176_2239_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(7),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_128_191_0_2_i_2_n_0,
      O => \display_addr_reg[11]_2\
    );
display_data_reg_2240_2303_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => display_data_reg_2240_2303_0_2_i_2_n_0,
      I1 => display_data_reg_448_511_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_6\
    );
display_data_reg_2240_2303_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(9),
      I2 => display_w_addr(8),
      O => display_data_reg_2240_2303_0_2_i_2_n_0
    );
display_data_reg_2304_2367_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(8),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_256_319_0_2_i_2_n_0,
      O => \display_addr_reg[11]_3\
    );
display_data_reg_2368_2431_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_2368_2431_0_2_i_2_n_0,
      I1 => display_data_reg_832_895_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_0\
    );
display_data_reg_2368_2431_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(9),
      I2 => display_w_addr(7),
      O => display_data_reg_2368_2431_0_2_i_2_n_0
    );
display_data_reg_2432_2495_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_2432_2495_0_2_i_2_n_0,
      I1 => display_data_reg_896_959_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_1\
    );
display_data_reg_2432_2495_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(6),
      I2 => display_w_addr(9),
      O => display_data_reg_2432_2495_0_2_i_2_n_0
    );
display_data_reg_2496_2559_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[5]_0\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(10),
      I5 => display_data_reg_2496_2559_0_2_i_2_n_0,
      O => \display_addr_reg[9]_1\
    );
display_data_reg_2496_2559_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(8),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_2496_2559_0_2_i_2_n_0
    );
display_data_reg_2560_2623_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_512_575_0_2_i_2_n_0,
      O => \display_addr_reg[11]_4\
    );
display_data_reg_256_319_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_256_319_0_2_i_2_n_0,
      O => \display_addr_reg[8]_3\
    );
display_data_reg_256_319_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_256_319_0_2_i_2_n_0
    );
display_data_reg_2624_2687_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_2624_2687_0_2_i_2_n_0,
      I1 => display_data_reg_1600_1663_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_2\
    );
display_data_reg_2624_2687_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(7),
      I2 => display_w_addr(8),
      O => display_data_reg_2624_2687_0_2_i_2_n_0
    );
display_data_reg_2688_2751_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_2688_2751_0_2_i_2_n_0,
      I1 => display_data_reg_1664_1727_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_3\
    );
display_data_reg_2688_2751_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(6),
      I2 => display_w_addr(8),
      O => display_data_reg_2688_2751_0_2_i_2_n_0
    );
display_data_reg_2752_2815_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[5]_0\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(10),
      I5 => display_data_reg_2752_2815_0_2_i_2_n_0,
      O => \display_addr_reg[8]_2\
    );
display_data_reg_2752_2815_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_2752_2815_0_2_i_2_n_0
    );
display_data_reg_2816_2879_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440004000000000"
    )
        port map (
      I0 => display_data_reg_2816_2879_0_2_i_2_n_0,
      I1 => display_data_reg_1792_1855_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^display_addr_reg[5]_0\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_4\
    );
display_data_reg_2816_2879_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(7),
      I2 => display_w_addr(6),
      O => display_data_reg_2816_2879_0_2_i_2_n_0
    );
display_data_reg_2880_2943_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[5]_0\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(10),
      I5 => display_data_reg_2880_2943_0_2_i_2_n_0,
      O => \display_addr_reg[7]_3\
    );
display_data_reg_2880_2943_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      O => display_data_reg_2880_2943_0_2_i_2_n_0
    );
display_data_reg_2944_3007_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^display_addr_reg[5]_0\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(10),
      I5 => display_data_reg_2944_3007_0_2_i_2_n_0,
      O => \display_addr_reg[6]_4\
    );
display_data_reg_2944_3007_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(9),
      I2 => display_w_addr(7),
      I3 => display_w_addr(8),
      O => display_data_reg_2944_3007_0_2_i_2_n_0
    );
display_data_reg_3008_3071_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => display_data_reg_64_127_0_2_i_2_n_0,
      I1 => \^display_addr_reg[5]_0\(2),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => display_w_addr(11),
      I4 => display_w_addr(10),
      I5 => display_data_reg_960_1023_0_2_i_2_n_0,
      O => \display_addr_reg[3]_5\
    );
display_data_reg_3072_3135_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_0_63_0_2_i_17_n_0,
      O => \display_addr_reg[11]_5\
    );
display_data_reg_3136_3199_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440004000000000"
    )
        port map (
      I0 => display_data_reg_3136_3199_0_2_i_2_n_0,
      I1 => display_data_reg_3136_3199_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_rep__0_8\
    );
display_data_reg_3136_3199_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(7),
      I2 => display_w_addr(8),
      O => display_data_reg_3136_3199_0_2_i_2_n_0
    );
display_data_reg_3136_3199_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(6),
      O => display_data_reg_3136_3199_0_2_i_3_n_0
    );
display_data_reg_3200_3263_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440004000000000"
    )
        port map (
      I0 => display_data_reg_3200_3263_0_2_i_2_n_0,
      I1 => display_data_reg_3200_3263_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_rep__0_9\
    );
display_data_reg_3200_3263_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(6),
      I2 => display_w_addr(8),
      O => display_data_reg_3200_3263_0_2_i_2_n_0
    );
display_data_reg_3200_3263_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(7),
      O => display_data_reg_3200_3263_0_2_i_3_n_0
    );
display_data_reg_320_383_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(6),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_320_383_0_2_i_2_n_0,
      O => \display_addr_reg[8]_4\
    );
display_data_reg_320_383_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(11),
      I2 => display_w_addr(7),
      I3 => display_w_addr(9),
      O => display_data_reg_320_383_0_2_i_2_n_0
    );
display_data_reg_3264_3327_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(9),
      I5 => display_data_reg_3264_3327_0_2_i_2_n_0,
      O => \display_addr_reg[8]_1\
    );
display_data_reg_3264_3327_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_3264_3327_0_2_i_2_n_0
    );
display_data_reg_3328_3391_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_3328_3391_0_2_i_2_n_0,
      I1 => display_data_reg_3328_3391_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_rep__0_10\
    );
display_data_reg_3328_3391_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(7),
      I2 => display_w_addr(6),
      O => display_data_reg_3328_3391_0_2_i_2_n_0
    );
display_data_reg_3328_3391_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(8),
      O => display_data_reg_3328_3391_0_2_i_3_n_0
    );
display_data_reg_3392_3455_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(9),
      I5 => display_data_reg_3392_3455_0_2_i_2_n_0,
      O => \display_addr_reg[7]_2\
    );
display_data_reg_3392_3455_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(8),
      O => display_data_reg_3392_3455_0_2_i_2_n_0
    );
display_data_reg_3456_3519_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(9),
      I5 => display_data_reg_3456_3519_0_2_i_2_n_0,
      O => \display_addr_reg[6]_3\
    );
display_data_reg_3456_3519_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(7),
      I3 => display_w_addr(8),
      O => display_data_reg_3456_3519_0_2_i_2_n_0
    );
display_data_reg_3520_3583_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => display_data_reg_64_127_0_2_i_2_n_0,
      I1 => \^addrd\(2),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => display_w_addr(11),
      I4 => display_w_addr(9),
      I5 => display_data_reg_1472_1535_0_2_i_2_n_0,
      O => \display_addr_reg[3]_rep__0_11\
    );
display_data_reg_3584_3647_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_3584_3647_0_2_i_2_n_0,
      I1 => display_data_reg_3584_3647_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(11),
      O => \display_addr_reg[3]_rep__0_12\
    );
display_data_reg_3584_3647_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(7),
      I2 => display_w_addr(6),
      O => display_data_reg_3584_3647_0_2_i_2_n_0
    );
display_data_reg_3584_3647_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(10),
      O => display_data_reg_3584_3647_0_2_i_3_n_0
    );
display_data_reg_3648_3711_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(8),
      I5 => display_data_reg_3648_3711_0_2_i_2_n_0,
      O => \display_addr_reg[7]_1\
    );
display_data_reg_3648_3711_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(9),
      O => display_data_reg_3648_3711_0_2_i_2_n_0
    );
display_data_reg_3712_3775_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(8),
      I5 => display_data_reg_3712_3775_0_2_i_2_n_0,
      O => \display_addr_reg[6]_2\
    );
display_data_reg_3712_3775_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(7),
      I3 => display_w_addr(9),
      O => display_data_reg_3712_3775_0_2_i_2_n_0
    );
display_data_reg_3776_3839_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => display_data_reg_64_127_0_2_i_2_n_0,
      I1 => \^addrd\(2),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => display_w_addr(11),
      I4 => display_w_addr(8),
      I5 => display_data_reg_1728_1791_0_2_i_2_n_0,
      O => \display_addr_reg[3]_rep__0_13\
    );
display_data_reg_3840_3903_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(7),
      I5 => display_data_reg_3840_3903_0_2_i_2_n_0,
      O => \display_addr_reg[6]_1\
    );
display_data_reg_3840_3903_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(8),
      I3 => display_w_addr(9),
      O => display_data_reg_3840_3903_0_2_i_2_n_0
    );
display_data_reg_384_447_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A8000000000"
    )
        port map (
      I0 => display_data_reg_384_447_0_2_i_2_n_0,
      I1 => display_data_reg_0_63_0_2_i_14_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_64_127_0_2_i_2_n_0,
      I4 => display_data_reg_384_447_0_2_i_3_n_0,
      I5 => display_data_reg_0_63_0_2_i_13_n_0,
      O => \display_addr_reg[3]_rep__0_2\
    );
display_data_reg_384_447_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(7),
      O => display_data_reg_384_447_0_2_i_2_n_0
    );
display_data_reg_384_447_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_w_addr(9),
      O => display_data_reg_384_447_0_2_i_3_n_0
    );
display_data_reg_3904_3967_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => display_data_reg_64_127_0_2_i_2_n_0,
      I1 => \^addrd\(2),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => display_w_addr(11),
      I4 => display_w_addr(7),
      I5 => display_data_reg_1856_1919_0_2_i_2_n_0,
      O => \display_addr_reg[3]_rep__0_14\
    );
display_data_reg_3968_4031_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => display_data_reg_64_127_0_2_i_2_n_0,
      I1 => \^addrd\(2),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => display_w_addr(11),
      I4 => display_w_addr(6),
      I5 => display_data_reg_1920_1983_0_2_i_2_n_0,
      O => \display_addr_reg[3]_rep__0_15\
    );
display_data_reg_4032_4095_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BBB8"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_14_n_0,
      I1 => \^addrd\(2),
      I2 => display_data_reg_0_63_0_2_i_15_n_0,
      I3 => display_data_reg_0_63_0_2_i_16_n_0,
      I4 => display_data_reg_4032_4095_0_2_i_2_n_0,
      I5 => display_data_reg_960_1023_0_2_i_2_n_0,
      O => \display_addr_reg[3]_rep__0_0\
    );
display_data_reg_4032_4095_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(11),
      O => display_data_reg_4032_4095_0_2_i_2_n_0
    );
display_data_reg_448_511_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_448_511_0_2_i_2_n_0,
      I1 => display_data_reg_448_511_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(8),
      O => \display_addr_reg[3]_rep__0_3\
    );
display_data_reg_448_511_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(10),
      I2 => display_w_addr(9),
      O => display_data_reg_448_511_0_2_i_2_n_0
    );
display_data_reg_448_511_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(6),
      O => display_data_reg_448_511_0_2_i_3_n_0
    );
display_data_reg_512_575_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_512_575_0_2_i_2_n_0,
      O => \display_addr_reg[9]_2\
    );
display_data_reg_512_575_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(10),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_512_575_0_2_i_2_n_0
    );
display_data_reg_576_639_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(6),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_576_639_0_2_i_2_n_0,
      O => \display_addr_reg[9]_3\
    );
display_data_reg_576_639_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(11),
      I2 => display_w_addr(7),
      I3 => display_w_addr(8),
      O => display_data_reg_576_639_0_2_i_2_n_0
    );
display_data_reg_640_703_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540000000000000"
    )
        port map (
      I0 => display_data_reg_640_703_0_2_i_2_n_0,
      I1 => display_data_reg_0_63_0_2_i_14_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_64_127_0_2_i_2_n_0,
      I4 => display_data_reg_640_703_0_2_i_3_n_0,
      I5 => display_data_reg_0_63_0_2_i_13_n_0,
      O => \display_addr_reg[3]_rep__0_4\
    );
display_data_reg_640_703_0_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(7),
      I1 => display_w_addr(9),
      O => display_data_reg_640_703_0_2_i_2_n_0
    );
display_data_reg_640_703_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(6),
      O => display_data_reg_640_703_0_2_i_3_n_0
    );
display_data_reg_64_127_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222000"
    )
        port map (
      I0 => display_w_addr(6),
      I1 => display_w_addr(11),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_64_127_0_2_i_3_n_0,
      O => \display_addr_reg[6]_5\
    );
display_data_reg_64_127_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFFFFFF0"
    )
        port map (
      I0 => display_data_reg_2240_2303_0_2_i_2_n_0,
      I1 => display_data_reg_0_63_0_2_i_37_n_0,
      I2 => display_data_reg_64_127_0_2_i_4_n_0,
      I3 => display_data_reg_0_63_0_2_i_39_n_0,
      I4 => display_data_reg_0_63_0_2_i_38_n_0,
      I5 => display_w_addr(11),
      O => display_data_reg_64_127_0_2_i_2_n_0
    );
display_data_reg_64_127_0_2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(10),
      I2 => display_w_addr(7),
      I3 => display_w_addr(8),
      O => display_data_reg_64_127_0_2_i_3_n_0
    );
display_data_reg_64_127_0_2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => display_data_reg_0_63_0_2_i_41_n_0,
      I1 => display_data_reg_0_63_0_2_i_73_n_0,
      I2 => display_w_addr(9),
      I3 => display_data_reg_64_127_0_2_i_5_n_0,
      I4 => display_w_addr(0),
      O => display_data_reg_64_127_0_2_i_4_n_0
    );
display_data_reg_64_127_0_2_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \^display_addr_reg[1]_rep_0\(1),
      I1 => display_data_reg_0_63_0_2_i_74_n_0,
      I2 => display_w_addr(10),
      I3 => display_data_reg_64_127_0_2_i_6_n_0,
      I4 => display_data_reg_0_63_0_2_i_130_n_0,
      O => display_data_reg_64_127_0_2_i_5_n_0
    );
display_data_reg_64_127_0_2_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(6),
      I2 => \^display_addr_reg[5]_0\(3),
      I3 => display_w_addr(7),
      O => display_data_reg_64_127_0_2_i_6_n_0
    );
display_data_reg_704_767_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_704_767_0_2_i_2_n_0,
      I1 => display_data_reg_448_511_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(9),
      O => \display_addr_reg[3]_rep__0_7\
    );
display_data_reg_704_767_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(8),
      I2 => display_w_addr(10),
      O => display_data_reg_704_767_0_2_i_2_n_0
    );
display_data_reg_768_831_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => display_w_addr(9),
      I1 => display_w_addr(8),
      I2 => display_data_reg_0_63_0_2_i_14_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_64_127_0_2_i_2_n_0,
      I5 => display_data_reg_768_831_0_2_i_2_n_0,
      O => \display_addr_reg[9]_4\
    );
display_data_reg_768_831_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_w_addr(11),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_768_831_0_2_i_2_n_0
    );
display_data_reg_832_895_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_832_895_0_2_i_2_n_0,
      I1 => display_data_reg_832_895_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(9),
      O => \display_addr_reg[3]_rep__0_5\
    );
display_data_reg_832_895_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(7),
      I2 => display_w_addr(10),
      O => display_data_reg_832_895_0_2_i_2_n_0
    );
display_data_reg_832_895_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(6),
      O => display_data_reg_832_895_0_2_i_3_n_0
    );
display_data_reg_896_959_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000000000"
    )
        port map (
      I0 => display_data_reg_896_959_0_2_i_2_n_0,
      I1 => display_data_reg_896_959_0_2_i_3_n_0,
      I2 => display_data_reg_64_127_0_2_i_2_n_0,
      I3 => \^addrd\(2),
      I4 => display_data_reg_0_63_0_2_i_14_n_0,
      I5 => display_w_addr(9),
      O => \display_addr_reg[3]_rep__0_6\
    );
display_data_reg_896_959_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => display_w_addr(11),
      I1 => display_w_addr(6),
      I2 => display_w_addr(10),
      O => display_data_reg_896_959_0_2_i_2_n_0
    );
display_data_reg_896_959_0_2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(7),
      O => display_data_reg_896_959_0_2_i_3_n_0
    );
display_data_reg_960_1023_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => display_w_addr(10),
      I1 => display_data_reg_64_127_0_2_i_2_n_0,
      I2 => \^addrd\(2),
      I3 => display_data_reg_0_63_0_2_i_14_n_0,
      I4 => display_w_addr(11),
      I5 => display_data_reg_960_1023_0_2_i_2_n_0,
      O => \display_addr_reg[10]_1\
    );
display_data_reg_960_1023_0_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => display_w_addr(8),
      I1 => display_w_addr(9),
      I2 => display_w_addr(6),
      I3 => display_w_addr(7),
      O => display_data_reg_960_1023_0_2_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDisplay is
  port (
    sel : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \v_count_reg[0]\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_209_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_143_0\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_35_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \vga_b[0]_INST_0_i_339\ : out STD_LOGIC;
    \vga_b[0]_INST_0_i_283_0\ : out STD_LOGIC;
    g48_b7 : out STD_LOGIC;
    \h_count_reg[1]\ : out STD_LOGIC;
    \h_count_reg[1]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_100m : in STD_LOGIC;
    display_w_data : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \text_ascii_carry__0_i_57_0\ : in STD_LOGIC;
    text_index : in STD_LOGIC_VECTOR ( 8 downto 0 );
    text_ascii_carry_i_96_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADDRD : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \text_ascii_carry__0_i_57_1\ : in STD_LOGIC;
    text_ascii_carry_i_96_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \text_ascii_carry__0_i_57_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_57_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_58_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_58_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_58_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_58_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_59_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_59_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_59_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_59_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_60_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_60_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_60_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_60_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_53_0\ : in STD_LOGIC;
    text_ascii_carry_i_92_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \text_ascii_carry__0_i_53_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_53_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_53_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_54_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_54_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_54_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_54_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_55_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_55_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_55_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_55_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_56_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_56_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_56_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_56_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_49_0\ : in STD_LOGIC;
    ADDRC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    text_ascii_carry_i_88_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \text_ascii_carry__0_i_49_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_49_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_49_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_50_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_50_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_50_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_50_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_51_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_51_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_51_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_51_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_52_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_52_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_52_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_52_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_45_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_45_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_45_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_45_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_46_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_46_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_46_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_46_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_47_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_47_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_47_2\ : in STD_LOGIC;
    \text_ascii_carry__0_i_47_3\ : in STD_LOGIC;
    \text_ascii_carry__0_i_48_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_48_1\ : in STD_LOGIC;
    \text_ascii_carry__0_i_48_2\ : in STD_LOGIC;
    text_ascii_carry_i_87_0 : in STD_LOGIC;
    \text_ascii_carry__0_i_64_0\ : in STD_LOGIC;
    \text_ascii_carry__0_i_73_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \text_ascii_carry__0_i_65_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \text_ascii_carry__0_i_68_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \text_ascii_carry__0_i_57_4\ : in STD_LOGIC;
    \text_ascii_carry__0_i_57_5\ : in STD_LOGIC;
    \text_ascii_carry__0_i_57_6\ : in STD_LOGIC;
    \text_ascii_carry__0_i_57_7\ : in STD_LOGIC;
    C : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \vga_b[0]_INST_0_i_9_0\ : in STD_LOGIC;
    g0_b0_i_4_0 : in STD_LOGIC;
    \vga_b[0]_INST_0_i_287_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_54_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_143_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_338_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_24_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_242\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_316_0\ : in STD_LOGIC;
    \C__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \vga_b[0]_INST_0_i_2_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_9_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_26_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_54_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_8_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_2_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_4_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_42\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_104_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_17_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_17_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_17_2\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_28_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_28_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_10_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_10_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_10_2\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_31\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_70_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_5\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_19_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_45_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_45_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_45_2\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_111_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_226_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_114\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_241_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_14_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_14_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_75\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_163_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_34_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_76_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_167_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_76_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_166_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_76_2\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_165_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_35_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_35_2\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_35_3\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_36_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_36_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_4_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_15_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_15_1\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_15_2\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_37\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_37_0\ : in STD_LOGIC;
    \vga_b[0]_INST_0_i_37_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \vga_r[3]\ : in STD_LOGIC;
    \vga_r[3]_0\ : in STD_LOGIC;
    \vga_r[3]_1\ : in STD_LOGIC;
    display_data_reg_0_63_0_2_i_5 : in STD_LOGIC;
    display_data_reg_0_63_0_2_i_5_0 : in STD_LOGIC;
    display_data_reg_0_63_0_2_i_5_1 : in STD_LOGIC;
    display_data_reg_0_63_0_2_i_5_2 : in STD_LOGIC;
    display_data_reg_0_63_0_2_i_5_3 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDisplay;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDisplay is
  signal display_data_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_0_63_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1024_1087_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1024_1087_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1024_1087_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1024_1087_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1024_1087_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1024_1087_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1024_1087_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1088_1151_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1088_1151_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1088_1151_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1088_1151_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1088_1151_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1088_1151_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1088_1151_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1152_1215_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1152_1215_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1152_1215_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1152_1215_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1152_1215_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1152_1215_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1152_1215_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1216_1279_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1216_1279_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1216_1279_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1216_1279_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1216_1279_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1216_1279_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1216_1279_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1280_1343_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1280_1343_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1280_1343_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1280_1343_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1280_1343_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1280_1343_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1280_1343_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_128_191_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1344_1407_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1344_1407_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1344_1407_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1344_1407_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1344_1407_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1344_1407_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1344_1407_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1408_1471_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1408_1471_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1408_1471_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1408_1471_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1408_1471_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1408_1471_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1408_1471_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1472_1535_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1472_1535_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1472_1535_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1472_1535_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1472_1535_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1472_1535_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1472_1535_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1536_1599_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1536_1599_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1536_1599_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1536_1599_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1536_1599_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1536_1599_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1536_1599_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1600_1663_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1600_1663_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1600_1663_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1600_1663_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1600_1663_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1600_1663_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1600_1663_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1664_1727_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1664_1727_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1664_1727_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1664_1727_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1664_1727_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1664_1727_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1664_1727_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1728_1791_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1728_1791_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1728_1791_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1728_1791_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1728_1791_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1728_1791_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1728_1791_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1792_1855_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1792_1855_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1792_1855_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1792_1855_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1792_1855_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1792_1855_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1792_1855_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1856_1919_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1856_1919_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1856_1919_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1856_1919_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1856_1919_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1856_1919_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1856_1919_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1920_1983_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1920_1983_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1920_1983_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1920_1983_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1920_1983_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1920_1983_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1920_1983_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_192_255_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_1984_2047_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_1984_2047_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_1984_2047_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_1984_2047_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_1984_2047_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_1984_2047_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_1984_2047_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2048_2111_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2048_2111_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2048_2111_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2048_2111_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2048_2111_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2048_2111_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2048_2111_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2112_2175_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2112_2175_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2112_2175_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2112_2175_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2112_2175_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2112_2175_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2112_2175_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2176_2239_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2176_2239_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2176_2239_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2176_2239_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2176_2239_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2176_2239_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2176_2239_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2240_2303_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2240_2303_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2240_2303_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2240_2303_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2240_2303_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2240_2303_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2240_2303_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2304_2367_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2304_2367_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2304_2367_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2304_2367_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2304_2367_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2304_2367_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2304_2367_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2368_2431_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2368_2431_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2368_2431_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2368_2431_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2368_2431_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2368_2431_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2368_2431_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2432_2495_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2432_2495_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2432_2495_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2432_2495_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2432_2495_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2432_2495_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2432_2495_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2496_2559_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2496_2559_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2496_2559_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2496_2559_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2496_2559_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2496_2559_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2496_2559_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2560_2623_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2560_2623_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2560_2623_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2560_2623_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2560_2623_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2560_2623_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2560_2623_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_256_319_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2624_2687_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2624_2687_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2624_2687_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2624_2687_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2624_2687_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2624_2687_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2624_2687_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2688_2751_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2688_2751_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2688_2751_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2688_2751_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2688_2751_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2688_2751_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2688_2751_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2752_2815_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2752_2815_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2752_2815_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2752_2815_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2752_2815_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2752_2815_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2752_2815_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2816_2879_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2816_2879_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2816_2879_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2816_2879_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2816_2879_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2816_2879_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2816_2879_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2880_2943_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2880_2943_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2880_2943_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2880_2943_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2880_2943_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2880_2943_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2880_2943_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_2944_3007_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_2944_3007_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_2944_3007_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_2944_3007_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_2944_3007_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_2944_3007_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_2944_3007_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3008_3071_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3008_3071_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3008_3071_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3008_3071_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3008_3071_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3008_3071_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3008_3071_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3072_3135_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3072_3135_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3072_3135_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3072_3135_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3072_3135_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3072_3135_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3072_3135_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3136_3199_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3136_3199_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3136_3199_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3136_3199_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3136_3199_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3136_3199_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3136_3199_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3200_3263_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3200_3263_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3200_3263_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3200_3263_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3200_3263_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3200_3263_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3200_3263_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_320_383_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3264_3327_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3264_3327_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3264_3327_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3264_3327_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3264_3327_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3264_3327_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3264_3327_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3328_3391_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3328_3391_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3328_3391_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3328_3391_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3328_3391_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3328_3391_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3328_3391_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3392_3455_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3392_3455_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3392_3455_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3392_3455_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3392_3455_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3392_3455_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3392_3455_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3456_3519_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3456_3519_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3456_3519_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3456_3519_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3456_3519_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3456_3519_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3456_3519_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3520_3583_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3520_3583_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3520_3583_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3520_3583_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3520_3583_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3520_3583_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3520_3583_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3584_3647_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3584_3647_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3584_3647_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3584_3647_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3584_3647_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3584_3647_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3584_3647_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3648_3711_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3648_3711_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3648_3711_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3648_3711_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3648_3711_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3648_3711_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3648_3711_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3712_3775_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3712_3775_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3712_3775_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3712_3775_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3712_3775_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3712_3775_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3712_3775_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3776_3839_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3776_3839_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3776_3839_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3776_3839_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3776_3839_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3776_3839_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3776_3839_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3840_3903_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3840_3903_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3840_3903_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3840_3903_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3840_3903_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3840_3903_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3840_3903_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_384_447_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3904_3967_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3904_3967_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3904_3967_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3904_3967_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3904_3967_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3904_3967_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3904_3967_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_3968_4031_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_3968_4031_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_3968_4031_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_3968_4031_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_3968_4031_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_3968_4031_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_3968_4031_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_4032_4095_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_4032_4095_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_4032_4095_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_4032_4095_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_4032_4095_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_4032_4095_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_4032_4095_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_448_511_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_512_575_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_576_639_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_640_703_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_64_127_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_704_767_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_768_831_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_832_895_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_896_959_6_6_n_0 : STD_LOGIC;
  signal display_data_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal display_data_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal display_data_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal display_data_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal display_data_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal display_data_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal display_data_reg_960_1023_6_6_n_0 : STD_LOGIC;
  signal font_addr0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal g0_b0_i_4_n_0 : STD_LOGIC;
  signal g0_b0_i_4_n_1 : STD_LOGIC;
  signal g0_b0_i_4_n_2 : STD_LOGIC;
  signal g0_b0_i_4_n_3 : STD_LOGIC;
  signal g0_b0_i_5_n_0 : STD_LOGIC;
  signal g0_b0_i_6_n_0 : STD_LOGIC;
  signal g0_b0_i_7_n_0 : STD_LOGIC;
  signal g17_b5_n_0 : STD_LOGIC;
  signal g18_b6_n_0 : STD_LOGIC;
  signal g19_b2_n_0 : STD_LOGIC;
  signal g22_b6_n_0 : STD_LOGIC;
  signal g26_b6_n_0 : STD_LOGIC;
  signal g2_b0_n_0 : STD_LOGIC;
  signal g2_b1_n_0 : STD_LOGIC;
  signal g2_b6_n_0 : STD_LOGIC;
  signal g44_b0_n_0 : STD_LOGIC;
  signal g44_b2_n_0 : STD_LOGIC;
  signal g44_b3_n_0 : STD_LOGIC;
  signal g44_b7_n_0 : STD_LOGIC;
  signal g46_b7_n_0 : STD_LOGIC;
  signal g47_b1_n_0 : STD_LOGIC;
  signal g51_b7_n_0 : STD_LOGIC;
  signal g5_b0_n_0 : STD_LOGIC;
  signal \^sel\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal text_ascii0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \text_ascii_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_24_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_25_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_26_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_27_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_28_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_29_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_30_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_31_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_32_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_33_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_34_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_35_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_36_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_37_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_38_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_39_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_40_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_41_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_42_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_43_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_45_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_46_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_47_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_48_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_49_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_50_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_51_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_52_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_53_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_54_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_55_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_56_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_57_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_58_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_59_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_60_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_61_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_62_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_63_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_64_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_65_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_66_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_67_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_68_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_69_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_70_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_71_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_72_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_73_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_74_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_75_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_76_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_77_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_78_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_79_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_80_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_81_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_82_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_83_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_84_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_85_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_86_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_87_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_88_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_89_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_90_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_91_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_92_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \text_ascii_carry__0_n_1\ : STD_LOGIC;
  signal \text_ascii_carry__0_n_2\ : STD_LOGIC;
  signal \text_ascii_carry__0_n_3\ : STD_LOGIC;
  signal text_ascii_carry_i_100_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_101_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_102_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_103_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_104_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_105_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_106_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_107_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_108_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_109_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_10_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_110_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_111_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_112_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_113_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_114_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_115_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_116_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_117_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_118_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_119_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_120_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_121_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_122_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_123_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_124_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_125_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_126_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_127_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_128_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_129_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_12_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_130_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_131_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_14_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_15_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_16_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_17_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_18_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_19_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_20_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_21_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_22_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_23_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_24_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_25_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_26_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_29_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_30_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_31_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_32_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_34_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_35_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_40_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_41_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_42_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_43_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_44_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_45_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_46_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_47_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_48_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_49_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_50_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_51_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_52_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_53_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_54_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_55_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_56_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_57_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_58_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_59_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_5_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_60_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_61_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_62_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_63_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_64_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_65_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_67_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_68_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_69_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_6_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_70_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_71_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_72_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_73_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_74_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_76_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_77_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_78_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_79_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_7_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_80_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_81_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_82_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_83_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_84_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_85_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_86_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_87_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_88_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_89_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_8_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_90_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_91_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_92_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_93_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_94_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_95_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_96_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_97_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_98_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_99_n_0 : STD_LOGIC;
  signal text_ascii_carry_i_9_n_0 : STD_LOGIC;
  signal text_ascii_carry_n_0 : STD_LOGIC;
  signal text_ascii_carry_n_1 : STD_LOGIC;
  signal text_ascii_carry_n_2 : STD_LOGIC;
  signal text_ascii_carry_n_3 : STD_LOGIC;
  signal \^v_count_reg[0]\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_111_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_118_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_143_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_165_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_166_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_167_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_168_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_209_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_226_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_23_n_1\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_23_n_2\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_23_n_3\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_283_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_287_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_289_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_291_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_316_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_338_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_77_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_79_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_95_n_0\ : STD_LOGIC;
  signal \vga_b[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal NLW_display_data_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_0_63_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1024_1087_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1024_1087_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1024_1087_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1088_1151_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1088_1151_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1088_1151_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1152_1215_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1152_1215_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1152_1215_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1216_1279_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1216_1279_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1216_1279_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1280_1343_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1280_1343_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1280_1343_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_128_191_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1344_1407_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1344_1407_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1344_1407_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1408_1471_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1408_1471_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1408_1471_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1472_1535_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1472_1535_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1472_1535_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1536_1599_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1536_1599_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1536_1599_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1600_1663_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1600_1663_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1600_1663_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1664_1727_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1664_1727_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1664_1727_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1728_1791_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1728_1791_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1728_1791_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1792_1855_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1792_1855_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1792_1855_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1856_1919_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1856_1919_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1856_1919_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1920_1983_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1920_1983_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1920_1983_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_192_255_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1984_2047_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1984_2047_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_1984_2047_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2048_2111_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2048_2111_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2048_2111_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2112_2175_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2112_2175_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2112_2175_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2176_2239_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2176_2239_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2176_2239_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2240_2303_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2240_2303_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2240_2303_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2304_2367_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2304_2367_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2304_2367_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2368_2431_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2368_2431_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2368_2431_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2432_2495_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2432_2495_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2432_2495_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2496_2559_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2496_2559_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2496_2559_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2560_2623_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2560_2623_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2560_2623_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_256_319_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2624_2687_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2624_2687_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2624_2687_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2688_2751_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2688_2751_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2688_2751_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2752_2815_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2752_2815_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2752_2815_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2816_2879_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2816_2879_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2816_2879_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2880_2943_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2880_2943_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2880_2943_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2944_3007_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2944_3007_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_2944_3007_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3008_3071_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3008_3071_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3008_3071_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3072_3135_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3072_3135_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3072_3135_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3136_3199_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3136_3199_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3136_3199_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3200_3263_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3200_3263_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3200_3263_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_320_383_3_5_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_320_383_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3264_3327_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3264_3327_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3264_3327_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3328_3391_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3328_3391_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3328_3391_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3392_3455_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3392_3455_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3392_3455_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3456_3519_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3456_3519_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3456_3519_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3520_3583_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3520_3583_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3520_3583_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3584_3647_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3584_3647_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3584_3647_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3648_3711_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3648_3711_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3648_3711_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3712_3775_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3712_3775_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3712_3775_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3776_3839_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3776_3839_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3776_3839_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3840_3903_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3840_3903_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3840_3903_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_384_447_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3904_3967_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3904_3967_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3904_3967_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3968_4031_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3968_4031_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_3968_4031_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_4032_4095_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_4032_4095_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_4032_4095_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_448_511_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_512_575_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_576_639_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_640_703_3_5_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_640_703_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_64_127_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_704_767_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_768_831_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_832_895_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_896_959_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_display_data_reg_960_1023_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_text_ascii_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_vga_b[0]_INST_0_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vga_b[0]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of display_data_reg_0_63_0_2 : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of display_data_reg_0_63_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of display_data_reg_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of display_data_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of display_data_reg_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of display_data_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of display_data_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of display_data_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_0_63_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_0_63_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of display_data_reg_0_63_3_5 : label is 63;
  attribute ram_offset of display_data_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_0_63_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_0_63_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_0_63_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_0_63_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_0_63_6_6 : label is 0;
  attribute ram_addr_end of display_data_reg_0_63_6_6 : label is 63;
  attribute ram_offset of display_data_reg_0_63_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_0_63_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_0_63_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1024_1087_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1024_1087_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1024_1087_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1024_1087_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1024_1087_0_2 : label is 1024;
  attribute ram_addr_end of display_data_reg_1024_1087_0_2 : label is 1087;
  attribute ram_offset of display_data_reg_1024_1087_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1024_1087_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1024_1087_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1024_1087_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1024_1087_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1024_1087_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1024_1087_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1024_1087_3_5 : label is 1024;
  attribute ram_addr_end of display_data_reg_1024_1087_3_5 : label is 1087;
  attribute ram_offset of display_data_reg_1024_1087_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1024_1087_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1024_1087_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1024_1087_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1024_1087_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1024_1087_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1024_1087_6_6 : label is 1024;
  attribute ram_addr_end of display_data_reg_1024_1087_6_6 : label is 1087;
  attribute ram_offset of display_data_reg_1024_1087_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1024_1087_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1024_1087_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1088_1151_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1088_1151_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1088_1151_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1088_1151_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1088_1151_0_2 : label is 1088;
  attribute ram_addr_end of display_data_reg_1088_1151_0_2 : label is 1151;
  attribute ram_offset of display_data_reg_1088_1151_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1088_1151_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1088_1151_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1088_1151_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1088_1151_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1088_1151_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1088_1151_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1088_1151_3_5 : label is 1088;
  attribute ram_addr_end of display_data_reg_1088_1151_3_5 : label is 1151;
  attribute ram_offset of display_data_reg_1088_1151_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1088_1151_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1088_1151_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1088_1151_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1088_1151_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1088_1151_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1088_1151_6_6 : label is 1088;
  attribute ram_addr_end of display_data_reg_1088_1151_6_6 : label is 1151;
  attribute ram_offset of display_data_reg_1088_1151_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1088_1151_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1088_1151_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1152_1215_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1152_1215_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1152_1215_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1152_1215_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1152_1215_0_2 : label is 1152;
  attribute ram_addr_end of display_data_reg_1152_1215_0_2 : label is 1215;
  attribute ram_offset of display_data_reg_1152_1215_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1152_1215_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1152_1215_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1152_1215_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1152_1215_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1152_1215_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1152_1215_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1152_1215_3_5 : label is 1152;
  attribute ram_addr_end of display_data_reg_1152_1215_3_5 : label is 1215;
  attribute ram_offset of display_data_reg_1152_1215_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1152_1215_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1152_1215_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1152_1215_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1152_1215_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1152_1215_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1152_1215_6_6 : label is 1152;
  attribute ram_addr_end of display_data_reg_1152_1215_6_6 : label is 1215;
  attribute ram_offset of display_data_reg_1152_1215_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1152_1215_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1152_1215_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1216_1279_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1216_1279_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1216_1279_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1216_1279_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1216_1279_0_2 : label is 1216;
  attribute ram_addr_end of display_data_reg_1216_1279_0_2 : label is 1279;
  attribute ram_offset of display_data_reg_1216_1279_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1216_1279_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1216_1279_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1216_1279_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1216_1279_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1216_1279_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1216_1279_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1216_1279_3_5 : label is 1216;
  attribute ram_addr_end of display_data_reg_1216_1279_3_5 : label is 1279;
  attribute ram_offset of display_data_reg_1216_1279_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1216_1279_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1216_1279_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1216_1279_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1216_1279_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1216_1279_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1216_1279_6_6 : label is 1216;
  attribute ram_addr_end of display_data_reg_1216_1279_6_6 : label is 1279;
  attribute ram_offset of display_data_reg_1216_1279_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1216_1279_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1216_1279_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1280_1343_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1280_1343_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1280_1343_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1280_1343_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1280_1343_0_2 : label is 1280;
  attribute ram_addr_end of display_data_reg_1280_1343_0_2 : label is 1343;
  attribute ram_offset of display_data_reg_1280_1343_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1280_1343_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1280_1343_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1280_1343_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1280_1343_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1280_1343_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1280_1343_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1280_1343_3_5 : label is 1280;
  attribute ram_addr_end of display_data_reg_1280_1343_3_5 : label is 1343;
  attribute ram_offset of display_data_reg_1280_1343_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1280_1343_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1280_1343_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1280_1343_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1280_1343_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1280_1343_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1280_1343_6_6 : label is 1280;
  attribute ram_addr_end of display_data_reg_1280_1343_6_6 : label is 1343;
  attribute ram_offset of display_data_reg_1280_1343_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1280_1343_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1280_1343_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_128_191_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_128_191_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_128_191_0_2 : label is 128;
  attribute ram_addr_end of display_data_reg_128_191_0_2 : label is 191;
  attribute ram_offset of display_data_reg_128_191_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_128_191_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_128_191_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_128_191_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_128_191_3_5 : label is 128;
  attribute ram_addr_end of display_data_reg_128_191_3_5 : label is 191;
  attribute ram_offset of display_data_reg_128_191_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_128_191_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_128_191_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_128_191_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_128_191_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_128_191_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_128_191_6_6 : label is 128;
  attribute ram_addr_end of display_data_reg_128_191_6_6 : label is 191;
  attribute ram_offset of display_data_reg_128_191_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_128_191_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_128_191_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1344_1407_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1344_1407_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1344_1407_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1344_1407_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1344_1407_0_2 : label is 1344;
  attribute ram_addr_end of display_data_reg_1344_1407_0_2 : label is 1407;
  attribute ram_offset of display_data_reg_1344_1407_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1344_1407_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1344_1407_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1344_1407_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1344_1407_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1344_1407_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1344_1407_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1344_1407_3_5 : label is 1344;
  attribute ram_addr_end of display_data_reg_1344_1407_3_5 : label is 1407;
  attribute ram_offset of display_data_reg_1344_1407_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1344_1407_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1344_1407_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1344_1407_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1344_1407_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1344_1407_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1344_1407_6_6 : label is 1344;
  attribute ram_addr_end of display_data_reg_1344_1407_6_6 : label is 1407;
  attribute ram_offset of display_data_reg_1344_1407_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1344_1407_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1344_1407_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1408_1471_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1408_1471_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1408_1471_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1408_1471_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1408_1471_0_2 : label is 1408;
  attribute ram_addr_end of display_data_reg_1408_1471_0_2 : label is 1471;
  attribute ram_offset of display_data_reg_1408_1471_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1408_1471_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1408_1471_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1408_1471_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1408_1471_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1408_1471_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1408_1471_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1408_1471_3_5 : label is 1408;
  attribute ram_addr_end of display_data_reg_1408_1471_3_5 : label is 1471;
  attribute ram_offset of display_data_reg_1408_1471_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1408_1471_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1408_1471_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1408_1471_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1408_1471_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1408_1471_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1408_1471_6_6 : label is 1408;
  attribute ram_addr_end of display_data_reg_1408_1471_6_6 : label is 1471;
  attribute ram_offset of display_data_reg_1408_1471_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1408_1471_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1408_1471_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1472_1535_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1472_1535_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1472_1535_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1472_1535_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1472_1535_0_2 : label is 1472;
  attribute ram_addr_end of display_data_reg_1472_1535_0_2 : label is 1535;
  attribute ram_offset of display_data_reg_1472_1535_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1472_1535_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1472_1535_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1472_1535_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1472_1535_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1472_1535_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1472_1535_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1472_1535_3_5 : label is 1472;
  attribute ram_addr_end of display_data_reg_1472_1535_3_5 : label is 1535;
  attribute ram_offset of display_data_reg_1472_1535_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1472_1535_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1472_1535_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1472_1535_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1472_1535_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1472_1535_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1472_1535_6_6 : label is 1472;
  attribute ram_addr_end of display_data_reg_1472_1535_6_6 : label is 1535;
  attribute ram_offset of display_data_reg_1472_1535_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1472_1535_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1472_1535_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1536_1599_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1536_1599_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1536_1599_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1536_1599_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1536_1599_0_2 : label is 1536;
  attribute ram_addr_end of display_data_reg_1536_1599_0_2 : label is 1599;
  attribute ram_offset of display_data_reg_1536_1599_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1536_1599_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1536_1599_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1536_1599_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1536_1599_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1536_1599_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1536_1599_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1536_1599_3_5 : label is 1536;
  attribute ram_addr_end of display_data_reg_1536_1599_3_5 : label is 1599;
  attribute ram_offset of display_data_reg_1536_1599_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1536_1599_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1536_1599_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1536_1599_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1536_1599_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1536_1599_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1536_1599_6_6 : label is 1536;
  attribute ram_addr_end of display_data_reg_1536_1599_6_6 : label is 1599;
  attribute ram_offset of display_data_reg_1536_1599_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1536_1599_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1536_1599_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1600_1663_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1600_1663_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1600_1663_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1600_1663_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1600_1663_0_2 : label is 1600;
  attribute ram_addr_end of display_data_reg_1600_1663_0_2 : label is 1663;
  attribute ram_offset of display_data_reg_1600_1663_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1600_1663_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1600_1663_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1600_1663_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1600_1663_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1600_1663_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1600_1663_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1600_1663_3_5 : label is 1600;
  attribute ram_addr_end of display_data_reg_1600_1663_3_5 : label is 1663;
  attribute ram_offset of display_data_reg_1600_1663_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1600_1663_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1600_1663_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1600_1663_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1600_1663_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1600_1663_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1600_1663_6_6 : label is 1600;
  attribute ram_addr_end of display_data_reg_1600_1663_6_6 : label is 1663;
  attribute ram_offset of display_data_reg_1600_1663_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1600_1663_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1600_1663_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1664_1727_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1664_1727_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1664_1727_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1664_1727_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1664_1727_0_2 : label is 1664;
  attribute ram_addr_end of display_data_reg_1664_1727_0_2 : label is 1727;
  attribute ram_offset of display_data_reg_1664_1727_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1664_1727_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1664_1727_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1664_1727_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1664_1727_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1664_1727_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1664_1727_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1664_1727_3_5 : label is 1664;
  attribute ram_addr_end of display_data_reg_1664_1727_3_5 : label is 1727;
  attribute ram_offset of display_data_reg_1664_1727_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1664_1727_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1664_1727_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1664_1727_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1664_1727_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1664_1727_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1664_1727_6_6 : label is 1664;
  attribute ram_addr_end of display_data_reg_1664_1727_6_6 : label is 1727;
  attribute ram_offset of display_data_reg_1664_1727_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1664_1727_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1664_1727_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1728_1791_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1728_1791_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1728_1791_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1728_1791_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1728_1791_0_2 : label is 1728;
  attribute ram_addr_end of display_data_reg_1728_1791_0_2 : label is 1791;
  attribute ram_offset of display_data_reg_1728_1791_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1728_1791_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1728_1791_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1728_1791_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1728_1791_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1728_1791_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1728_1791_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1728_1791_3_5 : label is 1728;
  attribute ram_addr_end of display_data_reg_1728_1791_3_5 : label is 1791;
  attribute ram_offset of display_data_reg_1728_1791_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1728_1791_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1728_1791_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1728_1791_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1728_1791_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1728_1791_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1728_1791_6_6 : label is 1728;
  attribute ram_addr_end of display_data_reg_1728_1791_6_6 : label is 1791;
  attribute ram_offset of display_data_reg_1728_1791_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1728_1791_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1728_1791_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1792_1855_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1792_1855_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1792_1855_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1792_1855_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1792_1855_0_2 : label is 1792;
  attribute ram_addr_end of display_data_reg_1792_1855_0_2 : label is 1855;
  attribute ram_offset of display_data_reg_1792_1855_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1792_1855_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1792_1855_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1792_1855_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1792_1855_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1792_1855_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1792_1855_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1792_1855_3_5 : label is 1792;
  attribute ram_addr_end of display_data_reg_1792_1855_3_5 : label is 1855;
  attribute ram_offset of display_data_reg_1792_1855_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1792_1855_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1792_1855_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1792_1855_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1792_1855_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1792_1855_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1792_1855_6_6 : label is 1792;
  attribute ram_addr_end of display_data_reg_1792_1855_6_6 : label is 1855;
  attribute ram_offset of display_data_reg_1792_1855_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1792_1855_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1792_1855_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1856_1919_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1856_1919_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1856_1919_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1856_1919_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1856_1919_0_2 : label is 1856;
  attribute ram_addr_end of display_data_reg_1856_1919_0_2 : label is 1919;
  attribute ram_offset of display_data_reg_1856_1919_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1856_1919_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1856_1919_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1856_1919_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1856_1919_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1856_1919_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1856_1919_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1856_1919_3_5 : label is 1856;
  attribute ram_addr_end of display_data_reg_1856_1919_3_5 : label is 1919;
  attribute ram_offset of display_data_reg_1856_1919_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1856_1919_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1856_1919_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1856_1919_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1856_1919_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1856_1919_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1856_1919_6_6 : label is 1856;
  attribute ram_addr_end of display_data_reg_1856_1919_6_6 : label is 1919;
  attribute ram_offset of display_data_reg_1856_1919_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1856_1919_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1856_1919_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1920_1983_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1920_1983_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1920_1983_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1920_1983_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1920_1983_0_2 : label is 1920;
  attribute ram_addr_end of display_data_reg_1920_1983_0_2 : label is 1983;
  attribute ram_offset of display_data_reg_1920_1983_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1920_1983_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1920_1983_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1920_1983_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1920_1983_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1920_1983_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1920_1983_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1920_1983_3_5 : label is 1920;
  attribute ram_addr_end of display_data_reg_1920_1983_3_5 : label is 1983;
  attribute ram_offset of display_data_reg_1920_1983_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1920_1983_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1920_1983_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1920_1983_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1920_1983_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1920_1983_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1920_1983_6_6 : label is 1920;
  attribute ram_addr_end of display_data_reg_1920_1983_6_6 : label is 1983;
  attribute ram_offset of display_data_reg_1920_1983_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1920_1983_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1920_1983_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_192_255_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_192_255_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_192_255_0_2 : label is 192;
  attribute ram_addr_end of display_data_reg_192_255_0_2 : label is 255;
  attribute ram_offset of display_data_reg_192_255_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_192_255_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_192_255_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_192_255_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_192_255_3_5 : label is 192;
  attribute ram_addr_end of display_data_reg_192_255_3_5 : label is 255;
  attribute ram_offset of display_data_reg_192_255_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_192_255_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_192_255_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_192_255_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_192_255_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_192_255_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_192_255_6_6 : label is 192;
  attribute ram_addr_end of display_data_reg_192_255_6_6 : label is 255;
  attribute ram_offset of display_data_reg_192_255_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_192_255_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_192_255_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1984_2047_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1984_2047_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1984_2047_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1984_2047_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1984_2047_0_2 : label is 1984;
  attribute ram_addr_end of display_data_reg_1984_2047_0_2 : label is 2047;
  attribute ram_offset of display_data_reg_1984_2047_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_1984_2047_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_1984_2047_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_1984_2047_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_1984_2047_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1984_2047_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1984_2047_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1984_2047_3_5 : label is 1984;
  attribute ram_addr_end of display_data_reg_1984_2047_3_5 : label is 2047;
  attribute ram_offset of display_data_reg_1984_2047_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_1984_2047_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_1984_2047_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_1984_2047_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_1984_2047_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_1984_2047_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_1984_2047_6_6 : label is 1984;
  attribute ram_addr_end of display_data_reg_1984_2047_6_6 : label is 2047;
  attribute ram_offset of display_data_reg_1984_2047_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_1984_2047_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_1984_2047_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2048_2111_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2048_2111_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2048_2111_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2048_2111_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2048_2111_0_2 : label is 2048;
  attribute ram_addr_end of display_data_reg_2048_2111_0_2 : label is 2111;
  attribute ram_offset of display_data_reg_2048_2111_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2048_2111_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2048_2111_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2048_2111_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2048_2111_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2048_2111_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2048_2111_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2048_2111_3_5 : label is 2048;
  attribute ram_addr_end of display_data_reg_2048_2111_3_5 : label is 2111;
  attribute ram_offset of display_data_reg_2048_2111_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2048_2111_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2048_2111_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2048_2111_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2048_2111_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2048_2111_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2048_2111_6_6 : label is 2048;
  attribute ram_addr_end of display_data_reg_2048_2111_6_6 : label is 2111;
  attribute ram_offset of display_data_reg_2048_2111_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2048_2111_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2048_2111_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2112_2175_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2112_2175_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2112_2175_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2112_2175_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2112_2175_0_2 : label is 2112;
  attribute ram_addr_end of display_data_reg_2112_2175_0_2 : label is 2175;
  attribute ram_offset of display_data_reg_2112_2175_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2112_2175_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2112_2175_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2112_2175_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2112_2175_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2112_2175_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2112_2175_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2112_2175_3_5 : label is 2112;
  attribute ram_addr_end of display_data_reg_2112_2175_3_5 : label is 2175;
  attribute ram_offset of display_data_reg_2112_2175_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2112_2175_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2112_2175_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2112_2175_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2112_2175_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2112_2175_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2112_2175_6_6 : label is 2112;
  attribute ram_addr_end of display_data_reg_2112_2175_6_6 : label is 2175;
  attribute ram_offset of display_data_reg_2112_2175_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2112_2175_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2112_2175_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2176_2239_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2176_2239_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2176_2239_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2176_2239_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2176_2239_0_2 : label is 2176;
  attribute ram_addr_end of display_data_reg_2176_2239_0_2 : label is 2239;
  attribute ram_offset of display_data_reg_2176_2239_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2176_2239_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2176_2239_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2176_2239_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2176_2239_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2176_2239_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2176_2239_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2176_2239_3_5 : label is 2176;
  attribute ram_addr_end of display_data_reg_2176_2239_3_5 : label is 2239;
  attribute ram_offset of display_data_reg_2176_2239_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2176_2239_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2176_2239_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2176_2239_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2176_2239_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2176_2239_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2176_2239_6_6 : label is 2176;
  attribute ram_addr_end of display_data_reg_2176_2239_6_6 : label is 2239;
  attribute ram_offset of display_data_reg_2176_2239_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2176_2239_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2176_2239_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2240_2303_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2240_2303_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2240_2303_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2240_2303_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2240_2303_0_2 : label is 2240;
  attribute ram_addr_end of display_data_reg_2240_2303_0_2 : label is 2303;
  attribute ram_offset of display_data_reg_2240_2303_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2240_2303_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2240_2303_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2240_2303_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2240_2303_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2240_2303_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2240_2303_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2240_2303_3_5 : label is 2240;
  attribute ram_addr_end of display_data_reg_2240_2303_3_5 : label is 2303;
  attribute ram_offset of display_data_reg_2240_2303_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2240_2303_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2240_2303_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2240_2303_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2240_2303_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2240_2303_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2240_2303_6_6 : label is 2240;
  attribute ram_addr_end of display_data_reg_2240_2303_6_6 : label is 2303;
  attribute ram_offset of display_data_reg_2240_2303_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2240_2303_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2240_2303_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2304_2367_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2304_2367_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2304_2367_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2304_2367_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2304_2367_0_2 : label is 2304;
  attribute ram_addr_end of display_data_reg_2304_2367_0_2 : label is 2367;
  attribute ram_offset of display_data_reg_2304_2367_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2304_2367_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2304_2367_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2304_2367_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2304_2367_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2304_2367_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2304_2367_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2304_2367_3_5 : label is 2304;
  attribute ram_addr_end of display_data_reg_2304_2367_3_5 : label is 2367;
  attribute ram_offset of display_data_reg_2304_2367_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2304_2367_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2304_2367_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2304_2367_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2304_2367_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2304_2367_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2304_2367_6_6 : label is 2304;
  attribute ram_addr_end of display_data_reg_2304_2367_6_6 : label is 2367;
  attribute ram_offset of display_data_reg_2304_2367_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2304_2367_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2304_2367_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2368_2431_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2368_2431_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2368_2431_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2368_2431_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2368_2431_0_2 : label is 2368;
  attribute ram_addr_end of display_data_reg_2368_2431_0_2 : label is 2431;
  attribute ram_offset of display_data_reg_2368_2431_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2368_2431_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2368_2431_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2368_2431_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2368_2431_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2368_2431_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2368_2431_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2368_2431_3_5 : label is 2368;
  attribute ram_addr_end of display_data_reg_2368_2431_3_5 : label is 2431;
  attribute ram_offset of display_data_reg_2368_2431_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2368_2431_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2368_2431_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2368_2431_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2368_2431_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2368_2431_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2368_2431_6_6 : label is 2368;
  attribute ram_addr_end of display_data_reg_2368_2431_6_6 : label is 2431;
  attribute ram_offset of display_data_reg_2368_2431_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2368_2431_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2368_2431_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2432_2495_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2432_2495_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2432_2495_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2432_2495_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2432_2495_0_2 : label is 2432;
  attribute ram_addr_end of display_data_reg_2432_2495_0_2 : label is 2495;
  attribute ram_offset of display_data_reg_2432_2495_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2432_2495_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2432_2495_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2432_2495_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2432_2495_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2432_2495_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2432_2495_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2432_2495_3_5 : label is 2432;
  attribute ram_addr_end of display_data_reg_2432_2495_3_5 : label is 2495;
  attribute ram_offset of display_data_reg_2432_2495_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2432_2495_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2432_2495_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2432_2495_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2432_2495_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2432_2495_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2432_2495_6_6 : label is 2432;
  attribute ram_addr_end of display_data_reg_2432_2495_6_6 : label is 2495;
  attribute ram_offset of display_data_reg_2432_2495_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2432_2495_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2432_2495_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2496_2559_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2496_2559_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2496_2559_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2496_2559_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2496_2559_0_2 : label is 2496;
  attribute ram_addr_end of display_data_reg_2496_2559_0_2 : label is 2559;
  attribute ram_offset of display_data_reg_2496_2559_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2496_2559_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2496_2559_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2496_2559_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2496_2559_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2496_2559_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2496_2559_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2496_2559_3_5 : label is 2496;
  attribute ram_addr_end of display_data_reg_2496_2559_3_5 : label is 2559;
  attribute ram_offset of display_data_reg_2496_2559_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2496_2559_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2496_2559_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2496_2559_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2496_2559_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2496_2559_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2496_2559_6_6 : label is 2496;
  attribute ram_addr_end of display_data_reg_2496_2559_6_6 : label is 2559;
  attribute ram_offset of display_data_reg_2496_2559_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2496_2559_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2496_2559_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2560_2623_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2560_2623_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2560_2623_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2560_2623_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2560_2623_0_2 : label is 2560;
  attribute ram_addr_end of display_data_reg_2560_2623_0_2 : label is 2623;
  attribute ram_offset of display_data_reg_2560_2623_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2560_2623_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2560_2623_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2560_2623_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2560_2623_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2560_2623_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2560_2623_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2560_2623_3_5 : label is 2560;
  attribute ram_addr_end of display_data_reg_2560_2623_3_5 : label is 2623;
  attribute ram_offset of display_data_reg_2560_2623_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2560_2623_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2560_2623_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2560_2623_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2560_2623_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2560_2623_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2560_2623_6_6 : label is 2560;
  attribute ram_addr_end of display_data_reg_2560_2623_6_6 : label is 2623;
  attribute ram_offset of display_data_reg_2560_2623_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2560_2623_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2560_2623_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_256_319_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_256_319_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_256_319_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_256_319_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_256_319_0_2 : label is 256;
  attribute ram_addr_end of display_data_reg_256_319_0_2 : label is 319;
  attribute ram_offset of display_data_reg_256_319_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_256_319_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_256_319_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_256_319_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_256_319_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_256_319_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_256_319_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_256_319_3_5 : label is 256;
  attribute ram_addr_end of display_data_reg_256_319_3_5 : label is 319;
  attribute ram_offset of display_data_reg_256_319_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_256_319_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_256_319_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_256_319_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_256_319_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_256_319_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_256_319_6_6 : label is 256;
  attribute ram_addr_end of display_data_reg_256_319_6_6 : label is 319;
  attribute ram_offset of display_data_reg_256_319_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_256_319_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_256_319_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2624_2687_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2624_2687_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2624_2687_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2624_2687_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2624_2687_0_2 : label is 2624;
  attribute ram_addr_end of display_data_reg_2624_2687_0_2 : label is 2687;
  attribute ram_offset of display_data_reg_2624_2687_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2624_2687_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2624_2687_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2624_2687_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2624_2687_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2624_2687_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2624_2687_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2624_2687_3_5 : label is 2624;
  attribute ram_addr_end of display_data_reg_2624_2687_3_5 : label is 2687;
  attribute ram_offset of display_data_reg_2624_2687_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2624_2687_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2624_2687_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2624_2687_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2624_2687_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2624_2687_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2624_2687_6_6 : label is 2624;
  attribute ram_addr_end of display_data_reg_2624_2687_6_6 : label is 2687;
  attribute ram_offset of display_data_reg_2624_2687_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2624_2687_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2624_2687_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2688_2751_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2688_2751_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2688_2751_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2688_2751_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2688_2751_0_2 : label is 2688;
  attribute ram_addr_end of display_data_reg_2688_2751_0_2 : label is 2751;
  attribute ram_offset of display_data_reg_2688_2751_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2688_2751_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2688_2751_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2688_2751_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2688_2751_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2688_2751_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2688_2751_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2688_2751_3_5 : label is 2688;
  attribute ram_addr_end of display_data_reg_2688_2751_3_5 : label is 2751;
  attribute ram_offset of display_data_reg_2688_2751_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2688_2751_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2688_2751_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2688_2751_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2688_2751_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2688_2751_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2688_2751_6_6 : label is 2688;
  attribute ram_addr_end of display_data_reg_2688_2751_6_6 : label is 2751;
  attribute ram_offset of display_data_reg_2688_2751_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2688_2751_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2688_2751_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2752_2815_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2752_2815_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2752_2815_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2752_2815_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2752_2815_0_2 : label is 2752;
  attribute ram_addr_end of display_data_reg_2752_2815_0_2 : label is 2815;
  attribute ram_offset of display_data_reg_2752_2815_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2752_2815_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2752_2815_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2752_2815_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2752_2815_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2752_2815_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2752_2815_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2752_2815_3_5 : label is 2752;
  attribute ram_addr_end of display_data_reg_2752_2815_3_5 : label is 2815;
  attribute ram_offset of display_data_reg_2752_2815_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2752_2815_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2752_2815_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2752_2815_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2752_2815_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2752_2815_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2752_2815_6_6 : label is 2752;
  attribute ram_addr_end of display_data_reg_2752_2815_6_6 : label is 2815;
  attribute ram_offset of display_data_reg_2752_2815_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2752_2815_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2752_2815_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2816_2879_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2816_2879_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2816_2879_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2816_2879_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2816_2879_0_2 : label is 2816;
  attribute ram_addr_end of display_data_reg_2816_2879_0_2 : label is 2879;
  attribute ram_offset of display_data_reg_2816_2879_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2816_2879_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2816_2879_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2816_2879_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2816_2879_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2816_2879_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2816_2879_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2816_2879_3_5 : label is 2816;
  attribute ram_addr_end of display_data_reg_2816_2879_3_5 : label is 2879;
  attribute ram_offset of display_data_reg_2816_2879_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2816_2879_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2816_2879_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2816_2879_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2816_2879_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2816_2879_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2816_2879_6_6 : label is 2816;
  attribute ram_addr_end of display_data_reg_2816_2879_6_6 : label is 2879;
  attribute ram_offset of display_data_reg_2816_2879_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2816_2879_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2816_2879_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2880_2943_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2880_2943_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2880_2943_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2880_2943_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2880_2943_0_2 : label is 2880;
  attribute ram_addr_end of display_data_reg_2880_2943_0_2 : label is 2943;
  attribute ram_offset of display_data_reg_2880_2943_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2880_2943_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2880_2943_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2880_2943_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2880_2943_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2880_2943_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2880_2943_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2880_2943_3_5 : label is 2880;
  attribute ram_addr_end of display_data_reg_2880_2943_3_5 : label is 2943;
  attribute ram_offset of display_data_reg_2880_2943_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2880_2943_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2880_2943_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2880_2943_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2880_2943_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2880_2943_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2880_2943_6_6 : label is 2880;
  attribute ram_addr_end of display_data_reg_2880_2943_6_6 : label is 2943;
  attribute ram_offset of display_data_reg_2880_2943_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2880_2943_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2880_2943_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2944_3007_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2944_3007_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2944_3007_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2944_3007_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2944_3007_0_2 : label is 2944;
  attribute ram_addr_end of display_data_reg_2944_3007_0_2 : label is 3007;
  attribute ram_offset of display_data_reg_2944_3007_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_2944_3007_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_2944_3007_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_2944_3007_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_2944_3007_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2944_3007_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2944_3007_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2944_3007_3_5 : label is 2944;
  attribute ram_addr_end of display_data_reg_2944_3007_3_5 : label is 3007;
  attribute ram_offset of display_data_reg_2944_3007_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_2944_3007_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_2944_3007_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_2944_3007_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_2944_3007_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_2944_3007_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_2944_3007_6_6 : label is 2944;
  attribute ram_addr_end of display_data_reg_2944_3007_6_6 : label is 3007;
  attribute ram_offset of display_data_reg_2944_3007_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_2944_3007_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_2944_3007_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3008_3071_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3008_3071_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3008_3071_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3008_3071_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3008_3071_0_2 : label is 3008;
  attribute ram_addr_end of display_data_reg_3008_3071_0_2 : label is 3071;
  attribute ram_offset of display_data_reg_3008_3071_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3008_3071_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3008_3071_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3008_3071_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3008_3071_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3008_3071_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3008_3071_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3008_3071_3_5 : label is 3008;
  attribute ram_addr_end of display_data_reg_3008_3071_3_5 : label is 3071;
  attribute ram_offset of display_data_reg_3008_3071_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3008_3071_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3008_3071_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3008_3071_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3008_3071_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3008_3071_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3008_3071_6_6 : label is 3008;
  attribute ram_addr_end of display_data_reg_3008_3071_6_6 : label is 3071;
  attribute ram_offset of display_data_reg_3008_3071_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3008_3071_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3008_3071_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3072_3135_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3072_3135_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3072_3135_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3072_3135_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3072_3135_0_2 : label is 3072;
  attribute ram_addr_end of display_data_reg_3072_3135_0_2 : label is 3135;
  attribute ram_offset of display_data_reg_3072_3135_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3072_3135_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3072_3135_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3072_3135_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3072_3135_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3072_3135_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3072_3135_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3072_3135_3_5 : label is 3072;
  attribute ram_addr_end of display_data_reg_3072_3135_3_5 : label is 3135;
  attribute ram_offset of display_data_reg_3072_3135_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3072_3135_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3072_3135_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3072_3135_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3072_3135_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3072_3135_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3072_3135_6_6 : label is 3072;
  attribute ram_addr_end of display_data_reg_3072_3135_6_6 : label is 3135;
  attribute ram_offset of display_data_reg_3072_3135_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3072_3135_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3072_3135_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3136_3199_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3136_3199_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3136_3199_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3136_3199_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3136_3199_0_2 : label is 3136;
  attribute ram_addr_end of display_data_reg_3136_3199_0_2 : label is 3199;
  attribute ram_offset of display_data_reg_3136_3199_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3136_3199_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3136_3199_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3136_3199_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3136_3199_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3136_3199_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3136_3199_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3136_3199_3_5 : label is 3136;
  attribute ram_addr_end of display_data_reg_3136_3199_3_5 : label is 3199;
  attribute ram_offset of display_data_reg_3136_3199_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3136_3199_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3136_3199_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3136_3199_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3136_3199_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3136_3199_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3136_3199_6_6 : label is 3136;
  attribute ram_addr_end of display_data_reg_3136_3199_6_6 : label is 3199;
  attribute ram_offset of display_data_reg_3136_3199_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3136_3199_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3136_3199_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3200_3263_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3200_3263_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3200_3263_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3200_3263_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3200_3263_0_2 : label is 3200;
  attribute ram_addr_end of display_data_reg_3200_3263_0_2 : label is 3263;
  attribute ram_offset of display_data_reg_3200_3263_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3200_3263_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3200_3263_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3200_3263_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3200_3263_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3200_3263_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3200_3263_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3200_3263_3_5 : label is 3200;
  attribute ram_addr_end of display_data_reg_3200_3263_3_5 : label is 3263;
  attribute ram_offset of display_data_reg_3200_3263_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3200_3263_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3200_3263_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3200_3263_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3200_3263_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3200_3263_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3200_3263_6_6 : label is 3200;
  attribute ram_addr_end of display_data_reg_3200_3263_6_6 : label is 3263;
  attribute ram_offset of display_data_reg_3200_3263_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3200_3263_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3200_3263_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_320_383_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_320_383_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_320_383_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_320_383_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_320_383_0_2 : label is 320;
  attribute ram_addr_end of display_data_reg_320_383_0_2 : label is 383;
  attribute ram_offset of display_data_reg_320_383_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_320_383_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_320_383_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_320_383_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_320_383_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_320_383_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_320_383_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_320_383_3_5 : label is 320;
  attribute ram_addr_end of display_data_reg_320_383_3_5 : label is 383;
  attribute ram_offset of display_data_reg_320_383_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_320_383_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_320_383_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_320_383_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_320_383_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_320_383_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_320_383_6_6 : label is 320;
  attribute ram_addr_end of display_data_reg_320_383_6_6 : label is 383;
  attribute ram_offset of display_data_reg_320_383_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_320_383_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_320_383_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3264_3327_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3264_3327_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3264_3327_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3264_3327_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3264_3327_0_2 : label is 3264;
  attribute ram_addr_end of display_data_reg_3264_3327_0_2 : label is 3327;
  attribute ram_offset of display_data_reg_3264_3327_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3264_3327_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3264_3327_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3264_3327_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3264_3327_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3264_3327_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3264_3327_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3264_3327_3_5 : label is 3264;
  attribute ram_addr_end of display_data_reg_3264_3327_3_5 : label is 3327;
  attribute ram_offset of display_data_reg_3264_3327_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3264_3327_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3264_3327_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3264_3327_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3264_3327_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3264_3327_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3264_3327_6_6 : label is 3264;
  attribute ram_addr_end of display_data_reg_3264_3327_6_6 : label is 3327;
  attribute ram_offset of display_data_reg_3264_3327_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3264_3327_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3264_3327_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3328_3391_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3328_3391_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3328_3391_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3328_3391_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3328_3391_0_2 : label is 3328;
  attribute ram_addr_end of display_data_reg_3328_3391_0_2 : label is 3391;
  attribute ram_offset of display_data_reg_3328_3391_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3328_3391_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3328_3391_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3328_3391_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3328_3391_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3328_3391_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3328_3391_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3328_3391_3_5 : label is 3328;
  attribute ram_addr_end of display_data_reg_3328_3391_3_5 : label is 3391;
  attribute ram_offset of display_data_reg_3328_3391_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3328_3391_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3328_3391_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3328_3391_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3328_3391_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3328_3391_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3328_3391_6_6 : label is 3328;
  attribute ram_addr_end of display_data_reg_3328_3391_6_6 : label is 3391;
  attribute ram_offset of display_data_reg_3328_3391_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3328_3391_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3328_3391_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3392_3455_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3392_3455_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3392_3455_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3392_3455_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3392_3455_0_2 : label is 3392;
  attribute ram_addr_end of display_data_reg_3392_3455_0_2 : label is 3455;
  attribute ram_offset of display_data_reg_3392_3455_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3392_3455_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3392_3455_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3392_3455_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3392_3455_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3392_3455_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3392_3455_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3392_3455_3_5 : label is 3392;
  attribute ram_addr_end of display_data_reg_3392_3455_3_5 : label is 3455;
  attribute ram_offset of display_data_reg_3392_3455_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3392_3455_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3392_3455_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3392_3455_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3392_3455_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3392_3455_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3392_3455_6_6 : label is 3392;
  attribute ram_addr_end of display_data_reg_3392_3455_6_6 : label is 3455;
  attribute ram_offset of display_data_reg_3392_3455_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3392_3455_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3392_3455_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3456_3519_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3456_3519_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3456_3519_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3456_3519_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3456_3519_0_2 : label is 3456;
  attribute ram_addr_end of display_data_reg_3456_3519_0_2 : label is 3519;
  attribute ram_offset of display_data_reg_3456_3519_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3456_3519_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3456_3519_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3456_3519_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3456_3519_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3456_3519_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3456_3519_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3456_3519_3_5 : label is 3456;
  attribute ram_addr_end of display_data_reg_3456_3519_3_5 : label is 3519;
  attribute ram_offset of display_data_reg_3456_3519_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3456_3519_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3456_3519_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3456_3519_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3456_3519_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3456_3519_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3456_3519_6_6 : label is 3456;
  attribute ram_addr_end of display_data_reg_3456_3519_6_6 : label is 3519;
  attribute ram_offset of display_data_reg_3456_3519_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3456_3519_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3456_3519_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3520_3583_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3520_3583_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3520_3583_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3520_3583_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3520_3583_0_2 : label is 3520;
  attribute ram_addr_end of display_data_reg_3520_3583_0_2 : label is 3583;
  attribute ram_offset of display_data_reg_3520_3583_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3520_3583_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3520_3583_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3520_3583_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3520_3583_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3520_3583_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3520_3583_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3520_3583_3_5 : label is 3520;
  attribute ram_addr_end of display_data_reg_3520_3583_3_5 : label is 3583;
  attribute ram_offset of display_data_reg_3520_3583_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3520_3583_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3520_3583_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3520_3583_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3520_3583_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3520_3583_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3520_3583_6_6 : label is 3520;
  attribute ram_addr_end of display_data_reg_3520_3583_6_6 : label is 3583;
  attribute ram_offset of display_data_reg_3520_3583_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3520_3583_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3520_3583_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3584_3647_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3584_3647_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3584_3647_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3584_3647_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3584_3647_0_2 : label is 3584;
  attribute ram_addr_end of display_data_reg_3584_3647_0_2 : label is 3647;
  attribute ram_offset of display_data_reg_3584_3647_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3584_3647_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3584_3647_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3584_3647_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3584_3647_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3584_3647_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3584_3647_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3584_3647_3_5 : label is 3584;
  attribute ram_addr_end of display_data_reg_3584_3647_3_5 : label is 3647;
  attribute ram_offset of display_data_reg_3584_3647_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3584_3647_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3584_3647_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3584_3647_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3584_3647_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3584_3647_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3584_3647_6_6 : label is 3584;
  attribute ram_addr_end of display_data_reg_3584_3647_6_6 : label is 3647;
  attribute ram_offset of display_data_reg_3584_3647_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3584_3647_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3584_3647_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3648_3711_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3648_3711_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3648_3711_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3648_3711_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3648_3711_0_2 : label is 3648;
  attribute ram_addr_end of display_data_reg_3648_3711_0_2 : label is 3711;
  attribute ram_offset of display_data_reg_3648_3711_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3648_3711_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3648_3711_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3648_3711_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3648_3711_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3648_3711_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3648_3711_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3648_3711_3_5 : label is 3648;
  attribute ram_addr_end of display_data_reg_3648_3711_3_5 : label is 3711;
  attribute ram_offset of display_data_reg_3648_3711_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3648_3711_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3648_3711_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3648_3711_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3648_3711_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3648_3711_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3648_3711_6_6 : label is 3648;
  attribute ram_addr_end of display_data_reg_3648_3711_6_6 : label is 3711;
  attribute ram_offset of display_data_reg_3648_3711_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3648_3711_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3648_3711_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3712_3775_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3712_3775_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3712_3775_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3712_3775_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3712_3775_0_2 : label is 3712;
  attribute ram_addr_end of display_data_reg_3712_3775_0_2 : label is 3775;
  attribute ram_offset of display_data_reg_3712_3775_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3712_3775_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3712_3775_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3712_3775_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3712_3775_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3712_3775_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3712_3775_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3712_3775_3_5 : label is 3712;
  attribute ram_addr_end of display_data_reg_3712_3775_3_5 : label is 3775;
  attribute ram_offset of display_data_reg_3712_3775_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3712_3775_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3712_3775_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3712_3775_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3712_3775_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3712_3775_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3712_3775_6_6 : label is 3712;
  attribute ram_addr_end of display_data_reg_3712_3775_6_6 : label is 3775;
  attribute ram_offset of display_data_reg_3712_3775_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3712_3775_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3712_3775_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3776_3839_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3776_3839_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3776_3839_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3776_3839_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3776_3839_0_2 : label is 3776;
  attribute ram_addr_end of display_data_reg_3776_3839_0_2 : label is 3839;
  attribute ram_offset of display_data_reg_3776_3839_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3776_3839_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3776_3839_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3776_3839_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3776_3839_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3776_3839_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3776_3839_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3776_3839_3_5 : label is 3776;
  attribute ram_addr_end of display_data_reg_3776_3839_3_5 : label is 3839;
  attribute ram_offset of display_data_reg_3776_3839_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3776_3839_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3776_3839_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3776_3839_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3776_3839_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3776_3839_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3776_3839_6_6 : label is 3776;
  attribute ram_addr_end of display_data_reg_3776_3839_6_6 : label is 3839;
  attribute ram_offset of display_data_reg_3776_3839_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3776_3839_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3776_3839_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3840_3903_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3840_3903_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3840_3903_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3840_3903_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3840_3903_0_2 : label is 3840;
  attribute ram_addr_end of display_data_reg_3840_3903_0_2 : label is 3903;
  attribute ram_offset of display_data_reg_3840_3903_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3840_3903_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3840_3903_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3840_3903_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3840_3903_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3840_3903_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3840_3903_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3840_3903_3_5 : label is 3840;
  attribute ram_addr_end of display_data_reg_3840_3903_3_5 : label is 3903;
  attribute ram_offset of display_data_reg_3840_3903_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3840_3903_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3840_3903_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3840_3903_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3840_3903_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3840_3903_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3840_3903_6_6 : label is 3840;
  attribute ram_addr_end of display_data_reg_3840_3903_6_6 : label is 3903;
  attribute ram_offset of display_data_reg_3840_3903_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3840_3903_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3840_3903_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_384_447_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_384_447_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_384_447_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_384_447_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_384_447_0_2 : label is 384;
  attribute ram_addr_end of display_data_reg_384_447_0_2 : label is 447;
  attribute ram_offset of display_data_reg_384_447_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_384_447_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_384_447_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_384_447_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_384_447_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_384_447_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_384_447_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_384_447_3_5 : label is 384;
  attribute ram_addr_end of display_data_reg_384_447_3_5 : label is 447;
  attribute ram_offset of display_data_reg_384_447_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_384_447_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_384_447_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_384_447_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_384_447_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_384_447_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_384_447_6_6 : label is 384;
  attribute ram_addr_end of display_data_reg_384_447_6_6 : label is 447;
  attribute ram_offset of display_data_reg_384_447_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_384_447_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_384_447_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3904_3967_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3904_3967_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3904_3967_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3904_3967_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3904_3967_0_2 : label is 3904;
  attribute ram_addr_end of display_data_reg_3904_3967_0_2 : label is 3967;
  attribute ram_offset of display_data_reg_3904_3967_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3904_3967_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3904_3967_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3904_3967_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3904_3967_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3904_3967_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3904_3967_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3904_3967_3_5 : label is 3904;
  attribute ram_addr_end of display_data_reg_3904_3967_3_5 : label is 3967;
  attribute ram_offset of display_data_reg_3904_3967_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3904_3967_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3904_3967_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3904_3967_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3904_3967_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3904_3967_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3904_3967_6_6 : label is 3904;
  attribute ram_addr_end of display_data_reg_3904_3967_6_6 : label is 3967;
  attribute ram_offset of display_data_reg_3904_3967_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3904_3967_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3904_3967_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3968_4031_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3968_4031_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3968_4031_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3968_4031_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3968_4031_0_2 : label is 3968;
  attribute ram_addr_end of display_data_reg_3968_4031_0_2 : label is 4031;
  attribute ram_offset of display_data_reg_3968_4031_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_3968_4031_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_3968_4031_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_3968_4031_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_3968_4031_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3968_4031_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3968_4031_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3968_4031_3_5 : label is 3968;
  attribute ram_addr_end of display_data_reg_3968_4031_3_5 : label is 4031;
  attribute ram_offset of display_data_reg_3968_4031_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_3968_4031_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_3968_4031_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_3968_4031_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_3968_4031_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_3968_4031_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_3968_4031_6_6 : label is 3968;
  attribute ram_addr_end of display_data_reg_3968_4031_6_6 : label is 4031;
  attribute ram_offset of display_data_reg_3968_4031_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_3968_4031_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_3968_4031_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_4032_4095_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_4032_4095_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_4032_4095_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_4032_4095_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_4032_4095_0_2 : label is 4032;
  attribute ram_addr_end of display_data_reg_4032_4095_0_2 : label is 4095;
  attribute ram_offset of display_data_reg_4032_4095_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_4032_4095_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_4032_4095_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_4032_4095_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_4032_4095_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_4032_4095_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_4032_4095_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_4032_4095_3_5 : label is 4032;
  attribute ram_addr_end of display_data_reg_4032_4095_3_5 : label is 4095;
  attribute ram_offset of display_data_reg_4032_4095_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_4032_4095_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_4032_4095_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_4032_4095_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_4032_4095_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_4032_4095_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_4032_4095_6_6 : label is 4032;
  attribute ram_addr_end of display_data_reg_4032_4095_6_6 : label is 4095;
  attribute ram_offset of display_data_reg_4032_4095_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_4032_4095_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_4032_4095_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_448_511_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_448_511_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_448_511_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_448_511_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_448_511_0_2 : label is 448;
  attribute ram_addr_end of display_data_reg_448_511_0_2 : label is 511;
  attribute ram_offset of display_data_reg_448_511_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_448_511_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_448_511_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_448_511_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_448_511_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_448_511_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_448_511_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_448_511_3_5 : label is 448;
  attribute ram_addr_end of display_data_reg_448_511_3_5 : label is 511;
  attribute ram_offset of display_data_reg_448_511_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_448_511_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_448_511_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_448_511_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_448_511_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_448_511_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_448_511_6_6 : label is 448;
  attribute ram_addr_end of display_data_reg_448_511_6_6 : label is 511;
  attribute ram_offset of display_data_reg_448_511_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_448_511_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_448_511_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_512_575_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_512_575_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_512_575_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_512_575_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_512_575_0_2 : label is 512;
  attribute ram_addr_end of display_data_reg_512_575_0_2 : label is 575;
  attribute ram_offset of display_data_reg_512_575_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_512_575_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_512_575_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_512_575_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_512_575_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_512_575_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_512_575_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_512_575_3_5 : label is 512;
  attribute ram_addr_end of display_data_reg_512_575_3_5 : label is 575;
  attribute ram_offset of display_data_reg_512_575_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_512_575_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_512_575_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_512_575_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_512_575_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_512_575_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_512_575_6_6 : label is 512;
  attribute ram_addr_end of display_data_reg_512_575_6_6 : label is 575;
  attribute ram_offset of display_data_reg_512_575_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_512_575_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_512_575_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_576_639_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_576_639_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_576_639_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_576_639_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_576_639_0_2 : label is 576;
  attribute ram_addr_end of display_data_reg_576_639_0_2 : label is 639;
  attribute ram_offset of display_data_reg_576_639_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_576_639_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_576_639_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_576_639_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_576_639_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_576_639_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_576_639_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_576_639_3_5 : label is 576;
  attribute ram_addr_end of display_data_reg_576_639_3_5 : label is 639;
  attribute ram_offset of display_data_reg_576_639_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_576_639_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_576_639_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_576_639_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_576_639_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_576_639_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_576_639_6_6 : label is 576;
  attribute ram_addr_end of display_data_reg_576_639_6_6 : label is 639;
  attribute ram_offset of display_data_reg_576_639_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_576_639_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_576_639_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_640_703_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_640_703_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_640_703_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_640_703_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_640_703_0_2 : label is 640;
  attribute ram_addr_end of display_data_reg_640_703_0_2 : label is 703;
  attribute ram_offset of display_data_reg_640_703_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_640_703_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_640_703_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_640_703_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_640_703_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_640_703_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_640_703_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_640_703_3_5 : label is 640;
  attribute ram_addr_end of display_data_reg_640_703_3_5 : label is 703;
  attribute ram_offset of display_data_reg_640_703_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_640_703_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_640_703_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_640_703_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_640_703_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_640_703_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_640_703_6_6 : label is 640;
  attribute ram_addr_end of display_data_reg_640_703_6_6 : label is 703;
  attribute ram_offset of display_data_reg_640_703_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_640_703_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_640_703_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_64_127_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_64_127_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_64_127_0_2 : label is 64;
  attribute ram_addr_end of display_data_reg_64_127_0_2 : label is 127;
  attribute ram_offset of display_data_reg_64_127_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_64_127_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_64_127_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_64_127_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_64_127_3_5 : label is 64;
  attribute ram_addr_end of display_data_reg_64_127_3_5 : label is 127;
  attribute ram_offset of display_data_reg_64_127_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_64_127_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_64_127_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_64_127_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_64_127_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_64_127_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_64_127_6_6 : label is 64;
  attribute ram_addr_end of display_data_reg_64_127_6_6 : label is 127;
  attribute ram_offset of display_data_reg_64_127_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_64_127_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_64_127_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_704_767_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_704_767_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_704_767_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_704_767_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_704_767_0_2 : label is 704;
  attribute ram_addr_end of display_data_reg_704_767_0_2 : label is 767;
  attribute ram_offset of display_data_reg_704_767_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_704_767_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_704_767_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_704_767_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_704_767_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_704_767_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_704_767_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_704_767_3_5 : label is 704;
  attribute ram_addr_end of display_data_reg_704_767_3_5 : label is 767;
  attribute ram_offset of display_data_reg_704_767_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_704_767_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_704_767_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_704_767_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_704_767_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_704_767_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_704_767_6_6 : label is 704;
  attribute ram_addr_end of display_data_reg_704_767_6_6 : label is 767;
  attribute ram_offset of display_data_reg_704_767_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_704_767_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_704_767_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_768_831_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_768_831_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_768_831_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_768_831_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_768_831_0_2 : label is 768;
  attribute ram_addr_end of display_data_reg_768_831_0_2 : label is 831;
  attribute ram_offset of display_data_reg_768_831_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_768_831_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_768_831_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_768_831_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_768_831_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_768_831_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_768_831_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_768_831_3_5 : label is 768;
  attribute ram_addr_end of display_data_reg_768_831_3_5 : label is 831;
  attribute ram_offset of display_data_reg_768_831_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_768_831_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_768_831_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_768_831_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_768_831_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_768_831_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_768_831_6_6 : label is 768;
  attribute ram_addr_end of display_data_reg_768_831_6_6 : label is 831;
  attribute ram_offset of display_data_reg_768_831_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_768_831_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_768_831_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_832_895_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_832_895_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_832_895_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_832_895_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_832_895_0_2 : label is 832;
  attribute ram_addr_end of display_data_reg_832_895_0_2 : label is 895;
  attribute ram_offset of display_data_reg_832_895_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_832_895_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_832_895_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_832_895_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_832_895_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_832_895_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_832_895_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_832_895_3_5 : label is 832;
  attribute ram_addr_end of display_data_reg_832_895_3_5 : label is 895;
  attribute ram_offset of display_data_reg_832_895_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_832_895_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_832_895_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_832_895_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_832_895_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_832_895_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_832_895_6_6 : label is 832;
  attribute ram_addr_end of display_data_reg_832_895_6_6 : label is 895;
  attribute ram_offset of display_data_reg_832_895_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_832_895_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_832_895_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_896_959_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_896_959_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_896_959_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_896_959_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_896_959_0_2 : label is 896;
  attribute ram_addr_end of display_data_reg_896_959_0_2 : label is 959;
  attribute ram_offset of display_data_reg_896_959_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_896_959_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_896_959_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_896_959_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_896_959_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_896_959_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_896_959_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_896_959_3_5 : label is 896;
  attribute ram_addr_end of display_data_reg_896_959_3_5 : label is 959;
  attribute ram_offset of display_data_reg_896_959_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_896_959_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_896_959_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_896_959_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_896_959_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_896_959_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_896_959_6_6 : label is 896;
  attribute ram_addr_end of display_data_reg_896_959_6_6 : label is 959;
  attribute ram_offset of display_data_reg_896_959_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_896_959_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_896_959_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_960_1023_0_2 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_960_1023_0_2 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_960_1023_0_2 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_960_1023_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_960_1023_0_2 : label is 960;
  attribute ram_addr_end of display_data_reg_960_1023_0_2 : label is 1023;
  attribute ram_offset of display_data_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_begin of display_data_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_end of display_data_reg_960_1023_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of display_data_reg_960_1023_3_5 : label is "";
  attribute RTL_RAM_BITS of display_data_reg_960_1023_3_5 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_960_1023_3_5 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_960_1023_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_960_1023_3_5 : label is 960;
  attribute ram_addr_end of display_data_reg_960_1023_3_5 : label is 1023;
  attribute ram_offset of display_data_reg_960_1023_3_5 : label is 0;
  attribute ram_slice_begin of display_data_reg_960_1023_3_5 : label is 3;
  attribute ram_slice_end of display_data_reg_960_1023_3_5 : label is 5;
  attribute RTL_RAM_BITS of display_data_reg_960_1023_6_6 : label is 32768;
  attribute RTL_RAM_NAME of display_data_reg_960_1023_6_6 : label is "inst__0/vga_display/display_data";
  attribute RTL_RAM_TYPE of display_data_reg_960_1023_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of display_data_reg_960_1023_6_6 : label is 960;
  attribute ram_addr_end of display_data_reg_960_1023_6_6 : label is 1023;
  attribute ram_offset of display_data_reg_960_1023_6_6 : label is 0;
  attribute ram_slice_begin of display_data_reg_960_1023_6_6 : label is 6;
  attribute ram_slice_end of display_data_reg_960_1023_6_6 : label is 6;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of g0_b0_i_4 : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g44_b0 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of g44_b1 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of g44_b2 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of g44_b7 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of g46_b7 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of g47_b1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of g51_b7 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of g5_b0 : label is "soft_lutpair62";
  attribute ADDER_THRESHOLD of \vga_b[0]_INST_0_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \vga_b[0]_INST_0_i_23\ : label is 35;
begin
  sel(8 downto 0) <= \^sel\(8 downto 0);
  \v_count_reg[0]\ <= \^v_count_reg[0]\;
display_data_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000055D5A8",
      INIT_B => X"000000000011469E",
      INIT_C => X"0000000000461E04",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 0) => ADDRD(5 downto 0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_0_63_0_2_n_0,
      DOB => display_data_reg_0_63_0_2_n_1,
      DOC => display_data_reg_0_63_0_2_n_2,
      DOD => NLW_display_data_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_0\
    );
display_data_reg_0_63_0_2_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999999"
    )
        port map (
      I0 => g0_b0_i_4_0,
      I1 => C(1),
      I2 => display_data_reg_0_63_0_2_i_5_2,
      I3 => display_data_reg_0_63_0_2_i_5_3,
      I4 => Q(5),
      O => S(2)
    );
display_data_reg_0_63_0_2_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66699999AAAAAAAA"
    )
        port map (
      I0 => C(2),
      I1 => Q(4),
      I2 => Q(2),
      I3 => display_data_reg_0_63_0_2_i_5_1,
      I4 => Q(3),
      I5 => display_data_reg_0_63_0_2_i_5_0,
      O => S(1)
    );
display_data_reg_0_63_0_2_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999996AAAAAAAA"
    )
        port map (
      I0 => C(1),
      I1 => Q(3),
      I2 => Q(1),
      I3 => display_data_reg_0_63_0_2_i_5,
      I4 => Q(2),
      I5 => display_data_reg_0_63_0_2_i_5_0,
      O => S(0)
    );
display_data_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000028B20",
      INIT_B => X"000000000060809E",
      INIT_C => X"00000000000FBF59",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_0_63_3_5_n_0,
      DOB => display_data_reg_0_63_3_5_n_1,
      DOC => display_data_reg_0_63_3_5_n_2,
      DOD => NLW_display_data_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_0\
    );
display_data_reg_0_63_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000000000077DFA6"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_0_63_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_0_63_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_0\
    );
display_data_reg_1024_1087_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000150040000",
      INIT_B => X"00000004F81E0000",
      INIT_C => X"00000002C0000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1024_1087_0_2_n_0,
      DOB => display_data_reg_1024_1087_0_2_n_1,
      DOC => display_data_reg_1024_1087_0_2_n_2,
      DOD => NLW_display_data_reg_1024_1087_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_0\
    );
display_data_reg_1024_1087_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000640100000",
      INIT_B => X"00000FF4F8DE0000",
      INIT_C => X"00000FFFBFFF0000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1024_1087_3_5_n_0,
      DOB => display_data_reg_1024_1087_3_5_n_1,
      DOC => display_data_reg_1024_1087_3_5_n_2,
      DOD => NLW_display_data_reg_1024_1087_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_0\
    );
display_data_reg_1024_1087_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"00000003D8060000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1024_1087_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1024_1087_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_0\
    );
display_data_reg_1088_1151_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0015F00000000000",
      INIT_B => X"0021680A00000000",
      INIT_C => X"000B700400000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1088_1151_0_2_n_0,
      DOB => display_data_reg_1088_1151_0_2_n_1,
      DOC => display_data_reg_1088_1151_0_2_n_2,
      DOD => NLW_display_data_reg_1088_1151_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_1\
    );
display_data_reg_1088_1151_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0021C00800000000",
      INIT_B => X"7FA948CA00000000",
      INIT_C => X"FFFEBFFF00000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1088_1151_3_5_n_0,
      DOB => display_data_reg_1088_1151_3_5_n_1,
      DOC => display_data_reg_1088_1151_3_5_n_2,
      DOD => NLW_display_data_reg_1088_1151_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_1\
    );
display_data_reg_1088_1151_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"001FF80600000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1088_1151_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1088_1151_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_1\
    );
display_data_reg_1152_1215_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000000000000F8",
      INIT_B => X"0000000000000374",
      INIT_C => X"00000000000001F8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1152_1215_0_2_n_0,
      DOB => display_data_reg_1152_1215_0_2_n_1,
      DOC => display_data_reg_1152_1215_0_2_n_2,
      DOD => NLW_display_data_reg_1152_1215_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_2\
    );
display_data_reg_1152_1215_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000320",
      INIT_B => X"0000000000000A64",
      INIT_C => X"0000000000000FDF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1152_1215_3_5_n_0,
      DOB => display_data_reg_1152_1215_3_5_n_1,
      DOC => display_data_reg_1152_1215_3_5_n_2,
      DOD => NLW_display_data_reg_1152_1215_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_2\
    );
display_data_reg_1152_1215_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"00000000000001FC"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1152_1215_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1152_1215_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_2\
    );
display_data_reg_1216_1279_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1216_1279_0_2_n_0,
      DOB => display_data_reg_1216_1279_0_2_n_1,
      DOC => display_data_reg_1216_1279_0_2_n_2,
      DOD => NLW_display_data_reg_1216_1279_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_3\
    );
display_data_reg_1216_1279_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1216_1279_3_5_n_0,
      DOB => display_data_reg_1216_1279_3_5_n_1,
      DOC => display_data_reg_1216_1279_3_5_n_2,
      DOD => NLW_display_data_reg_1216_1279_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_3\
    );
display_data_reg_1216_1279_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1216_1279_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1216_1279_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_53_3\
    );
display_data_reg_1280_1343_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000381B817E07E",
      INIT_B => X"000004023030C08C",
      INIT_C => X"00000300E0028068",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1280_1343_0_2_n_0,
      DOB => display_data_reg_1280_1343_0_2_n_1,
      DOC => display_data_reg_1280_1343_0_2_n_2,
      DOD => NLW_display_data_reg_1280_1343_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_0\
    );
display_data_reg_1280_1343_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000007836824A0FA",
      INIT_B => X"000FF40AB0AAC28C",
      INIT_C => X"000FFFFFDFFF7FF7",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1280_1343_3_5_n_0,
      DOB => display_data_reg_1280_1343_3_5_n_1,
      DOC => display_data_reg_1280_1343_3_5_n_2,
      DOD => NLW_display_data_reg_1280_1343_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_0\
    );
display_data_reg_1280_1343_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"00000381F81FE07E"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1280_1343_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1280_1343_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_0\
    );
display_data_reg_128_191_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0005000400000000",
      INIT_B => X"0016000C00000000",
      INIT_C => X"000A000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_128_191_0_2_n_0,
      DOB => display_data_reg_128_191_0_2_n_1,
      DOC => display_data_reg_128_191_0_2_n_2,
      DOD => NLW_display_data_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_2\
    );
display_data_reg_128_191_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0013000800000000",
      INIT_B => X"3FDC1FEA00000000",
      INIT_C => X"3FFFFFFF00000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_128_191_3_5_n_0,
      DOB => display_data_reg_128_191_3_5_n_1,
      DOC => display_data_reg_128_191_3_5_n_2,
      DOD => NLW_display_data_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_2\
    );
display_data_reg_128_191_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000F000600000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_128_191_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_128_191_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_2\
    );
display_data_reg_1344_1407_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"01D0002800160000",
      INIT_B => X"1580009C004C0000",
      INIT_C => X"0AE00058002C0000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1344_1407_0_2_n_0,
      DOB => display_data_reg_1344_1407_0_2_n_1,
      DOC => display_data_reg_1344_1407_0_2_n_2,
      DOD => NLW_display_data_reg_1344_1407_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_1\
    );
display_data_reg_1344_1407_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"18A000C800640000",
      INIT_B => X"56C1FE98FF4C0000",
      INIT_C => X"FF7FFFF7FFFB0000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1344_1407_3_5_n_0,
      DOB => display_data_reg_1344_1407_3_5_n_1,
      DOC => display_data_reg_1344_1407_3_5_n_2,
      DOD => NLW_display_data_reg_1344_1407_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_1\
    );
display_data_reg_1344_1407_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0FF0007C003E0000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1344_1407_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1344_1407_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_1\
    );
display_data_reg_1408_1471_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0D6000DA0000006C",
      INIT_B => X"1B2001B000000564",
      INIT_C => X"0540005C000002A8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1408_1471_0_2_n_0,
      DOB => display_data_reg_1408_1471_0_2_n_1,
      DOC => display_data_reg_1408_1471_0_2_n_2,
      DOD => NLW_display_data_reg_1408_1471_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_2\
    );
display_data_reg_1408_1471_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1140011400000628",
      INIT_B => X"5B83FDB8000015B0",
      INIT_C => X"7EFFFFEF00001FDF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1408_1471_3_5_n_0,
      DOB => display_data_reg_1408_1471_3_5_n_1,
      DOC => display_data_reg_1408_1471_3_5_n_2,
      DOD => NLW_display_data_reg_1408_1471_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_2\
    );
display_data_reg_1408_1471_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0FE000FE000003FC"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1408_1471_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1408_1471_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_2\
    );
display_data_reg_1472_1535_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1472_1535_0_2_n_0,
      DOB => display_data_reg_1472_1535_0_2_n_1,
      DOC => display_data_reg_1472_1535_0_2_n_2,
      DOD => NLW_display_data_reg_1472_1535_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_3\
    );
display_data_reg_1472_1535_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1472_1535_3_5_n_0,
      DOB => display_data_reg_1472_1535_3_5_n_1,
      DOC => display_data_reg_1472_1535_3_5_n_2,
      DOD => NLW_display_data_reg_1472_1535_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_3\
    );
display_data_reg_1472_1535_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1472_1535_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1472_1535_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_54_3\
    );
display_data_reg_1536_1599_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1536_1599_0_2_n_0,
      DOB => display_data_reg_1536_1599_0_2_n_1,
      DOC => display_data_reg_1536_1599_0_2_n_2,
      DOD => NLW_display_data_reg_1536_1599_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_0\
    );
display_data_reg_1536_1599_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1536_1599_3_5_n_0,
      DOB => display_data_reg_1536_1599_3_5_n_1,
      DOC => display_data_reg_1536_1599_3_5_n_2,
      DOD => NLW_display_data_reg_1536_1599_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_0\
    );
display_data_reg_1536_1599_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1536_1599_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1536_1599_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_0\
    );
display_data_reg_1600_1663_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000017017014E",
      INIT_B => X"0000000CE04E05BC",
      INIT_C => X"0000000240240088",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1600_1663_0_2_n_0,
      DOB => display_data_reg_1600_1663_0_2_n_1,
      DOC => display_data_reg_1600_1663_0_2_n_2,
      DOD => NLW_display_data_reg_1600_1663_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_1\
    );
display_data_reg_1600_1663_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000AD06D068A",
      INIT_B => X"0000002C6146142C",
      INIT_C => X"000001FFBFFBFFF7",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1600_1663_3_5_n_0,
      DOB => display_data_reg_1600_1663_3_5_n_1,
      DOC => display_data_reg_1600_1663_3_5_n_2,
      DOD => NLW_display_data_reg_1600_1663_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_1\
    );
display_data_reg_1600_1663_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"00000007F03F03FE"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1600_1663_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1600_1663_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_1\
    );
display_data_reg_1664_1727_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000A6014C0000",
      INIT_B => X"000002DE05BC0000",
      INIT_C => X"00000044008E0000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1664_1727_0_2_n_0,
      DOB => display_data_reg_1664_1727_0_2_n_1,
      DOC => display_data_reg_1664_1727_0_2_n_2,
      DOD => NLW_display_data_reg_1664_1727_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_2\
    );
display_data_reg_1664_1727_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000344068C0000",
      INIT_B => X"0007FA1514280000",
      INIT_C => X"0007FFFBFFF70000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1664_1727_3_5_n_0,
      DOB => display_data_reg_1664_1727_3_5_n_1,
      DOC => display_data_reg_1664_1727_3_5_n_2,
      DOD => NLW_display_data_reg_1664_1727_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_2\
    );
display_data_reg_1664_1727_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000001FF03FE0000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1664_1727_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1664_1727_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_2\
    );
display_data_reg_1728_1791_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1728_1791_0_2_n_0,
      DOB => display_data_reg_1728_1791_0_2_n_1,
      DOC => display_data_reg_1728_1791_0_2_n_2,
      DOD => NLW_display_data_reg_1728_1791_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_3\
    );
display_data_reg_1728_1791_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1728_1791_3_5_n_0,
      DOB => display_data_reg_1728_1791_3_5_n_1,
      DOC => display_data_reg_1728_1791_3_5_n_2,
      DOD => NLW_display_data_reg_1728_1791_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_3\
    );
display_data_reg_1728_1791_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1728_1791_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1728_1791_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_55_3\
    );
display_data_reg_1792_1855_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C07E000000000000",
      INIT_B => X"01B0000000000000",
      INIT_C => X"C0FE000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1792_1855_0_2_n_0,
      DOB => display_data_reg_1792_1855_0_2_n_1,
      DOC => display_data_reg_1792_1855_0_2_n_2,
      DOD => NLW_display_data_reg_1792_1855_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_0\
    );
display_data_reg_1792_1855_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"419A000000000000",
      INIT_B => X"0530000000000000",
      INIT_C => X"FFEF000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1792_1855_3_5_n_0,
      DOB => display_data_reg_1792_1855_3_5_n_1,
      DOC => display_data_reg_1792_1855_3_5_n_2,
      DOD => NLW_display_data_reg_1792_1855_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_0\
    );
display_data_reg_1792_1855_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"C0FE000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1792_1855_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1792_1855_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_0\
    );
display_data_reg_1856_1919_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000000000B",
      INIT_B => X"0000000000000036",
      INIT_C => X"000000000000001B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1856_1919_0_2_n_0,
      DOB => display_data_reg_1856_1919_0_2_n_1,
      DOC => display_data_reg_1856_1919_0_2_n_2,
      DOD => NLW_display_data_reg_1856_1919_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_1\
    );
display_data_reg_1856_1919_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000033",
      INIT_B => X"00000000000000A6",
      INIT_C => X"00000000000000FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1856_1919_3_5_n_0,
      DOB => display_data_reg_1856_1919_3_5_n_1,
      DOC => display_data_reg_1856_1919_3_5_n_2,
      DOD => NLW_display_data_reg_1856_1919_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_1\
    );
display_data_reg_1856_1919_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000000000000001F"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1856_1919_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1856_1919_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_1\
    );
display_data_reg_1920_1983_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"007C000AFC000AFC",
      INIT_B => X"06200010A00010E0",
      INIT_C => X"01BE0005BE0005FE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1920_1983_0_2_n_0,
      DOB => display_data_reg_1920_1983_0_2_n_1,
      DOC => display_data_reg_1920_1983_0_2_n_2,
      DOD => NLW_display_data_reg_1920_1983_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_2\
    );
display_data_reg_1920_1983_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"04340010F40010F4",
      INIT_B => X"F6203FD4A03FD4A0",
      INIT_C => X"FFDFFFFF5FFFFF5F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1920_1983_3_5_n_0,
      DOB => display_data_reg_1920_1983_3_5_n_1,
      DOC => display_data_reg_1920_1983_3_5_n_2,
      DOD => NLW_display_data_reg_1920_1983_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_2\
    );
display_data_reg_1920_1983_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"03FE000FFE000FFE"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1920_1983_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1920_1983_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_2\
    );
display_data_reg_192_255_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_192_255_0_2_n_0,
      DOB => display_data_reg_192_255_0_2_n_1,
      DOC => display_data_reg_192_255_0_2_n_2,
      DOD => NLW_display_data_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_3\
    );
display_data_reg_192_255_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_192_255_3_5_n_0,
      DOB => display_data_reg_192_255_3_5_n_1,
      DOC => display_data_reg_192_255_3_5_n_2,
      DOD => NLW_display_data_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_3\
    );
display_data_reg_192_255_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_192_255_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_192_255_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_3\
    );
display_data_reg_1984_2047_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_1984_2047_0_2_n_0,
      DOB => display_data_reg_1984_2047_0_2_n_1,
      DOC => display_data_reg_1984_2047_0_2_n_2,
      DOD => NLW_display_data_reg_1984_2047_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_3\
    );
display_data_reg_1984_2047_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"000000000000000F",
      INIT_C => X"000000000000000F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_92_0(1),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_1984_2047_3_5_n_0,
      DOB => display_data_reg_1984_2047_3_5_n_1,
      DOC => display_data_reg_1984_2047_3_5_n_2,
      DOD => NLW_display_data_reg_1984_2047_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_3\
    );
display_data_reg_1984_2047_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_92_0(1),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_1984_2047_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_1984_2047_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_56_3\
    );
display_data_reg_2048_2111_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"6006C07600000000",
      INIT_B => X"E02BC1BE00000000",
      INIT_C => X"001A00F000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2048_2111_0_2_n_0,
      DOB => display_data_reg_2048_2111_0_2_n_1,
      DOC => display_data_reg_2048_2111_0_2_n_2,
      DOD => NLW_display_data_reg_2048_2111_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_0\
    );
display_data_reg_2048_2111_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"002E019000000000",
      INIT_B => X"C3A3853C00000000",
      INIT_C => X"FFFDFFEF00000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2048_2111_3_5_n_0,
      DOB => display_data_reg_2048_2111_3_5_n_1,
      DOC => display_data_reg_2048_2111_3_5_n_2,
      DOD => NLW_display_data_reg_2048_2111_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_0\
    );
display_data_reg_2048_2111_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"E01FC0FE00000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2048_2111_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2048_2111_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_0\
    );
display_data_reg_2112_2175_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00D6000000155803",
      INIT_B => X"018400000021F82B",
      INIT_C => X"006A0000000B4015",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2112_2175_0_2_n_0,
      DOB => display_data_reg_2112_2175_0_2_n_1,
      DOC => display_data_reg_2112_2175_0_2_n_2,
      DOD => NLW_display_data_reg_2112_2175_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_1\
    );
display_data_reg_2112_2175_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0102000000214031",
      INIT_B => X"FDEC00007FA9F0AD",
      INIT_C => X"FFFF00007FFEBFFE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2112_2175_3_5_n_0,
      DOB => display_data_reg_2112_2175_3_5_n_1,
      DOC => display_data_reg_2112_2175_3_5_n_2,
      DOD => NLW_display_data_reg_2112_2175_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_1\
    );
display_data_reg_2112_2175_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"00FE0000001FF81F"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2112_2175_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2112_2175_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_1\
    );
display_data_reg_2176_2239_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000024002C003F0",
      INIT_B => X"0000090006000520",
      INIT_C => X"000005C000C00290",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2176_2239_0_2_n_0,
      DOB => display_data_reg_2176_2239_0_2_n_1,
      DOC => display_data_reg_2176_2239_0_2_n_2,
      DOD => NLW_display_data_reg_2176_2239_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_2\
    );
display_data_reg_2176_2239_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000C4004400410",
      INIT_B => X"001FE98FF50FF583",
      INIT_C => X"001FFFFFFFFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2176_2239_3_5_n_0,
      DOB => display_data_reg_2176_2239_3_5_n_1,
      DOC => display_data_reg_2176_2239_3_5_n_2,
      DOD => NLW_display_data_reg_2176_2239_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_2\
    );
display_data_reg_2176_2239_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000007C003C003F0"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2176_2239_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2176_2239_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_2\
    );
display_data_reg_2240_2303_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000C000700032",
      INIT_B => X"0000020000800068",
      INIT_C => X"000000400050001E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2240_2303_0_2_n_0,
      DOB => display_data_reg_2240_2303_0_2_n_1,
      DOC => display_data_reg_2240_2303_0_2_n_2,
      DOD => NLW_display_data_reg_2240_2303_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_3\
    );
display_data_reg_2240_2303_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000002C000B00042",
      INIT_B => X"000FF30FF083FC4C",
      INIT_C => X"000FFFFFFFFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2240_2303_3_5_n_0,
      DOB => display_data_reg_2240_2303_3_5_n_1,
      DOC => display_data_reg_2240_2303_3_5_n_2,
      DOD => NLW_display_data_reg_2240_2303_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_3\
    );
display_data_reg_2240_2303_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000001C00070003E"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2240_2303_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2240_2303_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_49_3\
    );
display_data_reg_2304_2367_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2304_2367_0_2_n_0,
      DOB => display_data_reg_2304_2367_0_2_n_1,
      DOC => display_data_reg_2304_2367_0_2_n_2,
      DOD => NLW_display_data_reg_2304_2367_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_0\
    );
display_data_reg_2304_2367_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2304_2367_3_5_n_0,
      DOB => display_data_reg_2304_2367_3_5_n_1,
      DOC => display_data_reg_2304_2367_3_5_n_2,
      DOD => NLW_display_data_reg_2304_2367_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_0\
    );
display_data_reg_2304_2367_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2304_2367_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2304_2367_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_0\
    );
display_data_reg_2368_2431_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2368_2431_0_2_n_0,
      DOB => display_data_reg_2368_2431_0_2_n_1,
      DOC => display_data_reg_2368_2431_0_2_n_2,
      DOD => NLW_display_data_reg_2368_2431_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_1\
    );
display_data_reg_2368_2431_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2368_2431_3_5_n_0,
      DOB => display_data_reg_2368_2431_3_5_n_1,
      DOC => display_data_reg_2368_2431_3_5_n_2,
      DOD => NLW_display_data_reg_2368_2431_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_1\
    );
display_data_reg_2368_2431_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2368_2431_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2368_2431_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_1\
    );
display_data_reg_2432_2495_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2432_2495_0_2_n_0,
      DOB => display_data_reg_2432_2495_0_2_n_1,
      DOC => display_data_reg_2432_2495_0_2_n_2,
      DOD => NLW_display_data_reg_2432_2495_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_2\
    );
display_data_reg_2432_2495_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2432_2495_3_5_n_0,
      DOB => display_data_reg_2432_2495_3_5_n_1,
      DOC => display_data_reg_2432_2495_3_5_n_2,
      DOD => NLW_display_data_reg_2432_2495_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_2\
    );
display_data_reg_2432_2495_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2432_2495_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2432_2495_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_2\
    );
display_data_reg_2496_2559_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2496_2559_0_2_n_0,
      DOB => display_data_reg_2496_2559_0_2_n_1,
      DOC => display_data_reg_2496_2559_0_2_n_2,
      DOD => NLW_display_data_reg_2496_2559_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_3\
    );
display_data_reg_2496_2559_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2496_2559_3_5_n_0,
      DOB => display_data_reg_2496_2559_3_5_n_1,
      DOC => display_data_reg_2496_2559_3_5_n_2,
      DOD => NLW_display_data_reg_2496_2559_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_3\
    );
display_data_reg_2496_2559_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2496_2559_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2496_2559_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_50_3\
    );
display_data_reg_2560_2623_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2560_2623_0_2_n_0,
      DOB => display_data_reg_2560_2623_0_2_n_1,
      DOC => display_data_reg_2560_2623_0_2_n_2,
      DOD => NLW_display_data_reg_2560_2623_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_0\
    );
display_data_reg_2560_2623_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2560_2623_3_5_n_0,
      DOB => display_data_reg_2560_2623_3_5_n_1,
      DOC => display_data_reg_2560_2623_3_5_n_2,
      DOD => NLW_display_data_reg_2560_2623_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_0\
    );
display_data_reg_2560_2623_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2560_2623_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2560_2623_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_0\
    );
display_data_reg_256_319_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_256_319_0_2_n_0,
      DOB => display_data_reg_256_319_0_2_n_1,
      DOC => display_data_reg_256_319_0_2_n_2,
      DOD => NLW_display_data_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_0\
    );
display_data_reg_256_319_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_256_319_3_5_n_0,
      DOB => display_data_reg_256_319_3_5_n_1,
      DOC => display_data_reg_256_319_3_5_n_2,
      DOD => NLW_display_data_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_0\
    );
display_data_reg_256_319_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_256_319_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_256_319_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_0\
    );
display_data_reg_2624_2687_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2624_2687_0_2_n_0,
      DOB => display_data_reg_2624_2687_0_2_n_1,
      DOC => display_data_reg_2624_2687_0_2_n_2,
      DOD => NLW_display_data_reg_2624_2687_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_1\
    );
display_data_reg_2624_2687_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2624_2687_3_5_n_0,
      DOB => display_data_reg_2624_2687_3_5_n_1,
      DOC => display_data_reg_2624_2687_3_5_n_2,
      DOD => NLW_display_data_reg_2624_2687_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_1\
    );
display_data_reg_2624_2687_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2624_2687_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2624_2687_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_1\
    );
display_data_reg_2688_2751_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2688_2751_0_2_n_0,
      DOB => display_data_reg_2688_2751_0_2_n_1,
      DOC => display_data_reg_2688_2751_0_2_n_2,
      DOD => NLW_display_data_reg_2688_2751_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_2\
    );
display_data_reg_2688_2751_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2688_2751_3_5_n_0,
      DOB => display_data_reg_2688_2751_3_5_n_1,
      DOC => display_data_reg_2688_2751_3_5_n_2,
      DOD => NLW_display_data_reg_2688_2751_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_2\
    );
display_data_reg_2688_2751_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2688_2751_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2688_2751_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_2\
    );
display_data_reg_2752_2815_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2752_2815_0_2_n_0,
      DOB => display_data_reg_2752_2815_0_2_n_1,
      DOC => display_data_reg_2752_2815_0_2_n_2,
      DOD => NLW_display_data_reg_2752_2815_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_3\
    );
display_data_reg_2752_2815_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2752_2815_3_5_n_0,
      DOB => display_data_reg_2752_2815_3_5_n_1,
      DOC => display_data_reg_2752_2815_3_5_n_2,
      DOD => NLW_display_data_reg_2752_2815_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_3\
    );
display_data_reg_2752_2815_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2752_2815_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2752_2815_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_51_3\
    );
display_data_reg_2816_2879_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2816_2879_0_2_n_0,
      DOB => display_data_reg_2816_2879_0_2_n_1,
      DOC => display_data_reg_2816_2879_0_2_n_2,
      DOD => NLW_display_data_reg_2816_2879_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_0\
    );
display_data_reg_2816_2879_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2816_2879_3_5_n_0,
      DOB => display_data_reg_2816_2879_3_5_n_1,
      DOC => display_data_reg_2816_2879_3_5_n_2,
      DOD => NLW_display_data_reg_2816_2879_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_0\
    );
display_data_reg_2816_2879_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2816_2879_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2816_2879_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_0\
    );
display_data_reg_2880_2943_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2880_2943_0_2_n_0,
      DOB => display_data_reg_2880_2943_0_2_n_1,
      DOC => display_data_reg_2880_2943_0_2_n_2,
      DOD => NLW_display_data_reg_2880_2943_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_1\
    );
display_data_reg_2880_2943_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2880_2943_3_5_n_0,
      DOB => display_data_reg_2880_2943_3_5_n_1,
      DOC => display_data_reg_2880_2943_3_5_n_2,
      DOD => NLW_display_data_reg_2880_2943_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_1\
    );
display_data_reg_2880_2943_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2880_2943_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2880_2943_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_1\
    );
display_data_reg_2944_3007_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_2944_3007_0_2_n_0,
      DOB => display_data_reg_2944_3007_0_2_n_1,
      DOC => display_data_reg_2944_3007_0_2_n_2,
      DOD => NLW_display_data_reg_2944_3007_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_2\
    );
display_data_reg_2944_3007_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_2944_3007_3_5_n_0,
      DOB => display_data_reg_2944_3007_3_5_n_1,
      DOC => display_data_reg_2944_3007_3_5_n_2,
      DOD => NLW_display_data_reg_2944_3007_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_2\
    );
display_data_reg_2944_3007_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_2944_3007_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_2944_3007_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_2\
    );
display_data_reg_3008_3071_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3008_3071_0_2_n_0,
      DOB => display_data_reg_3008_3071_0_2_n_1,
      DOC => display_data_reg_3008_3071_0_2_n_2,
      DOD => NLW_display_data_reg_3008_3071_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_3\
    );
display_data_reg_3008_3071_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 4) => ADDRD(5 downto 4),
      ADDRD(3) => text_ascii_carry_i_88_0(0),
      ADDRD(2) => ADDRD(2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3008_3071_3_5_n_0,
      DOB => display_data_reg_3008_3071_3_5_n_1,
      DOC => display_data_reg_3008_3071_3_5_n_2,
      DOD => NLW_display_data_reg_3008_3071_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_3\
    );
display_data_reg_3008_3071_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => text_ascii_carry_i_88_0(0),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3008_3071_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3008_3071_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_52_3\
    );
display_data_reg_3072_3135_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3072_3135_0_2_n_0,
      DOB => display_data_reg_3072_3135_0_2_n_1,
      DOC => display_data_reg_3072_3135_0_2_n_2,
      DOD => NLW_display_data_reg_3072_3135_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_0\
    );
display_data_reg_3072_3135_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3072_3135_3_5_n_0,
      DOB => display_data_reg_3072_3135_3_5_n_1,
      DOC => display_data_reg_3072_3135_3_5_n_2,
      DOD => NLW_display_data_reg_3072_3135_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_0\
    );
display_data_reg_3072_3135_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3072_3135_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3072_3135_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_0\
    );
display_data_reg_3136_3199_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3136_3199_0_2_n_0,
      DOB => display_data_reg_3136_3199_0_2_n_1,
      DOC => display_data_reg_3136_3199_0_2_n_2,
      DOD => NLW_display_data_reg_3136_3199_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_1\
    );
display_data_reg_3136_3199_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3136_3199_3_5_n_0,
      DOB => display_data_reg_3136_3199_3_5_n_1,
      DOC => display_data_reg_3136_3199_3_5_n_2,
      DOD => NLW_display_data_reg_3136_3199_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_1\
    );
display_data_reg_3136_3199_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3136_3199_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3136_3199_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_1\
    );
display_data_reg_3200_3263_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3200_3263_0_2_n_0,
      DOB => display_data_reg_3200_3263_0_2_n_1,
      DOC => display_data_reg_3200_3263_0_2_n_2,
      DOD => NLW_display_data_reg_3200_3263_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_2\
    );
display_data_reg_3200_3263_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3200_3263_3_5_n_0,
      DOB => display_data_reg_3200_3263_3_5_n_1,
      DOC => display_data_reg_3200_3263_3_5_n_2,
      DOD => NLW_display_data_reg_3200_3263_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_2\
    );
display_data_reg_3200_3263_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3200_3263_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3200_3263_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_2\
    );
display_data_reg_320_383_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000400080020000",
      INIT_B => X"8001400280050008",
      INIT_C => X"2000400000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_320_383_0_2_n_0,
      DOB => display_data_reg_320_383_0_2_n_1,
      DOC => display_data_reg_320_383_0_2_n_2,
      DOD => NLW_display_data_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_1\
    );
display_data_reg_320_383_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"800100020004000A",
      INIT_B => X"E3FD87FB8FF51FEE",
      INIT_C => X"FFFFFFFFFFFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_320_383_3_5_n_0,
      DOB => display_data_reg_320_383_3_5_n_1,
      DOC => NLW_display_data_reg_320_383_3_5_DOC_UNCONNECTED,
      DOD => NLW_display_data_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_1\
    );
display_data_reg_320_383_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"6000C00180030002"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_320_383_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_320_383_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_1\
    );
display_data_reg_3264_3327_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3264_3327_0_2_n_0,
      DOB => display_data_reg_3264_3327_0_2_n_1,
      DOC => display_data_reg_3264_3327_0_2_n_2,
      DOD => NLW_display_data_reg_3264_3327_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_3\
    );
display_data_reg_3264_3327_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3264_3327_3_5_n_0,
      DOB => display_data_reg_3264_3327_3_5_n_1,
      DOC => display_data_reg_3264_3327_3_5_n_2,
      DOD => NLW_display_data_reg_3264_3327_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_3\
    );
display_data_reg_3264_3327_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3264_3327_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3264_3327_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_45_3\
    );
display_data_reg_3328_3391_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3328_3391_0_2_n_0,
      DOB => display_data_reg_3328_3391_0_2_n_1,
      DOC => display_data_reg_3328_3391_0_2_n_2,
      DOD => NLW_display_data_reg_3328_3391_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_0\
    );
display_data_reg_3328_3391_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3328_3391_3_5_n_0,
      DOB => display_data_reg_3328_3391_3_5_n_1,
      DOC => display_data_reg_3328_3391_3_5_n_2,
      DOD => NLW_display_data_reg_3328_3391_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_0\
    );
display_data_reg_3328_3391_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3328_3391_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3328_3391_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_0\
    );
display_data_reg_3392_3455_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3392_3455_0_2_n_0,
      DOB => display_data_reg_3392_3455_0_2_n_1,
      DOC => display_data_reg_3392_3455_0_2_n_2,
      DOD => NLW_display_data_reg_3392_3455_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_1\
    );
display_data_reg_3392_3455_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3392_3455_3_5_n_0,
      DOB => display_data_reg_3392_3455_3_5_n_1,
      DOC => display_data_reg_3392_3455_3_5_n_2,
      DOD => NLW_display_data_reg_3392_3455_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_1\
    );
display_data_reg_3392_3455_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3392_3455_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3392_3455_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_1\
    );
display_data_reg_3456_3519_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3456_3519_0_2_n_0,
      DOB => display_data_reg_3456_3519_0_2_n_1,
      DOC => display_data_reg_3456_3519_0_2_n_2,
      DOD => NLW_display_data_reg_3456_3519_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_2\
    );
display_data_reg_3456_3519_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3456_3519_3_5_n_0,
      DOB => display_data_reg_3456_3519_3_5_n_1,
      DOC => display_data_reg_3456_3519_3_5_n_2,
      DOD => NLW_display_data_reg_3456_3519_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_2\
    );
display_data_reg_3456_3519_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3456_3519_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3456_3519_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_2\
    );
display_data_reg_3520_3583_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3520_3583_0_2_n_0,
      DOB => display_data_reg_3520_3583_0_2_n_1,
      DOC => display_data_reg_3520_3583_0_2_n_2,
      DOD => NLW_display_data_reg_3520_3583_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_3\
    );
display_data_reg_3520_3583_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3520_3583_3_5_n_0,
      DOB => display_data_reg_3520_3583_3_5_n_1,
      DOC => display_data_reg_3520_3583_3_5_n_2,
      DOD => NLW_display_data_reg_3520_3583_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_3\
    );
display_data_reg_3520_3583_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3520_3583_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3520_3583_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_46_3\
    );
display_data_reg_3584_3647_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3584_3647_0_2_n_0,
      DOB => display_data_reg_3584_3647_0_2_n_1,
      DOC => display_data_reg_3584_3647_0_2_n_2,
      DOD => NLW_display_data_reg_3584_3647_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_0\
    );
display_data_reg_3584_3647_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3584_3647_3_5_n_0,
      DOB => display_data_reg_3584_3647_3_5_n_1,
      DOC => display_data_reg_3584_3647_3_5_n_2,
      DOD => NLW_display_data_reg_3584_3647_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_0\
    );
display_data_reg_3584_3647_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3584_3647_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3584_3647_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_0\
    );
display_data_reg_3648_3711_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3648_3711_0_2_n_0,
      DOB => display_data_reg_3648_3711_0_2_n_1,
      DOC => display_data_reg_3648_3711_0_2_n_2,
      DOD => NLW_display_data_reg_3648_3711_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_1\
    );
display_data_reg_3648_3711_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3648_3711_3_5_n_0,
      DOB => display_data_reg_3648_3711_3_5_n_1,
      DOC => display_data_reg_3648_3711_3_5_n_2,
      DOD => NLW_display_data_reg_3648_3711_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_1\
    );
display_data_reg_3648_3711_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3648_3711_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3648_3711_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_1\
    );
display_data_reg_3712_3775_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3712_3775_0_2_n_0,
      DOB => display_data_reg_3712_3775_0_2_n_1,
      DOC => display_data_reg_3712_3775_0_2_n_2,
      DOD => NLW_display_data_reg_3712_3775_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_2\
    );
display_data_reg_3712_3775_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3712_3775_3_5_n_0,
      DOB => display_data_reg_3712_3775_3_5_n_1,
      DOC => display_data_reg_3712_3775_3_5_n_2,
      DOD => NLW_display_data_reg_3712_3775_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_2\
    );
display_data_reg_3712_3775_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3712_3775_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3712_3775_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_2\
    );
display_data_reg_3776_3839_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3776_3839_0_2_n_0,
      DOB => display_data_reg_3776_3839_0_2_n_1,
      DOC => display_data_reg_3776_3839_0_2_n_2,
      DOD => NLW_display_data_reg_3776_3839_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_3\
    );
display_data_reg_3776_3839_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3776_3839_3_5_n_0,
      DOB => display_data_reg_3776_3839_3_5_n_1,
      DOC => display_data_reg_3776_3839_3_5_n_2,
      DOD => NLW_display_data_reg_3776_3839_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_3\
    );
display_data_reg_3776_3839_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3776_3839_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3776_3839_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_47_3\
    );
display_data_reg_3840_3903_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3840_3903_0_2_n_0,
      DOB => display_data_reg_3840_3903_0_2_n_1,
      DOC => display_data_reg_3840_3903_0_2_n_2,
      DOD => NLW_display_data_reg_3840_3903_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_0\
    );
display_data_reg_3840_3903_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3840_3903_3_5_n_0,
      DOB => display_data_reg_3840_3903_3_5_n_1,
      DOC => display_data_reg_3840_3903_3_5_n_2,
      DOD => NLW_display_data_reg_3840_3903_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_0\
    );
display_data_reg_3840_3903_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3840_3903_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3840_3903_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_0\
    );
display_data_reg_384_447_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"4000000200000000",
      INIT_B => X"4003000400080000",
      INIT_C => X"0000800100020000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_384_447_0_2_n_0,
      DOB => display_data_reg_384_447_0_2_n_1,
      DOC => display_data_reg_384_447_0_2_n_2,
      DOD => NLW_display_data_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_2\
    );
display_data_reg_384_447_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0002000400080000",
      INIT_B => X"C7FB8FF71FEE01FE",
      INIT_C => X"FFFFFFFFFFFF01FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_384_447_3_5_n_0,
      DOB => display_data_reg_384_447_3_5_n_1,
      DOC => display_data_reg_384_447_3_5_n_2,
      DOD => NLW_display_data_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_2\
    );
display_data_reg_384_447_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"4000800100020000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_384_447_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_384_447_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_2\
    );
display_data_reg_3904_3967_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3904_3967_0_2_n_0,
      DOB => display_data_reg_3904_3967_0_2_n_1,
      DOC => display_data_reg_3904_3967_0_2_n_2,
      DOD => NLW_display_data_reg_3904_3967_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_1\
    );
display_data_reg_3904_3967_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3904_3967_3_5_n_0,
      DOB => display_data_reg_3904_3967_3_5_n_1,
      DOC => display_data_reg_3904_3967_3_5_n_2,
      DOD => NLW_display_data_reg_3904_3967_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_1\
    );
display_data_reg_3904_3967_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3904_3967_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3904_3967_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_1\
    );
display_data_reg_3968_4031_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_3968_4031_0_2_n_0,
      DOB => display_data_reg_3968_4031_0_2_n_1,
      DOC => display_data_reg_3968_4031_0_2_n_2,
      DOD => NLW_display_data_reg_3968_4031_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_2\
    );
display_data_reg_3968_4031_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_3968_4031_3_5_n_0,
      DOB => display_data_reg_3968_4031_3_5_n_1,
      DOC => display_data_reg_3968_4031_3_5_n_2,
      DOD => NLW_display_data_reg_3968_4031_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_2\
    );
display_data_reg_3968_4031_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_3968_4031_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_3968_4031_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_48_2\
    );
display_data_reg_4032_4095_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => ADDRC(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => ADDRC(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => ADDRC(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_4032_4095_0_2_n_0,
      DOB => display_data_reg_4032_4095_0_2_n_1,
      DOC => display_data_reg_4032_4095_0_2_n_2,
      DOD => NLW_display_data_reg_4032_4095_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => text_ascii_carry_i_87_0
    );
display_data_reg_4032_4095_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_65_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => \text_ascii_carry__0_i_68_0\(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_4032_4095_3_5_n_0,
      DOB => display_data_reg_4032_4095_3_5_n_1,
      DOC => display_data_reg_4032_4095_3_5_n_2,
      DOD => NLW_display_data_reg_4032_4095_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => text_ascii_carry_i_87_0
    );
display_data_reg_4032_4095_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_4032_4095_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_4032_4095_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => text_ascii_carry_i_87_0
    );
display_data_reg_448_511_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8003000200006000",
      INIT_B => X"000400080000A001",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_448_511_0_2_n_0,
      DOB => display_data_reg_448_511_0_2_n_1,
      DOC => display_data_reg_448_511_0_2_n_2,
      DOD => NLW_display_data_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_3\
    );
display_data_reg_448_511_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0004000800008001",
      INIT_B => X"0FF61FEC01FEE3FD",
      INIT_C => X"FFFFFFFF01FFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_448_511_3_5_n_0,
      DOB => display_data_reg_448_511_3_5_n_1,
      DOC => display_data_reg_448_511_3_5_n_2,
      DOD => NLW_display_data_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_3\
    );
display_data_reg_448_511_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"8001000200002000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_448_511_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_448_511_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_58_3\
    );
display_data_reg_512_575_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000600002000C000",
      INIT_B => X"0008000080018003",
      INIT_C => X"0004000040000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_512_575_0_2_n_0,
      DOB => display_data_reg_512_575_0_2_n_1,
      DOC => display_data_reg_512_575_0_2_n_2,
      DOD => NLW_display_data_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_0\
    );
display_data_reg_512_575_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0008000080010002",
      INIT_B => X"1FEC01FEC3FD87FB",
      INIT_C => X"FFFF01FFFFFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_512_575_3_5_n_0,
      DOB => display_data_reg_512_575_3_5_n_1,
      DOC => display_data_reg_512_575_3_5_n_2,
      DOD => NLW_display_data_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_0\
    );
display_data_reg_512_575_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0002000020004000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_512_575_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_512_575_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_0\
    );
display_data_reg_576_639_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000600040018001",
      INIT_B => X"0000E001C0030006",
      INIT_C => X"0000000000010002",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_576_639_0_2_n_0,
      DOB => display_data_reg_576_639_0_2_n_1,
      DOC => display_data_reg_576_639_0_2_n_2,
      DOD => NLW_display_data_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_1\
    );
display_data_reg_576_639_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000800100020004",
      INIT_B => X"01FEE3FDC7FB0FF6",
      INIT_C => X"01FFFFFFFFFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_576_639_3_5_n_0,
      DOB => display_data_reg_576_639_3_5_n_1,
      DOC => display_data_reg_576_639_3_5_n_2,
      DOD => NLW_display_data_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_1\
    );
display_data_reg_576_639_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000200040008001"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_576_639_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_576_639_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_1\
    );
display_data_reg_640_703_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2000C00080030002",
      INIT_B => X"A001C0038005000A",
      INIT_C => X"0000800100020004",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_640_703_0_2_n_0,
      DOB => display_data_reg_640_703_0_2_n_1,
      DOC => display_data_reg_640_703_0_2_n_2,
      DOD => NLW_display_data_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_2\
    );
display_data_reg_640_703_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C001000200040008",
      INIT_B => X"E3FDC7FB8FF71FEE",
      INIT_C => X"FFFFFFFFFFFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_640_703_3_5_n_0,
      DOB => display_data_reg_640_703_3_5_n_1,
      DOC => NLW_display_data_reg_640_703_3_5_DOC_UNCONNECTED,
      DOD => NLW_display_data_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_2\
    );
display_data_reg_640_703_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"2000400080010002"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_640_703_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_640_703_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_2\
    );
display_data_reg_64_127_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_64_127_0_2_n_0,
      DOB => display_data_reg_64_127_0_2_n_1,
      DOC => display_data_reg_64_127_0_2_n_2,
      DOD => NLW_display_data_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_1\
    );
display_data_reg_64_127_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_64_127_3_5_n_0,
      DOB => display_data_reg_64_127_3_5_n_1,
      DOC => display_data_reg_64_127_3_5_n_2,
      DOD => NLW_display_data_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_1\
    );
display_data_reg_64_127_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_64_127_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_64_127_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_57_1\
    );
display_data_reg_704_767_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8001C00180060000",
      INIT_B => X"80024004800A0000",
      INIT_C => X"4000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_704_767_0_2_n_0,
      DOB => display_data_reg_704_767_0_2_n_1,
      DOC => display_data_reg_704_767_0_2_n_2,
      DOD => NLW_display_data_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_3\
    );
display_data_reg_704_767_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00020004000C0000",
      INIT_B => X"C7FBCFF79FEE01FE",
      INIT_C => X"FFFFFFFFFFFF01FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_704_767_3_5_n_0,
      DOB => display_data_reg_704_767_3_5_n_1,
      DOC => display_data_reg_704_767_3_5_n_2,
      DOD => NLW_display_data_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_3\
    );
display_data_reg_704_767_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"4000400080020000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_704_767_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_704_767_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_59_3\
    );
display_data_reg_768_831_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000400000000",
      INIT_B => X"0006000800008001",
      INIT_C => X"0003000600006000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_768_831_0_2_n_0,
      DOB => display_data_reg_768_831_0_2_n_1,
      DOC => display_data_reg_768_831_0_2_n_2,
      DOD => NLW_display_data_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_0\
    );
display_data_reg_768_831_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0004000800008001",
      INIT_B => X"0FF71FEE01FEE3FD",
      INIT_C => X"0FFFFFFF01FFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_768_831_3_5_n_0,
      DOB => display_data_reg_768_831_3_5_n_1,
      DOC => display_data_reg_768_831_3_5_n_2,
      DOD => NLW_display_data_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_0\
    );
display_data_reg_768_831_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0001000200002000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_768_831_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_768_831_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_0\
    );
display_data_reg_832_895_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_832_895_0_2_n_0,
      DOB => display_data_reg_832_895_0_2_n_1,
      DOC => display_data_reg_832_895_0_2_n_2,
      DOD => NLW_display_data_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_1\
    );
display_data_reg_832_895_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_832_895_3_5_n_0,
      DOB => display_data_reg_832_895_3_5_n_1,
      DOC => display_data_reg_832_895_3_5_n_2,
      DOD => NLW_display_data_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_1\
    );
display_data_reg_832_895_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_832_895_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_832_895_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_1\
    );
display_data_reg_896_959_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_896_959_0_2_n_0,
      DOB => display_data_reg_896_959_0_2_n_1,
      DOC => display_data_reg_896_959_0_2_n_2,
      DOD => NLW_display_data_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_2\
    );
display_data_reg_896_959_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_896_959_3_5_n_0,
      DOB => display_data_reg_896_959_3_5_n_1,
      DOC => display_data_reg_896_959_3_5_n_2,
      DOD => NLW_display_data_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_2\
    );
display_data_reg_896_959_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_896_959_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_896_959_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_2\
    );
display_data_reg_960_1023_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000001700C",
      INIT_B => X"000000000004D816",
      INIT_C => X"000000000002C000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => text_ascii_carry_i_96_0(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => ADDRD(0),
      DIA => display_w_data(0),
      DIB => display_w_data(1),
      DIC => display_w_data(2),
      DID => '0',
      DOA => display_data_reg_960_1023_0_2_n_0,
      DOB => display_data_reg_960_1023_0_2_n_1,
      DOC => display_data_reg_960_1023_0_2_n_2,
      DOD => NLW_display_data_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_3\
    );
display_data_reg_960_1023_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000064010",
      INIT_B => X"000000000FF4F8DE",
      INIT_C => X"000000000FFFBFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 3) => text_index(2 downto 0),
      ADDRA(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRB(5 downto 3) => text_index(2 downto 0),
      ADDRB(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRC(5 downto 3) => text_index(2 downto 0),
      ADDRC(2 downto 0) => \text_ascii_carry__0_i_73_0\(2 downto 0),
      ADDRD(5 downto 2) => ADDRD(5 downto 2),
      ADDRD(1) => text_ascii_carry_i_96_1(0),
      ADDRD(0) => text_ascii_carry_i_92_0(0),
      DIA => display_w_data(3),
      DIB => \text_ascii_carry__0_i_64_0\,
      DIC => '1',
      DID => '0',
      DOA => display_data_reg_960_1023_3_5_n_0,
      DOB => display_data_reg_960_1023_3_5_n_1,
      DOC => display_data_reg_960_1023_3_5_n_2,
      DOD => NLW_display_data_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_3\
    );
display_data_reg_960_1023_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000000000003D806"
    )
        port map (
      A0 => \text_ascii_carry__0_i_57_4\,
      A1 => \text_ascii_carry__0_i_68_0\(0),
      A2 => ADDRD(2),
      A3 => ADDRD(3),
      A4 => ADDRD(4),
      A5 => ADDRD(5),
      D => display_w_data(4),
      DPO => display_data_reg_960_1023_6_6_n_0,
      DPRA0 => \text_ascii_carry__0_i_57_5\,
      DPRA1 => \text_ascii_carry__0_i_57_6\,
      DPRA2 => \text_ascii_carry__0_i_57_7\,
      DPRA3 => text_index(0),
      DPRA4 => text_index(1),
      DPRA5 => text_index(2),
      SPO => NLW_display_data_reg_960_1023_6_6_SPO_UNCONNECTED,
      WCLK => clk_100m,
      WE => \text_ascii_carry__0_i_60_3\
    );
g0_b0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => g0_b0_i_4_n_0,
      CO(2) => g0_b0_i_4_n_1,
      CO(1) => g0_b0_i_4_n_2,
      CO(0) => g0_b0_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 1) => font_addr0(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => \^sel\(3 downto 0),
      S(3) => g0_b0_i_5_n_0,
      S(2) => g0_b0_i_6_n_0,
      S(1) => g0_b0_i_7_n_0,
      S(0) => C(0)
    );
g0_b0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => font_addr0(2),
      I1 => g0_b0_i_4_0,
      O => g0_b0_i_5_n_0
    );
g0_b0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => font_addr0(1),
      I1 => C(2),
      O => g0_b0_i_6_n_0
    );
g0_b0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => font_addr0(0),
      I1 => C(1),
      O => g0_b0_i_7_n_0
    );
g17_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"223E3E3E"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_143_1\,
      I1 => \vga_b[0]_INST_0_i_338_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g17_b5_n_0
    );
g18_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E30003E"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_287_0\,
      I1 => \vga_b[0]_INST_0_i_54_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g18_b6_n_0
    );
g19_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E3E3E20"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_143_1\,
      I1 => \vga_b[0]_INST_0_i_338_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g19_b2_n_0
    );
g22_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00320636"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_287_0\,
      I1 => \vga_b[0]_INST_0_i_54_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g22_b6_n_0
    );
g26_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E40003E"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_287_0\,
      I1 => \vga_b[0]_INST_0_i_54_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g26_b6_n_0
    );
g2_b0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sel\(1),
      O => g2_b0_n_0
    );
g2_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06E718FF"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_287_0\,
      I1 => \vga_b[0]_INST_0_i_54_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g2_b1_n_0
    );
g2_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38E718FF"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_287_0\,
      I1 => \vga_b[0]_INST_0_i_54_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g2_b6_n_0
    );
g44_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_24_0\,
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      O => g44_b0_n_0
    );
g44_b1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_242\,
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      O => \^v_count_reg[0]\
    );
g44_b2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_242\,
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      O => g44_b2_n_0
    );
g44_b3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_316_0\,
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      O => g44_b3_n_0
    );
g44_b7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_242\,
      I1 => \^sel\(1),
      I2 => \^sel\(2),
      O => g44_b7_n_0
    );
g46_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000808"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_242\,
      I1 => \C__0\(0),
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g46_b7_n_0
    );
g47_b1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sel\(0),
      I1 => \^sel\(2),
      O => g47_b1_n_0
    );
g51_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_242\,
      I1 => \C__0\(0),
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g51_b7_n_0
    );
g5_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000003E"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_287_0\,
      I1 => \vga_b[0]_INST_0_i_54_0\,
      I2 => \^sel\(0),
      I3 => \^sel\(1),
      I4 => \^sel\(2),
      O => g5_b0_n_0
    );
text_ascii_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => text_ascii_carry_n_0,
      CO(2) => text_ascii_carry_n_1,
      CO(1) => text_ascii_carry_n_2,
      CO(0) => text_ascii_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => text_ascii0(3 downto 0),
      O(3 downto 0) => font_addr0(3 downto 0),
      S(3) => text_ascii_carry_i_5_n_0,
      S(2) => text_ascii_carry_i_6_n_0,
      S(1) => text_ascii_carry_i_7_n_0,
      S(0) => text_ascii_carry_i_8_n_0
    );
\text_ascii_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => text_ascii_carry_n_0,
      CO(3) => \NLW_text_ascii_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \text_ascii_carry__0_n_1\,
      CO(1) => \text_ascii_carry__0_n_2\,
      CO(0) => \text_ascii_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => text_ascii0(6 downto 4),
      O(3 downto 0) => font_addr0(7 downto 4),
      S(3) => '1',
      S(2) => \text_ascii_carry__0_i_4_n_0\,
      S(1) => \text_ascii_carry__0_i_5_n_0\,
      S(0) => \text_ascii_carry__0_i_6_n_0\
    );
\text_ascii_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \text_ascii_carry__0_i_7_n_0\,
      I1 => \text_ascii_carry__0_i_8_n_0\,
      I2 => text_index(8),
      I3 => \text_ascii_carry__0_i_9_n_0\,
      I4 => text_index(7),
      I5 => \text_ascii_carry__0_i_10_n_0\,
      O => text_ascii0(6)
    );
\text_ascii_carry__0_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_26_n_0\,
      I1 => \text_ascii_carry__0_i_27_n_0\,
      O => \text_ascii_carry__0_i_10_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_28_n_0\,
      I1 => \text_ascii_carry__0_i_29_n_0\,
      O => \text_ascii_carry__0_i_11_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_30_n_0\,
      I1 => \text_ascii_carry__0_i_31_n_0\,
      O => \text_ascii_carry__0_i_12_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_32_n_0\,
      I1 => \text_ascii_carry__0_i_33_n_0\,
      O => \text_ascii_carry__0_i_13_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_34_n_0\,
      I1 => \text_ascii_carry__0_i_35_n_0\,
      O => \text_ascii_carry__0_i_14_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_36_n_0\,
      I1 => \text_ascii_carry__0_i_37_n_0\,
      O => \text_ascii_carry__0_i_15_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_38_n_0\,
      I1 => \text_ascii_carry__0_i_39_n_0\,
      O => \text_ascii_carry__0_i_16_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_40_n_0\,
      I1 => \text_ascii_carry__0_i_41_n_0\,
      O => \text_ascii_carry__0_i_17_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_18\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_42_n_0\,
      I1 => \text_ascii_carry__0_i_43_n_0\,
      O => \text_ascii_carry__0_i_18_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \text_ascii_carry__0_i_11_n_0\,
      I1 => \text_ascii_carry__0_i_12_n_0\,
      I2 => text_index(8),
      I3 => \text_ascii_carry__0_i_13_n_0\,
      I4 => text_index(7),
      I5 => \text_ascii_carry__0_i_14_n_0\,
      O => text_ascii0(5)
    );
\text_ascii_carry__0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_45_n_0\,
      I1 => \text_ascii_carry__0_i_46_n_0\,
      O => \text_ascii_carry__0_i_20_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_47_n_0\,
      I1 => \text_ascii_carry__0_i_48_n_0\,
      O => \text_ascii_carry__0_i_21_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_49_n_0\,
      I1 => \text_ascii_carry__0_i_50_n_0\,
      O => \text_ascii_carry__0_i_22_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_51_n_0\,
      I1 => \text_ascii_carry__0_i_52_n_0\,
      O => \text_ascii_carry__0_i_23_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_53_n_0\,
      I1 => \text_ascii_carry__0_i_54_n_0\,
      O => \text_ascii_carry__0_i_24_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_55_n_0\,
      I1 => \text_ascii_carry__0_i_56_n_0\,
      O => \text_ascii_carry__0_i_25_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_57_n_0\,
      I1 => \text_ascii_carry__0_i_58_n_0\,
      O => \text_ascii_carry__0_i_26_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_59_n_0\,
      I1 => \text_ascii_carry__0_i_60_n_0\,
      O => \text_ascii_carry__0_i_27_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_61_n_0\,
      I1 => \text_ascii_carry__0_i_62_n_0\,
      O => \text_ascii_carry__0_i_28_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_63_n_0\,
      I1 => \text_ascii_carry__0_i_64_n_0\,
      O => \text_ascii_carry__0_i_29_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \text_ascii_carry__0_i_15_n_0\,
      I1 => \text_ascii_carry__0_i_16_n_0\,
      I2 => text_index(8),
      I3 => \text_ascii_carry__0_i_17_n_0\,
      I4 => text_index(7),
      I5 => \text_ascii_carry__0_i_18_n_0\,
      O => text_ascii0(4)
    );
\text_ascii_carry__0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_65_n_0\,
      I1 => \text_ascii_carry__0_i_66_n_0\,
      O => \text_ascii_carry__0_i_30_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_67_n_0\,
      I1 => \text_ascii_carry__0_i_68_n_0\,
      O => \text_ascii_carry__0_i_31_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_69_n_0\,
      I1 => \text_ascii_carry__0_i_70_n_0\,
      O => \text_ascii_carry__0_i_32_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_71_n_0\,
      I1 => \text_ascii_carry__0_i_72_n_0\,
      O => \text_ascii_carry__0_i_33_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_73_n_0\,
      I1 => \text_ascii_carry__0_i_74_n_0\,
      O => \text_ascii_carry__0_i_34_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_75_n_0\,
      I1 => \text_ascii_carry__0_i_76_n_0\,
      O => \text_ascii_carry__0_i_35_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_77_n_0\,
      I1 => \text_ascii_carry__0_i_78_n_0\,
      O => \text_ascii_carry__0_i_36_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_79_n_0\,
      I1 => \text_ascii_carry__0_i_80_n_0\,
      O => \text_ascii_carry__0_i_37_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_81_n_0\,
      I1 => \text_ascii_carry__0_i_82_n_0\,
      O => \text_ascii_carry__0_i_38_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_83_n_0\,
      I1 => \text_ascii_carry__0_i_84_n_0\,
      O => \text_ascii_carry__0_i_39_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \text_ascii_carry__0_i_7_n_0\,
      I1 => \text_ascii_carry__0_i_8_n_0\,
      I2 => text_index(8),
      I3 => \text_ascii_carry__0_i_9_n_0\,
      I4 => text_index(7),
      I5 => \text_ascii_carry__0_i_10_n_0\,
      O => \text_ascii_carry__0_i_4_n_0\
    );
\text_ascii_carry__0_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_85_n_0\,
      I1 => \text_ascii_carry__0_i_86_n_0\,
      O => \text_ascii_carry__0_i_40_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_87_n_0\,
      I1 => \text_ascii_carry__0_i_88_n_0\,
      O => \text_ascii_carry__0_i_41_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_42\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_89_n_0\,
      I1 => \text_ascii_carry__0_i_90_n_0\,
      O => \text_ascii_carry__0_i_42_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \text_ascii_carry__0_i_91_n_0\,
      I1 => \text_ascii_carry__0_i_92_n_0\,
      O => \text_ascii_carry__0_i_43_n_0\,
      S => text_index(5)
    );
\text_ascii_carry__0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_6_6_n_0,
      I1 => display_data_reg_3200_3263_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_6_6_n_0,
      O => \text_ascii_carry__0_i_45_n_0\
    );
\text_ascii_carry__0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_6_6_n_0,
      I1 => display_data_reg_3456_3519_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_6_6_n_0,
      O => \text_ascii_carry__0_i_46_n_0\
    );
\text_ascii_carry__0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_6_6_n_0,
      I1 => display_data_reg_3712_3775_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_6_6_n_0,
      O => \text_ascii_carry__0_i_47_n_0\
    );
\text_ascii_carry__0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_6_6_n_0,
      I1 => display_data_reg_3968_4031_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_6_6_n_0,
      O => \text_ascii_carry__0_i_48_n_0\
    );
\text_ascii_carry__0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_6_6_n_0,
      I1 => display_data_reg_2176_2239_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_6_6_n_0,
      O => \text_ascii_carry__0_i_49_n_0\
    );
\text_ascii_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \text_ascii_carry__0_i_11_n_0\,
      I1 => \text_ascii_carry__0_i_12_n_0\,
      I2 => text_index(8),
      I3 => \text_ascii_carry__0_i_13_n_0\,
      I4 => text_index(7),
      I5 => \text_ascii_carry__0_i_14_n_0\,
      O => \text_ascii_carry__0_i_5_n_0\
    );
\text_ascii_carry__0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_6_6_n_0,
      I1 => display_data_reg_2432_2495_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_6_6_n_0,
      O => \text_ascii_carry__0_i_50_n_0\
    );
\text_ascii_carry__0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_6_6_n_0,
      I1 => display_data_reg_2688_2751_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_6_6_n_0,
      O => \text_ascii_carry__0_i_51_n_0\
    );
\text_ascii_carry__0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_6_6_n_0,
      I1 => display_data_reg_2944_3007_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_6_6_n_0,
      O => \text_ascii_carry__0_i_52_n_0\
    );
\text_ascii_carry__0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_6_6_n_0,
      I1 => display_data_reg_1152_1215_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_6_6_n_0,
      O => \text_ascii_carry__0_i_53_n_0\
    );
\text_ascii_carry__0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_6_6_n_0,
      I1 => display_data_reg_1408_1471_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_6_6_n_0,
      O => \text_ascii_carry__0_i_54_n_0\
    );
\text_ascii_carry__0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_6_6_n_0,
      I1 => display_data_reg_1664_1727_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_6_6_n_0,
      O => \text_ascii_carry__0_i_55_n_0\
    );
\text_ascii_carry__0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_6_6_n_0,
      I1 => display_data_reg_1920_1983_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_6_6_n_0,
      O => \text_ascii_carry__0_i_56_n_0\
    );
\text_ascii_carry__0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_6_6_n_0,
      I1 => display_data_reg_128_191_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_6_6_n_0,
      O => \text_ascii_carry__0_i_57_n_0\
    );
\text_ascii_carry__0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_448_511_6_6_n_0,
      I1 => display_data_reg_384_447_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_320_383_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_256_319_6_6_n_0,
      O => \text_ascii_carry__0_i_58_n_0\
    );
\text_ascii_carry__0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_704_767_6_6_n_0,
      I1 => display_data_reg_640_703_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_576_639_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_512_575_6_6_n_0,
      O => \text_ascii_carry__0_i_59_n_0\
    );
\text_ascii_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => text_ascii0(4),
      I1 => C(4),
      O => \text_ascii_carry__0_i_6_n_0\
    );
\text_ascii_carry__0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_6_6_n_0,
      I1 => display_data_reg_896_959_6_6_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_6_6_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_6_6_n_0,
      O => \text_ascii_carry__0_i_60_n_0\
    );
\text_ascii_carry__0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_3_5_n_2,
      I1 => display_data_reg_3200_3263_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_3_5_n_2,
      O => \text_ascii_carry__0_i_61_n_0\
    );
\text_ascii_carry__0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_3_5_n_2,
      I1 => display_data_reg_3456_3519_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_3_5_n_2,
      O => \text_ascii_carry__0_i_62_n_0\
    );
\text_ascii_carry__0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_3_5_n_2,
      I1 => display_data_reg_3712_3775_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_3_5_n_2,
      O => \text_ascii_carry__0_i_63_n_0\
    );
\text_ascii_carry__0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_3_5_n_2,
      I1 => display_data_reg_3968_4031_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_3_5_n_2,
      O => \text_ascii_carry__0_i_64_n_0\
    );
\text_ascii_carry__0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_3_5_n_2,
      I1 => display_data_reg_2176_2239_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_3_5_n_2,
      O => \text_ascii_carry__0_i_65_n_0\
    );
\text_ascii_carry__0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_3_5_n_2,
      I1 => display_data_reg_2432_2495_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_3_5_n_2,
      O => \text_ascii_carry__0_i_66_n_0\
    );
\text_ascii_carry__0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_3_5_n_2,
      I1 => display_data_reg_2688_2751_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_3_5_n_2,
      O => \text_ascii_carry__0_i_67_n_0\
    );
\text_ascii_carry__0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_3_5_n_2,
      I1 => display_data_reg_2944_3007_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_3_5_n_2,
      O => \text_ascii_carry__0_i_68_n_0\
    );
\text_ascii_carry__0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_3_5_n_2,
      I1 => display_data_reg_1152_1215_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_3_5_n_2,
      O => \text_ascii_carry__0_i_69_n_0\
    );
\text_ascii_carry__0_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_20_n_0\,
      I1 => \text_ascii_carry__0_i_21_n_0\,
      O => \text_ascii_carry__0_i_7_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_3_5_n_2,
      I1 => display_data_reg_1408_1471_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_3_5_n_2,
      O => \text_ascii_carry__0_i_70_n_0\
    );
\text_ascii_carry__0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_3_5_n_2,
      I1 => display_data_reg_1664_1727_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_3_5_n_2,
      O => \text_ascii_carry__0_i_71_n_0\
    );
\text_ascii_carry__0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_3_5_n_2,
      I1 => display_data_reg_1920_1983_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_3_5_n_2,
      O => \text_ascii_carry__0_i_72_n_0\
    );
\text_ascii_carry__0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_3_5_n_2,
      I1 => display_data_reg_128_191_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_3_5_n_2,
      O => \text_ascii_carry__0_i_73_n_0\
    );
\text_ascii_carry__0_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCFAFC0"
    )
        port map (
      I0 => display_data_reg_448_511_3_5_n_2,
      I1 => display_data_reg_384_447_3_5_n_2,
      I2 => text_index(4),
      I3 => text_index(3),
      I4 => display_data_reg_256_319_3_5_n_2,
      O => \text_ascii_carry__0_i_74_n_0\
    );
\text_ascii_carry__0_i_75\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => display_data_reg_704_767_3_5_n_2,
      I1 => text_index(4),
      I2 => display_data_reg_576_639_3_5_n_2,
      I3 => text_index(3),
      I4 => display_data_reg_512_575_3_5_n_2,
      O => \text_ascii_carry__0_i_75_n_0\
    );
\text_ascii_carry__0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_3_5_n_2,
      I1 => display_data_reg_896_959_3_5_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_3_5_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_3_5_n_2,
      O => \text_ascii_carry__0_i_76_n_0\
    );
\text_ascii_carry__0_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_3_5_n_1,
      I1 => display_data_reg_3200_3263_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_3_5_n_1,
      O => \text_ascii_carry__0_i_77_n_0\
    );
\text_ascii_carry__0_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_3_5_n_1,
      I1 => display_data_reg_3456_3519_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_3_5_n_1,
      O => \text_ascii_carry__0_i_78_n_0\
    );
\text_ascii_carry__0_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_3_5_n_1,
      I1 => display_data_reg_3712_3775_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_3_5_n_1,
      O => \text_ascii_carry__0_i_79_n_0\
    );
\text_ascii_carry__0_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_22_n_0\,
      I1 => \text_ascii_carry__0_i_23_n_0\,
      O => \text_ascii_carry__0_i_8_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_3_5_n_1,
      I1 => display_data_reg_3968_4031_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_3_5_n_1,
      O => \text_ascii_carry__0_i_80_n_0\
    );
\text_ascii_carry__0_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_3_5_n_1,
      I1 => display_data_reg_2176_2239_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_3_5_n_1,
      O => \text_ascii_carry__0_i_81_n_0\
    );
\text_ascii_carry__0_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_3_5_n_1,
      I1 => display_data_reg_2432_2495_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_3_5_n_1,
      O => \text_ascii_carry__0_i_82_n_0\
    );
\text_ascii_carry__0_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_3_5_n_1,
      I1 => display_data_reg_2688_2751_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_3_5_n_1,
      O => \text_ascii_carry__0_i_83_n_0\
    );
\text_ascii_carry__0_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_3_5_n_1,
      I1 => display_data_reg_2944_3007_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_3_5_n_1,
      O => \text_ascii_carry__0_i_84_n_0\
    );
\text_ascii_carry__0_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_3_5_n_1,
      I1 => display_data_reg_1152_1215_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_3_5_n_1,
      O => \text_ascii_carry__0_i_85_n_0\
    );
\text_ascii_carry__0_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_3_5_n_1,
      I1 => display_data_reg_1408_1471_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_3_5_n_1,
      O => \text_ascii_carry__0_i_86_n_0\
    );
\text_ascii_carry__0_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_3_5_n_1,
      I1 => display_data_reg_1664_1727_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_3_5_n_1,
      O => \text_ascii_carry__0_i_87_n_0\
    );
\text_ascii_carry__0_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_3_5_n_1,
      I1 => display_data_reg_1920_1983_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_3_5_n_1,
      O => \text_ascii_carry__0_i_88_n_0\
    );
\text_ascii_carry__0_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_3_5_n_1,
      I1 => display_data_reg_128_191_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_3_5_n_1,
      O => \text_ascii_carry__0_i_89_n_0\
    );
\text_ascii_carry__0_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \text_ascii_carry__0_i_24_n_0\,
      I1 => \text_ascii_carry__0_i_25_n_0\,
      O => \text_ascii_carry__0_i_9_n_0\,
      S => text_index(6)
    );
\text_ascii_carry__0_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_448_511_3_5_n_1,
      I1 => display_data_reg_384_447_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_320_383_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_256_319_3_5_n_1,
      O => \text_ascii_carry__0_i_90_n_0\
    );
\text_ascii_carry__0_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_704_767_3_5_n_1,
      I1 => display_data_reg_640_703_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_576_639_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_512_575_3_5_n_1,
      O => \text_ascii_carry__0_i_91_n_0\
    );
\text_ascii_carry__0_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_3_5_n_1,
      I1 => display_data_reg_896_959_3_5_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_3_5_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_3_5_n_1,
      O => \text_ascii_carry__0_i_92_n_0\
    );
text_ascii_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => text_ascii_carry_i_9_n_0,
      I1 => text_ascii_carry_i_10_n_0,
      I2 => text_index(8),
      I3 => text_ascii_carry_i_12_n_0,
      I4 => text_index(7),
      I5 => text_ascii_carry_i_14_n_0,
      O => text_ascii0(3)
    );
text_ascii_carry_i_10: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_31_n_0,
      I1 => text_ascii_carry_i_32_n_0,
      O => text_ascii_carry_i_10_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_100: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_0_2_n_1,
      I1 => display_data_reg_3200_3263_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_0_2_n_1,
      O => text_ascii_carry_i_100_n_0
    );
text_ascii_carry_i_101: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_0_2_n_1,
      I1 => display_data_reg_3456_3519_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_0_2_n_1,
      O => text_ascii_carry_i_101_n_0
    );
text_ascii_carry_i_102: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_0_2_n_1,
      I1 => display_data_reg_3712_3775_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_0_2_n_1,
      O => text_ascii_carry_i_102_n_0
    );
text_ascii_carry_i_103: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_0_2_n_1,
      I1 => display_data_reg_3968_4031_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_0_2_n_1,
      O => text_ascii_carry_i_103_n_0
    );
text_ascii_carry_i_104: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_0_2_n_1,
      I1 => display_data_reg_2176_2239_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_0_2_n_1,
      O => text_ascii_carry_i_104_n_0
    );
text_ascii_carry_i_105: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_0_2_n_1,
      I1 => display_data_reg_2432_2495_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_0_2_n_1,
      O => text_ascii_carry_i_105_n_0
    );
text_ascii_carry_i_106: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_0_2_n_1,
      I1 => display_data_reg_2688_2751_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_0_2_n_1,
      O => text_ascii_carry_i_106_n_0
    );
text_ascii_carry_i_107: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_0_2_n_1,
      I1 => display_data_reg_2944_3007_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_0_2_n_1,
      O => text_ascii_carry_i_107_n_0
    );
text_ascii_carry_i_108: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_0_2_n_1,
      I1 => display_data_reg_1152_1215_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_0_2_n_1,
      O => text_ascii_carry_i_108_n_0
    );
text_ascii_carry_i_109: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_0_2_n_1,
      I1 => display_data_reg_1408_1471_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_0_2_n_1,
      O => text_ascii_carry_i_109_n_0
    );
text_ascii_carry_i_110: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_0_2_n_1,
      I1 => display_data_reg_1664_1727_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_0_2_n_1,
      O => text_ascii_carry_i_110_n_0
    );
text_ascii_carry_i_111: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_0_2_n_1,
      I1 => display_data_reg_1920_1983_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_0_2_n_1,
      O => text_ascii_carry_i_111_n_0
    );
text_ascii_carry_i_112: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_0_2_n_1,
      I1 => display_data_reg_128_191_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_0_2_n_1,
      O => text_ascii_carry_i_112_n_0
    );
text_ascii_carry_i_113: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_448_511_0_2_n_1,
      I1 => display_data_reg_384_447_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_320_383_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_256_319_0_2_n_1,
      O => text_ascii_carry_i_113_n_0
    );
text_ascii_carry_i_114: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_704_767_0_2_n_1,
      I1 => display_data_reg_640_703_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_576_639_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_512_575_0_2_n_1,
      O => text_ascii_carry_i_114_n_0
    );
text_ascii_carry_i_115: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_0_2_n_1,
      I1 => display_data_reg_896_959_0_2_n_1,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_0_2_n_1,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_0_2_n_1,
      O => text_ascii_carry_i_115_n_0
    );
text_ascii_carry_i_116: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_0_2_n_0,
      I1 => display_data_reg_3200_3263_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_0_2_n_0,
      O => text_ascii_carry_i_116_n_0
    );
text_ascii_carry_i_117: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_0_2_n_0,
      I1 => display_data_reg_3456_3519_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_0_2_n_0,
      O => text_ascii_carry_i_117_n_0
    );
text_ascii_carry_i_118: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_0_2_n_0,
      I1 => display_data_reg_3712_3775_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_0_2_n_0,
      O => text_ascii_carry_i_118_n_0
    );
text_ascii_carry_i_119: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_0_2_n_0,
      I1 => display_data_reg_3968_4031_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_0_2_n_0,
      O => text_ascii_carry_i_119_n_0
    );
text_ascii_carry_i_12: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_34_n_0,
      I1 => text_ascii_carry_i_35_n_0,
      O => text_ascii_carry_i_12_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_120: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_0_2_n_0,
      I1 => display_data_reg_2176_2239_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_0_2_n_0,
      O => text_ascii_carry_i_120_n_0
    );
text_ascii_carry_i_121: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_0_2_n_0,
      I1 => display_data_reg_2432_2495_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_0_2_n_0,
      O => text_ascii_carry_i_121_n_0
    );
text_ascii_carry_i_122: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_0_2_n_0,
      I1 => display_data_reg_2688_2751_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_0_2_n_0,
      O => text_ascii_carry_i_122_n_0
    );
text_ascii_carry_i_123: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_0_2_n_0,
      I1 => display_data_reg_2944_3007_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_0_2_n_0,
      O => text_ascii_carry_i_123_n_0
    );
text_ascii_carry_i_124: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_0_2_n_0,
      I1 => display_data_reg_1152_1215_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_0_2_n_0,
      O => text_ascii_carry_i_124_n_0
    );
text_ascii_carry_i_125: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_0_2_n_0,
      I1 => display_data_reg_1408_1471_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_0_2_n_0,
      O => text_ascii_carry_i_125_n_0
    );
text_ascii_carry_i_126: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_0_2_n_0,
      I1 => display_data_reg_1664_1727_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_0_2_n_0,
      O => text_ascii_carry_i_126_n_0
    );
text_ascii_carry_i_127: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_0_2_n_0,
      I1 => display_data_reg_1920_1983_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_0_2_n_0,
      O => text_ascii_carry_i_127_n_0
    );
text_ascii_carry_i_128: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_0_2_n_0,
      I1 => display_data_reg_128_191_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_0_2_n_0,
      O => text_ascii_carry_i_128_n_0
    );
text_ascii_carry_i_129: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_448_511_0_2_n_0,
      I1 => display_data_reg_384_447_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_320_383_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_256_319_0_2_n_0,
      O => text_ascii_carry_i_129_n_0
    );
text_ascii_carry_i_130: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_704_767_0_2_n_0,
      I1 => display_data_reg_640_703_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_576_639_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_512_575_0_2_n_0,
      O => text_ascii_carry_i_130_n_0
    );
text_ascii_carry_i_131: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_0_2_n_0,
      I1 => display_data_reg_896_959_0_2_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_0_2_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_0_2_n_0,
      O => text_ascii_carry_i_131_n_0
    );
text_ascii_carry_i_14: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_40_n_0,
      I1 => text_ascii_carry_i_41_n_0,
      O => text_ascii_carry_i_14_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_15: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_42_n_0,
      I1 => text_ascii_carry_i_43_n_0,
      O => text_ascii_carry_i_15_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_16: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_44_n_0,
      I1 => text_ascii_carry_i_45_n_0,
      O => text_ascii_carry_i_16_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_17: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_46_n_0,
      I1 => text_ascii_carry_i_47_n_0,
      O => text_ascii_carry_i_17_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_18: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_48_n_0,
      I1 => text_ascii_carry_i_49_n_0,
      O => text_ascii_carry_i_18_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_19: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_50_n_0,
      I1 => text_ascii_carry_i_51_n_0,
      O => text_ascii_carry_i_19_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => text_ascii_carry_i_15_n_0,
      I1 => text_ascii_carry_i_16_n_0,
      I2 => text_index(8),
      I3 => text_ascii_carry_i_17_n_0,
      I4 => text_index(7),
      I5 => text_ascii_carry_i_18_n_0,
      O => text_ascii0(2)
    );
text_ascii_carry_i_20: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_52_n_0,
      I1 => text_ascii_carry_i_53_n_0,
      O => text_ascii_carry_i_20_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_21: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_54_n_0,
      I1 => text_ascii_carry_i_55_n_0,
      O => text_ascii_carry_i_21_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_22: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_56_n_0,
      I1 => text_ascii_carry_i_57_n_0,
      O => text_ascii_carry_i_22_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_23: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_58_n_0,
      I1 => text_ascii_carry_i_59_n_0,
      O => text_ascii_carry_i_23_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_24: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_60_n_0,
      I1 => text_ascii_carry_i_61_n_0,
      O => text_ascii_carry_i_24_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_25: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_62_n_0,
      I1 => text_ascii_carry_i_63_n_0,
      O => text_ascii_carry_i_25_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_26: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_64_n_0,
      I1 => text_ascii_carry_i_65_n_0,
      O => text_ascii_carry_i_26_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_29: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_67_n_0,
      I1 => text_ascii_carry_i_68_n_0,
      O => text_ascii_carry_i_29_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => text_ascii_carry_i_19_n_0,
      I1 => text_ascii_carry_i_20_n_0,
      I2 => text_index(8),
      I3 => text_ascii_carry_i_21_n_0,
      I4 => text_index(7),
      I5 => text_ascii_carry_i_22_n_0,
      O => text_ascii0(1)
    );
text_ascii_carry_i_30: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_69_n_0,
      I1 => text_ascii_carry_i_70_n_0,
      O => text_ascii_carry_i_30_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_31: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_71_n_0,
      I1 => text_ascii_carry_i_72_n_0,
      O => text_ascii_carry_i_31_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_32: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_73_n_0,
      I1 => text_ascii_carry_i_74_n_0,
      O => text_ascii_carry_i_32_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_34: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_76_n_0,
      I1 => text_ascii_carry_i_77_n_0,
      O => text_ascii_carry_i_34_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_35: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_78_n_0,
      I1 => text_ascii_carry_i_79_n_0,
      O => text_ascii_carry_i_35_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => text_ascii_carry_i_23_n_0,
      I1 => text_ascii_carry_i_24_n_0,
      I2 => text_index(8),
      I3 => text_ascii_carry_i_25_n_0,
      I4 => text_index(7),
      I5 => text_ascii_carry_i_26_n_0,
      O => text_ascii0(0)
    );
text_ascii_carry_i_40: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_80_n_0,
      I1 => text_ascii_carry_i_81_n_0,
      O => text_ascii_carry_i_40_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_41: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_82_n_0,
      I1 => text_ascii_carry_i_83_n_0,
      O => text_ascii_carry_i_41_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_42: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_84_n_0,
      I1 => text_ascii_carry_i_85_n_0,
      O => text_ascii_carry_i_42_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_43: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_86_n_0,
      I1 => text_ascii_carry_i_87_n_0,
      O => text_ascii_carry_i_43_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_44: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_88_n_0,
      I1 => text_ascii_carry_i_89_n_0,
      O => text_ascii_carry_i_44_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_45: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_90_n_0,
      I1 => text_ascii_carry_i_91_n_0,
      O => text_ascii_carry_i_45_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_46: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_92_n_0,
      I1 => text_ascii_carry_i_93_n_0,
      O => text_ascii_carry_i_46_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_47: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_94_n_0,
      I1 => text_ascii_carry_i_95_n_0,
      O => text_ascii_carry_i_47_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_48: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_96_n_0,
      I1 => text_ascii_carry_i_97_n_0,
      O => text_ascii_carry_i_48_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_49: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_98_n_0,
      I1 => text_ascii_carry_i_99_n_0,
      O => text_ascii_carry_i_49_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => text_ascii0(3),
      I1 => C(3),
      O => text_ascii_carry_i_5_n_0
    );
text_ascii_carry_i_50: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_100_n_0,
      I1 => text_ascii_carry_i_101_n_0,
      O => text_ascii_carry_i_50_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_51: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_102_n_0,
      I1 => text_ascii_carry_i_103_n_0,
      O => text_ascii_carry_i_51_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_52: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_104_n_0,
      I1 => text_ascii_carry_i_105_n_0,
      O => text_ascii_carry_i_52_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_53: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_106_n_0,
      I1 => text_ascii_carry_i_107_n_0,
      O => text_ascii_carry_i_53_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_54: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_108_n_0,
      I1 => text_ascii_carry_i_109_n_0,
      O => text_ascii_carry_i_54_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_55: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_110_n_0,
      I1 => text_ascii_carry_i_111_n_0,
      O => text_ascii_carry_i_55_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_56: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_112_n_0,
      I1 => text_ascii_carry_i_113_n_0,
      O => text_ascii_carry_i_56_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_57: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_114_n_0,
      I1 => text_ascii_carry_i_115_n_0,
      O => text_ascii_carry_i_57_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_58: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_116_n_0,
      I1 => text_ascii_carry_i_117_n_0,
      O => text_ascii_carry_i_58_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_59: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_118_n_0,
      I1 => text_ascii_carry_i_119_n_0,
      O => text_ascii_carry_i_59_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => text_ascii0(2),
      I1 => g0_b0_i_4_0,
      O => text_ascii_carry_i_6_n_0
    );
text_ascii_carry_i_60: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_120_n_0,
      I1 => text_ascii_carry_i_121_n_0,
      O => text_ascii_carry_i_60_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_61: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_122_n_0,
      I1 => text_ascii_carry_i_123_n_0,
      O => text_ascii_carry_i_61_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_62: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_124_n_0,
      I1 => text_ascii_carry_i_125_n_0,
      O => text_ascii_carry_i_62_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_63: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_126_n_0,
      I1 => text_ascii_carry_i_127_n_0,
      O => text_ascii_carry_i_63_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_64: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_128_n_0,
      I1 => text_ascii_carry_i_129_n_0,
      O => text_ascii_carry_i_64_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_65: unisim.vcomponents.MUXF7
     port map (
      I0 => text_ascii_carry_i_130_n_0,
      I1 => text_ascii_carry_i_131_n_0,
      O => text_ascii_carry_i_65_n_0,
      S => text_index(5)
    );
text_ascii_carry_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_3_5_n_0,
      I1 => display_data_reg_3200_3263_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_3_5_n_0,
      O => text_ascii_carry_i_67_n_0
    );
text_ascii_carry_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_3_5_n_0,
      I1 => display_data_reg_3456_3519_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_3_5_n_0,
      O => text_ascii_carry_i_68_n_0
    );
text_ascii_carry_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_3_5_n_0,
      I1 => display_data_reg_3712_3775_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_3_5_n_0,
      O => text_ascii_carry_i_69_n_0
    );
text_ascii_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => text_ascii0(1),
      I1 => C(2),
      O => text_ascii_carry_i_7_n_0
    );
text_ascii_carry_i_70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_3_5_n_0,
      I1 => display_data_reg_3968_4031_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_3_5_n_0,
      O => text_ascii_carry_i_70_n_0
    );
text_ascii_carry_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_3_5_n_0,
      I1 => display_data_reg_2176_2239_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_3_5_n_0,
      O => text_ascii_carry_i_71_n_0
    );
text_ascii_carry_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_3_5_n_0,
      I1 => display_data_reg_2432_2495_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_3_5_n_0,
      O => text_ascii_carry_i_72_n_0
    );
text_ascii_carry_i_73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_3_5_n_0,
      I1 => display_data_reg_2688_2751_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_3_5_n_0,
      O => text_ascii_carry_i_73_n_0
    );
text_ascii_carry_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_3_5_n_0,
      I1 => display_data_reg_2944_3007_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_3_5_n_0,
      O => text_ascii_carry_i_74_n_0
    );
text_ascii_carry_i_76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_3_5_n_0,
      I1 => display_data_reg_1152_1215_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_3_5_n_0,
      O => text_ascii_carry_i_76_n_0
    );
text_ascii_carry_i_77: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_3_5_n_0,
      I1 => display_data_reg_1408_1471_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_3_5_n_0,
      O => text_ascii_carry_i_77_n_0
    );
text_ascii_carry_i_78: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_3_5_n_0,
      I1 => display_data_reg_1664_1727_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_3_5_n_0,
      O => text_ascii_carry_i_78_n_0
    );
text_ascii_carry_i_79: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_3_5_n_0,
      I1 => display_data_reg_1920_1983_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_3_5_n_0,
      O => text_ascii_carry_i_79_n_0
    );
text_ascii_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => text_ascii0(0),
      I1 => C(1),
      O => text_ascii_carry_i_8_n_0
    );
text_ascii_carry_i_80: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_3_5_n_0,
      I1 => display_data_reg_128_191_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_3_5_n_0,
      O => text_ascii_carry_i_80_n_0
    );
text_ascii_carry_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_448_511_3_5_n_0,
      I1 => display_data_reg_384_447_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_320_383_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_256_319_3_5_n_0,
      O => text_ascii_carry_i_81_n_0
    );
text_ascii_carry_i_82: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_704_767_3_5_n_0,
      I1 => display_data_reg_640_703_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_576_639_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_512_575_3_5_n_0,
      O => text_ascii_carry_i_82_n_0
    );
text_ascii_carry_i_83: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_3_5_n_0,
      I1 => display_data_reg_896_959_3_5_n_0,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_3_5_n_0,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_3_5_n_0,
      O => text_ascii_carry_i_83_n_0
    );
text_ascii_carry_i_84: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3264_3327_0_2_n_2,
      I1 => display_data_reg_3200_3263_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3136_3199_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3072_3135_0_2_n_2,
      O => text_ascii_carry_i_84_n_0
    );
text_ascii_carry_i_85: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3520_3583_0_2_n_2,
      I1 => display_data_reg_3456_3519_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3392_3455_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3328_3391_0_2_n_2,
      O => text_ascii_carry_i_85_n_0
    );
text_ascii_carry_i_86: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3776_3839_0_2_n_2,
      I1 => display_data_reg_3712_3775_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3648_3711_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3584_3647_0_2_n_2,
      O => text_ascii_carry_i_86_n_0
    );
text_ascii_carry_i_87: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_4032_4095_0_2_n_2,
      I1 => display_data_reg_3968_4031_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_3904_3967_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_3840_3903_0_2_n_2,
      O => text_ascii_carry_i_87_n_0
    );
text_ascii_carry_i_88: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2240_2303_0_2_n_2,
      I1 => display_data_reg_2176_2239_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2112_2175_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2048_2111_0_2_n_2,
      O => text_ascii_carry_i_88_n_0
    );
text_ascii_carry_i_89: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2496_2559_0_2_n_2,
      I1 => display_data_reg_2432_2495_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2368_2431_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2304_2367_0_2_n_2,
      O => text_ascii_carry_i_89_n_0
    );
text_ascii_carry_i_9: unisim.vcomponents.MUXF8
     port map (
      I0 => text_ascii_carry_i_29_n_0,
      I1 => text_ascii_carry_i_30_n_0,
      O => text_ascii_carry_i_9_n_0,
      S => text_index(6)
    );
text_ascii_carry_i_90: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_2752_2815_0_2_n_2,
      I1 => display_data_reg_2688_2751_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2624_2687_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2560_2623_0_2_n_2,
      O => text_ascii_carry_i_90_n_0
    );
text_ascii_carry_i_91: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_3008_3071_0_2_n_2,
      I1 => display_data_reg_2944_3007_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_2880_2943_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_2816_2879_0_2_n_2,
      O => text_ascii_carry_i_91_n_0
    );
text_ascii_carry_i_92: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1216_1279_0_2_n_2,
      I1 => display_data_reg_1152_1215_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1088_1151_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1024_1087_0_2_n_2,
      O => text_ascii_carry_i_92_n_0
    );
text_ascii_carry_i_93: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1472_1535_0_2_n_2,
      I1 => display_data_reg_1408_1471_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1344_1407_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1280_1343_0_2_n_2,
      O => text_ascii_carry_i_93_n_0
    );
text_ascii_carry_i_94: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1728_1791_0_2_n_2,
      I1 => display_data_reg_1664_1727_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1600_1663_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1536_1599_0_2_n_2,
      O => text_ascii_carry_i_94_n_0
    );
text_ascii_carry_i_95: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_1984_2047_0_2_n_2,
      I1 => display_data_reg_1920_1983_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_1856_1919_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_1792_1855_0_2_n_2,
      O => text_ascii_carry_i_95_n_0
    );
text_ascii_carry_i_96: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_192_255_0_2_n_2,
      I1 => display_data_reg_128_191_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_64_127_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_0_63_0_2_n_2,
      O => text_ascii_carry_i_96_n_0
    );
text_ascii_carry_i_97: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_448_511_0_2_n_2,
      I1 => display_data_reg_384_447_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_320_383_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_256_319_0_2_n_2,
      O => text_ascii_carry_i_97_n_0
    );
text_ascii_carry_i_98: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_704_767_0_2_n_2,
      I1 => display_data_reg_640_703_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_576_639_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_512_575_0_2_n_2,
      O => text_ascii_carry_i_98_n_0
    );
text_ascii_carry_i_99: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => display_data_reg_960_1023_0_2_n_2,
      I1 => display_data_reg_896_959_0_2_n_2,
      I2 => text_index(4),
      I3 => display_data_reg_832_895_0_2_n_2,
      I4 => text_index(3),
      I5 => display_data_reg_768_831_0_2_n_2,
      O => text_ascii_carry_i_99_n_0
    );
\vga_b[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_28_n_0\,
      I1 => \vga_b[0]_INST_0_i_2_1\,
      O => \vga_b[0]_INST_0_i_10_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_104\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_42\,
      I1 => \vga_b[0]_INST_0_i_209_n_0\,
      O => \vga_b[0]_INST_0_i_209_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \vga_b[0]_INST_0_i_23_n_0\,
      CO(3 downto 0) => \NLW_vga_b[0]_INST_0_i_11_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_vga_b[0]_INST_0_i_11_O_UNCONNECTED\(3 downto 1),
      O(0) => \^sel\(8),
      S(3 downto 1) => B"000",
      S(0) => font_addr0(7)
    );
\vga_b[0]_INST_0_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_226_n_0\,
      I1 => \vga_b[0]_INST_0_i_45_0\,
      I2 => \^sel\(6),
      I3 => \vga_b[0]_INST_0_i_45_1\,
      I4 => \^sel\(5),
      I5 => \vga_b[0]_INST_0_i_45_2\,
      O => \vga_b[0]_INST_0_i_111_n_0\
    );
\vga_b[0]_INST_0_i_118\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b0_n_0,
      I1 => \vga_b[0]_INST_0_i_54_1\,
      O => \vga_b[0]_INST_0_i_118_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_34_n_0\,
      I1 => \vga_b[0]_INST_0_i_35_n_0\,
      O => \vga_b[0]_INST_0_i_35_0\(1),
      S => \^sel\(8)
    );
\vga_b[0]_INST_0_i_143\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_70_0\,
      I1 => g19_b2_n_0,
      O => \vga_b[0]_INST_0_i_143_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_36_n_0\,
      I1 => \vga_b[0]_INST_0_i_4_1\,
      O => \vga_b[0]_INST_0_i_15_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_163\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_75\,
      I1 => \vga_b[0]_INST_0_i_283_n_0\,
      O => \vga_b[0]_INST_0_i_283_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_165\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_76_2\,
      I1 => \vga_b[0]_INST_0_i_287_n_0\,
      O => \vga_b[0]_INST_0_i_165_n_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_166\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_76_1\,
      I1 => \vga_b[0]_INST_0_i_289_n_0\,
      O => \vga_b[0]_INST_0_i_166_n_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_167\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_76_0\,
      I1 => \vga_b[0]_INST_0_i_291_n_0\,
      O => \vga_b[0]_INST_0_i_167_n_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_168\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_36_0\,
      I1 => g46_b7_n_0,
      I2 => \^sel\(4),
      I3 => \vga_b[0]_INST_0_i_36_1\,
      I4 => \^sel\(3),
      I5 => g44_b2_n_0,
      O => \vga_b[0]_INST_0_i_168_n_0\
    );
\vga_b[0]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_40_n_0\,
      I1 => \vga_b[0]_INST_0_i_4_0\,
      O => \vga_b[0]_INST_0_i_17_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_5\,
      I1 => \vga_b[0]_INST_0_i_45_n_0\,
      O => \vga_b[0]_INST_0_i_35_0\(0),
      S => \^sel\(8)
    );
\vga_b[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_8_n_0\,
      I1 => \vga_b[0]_INST_0_i_9_n_0\,
      I2 => Q(0),
      I3 => \vga_b[0]_INST_0_i_10_n_0\,
      I4 => \^sel\(8),
      I5 => \vga_r[3]\,
      O => \h_count_reg[1]\
    );
\vga_b[0]_INST_0_i_209\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b1_n_0,
      I1 => \vga_b[0]_INST_0_i_104_0\,
      O => \vga_b[0]_INST_0_i_209_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_226\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_316_n_0\,
      I1 => \vga_b[0]_INST_0_i_111_0\,
      O => \vga_b[0]_INST_0_i_226_n_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => g0_b0_i_4_n_0,
      CO(3) => \vga_b[0]_INST_0_i_23_n_0\,
      CO(2) => \vga_b[0]_INST_0_i_23_n_1\,
      CO(1) => \vga_b[0]_INST_0_i_23_n_2\,
      CO(0) => \vga_b[0]_INST_0_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => font_addr0(4 downto 3),
      O(3 downto 0) => \^sel\(7 downto 4),
      S(3 downto 2) => font_addr0(6 downto 5),
      S(1) => \vga_b[0]_INST_0_i_49_n_0\,
      S(0) => \vga_b[0]_INST_0_i_50_n_0\
    );
\vga_b[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000000000800080"
    )
        port map (
      I0 => g44_b0_n_0,
      I1 => \^sel\(6),
      I2 => \^sel\(5),
      I3 => \^sel\(3),
      I4 => \vga_b[0]_INST_0_i_8_0\,
      I5 => \^sel\(4),
      O => \vga_b[0]_INST_0_i_24_n_0\
    );
\vga_b[0]_INST_0_i_241\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_338_n_0\,
      I1 => \vga_b[0]_INST_0_i_114\,
      O => \vga_b[0]_INST_0_i_339\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_9_1\,
      I1 => \^sel\(3),
      I2 => \^sel\(4),
      I3 => \^sel\(5),
      I4 => \^sel\(6),
      I5 => \vga_b[0]_INST_0_i_54_n_0\,
      O => \vga_b[0]_INST_0_i_26_n_0\
    );
\vga_b[0]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^sel\(4),
      I1 => \vga_b[0]_INST_0_i_9_0\,
      I2 => \^sel\(3),
      I3 => \^sel\(5),
      I4 => \^sel\(6),
      O => \vga_b[0]_INST_0_i_27_n_0\
    );
\vga_b[0]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_55_n_0\,
      I1 => \vga_b[0]_INST_0_i_10_0\,
      I2 => \^sel\(6),
      I3 => \vga_b[0]_INST_0_i_10_1\,
      I4 => \^sel\(5),
      I5 => \vga_b[0]_INST_0_i_10_2\,
      O => \vga_b[0]_INST_0_i_28_n_0\
    );
\vga_b[0]_INST_0_i_283\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b6_n_0,
      I1 => \vga_b[0]_INST_0_i_163_0\,
      O => \vga_b[0]_INST_0_i_283_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_287\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b6_n_0,
      I1 => \vga_b[0]_INST_0_i_165_0\,
      O => \vga_b[0]_INST_0_i_287_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_289\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b6_n_0,
      I1 => \vga_b[0]_INST_0_i_166_0\,
      O => \vga_b[0]_INST_0_i_289_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_291\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b6_n_0,
      I1 => \vga_b[0]_INST_0_i_167_0\,
      O => \vga_b[0]_INST_0_i_291_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_316\: unisim.vcomponents.MUXF7
     port map (
      I0 => g44_b3_n_0,
      I1 => \vga_b[0]_INST_0_i_226_0\,
      O => \vga_b[0]_INST_0_i_316_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_338\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_241_0\,
      I1 => g17_b5_n_0,
      O => \vga_b[0]_INST_0_i_338_n_0\,
      S => \^sel\(3)
    );
\vga_b[0]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_14_0\,
      I1 => \vga_b[0]_INST_0_i_76_n_0\,
      O => \vga_b[0]_INST_0_i_34_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_77_n_0\,
      I1 => \vga_b[0]_INST_0_i_14_1\,
      O => \vga_b[0]_INST_0_i_35_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_79_n_0\,
      I1 => \vga_b[0]_INST_0_i_15_0\,
      I2 => \^sel\(6),
      I3 => \vga_b[0]_INST_0_i_15_1\,
      I4 => \^sel\(5),
      I5 => \vga_b[0]_INST_0_i_15_2\,
      O => \vga_b[0]_INST_0_i_36_n_0\
    );
\vga_b[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_15_n_0\,
      I1 => \vga_r[3]_0\,
      I2 => Q(0),
      I3 => \vga_b[0]_INST_0_i_17_n_0\,
      I4 => \^sel\(8),
      I5 => \vga_r[3]_1\,
      O => \h_count_reg[1]_0\
    );
\vga_b[0]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_95_n_0\,
      I1 => \vga_b[0]_INST_0_i_17_0\,
      I2 => \^sel\(6),
      I3 => \vga_b[0]_INST_0_i_17_1\,
      I4 => \^sel\(5),
      I5 => \vga_b[0]_INST_0_i_17_2\,
      O => \vga_b[0]_INST_0_i_40_n_0\
    );
\vga_b[0]_INST_0_i_45\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_111_n_0\,
      I1 => \vga_b[0]_INST_0_i_19_0\,
      O => \vga_b[0]_INST_0_i_45_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => font_addr0(4),
      I1 => C(4),
      O => \vga_b[0]_INST_0_i_49_n_0\
    );
\vga_b[0]_INST_0_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => font_addr0(3),
      I1 => C(3),
      O => \vga_b[0]_INST_0_i_50_n_0\
    );
\vga_b[0]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => g5_b0_n_0,
      I1 => \^sel\(3),
      I2 => \^sel\(5),
      I3 => \vga_b[0]_INST_0_i_118_n_0\,
      I4 => \^sel\(4),
      I5 => \vga_b[0]_INST_0_i_26_0\,
      O => \vga_b[0]_INST_0_i_54_n_0\
    );
\vga_b[0]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g47_b1_n_0,
      I1 => \vga_b[0]_INST_0_i_28_0\,
      I2 => \^sel\(4),
      I3 => \vga_b[0]_INST_0_i_28_1\,
      I4 => \^sel\(3),
      I5 => g44_b2_n_0,
      O => \vga_b[0]_INST_0_i_55_n_0\
    );
\vga_b[0]_INST_0_i_70\: unisim.vcomponents.MUXF8
     port map (
      I0 => \vga_b[0]_INST_0_i_31\,
      I1 => \vga_b[0]_INST_0_i_143_n_0\,
      O => \vga_b[0]_INST_0_i_143_0\,
      S => \^sel\(4)
    );
\vga_b[0]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_34_0\,
      I1 => \vga_b[0]_INST_0_i_165_n_0\,
      I2 => \^sel\(6),
      I3 => \vga_b[0]_INST_0_i_166_n_0\,
      I4 => \^sel\(5),
      I5 => \vga_b[0]_INST_0_i_167_n_0\,
      O => \vga_b[0]_INST_0_i_76_n_0\
    );
\vga_b[0]_INST_0_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_168_n_0\,
      I1 => \vga_b[0]_INST_0_i_35_1\,
      I2 => \^sel\(6),
      I3 => \vga_b[0]_INST_0_i_35_2\,
      I4 => \^sel\(5),
      I5 => \vga_b[0]_INST_0_i_35_3\,
      O => \vga_b[0]_INST_0_i_77_n_0\
    );
\vga_b[0]_INST_0_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \vga_b[0]_INST_0_i_36_0\,
      I1 => g46_b7_n_0,
      I2 => \^sel\(4),
      I3 => \vga_b[0]_INST_0_i_36_1\,
      I4 => \^sel\(3),
      I5 => g44_b7_n_0,
      O => \vga_b[0]_INST_0_i_79_n_0\
    );
\vga_b[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_24_n_0\,
      I1 => \vga_b[0]_INST_0_i_2_0\,
      O => \vga_b[0]_INST_0_i_8_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g51_b7_n_0,
      I1 => \vga_b[0]_INST_0_i_37\,
      I2 => \^sel\(4),
      I3 => \vga_b[0]_INST_0_i_37_0\,
      I4 => \^sel\(3),
      I5 => \vga_b[0]_INST_0_i_37_1\,
      O => g48_b7
    );
\vga_b[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vga_b[0]_INST_0_i_26_n_0\,
      I1 => \vga_b[0]_INST_0_i_27_n_0\,
      O => \vga_b[0]_INST_0_i_9_n_0\,
      S => \^sel\(7)
    );
\vga_b[0]_INST_0_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g47_b1_n_0,
      I1 => \vga_b[0]_INST_0_i_28_0\,
      I2 => \^sel\(4),
      I3 => \vga_b[0]_INST_0_i_28_1\,
      I4 => \^sel\(3),
      I5 => \^v_count_reg[0]\,
      O => \vga_b[0]_INST_0_i_95_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  port (
    hs : out STD_LOGIC;
    vs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 0 to 0 );
    inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_o_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_i_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_wen : in STD_LOGIC;
    alu_res : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_100m : in STD_LOGIC;
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    clk_25m : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  signal C : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal \C__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal display_w_addr : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal display_w_data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal font_data : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal sel : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal text_index : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal vga_controller_n_100 : STD_LOGIC;
  signal vga_controller_n_15 : STD_LOGIC;
  signal vga_controller_n_16 : STD_LOGIC;
  signal vga_controller_n_17 : STD_LOGIC;
  signal vga_controller_n_18 : STD_LOGIC;
  signal vga_controller_n_19 : STD_LOGIC;
  signal vga_controller_n_2 : STD_LOGIC;
  signal vga_controller_n_20 : STD_LOGIC;
  signal vga_controller_n_21 : STD_LOGIC;
  signal vga_controller_n_22 : STD_LOGIC;
  signal vga_controller_n_23 : STD_LOGIC;
  signal vga_controller_n_24 : STD_LOGIC;
  signal vga_controller_n_25 : STD_LOGIC;
  signal vga_controller_n_26 : STD_LOGIC;
  signal vga_controller_n_27 : STD_LOGIC;
  signal vga_controller_n_28 : STD_LOGIC;
  signal vga_controller_n_29 : STD_LOGIC;
  signal vga_controller_n_3 : STD_LOGIC;
  signal vga_controller_n_30 : STD_LOGIC;
  signal vga_controller_n_32 : STD_LOGIC;
  signal vga_controller_n_33 : STD_LOGIC;
  signal vga_controller_n_34 : STD_LOGIC;
  signal vga_controller_n_35 : STD_LOGIC;
  signal vga_controller_n_36 : STD_LOGIC;
  signal vga_controller_n_37 : STD_LOGIC;
  signal vga_controller_n_38 : STD_LOGIC;
  signal vga_controller_n_39 : STD_LOGIC;
  signal vga_controller_n_4 : STD_LOGIC;
  signal vga_controller_n_40 : STD_LOGIC;
  signal vga_controller_n_41 : STD_LOGIC;
  signal vga_controller_n_42 : STD_LOGIC;
  signal vga_controller_n_43 : STD_LOGIC;
  signal vga_controller_n_44 : STD_LOGIC;
  signal vga_controller_n_45 : STD_LOGIC;
  signal vga_controller_n_46 : STD_LOGIC;
  signal vga_controller_n_47 : STD_LOGIC;
  signal vga_controller_n_48 : STD_LOGIC;
  signal vga_controller_n_49 : STD_LOGIC;
  signal vga_controller_n_5 : STD_LOGIC;
  signal vga_controller_n_50 : STD_LOGIC;
  signal vga_controller_n_51 : STD_LOGIC;
  signal vga_controller_n_52 : STD_LOGIC;
  signal vga_controller_n_53 : STD_LOGIC;
  signal vga_controller_n_54 : STD_LOGIC;
  signal vga_controller_n_55 : STD_LOGIC;
  signal vga_controller_n_56 : STD_LOGIC;
  signal vga_controller_n_57 : STD_LOGIC;
  signal vga_controller_n_58 : STD_LOGIC;
  signal vga_controller_n_59 : STD_LOGIC;
  signal vga_controller_n_6 : STD_LOGIC;
  signal vga_controller_n_60 : STD_LOGIC;
  signal vga_controller_n_61 : STD_LOGIC;
  signal vga_controller_n_62 : STD_LOGIC;
  signal vga_controller_n_63 : STD_LOGIC;
  signal vga_controller_n_64 : STD_LOGIC;
  signal vga_controller_n_65 : STD_LOGIC;
  signal vga_controller_n_66 : STD_LOGIC;
  signal vga_controller_n_67 : STD_LOGIC;
  signal vga_controller_n_68 : STD_LOGIC;
  signal vga_controller_n_69 : STD_LOGIC;
  signal vga_controller_n_7 : STD_LOGIC;
  signal vga_controller_n_70 : STD_LOGIC;
  signal vga_controller_n_71 : STD_LOGIC;
  signal vga_controller_n_72 : STD_LOGIC;
  signal vga_controller_n_73 : STD_LOGIC;
  signal vga_controller_n_74 : STD_LOGIC;
  signal vga_controller_n_75 : STD_LOGIC;
  signal vga_controller_n_76 : STD_LOGIC;
  signal vga_controller_n_77 : STD_LOGIC;
  signal vga_controller_n_79 : STD_LOGIC;
  signal vga_controller_n_8 : STD_LOGIC;
  signal vga_controller_n_80 : STD_LOGIC;
  signal vga_controller_n_81 : STD_LOGIC;
  signal vga_controller_n_82 : STD_LOGIC;
  signal vga_controller_n_83 : STD_LOGIC;
  signal vga_controller_n_84 : STD_LOGIC;
  signal vga_controller_n_85 : STD_LOGIC;
  signal vga_controller_n_89 : STD_LOGIC;
  signal vga_controller_n_9 : STD_LOGIC;
  signal vga_controller_n_90 : STD_LOGIC;
  signal vga_controller_n_91 : STD_LOGIC;
  signal vga_controller_n_92 : STD_LOGIC;
  signal vga_controller_n_93 : STD_LOGIC;
  signal vga_controller_n_94 : STD_LOGIC;
  signal vga_controller_n_95 : STD_LOGIC;
  signal vga_controller_n_96 : STD_LOGIC;
  signal vga_controller_n_97 : STD_LOGIC;
  signal vga_controller_n_98 : STD_LOGIC;
  signal vga_controller_n_99 : STD_LOGIC;
  signal vga_debugger_n_0 : STD_LOGIC;
  signal vga_debugger_n_10 : STD_LOGIC;
  signal vga_debugger_n_11 : STD_LOGIC;
  signal vga_debugger_n_12 : STD_LOGIC;
  signal vga_debugger_n_13 : STD_LOGIC;
  signal vga_debugger_n_14 : STD_LOGIC;
  signal vga_debugger_n_15 : STD_LOGIC;
  signal vga_debugger_n_16 : STD_LOGIC;
  signal vga_debugger_n_17 : STD_LOGIC;
  signal vga_debugger_n_18 : STD_LOGIC;
  signal vga_debugger_n_19 : STD_LOGIC;
  signal vga_debugger_n_20 : STD_LOGIC;
  signal vga_debugger_n_21 : STD_LOGIC;
  signal vga_debugger_n_22 : STD_LOGIC;
  signal vga_debugger_n_23 : STD_LOGIC;
  signal vga_debugger_n_24 : STD_LOGIC;
  signal vga_debugger_n_25 : STD_LOGIC;
  signal vga_debugger_n_26 : STD_LOGIC;
  signal vga_debugger_n_27 : STD_LOGIC;
  signal vga_debugger_n_28 : STD_LOGIC;
  signal vga_debugger_n_29 : STD_LOGIC;
  signal vga_debugger_n_30 : STD_LOGIC;
  signal vga_debugger_n_31 : STD_LOGIC;
  signal vga_debugger_n_32 : STD_LOGIC;
  signal vga_debugger_n_33 : STD_LOGIC;
  signal vga_debugger_n_34 : STD_LOGIC;
  signal vga_debugger_n_35 : STD_LOGIC;
  signal vga_debugger_n_36 : STD_LOGIC;
  signal vga_debugger_n_37 : STD_LOGIC;
  signal vga_debugger_n_38 : STD_LOGIC;
  signal vga_debugger_n_39 : STD_LOGIC;
  signal vga_debugger_n_40 : STD_LOGIC;
  signal vga_debugger_n_41 : STD_LOGIC;
  signal vga_debugger_n_42 : STD_LOGIC;
  signal vga_debugger_n_43 : STD_LOGIC;
  signal vga_debugger_n_44 : STD_LOGIC;
  signal vga_debugger_n_45 : STD_LOGIC;
  signal vga_debugger_n_46 : STD_LOGIC;
  signal vga_debugger_n_47 : STD_LOGIC;
  signal vga_debugger_n_48 : STD_LOGIC;
  signal vga_debugger_n_49 : STD_LOGIC;
  signal vga_debugger_n_50 : STD_LOGIC;
  signal vga_debugger_n_51 : STD_LOGIC;
  signal vga_debugger_n_52 : STD_LOGIC;
  signal vga_debugger_n_53 : STD_LOGIC;
  signal vga_debugger_n_54 : STD_LOGIC;
  signal vga_debugger_n_55 : STD_LOGIC;
  signal vga_debugger_n_56 : STD_LOGIC;
  signal vga_debugger_n_57 : STD_LOGIC;
  signal vga_debugger_n_58 : STD_LOGIC;
  signal vga_debugger_n_59 : STD_LOGIC;
  signal vga_debugger_n_6 : STD_LOGIC;
  signal vga_debugger_n_60 : STD_LOGIC;
  signal vga_debugger_n_61 : STD_LOGIC;
  signal vga_debugger_n_62 : STD_LOGIC;
  signal vga_debugger_n_63 : STD_LOGIC;
  signal vga_debugger_n_64 : STD_LOGIC;
  signal vga_debugger_n_65 : STD_LOGIC;
  signal vga_debugger_n_66 : STD_LOGIC;
  signal vga_debugger_n_67 : STD_LOGIC;
  signal vga_debugger_n_68 : STD_LOGIC;
  signal vga_debugger_n_69 : STD_LOGIC;
  signal vga_debugger_n_7 : STD_LOGIC;
  signal vga_debugger_n_70 : STD_LOGIC;
  signal vga_debugger_n_71 : STD_LOGIC;
  signal vga_debugger_n_72 : STD_LOGIC;
  signal vga_debugger_n_73 : STD_LOGIC;
  signal vga_debugger_n_74 : STD_LOGIC;
  signal vga_debugger_n_75 : STD_LOGIC;
  signal vga_debugger_n_76 : STD_LOGIC;
  signal vga_debugger_n_8 : STD_LOGIC;
  signal vga_debugger_n_9 : STD_LOGIC;
  signal vga_display_n_10 : STD_LOGIC;
  signal vga_display_n_11 : STD_LOGIC;
  signal vga_display_n_14 : STD_LOGIC;
  signal vga_display_n_15 : STD_LOGIC;
  signal vga_display_n_16 : STD_LOGIC;
  signal vga_display_n_17 : STD_LOGIC;
  signal vga_display_n_18 : STD_LOGIC;
  signal vga_display_n_19 : STD_LOGIC;
  signal vga_display_n_20 : STD_LOGIC;
  signal vga_display_n_21 : STD_LOGIC;
  signal vga_display_n_9 : STD_LOGIC;
begin
vga_controller: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaController
     port map (
      ADDRC(5 downto 3) => text_index(5 downto 3),
      ADDRC(2) => vga_controller_n_89,
      ADDRC(1) => vga_controller_n_90,
      ADDRC(0) => vga_controller_n_91,
      C(4 downto 3) => C(8 downto 7),
      C(2 downto 0) => C(5 downto 3),
      \C__0\(0) => \C__0\(2),
      Q(5) => vga_controller_n_2,
      Q(4) => vga_controller_n_3,
      Q(3) => vga_controller_n_4,
      Q(2) => vga_controller_n_5,
      Q(1) => vga_controller_n_6,
      Q(0) => vga_controller_n_7,
      S(2) => vga_display_n_19,
      S(1) => vga_display_n_20,
      S(0) => vga_display_n_21,
      clk_25m => clk_25m,
      g17_b2_0 => vga_controller_n_52,
      g17_b6_0 => vga_controller_n_65,
      g19_b5_0 => vga_controller_n_62,
      g1_b0_0 => vga_controller_n_42,
      g1_b1_0 => vga_controller_n_47,
      g1_b6_0 => vga_controller_n_64,
      g21_b6_0 => vga_controller_n_66,
      g25_b6_0 => vga_controller_n_67,
      g47_b3_0 => vga_controller_n_60,
      \h_count_reg[2]_0\ => vga_controller_n_79,
      \h_count_reg[3]_0\ => vga_controller_n_80,
      \h_count_reg[4]_0\ => vga_controller_n_82,
      \h_count_reg[5]_0\ => vga_controller_n_81,
      \h_count_reg[5]_1\ => vga_controller_n_83,
      \h_count_reg[5]_2\(2) => vga_controller_n_92,
      \h_count_reg[5]_2\(1) => vga_controller_n_93,
      \h_count_reg[5]_2\(0) => vga_controller_n_94,
      \h_count_reg[5]_3\(2) => vga_controller_n_95,
      \h_count_reg[5]_3\(1) => vga_controller_n_96,
      \h_count_reg[5]_3\(0) => vga_controller_n_97,
      \h_count_reg[5]_4\(2) => vga_controller_n_98,
      \h_count_reg[5]_4\(1) => vga_controller_n_99,
      \h_count_reg[5]_4\(0) => vga_controller_n_100,
      \h_count_reg[8]_0\ => vga_controller_n_9,
      \h_count_reg[8]_1\ => vga_controller_n_84,
      \h_count_reg[8]_2\ => vga_controller_n_85,
      hs => hs,
      rst => rst,
      sel(8 downto 0) => sel(11 downto 3),
      text_index(5 downto 0) => text_index(11 downto 6),
      \v_count_reg[0]_0\ => vga_controller_n_8,
      \v_count_reg[0]_1\ => vga_controller_n_16,
      \v_count_reg[0]_10\ => vga_controller_n_27,
      \v_count_reg[0]_11\ => vga_controller_n_28,
      \v_count_reg[0]_12\ => vga_controller_n_29,
      \v_count_reg[0]_13\ => vga_controller_n_30,
      \v_count_reg[0]_14\ => vga_controller_n_32,
      \v_count_reg[0]_15\ => vga_controller_n_33,
      \v_count_reg[0]_16\ => vga_controller_n_34,
      \v_count_reg[0]_17\ => vga_controller_n_35,
      \v_count_reg[0]_18\ => vga_controller_n_36,
      \v_count_reg[0]_19\ => vga_controller_n_37,
      \v_count_reg[0]_2\ => vga_controller_n_17,
      \v_count_reg[0]_20\ => vga_controller_n_38,
      \v_count_reg[0]_21\ => vga_controller_n_39,
      \v_count_reg[0]_22\ => vga_controller_n_40,
      \v_count_reg[0]_23\ => vga_controller_n_41,
      \v_count_reg[0]_3\ => vga_controller_n_18,
      \v_count_reg[0]_4\ => vga_controller_n_19,
      \v_count_reg[0]_5\ => vga_controller_n_22,
      \v_count_reg[0]_6\ => vga_controller_n_23,
      \v_count_reg[0]_7\ => vga_controller_n_24,
      \v_count_reg[0]_8\ => vga_controller_n_25,
      \v_count_reg[0]_9\ => vga_controller_n_26,
      \v_count_reg[1]_0\ => vga_controller_n_20,
      \v_count_reg[1]_1\ => vga_controller_n_21,
      \v_count_reg[5]_0\ => vga_controller_n_15,
      \vga_b[0]_INST_0_i_110_0\ => vga_controller_n_56,
      \vga_b[0]_INST_0_i_115_0\ => vga_display_n_9,
      \vga_b[0]_INST_0_i_121_0\ => vga_controller_n_55,
      \vga_b[0]_INST_0_i_123_0\ => vga_controller_n_54,
      \vga_b[0]_INST_0_i_125_0\ => vga_controller_n_53,
      \vga_b[0]_INST_0_i_12_0\ => vga_display_n_11,
      \vga_b[0]_INST_0_i_15\ => vga_display_n_16,
      \vga_b[0]_INST_0_i_163\ => vga_controller_n_63,
      \vga_b[0]_INST_0_i_175_0\ => vga_controller_n_76,
      \vga_b[0]_INST_0_i_177_0\ => vga_controller_n_75,
      \vga_b[0]_INST_0_i_179_0\ => vga_controller_n_74,
      \vga_b[0]_INST_0_i_18_0\ => vga_display_n_10,
      \vga_b[0]_INST_0_i_197_0\ => vga_controller_n_50,
      \vga_b[0]_INST_0_i_199_0\ => vga_controller_n_49,
      \vga_b[0]_INST_0_i_201_0\ => vga_controller_n_48,
      \vga_b[0]_INST_0_i_233_0\ => vga_controller_n_61,
      \vga_b[0]_INST_0_i_285_0\ => vga_controller_n_68,
      \vga_b[0]_INST_0_i_293_0\ => vga_controller_n_71,
      \vga_b[0]_INST_0_i_295_0\ => vga_controller_n_70,
      \vga_b[0]_INST_0_i_297_0\ => vga_controller_n_69,
      \vga_b[0]_INST_0_i_319_0\ => vga_controller_n_59,
      \vga_b[0]_INST_0_i_31_0\ => vga_controller_n_51,
      \vga_b[0]_INST_0_i_321_0\ => vga_controller_n_58,
      \vga_b[0]_INST_0_i_323_0\ => vga_controller_n_57,
      \vga_b[0]_INST_0_i_34\ => vga_display_n_15,
      \vga_b[0]_INST_0_i_39_0\ => vga_controller_n_73,
      \vga_b[0]_INST_0_i_43_0\ => vga_controller_n_46,
      \vga_b[0]_INST_0_i_46_0\ => vga_display_n_14,
      \vga_b[0]_INST_0_i_53_0\ => vga_controller_n_43,
      \vga_b[0]_INST_0_i_62_0\ => vga_controller_n_44,
      \vga_b[0]_INST_0_i_62_1\ => vga_controller_n_45,
      \vga_b[0]_INST_0_i_86\ => vga_controller_n_72,
      \vga_b[0]_INST_0_i_86_0\ => vga_controller_n_77,
      vga_r(0) => vga_r(0),
      \vga_r[3]\(1) => font_data(6),
      \vga_r[3]\(0) => font_data(3),
      \vga_r[3]_0\ => vga_display_n_17,
      \vga_r[3]_1\ => vga_display_n_18,
      vs => vs
    );
vga_debugger: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDebugger
     port map (
      ADDRD(2) => vga_debugger_n_6,
      ADDRD(1) => vga_debugger_n_7,
      ADDRD(0) => vga_debugger_n_8,
      alu_res(31 downto 0) => alu_res(31 downto 0),
      clk_100m => clk_100m,
      \display_addr_reg[0]_rep__1_0\ => vga_debugger_n_76,
      \display_addr_reg[10]_0\ => vga_debugger_n_0,
      \display_addr_reg[10]_1\ => vga_debugger_n_12,
      \display_addr_reg[10]_2\ => vga_debugger_n_43,
      \display_addr_reg[10]_3\ => vga_debugger_n_44,
      \display_addr_reg[10]_4\ => vga_debugger_n_45,
      \display_addr_reg[10]_5\ => vga_debugger_n_54,
      \display_addr_reg[11]_0\ => vga_debugger_n_55,
      \display_addr_reg[11]_1\ => vga_debugger_n_56,
      \display_addr_reg[11]_2\ => vga_debugger_n_57,
      \display_addr_reg[11]_3\ => vga_debugger_n_73,
      \display_addr_reg[11]_4\ => vga_debugger_n_74,
      \display_addr_reg[11]_5\ => vga_debugger_n_75,
      \display_addr_reg[1]_rep_0\(1) => vga_debugger_n_9,
      \display_addr_reg[1]_rep_0\(0) => vga_debugger_n_10,
      \display_addr_reg[3]_0\ => vga_debugger_n_58,
      \display_addr_reg[3]_1\ => vga_debugger_n_59,
      \display_addr_reg[3]_2\ => vga_debugger_n_60,
      \display_addr_reg[3]_3\ => vga_debugger_n_61,
      \display_addr_reg[3]_4\ => vga_debugger_n_62,
      \display_addr_reg[3]_5\ => vga_debugger_n_63,
      \display_addr_reg[3]_6\ => vga_debugger_n_72,
      \display_addr_reg[3]_rep_0\(0) => vga_debugger_n_14,
      \display_addr_reg[3]_rep_1\ => vga_debugger_n_46,
      \display_addr_reg[3]_rep_2\ => vga_debugger_n_47,
      \display_addr_reg[3]_rep_3\ => vga_debugger_n_48,
      \display_addr_reg[3]_rep_4\ => vga_debugger_n_49,
      \display_addr_reg[3]_rep_5\ => vga_debugger_n_50,
      \display_addr_reg[3]_rep_6\ => vga_debugger_n_51,
      \display_addr_reg[3]_rep_7\ => vga_debugger_n_52,
      \display_addr_reg[3]_rep_8\ => vga_debugger_n_53,
      \display_addr_reg[3]_rep__0_0\ => vga_debugger_n_11,
      \display_addr_reg[3]_rep__0_1\ => vga_debugger_n_28,
      \display_addr_reg[3]_rep__0_10\ => vga_debugger_n_66,
      \display_addr_reg[3]_rep__0_11\ => vga_debugger_n_67,
      \display_addr_reg[3]_rep__0_12\ => vga_debugger_n_68,
      \display_addr_reg[3]_rep__0_13\ => vga_debugger_n_69,
      \display_addr_reg[3]_rep__0_14\ => vga_debugger_n_70,
      \display_addr_reg[3]_rep__0_15\ => vga_debugger_n_71,
      \display_addr_reg[3]_rep__0_2\ => vga_debugger_n_34,
      \display_addr_reg[3]_rep__0_3\ => vga_debugger_n_35,
      \display_addr_reg[3]_rep__0_4\ => vga_debugger_n_38,
      \display_addr_reg[3]_rep__0_5\ => vga_debugger_n_39,
      \display_addr_reg[3]_rep__0_6\ => vga_debugger_n_40,
      \display_addr_reg[3]_rep__0_7\ => vga_debugger_n_41,
      \display_addr_reg[3]_rep__0_8\ => vga_debugger_n_64,
      \display_addr_reg[3]_rep__0_9\ => vga_debugger_n_65,
      \display_addr_reg[5]_0\(4 downto 0) => display_w_addr(5 downto 1),
      \display_addr_reg[6]_0\ => vga_debugger_n_23,
      \display_addr_reg[6]_1\ => vga_debugger_n_24,
      \display_addr_reg[6]_2\ => vga_debugger_n_25,
      \display_addr_reg[6]_3\ => vga_debugger_n_26,
      \display_addr_reg[6]_4\ => vga_debugger_n_27,
      \display_addr_reg[6]_5\ => vga_debugger_n_29,
      \display_addr_reg[7]_0\ => vga_debugger_n_13,
      \display_addr_reg[7]_1\ => vga_debugger_n_15,
      \display_addr_reg[7]_2\ => vga_debugger_n_16,
      \display_addr_reg[7]_3\ => vga_debugger_n_17,
      \display_addr_reg[7]_4\ => vga_debugger_n_30,
      \display_addr_reg[7]_5\ => vga_debugger_n_31,
      \display_addr_reg[8]_0\ => vga_debugger_n_18,
      \display_addr_reg[8]_1\ => vga_debugger_n_19,
      \display_addr_reg[8]_2\ => vga_debugger_n_20,
      \display_addr_reg[8]_3\ => vga_debugger_n_32,
      \display_addr_reg[8]_4\ => vga_debugger_n_33,
      \display_addr_reg[9]_0\ => vga_debugger_n_21,
      \display_addr_reg[9]_1\ => vga_debugger_n_22,
      \display_addr_reg[9]_2\ => vga_debugger_n_36,
      \display_addr_reg[9]_3\ => vga_debugger_n_37,
      \display_addr_reg[9]_4\ => vga_debugger_n_42,
      display_w_data(4) => display_w_data(6),
      display_w_data(3 downto 0) => display_w_data(3 downto 0),
      dmem_addr(31 downto 0) => dmem_addr(31 downto 0),
      dmem_i_data(31 downto 0) => dmem_i_data(31 downto 0),
      dmem_o_data(31 downto 0) => dmem_o_data(31 downto 0),
      inst(31 downto 0) => inst(31 downto 0),
      mem_wen => mem_wen,
      pc(31 downto 0) => pc(31 downto 0)
    );
vga_display: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VgaDisplay
     port map (
      ADDRC(2) => vga_controller_n_89,
      ADDRC(1) => vga_controller_n_90,
      ADDRC(0) => vga_controller_n_91,
      ADDRD(5 downto 4) => display_w_addr(5 downto 4),
      ADDRD(3) => vga_debugger_n_6,
      ADDRD(2 downto 1) => display_w_addr(2 downto 1),
      ADDRD(0) => vga_debugger_n_8,
      C(4 downto 3) => C(8 downto 7),
      C(2 downto 0) => C(5 downto 3),
      \C__0\(0) => \C__0\(2),
      Q(5) => vga_controller_n_2,
      Q(4) => vga_controller_n_3,
      Q(3) => vga_controller_n_4,
      Q(2) => vga_controller_n_5,
      Q(1) => vga_controller_n_6,
      Q(0) => vga_controller_n_7,
      S(2) => vga_display_n_19,
      S(1) => vga_display_n_20,
      S(0) => vga_display_n_21,
      clk_100m => clk_100m,
      display_data_reg_0_63_0_2_i_5 => vga_controller_n_82,
      display_data_reg_0_63_0_2_i_5_0 => vga_controller_n_9,
      display_data_reg_0_63_0_2_i_5_1 => vga_controller_n_83,
      display_data_reg_0_63_0_2_i_5_2 => vga_controller_n_84,
      display_data_reg_0_63_0_2_i_5_3 => vga_controller_n_85,
      display_w_data(4) => display_w_data(6),
      display_w_data(3 downto 0) => display_w_data(3 downto 0),
      g0_b0_i_4_0 => vga_controller_n_15,
      g48_b7 => vga_display_n_16,
      \h_count_reg[1]\ => vga_display_n_17,
      \h_count_reg[1]_0\ => vga_display_n_18,
      sel(8 downto 0) => sel(11 downto 3),
      \text_ascii_carry__0_i_45_0\ => vga_debugger_n_75,
      \text_ascii_carry__0_i_45_1\ => vga_debugger_n_64,
      \text_ascii_carry__0_i_45_2\ => vga_debugger_n_65,
      \text_ascii_carry__0_i_45_3\ => vga_debugger_n_19,
      \text_ascii_carry__0_i_46_0\ => vga_debugger_n_66,
      \text_ascii_carry__0_i_46_1\ => vga_debugger_n_16,
      \text_ascii_carry__0_i_46_2\ => vga_debugger_n_26,
      \text_ascii_carry__0_i_46_3\ => vga_debugger_n_67,
      \text_ascii_carry__0_i_47_0\ => vga_debugger_n_68,
      \text_ascii_carry__0_i_47_1\ => vga_debugger_n_15,
      \text_ascii_carry__0_i_47_2\ => vga_debugger_n_25,
      \text_ascii_carry__0_i_47_3\ => vga_debugger_n_69,
      \text_ascii_carry__0_i_48_0\ => vga_debugger_n_24,
      \text_ascii_carry__0_i_48_1\ => vga_debugger_n_70,
      \text_ascii_carry__0_i_48_2\ => vga_debugger_n_71,
      \text_ascii_carry__0_i_49_0\ => vga_debugger_n_55,
      \text_ascii_carry__0_i_49_1\ => vga_debugger_n_56,
      \text_ascii_carry__0_i_49_2\ => vga_debugger_n_57,
      \text_ascii_carry__0_i_49_3\ => vga_debugger_n_72,
      \text_ascii_carry__0_i_50_0\ => vga_debugger_n_73,
      \text_ascii_carry__0_i_50_1\ => vga_debugger_n_58,
      \text_ascii_carry__0_i_50_2\ => vga_debugger_n_59,
      \text_ascii_carry__0_i_50_3\ => vga_debugger_n_22,
      \text_ascii_carry__0_i_51_0\ => vga_debugger_n_74,
      \text_ascii_carry__0_i_51_1\ => vga_debugger_n_60,
      \text_ascii_carry__0_i_51_2\ => vga_debugger_n_61,
      \text_ascii_carry__0_i_51_3\ => vga_debugger_n_20,
      \text_ascii_carry__0_i_52_0\ => vga_debugger_n_62,
      \text_ascii_carry__0_i_52_1\ => vga_debugger_n_17,
      \text_ascii_carry__0_i_52_2\ => vga_debugger_n_27,
      \text_ascii_carry__0_i_52_3\ => vga_debugger_n_63,
      \text_ascii_carry__0_i_53_0\ => vga_debugger_n_43,
      \text_ascii_carry__0_i_53_1\ => vga_debugger_n_44,
      \text_ascii_carry__0_i_53_2\ => vga_debugger_n_45,
      \text_ascii_carry__0_i_53_3\ => vga_debugger_n_52,
      \text_ascii_carry__0_i_54_0\ => vga_debugger_n_53,
      \text_ascii_carry__0_i_54_1\ => vga_debugger_n_46,
      \text_ascii_carry__0_i_54_2\ => vga_debugger_n_47,
      \text_ascii_carry__0_i_54_3\ => vga_debugger_n_21,
      \text_ascii_carry__0_i_55_0\ => vga_debugger_n_54,
      \text_ascii_carry__0_i_55_1\ => vga_debugger_n_48,
      \text_ascii_carry__0_i_55_2\ => vga_debugger_n_49,
      \text_ascii_carry__0_i_55_3\ => vga_debugger_n_18,
      \text_ascii_carry__0_i_56_0\ => vga_debugger_n_50,
      \text_ascii_carry__0_i_56_1\ => vga_debugger_n_13,
      \text_ascii_carry__0_i_56_2\ => vga_debugger_n_23,
      \text_ascii_carry__0_i_56_3\ => vga_debugger_n_51,
      \text_ascii_carry__0_i_57_0\ => vga_debugger_n_28,
      \text_ascii_carry__0_i_57_1\ => vga_debugger_n_29,
      \text_ascii_carry__0_i_57_2\ => vga_debugger_n_30,
      \text_ascii_carry__0_i_57_3\ => vga_debugger_n_31,
      \text_ascii_carry__0_i_57_4\ => vga_debugger_n_76,
      \text_ascii_carry__0_i_57_5\ => vga_controller_n_79,
      \text_ascii_carry__0_i_57_6\ => vga_controller_n_80,
      \text_ascii_carry__0_i_57_7\ => vga_controller_n_81,
      \text_ascii_carry__0_i_58_0\ => vga_debugger_n_32,
      \text_ascii_carry__0_i_58_1\ => vga_debugger_n_33,
      \text_ascii_carry__0_i_58_2\ => vga_debugger_n_34,
      \text_ascii_carry__0_i_58_3\ => vga_debugger_n_35,
      \text_ascii_carry__0_i_59_0\ => vga_debugger_n_36,
      \text_ascii_carry__0_i_59_1\ => vga_debugger_n_37,
      \text_ascii_carry__0_i_59_2\ => vga_debugger_n_38,
      \text_ascii_carry__0_i_59_3\ => vga_debugger_n_41,
      \text_ascii_carry__0_i_60_0\ => vga_debugger_n_42,
      \text_ascii_carry__0_i_60_1\ => vga_debugger_n_39,
      \text_ascii_carry__0_i_60_2\ => vga_debugger_n_40,
      \text_ascii_carry__0_i_60_3\ => vga_debugger_n_12,
      \text_ascii_carry__0_i_64_0\ => vga_debugger_n_0,
      \text_ascii_carry__0_i_65_0\(2) => vga_controller_n_95,
      \text_ascii_carry__0_i_65_0\(1) => vga_controller_n_96,
      \text_ascii_carry__0_i_65_0\(0) => vga_controller_n_97,
      \text_ascii_carry__0_i_68_0\(0) => vga_debugger_n_9,
      \text_ascii_carry__0_i_73_0\(2) => vga_controller_n_98,
      \text_ascii_carry__0_i_73_0\(1) => vga_controller_n_99,
      \text_ascii_carry__0_i_73_0\(0) => vga_controller_n_100,
      text_ascii_carry_i_87_0 => vga_debugger_n_11,
      text_ascii_carry_i_88_0(0) => display_w_addr(3),
      text_ascii_carry_i_92_0(1) => vga_debugger_n_14,
      text_ascii_carry_i_92_0(0) => vga_debugger_n_10,
      text_ascii_carry_i_96_0(2) => vga_controller_n_92,
      text_ascii_carry_i_96_0(1) => vga_controller_n_93,
      text_ascii_carry_i_96_0(0) => vga_controller_n_94,
      text_ascii_carry_i_96_1(0) => vga_debugger_n_7,
      text_index(8 downto 0) => text_index(11 downto 3),
      \v_count_reg[0]\ => vga_display_n_9,
      \vga_b[0]_INST_0_i_104_0\ => vga_controller_n_23,
      \vga_b[0]_INST_0_i_10_0\ => vga_controller_n_55,
      \vga_b[0]_INST_0_i_10_1\ => vga_controller_n_54,
      \vga_b[0]_INST_0_i_10_2\ => vga_controller_n_53,
      \vga_b[0]_INST_0_i_111_0\ => vga_controller_n_60,
      \vga_b[0]_INST_0_i_114\ => vga_controller_n_62,
      \vga_b[0]_INST_0_i_143_0\ => vga_display_n_11,
      \vga_b[0]_INST_0_i_143_1\ => vga_controller_n_19,
      \vga_b[0]_INST_0_i_14_0\ => vga_controller_n_63,
      \vga_b[0]_INST_0_i_14_1\ => vga_controller_n_72,
      \vga_b[0]_INST_0_i_15_0\ => vga_controller_n_76,
      \vga_b[0]_INST_0_i_15_1\ => vga_controller_n_75,
      \vga_b[0]_INST_0_i_15_2\ => vga_controller_n_74,
      \vga_b[0]_INST_0_i_163_0\ => vga_controller_n_24,
      \vga_b[0]_INST_0_i_165_0\ => vga_controller_n_30,
      \vga_b[0]_INST_0_i_166_0\ => vga_controller_n_29,
      \vga_b[0]_INST_0_i_167_0\ => vga_controller_n_38,
      \vga_b[0]_INST_0_i_17_0\ => vga_controller_n_50,
      \vga_b[0]_INST_0_i_17_1\ => vga_controller_n_49,
      \vga_b[0]_INST_0_i_17_2\ => vga_controller_n_48,
      \vga_b[0]_INST_0_i_19_0\ => vga_controller_n_61,
      \vga_b[0]_INST_0_i_209_0\ => vga_display_n_10,
      \vga_b[0]_INST_0_i_226_0\ => vga_controller_n_34,
      \vga_b[0]_INST_0_i_241_0\ => vga_controller_n_26,
      \vga_b[0]_INST_0_i_242\ => vga_controller_n_16,
      \vga_b[0]_INST_0_i_24_0\ => vga_controller_n_18,
      \vga_b[0]_INST_0_i_26_0\ => vga_controller_n_42,
      \vga_b[0]_INST_0_i_283_0\ => vga_display_n_15,
      \vga_b[0]_INST_0_i_287_0\ => vga_controller_n_8,
      \vga_b[0]_INST_0_i_28_0\ => vga_controller_n_36,
      \vga_b[0]_INST_0_i_28_1\ => vga_controller_n_33,
      \vga_b[0]_INST_0_i_2_0\ => vga_controller_n_43,
      \vga_b[0]_INST_0_i_2_1\ => vga_controller_n_44,
      \vga_b[0]_INST_0_i_31\ => vga_controller_n_52,
      \vga_b[0]_INST_0_i_316_0\ => vga_controller_n_17,
      \vga_b[0]_INST_0_i_338_0\ => vga_controller_n_21,
      \vga_b[0]_INST_0_i_339\ => vga_display_n_14,
      \vga_b[0]_INST_0_i_34_0\ => vga_controller_n_68,
      \vga_b[0]_INST_0_i_35_0\(1) => font_data(6),
      \vga_b[0]_INST_0_i_35_0\(0) => font_data(3),
      \vga_b[0]_INST_0_i_35_1\ => vga_controller_n_71,
      \vga_b[0]_INST_0_i_35_2\ => vga_controller_n_70,
      \vga_b[0]_INST_0_i_35_3\ => vga_controller_n_69,
      \vga_b[0]_INST_0_i_36_0\ => vga_controller_n_39,
      \vga_b[0]_INST_0_i_36_1\ => vga_controller_n_35,
      \vga_b[0]_INST_0_i_37\ => vga_controller_n_41,
      \vga_b[0]_INST_0_i_37_0\ => vga_controller_n_40,
      \vga_b[0]_INST_0_i_37_1\ => vga_controller_n_37,
      \vga_b[0]_INST_0_i_42\ => vga_controller_n_47,
      \vga_b[0]_INST_0_i_45_0\ => vga_controller_n_59,
      \vga_b[0]_INST_0_i_45_1\ => vga_controller_n_58,
      \vga_b[0]_INST_0_i_45_2\ => vga_controller_n_57,
      \vga_b[0]_INST_0_i_4_0\ => vga_controller_n_45,
      \vga_b[0]_INST_0_i_4_1\ => vga_controller_n_77,
      \vga_b[0]_INST_0_i_5\ => vga_controller_n_56,
      \vga_b[0]_INST_0_i_54_0\ => vga_controller_n_20,
      \vga_b[0]_INST_0_i_54_1\ => vga_controller_n_22,
      \vga_b[0]_INST_0_i_70_0\ => vga_controller_n_27,
      \vga_b[0]_INST_0_i_75\ => vga_controller_n_64,
      \vga_b[0]_INST_0_i_76_0\ => vga_controller_n_65,
      \vga_b[0]_INST_0_i_76_1\ => vga_controller_n_66,
      \vga_b[0]_INST_0_i_76_2\ => vga_controller_n_67,
      \vga_b[0]_INST_0_i_8_0\ => vga_controller_n_32,
      \vga_b[0]_INST_0_i_9_0\ => vga_controller_n_28,
      \vga_b[0]_INST_0_i_9_1\ => vga_controller_n_25,
      \vga_r[3]\ => vga_controller_n_51,
      \vga_r[3]_0\ => vga_controller_n_73,
      \vga_r[3]_1\ => vga_controller_n_46
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_25m : in STD_LOGIC;
    clk_100m : in STD_LOGIC;
    rst : in STD_LOGIC;
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_res : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_wen : in STD_LOGIC;
    dmem_o_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_i_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hs : out STD_LOGIC;
    vs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "VGA_0,VGA,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "VGA,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^vga_r\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  vga_b(3) <= \^vga_r\(3);
  vga_b(2) <= \^vga_r\(3);
  vga_b(1) <= \^vga_r\(3);
  vga_b(0) <= \^vga_r\(3);
  vga_g(3) <= \^vga_r\(3);
  vga_g(2) <= \^vga_r\(3);
  vga_g(1) <= \^vga_r\(3);
  vga_g(0) <= \^vga_r\(3);
  vga_r(3) <= \^vga_r\(3);
  vga_r(2) <= \^vga_r\(3);
  vga_r(1) <= \^vga_r\(3);
  vga_r(0) <= \^vga_r\(3);
\inst__0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
     port map (
      alu_res(31 downto 0) => alu_res(31 downto 0),
      clk_100m => clk_100m,
      clk_25m => clk_25m,
      dmem_addr(31 downto 0) => dmem_addr(31 downto 0),
      dmem_i_data(31 downto 0) => dmem_i_data(31 downto 0),
      dmem_o_data(31 downto 0) => dmem_o_data(31 downto 0),
      hs => hs,
      inst(31 downto 0) => inst(31 downto 0),
      mem_wen => mem_wen,
      pc(31 downto 0) => pc(31 downto 0),
      rst => rst,
      vga_r(0) => \^vga_r\(3),
      vs => vs
    );
end STRUCTURE;
