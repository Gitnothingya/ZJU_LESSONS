-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  1 15:45:21 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Counter_x_0_sim_netlist.vhdl
-- Design      : Counter_x_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter_x is
  port (
    clk : in STD_LOGIC;
    clk0 : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    clk2 : in STD_LOGIC;
    counter0_OUT : out STD_LOGIC;
    counter1_OUT : out STD_LOGIC;
    counter2_OUT : out STD_LOGIC;
    counter_we : in STD_LOGIC;
    rst : in STD_LOGIC;
    counter_ch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    counter_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_val : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter_x;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter_x is
  signal M0_i_1_n_0 : STD_LOGIC;
  signal M0_reg_n_0 : STD_LOGIC;
  signal M1_i_1_n_0 : STD_LOGIC;
  signal M1_reg_n_0 : STD_LOGIC;
  signal M2_i_1_n_0 : STD_LOGIC;
  signal M2_reg_n_0 : STD_LOGIC;
  signal clr0_i_1_n_0 : STD_LOGIC;
  signal clr0_reg_n_0 : STD_LOGIC;
  signal clr1_i_1_n_0 : STD_LOGIC;
  signal clr1_reg_n_0 : STD_LOGIC;
  signal clr2_i_1_n_0 : STD_LOGIC;
  signal clr2_reg_n_0 : STD_LOGIC;
  signal counter0 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal counter00 : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal \counter0[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[12]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[16]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[17]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[20]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[21]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[22]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[24]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[25]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[26]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[27]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[28]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[29]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[30]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[30]_i_2_n_0\ : STD_LOGIC;
  signal \counter0[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter0[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[32]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[32]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[32]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[32]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[32]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[4]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter0[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter0[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter0[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter0[8]_i_6_n_0\ : STD_LOGIC;
  signal \counter0[9]_i_1_n_0\ : STD_LOGIC;
  signal counter0_Lock : STD_LOGIC;
  signal \counter0_Lock_reg_n_0_\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^counter0_out\ : STD_LOGIC;
  signal \counter0_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[32]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[32]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[32]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter0_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter0_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter0_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter0_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal counter1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter10 : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal \counter1[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[12]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[16]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[20]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[24]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[28]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[30]_i_2_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[32]_i_1_n_0\ : STD_LOGIC;
  signal \counter1[32]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[32]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[32]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[32]_i_7_n_0\ : STD_LOGIC;
  signal \counter1[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[4]_i_6_n_0\ : STD_LOGIC;
  signal \counter1[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[8]_i_6_n_0\ : STD_LOGIC;
  signal counter1_Lock : STD_LOGIC;
  signal \counter1_Lock_reg_n_0_\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^counter1_out\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[32]_i_3_n_1\ : STD_LOGIC;
  signal \counter1_reg[32]_i_3_n_2\ : STD_LOGIC;
  signal \counter1_reg[32]_i_3_n_3\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal counter2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter20 : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal \counter2[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[12]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[16]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[17]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[20]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[21]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[22]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[24]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[25]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[26]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[27]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[28]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[29]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[30]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[30]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[32]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[32]_i_2_n_0\ : STD_LOGIC;
  signal \counter2[32]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[32]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[32]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[32]_i_7_n_0\ : STD_LOGIC;
  signal \counter2[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[4]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[8]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[9]_i_1_n_0\ : STD_LOGIC;
  signal counter2_Lock : STD_LOGIC;
  signal \counter2_Lock_reg_n_0_\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^counter2_out\ : STD_LOGIC;
  signal \counter2_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[32]_i_3_n_1\ : STD_LOGIC;
  signal \counter2_reg[32]_i_3_n_2\ : STD_LOGIC;
  signal \counter2_reg[32]_i_3_n_3\ : STD_LOGIC;
  signal \counter2_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter2_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter2_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal counter_Ctrl : STD_LOGIC;
  signal \counter_Ctrl_reg_n_0_\ : STD_LOGIC_VECTOR ( 18 downto 9 );
  signal \^counter_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal sq0 : STD_LOGIC;
  signal sq0_i_1_n_0 : STD_LOGIC;
  signal sq1 : STD_LOGIC;
  signal sq1_i_1_n_0 : STD_LOGIC;
  signal sq2 : STD_LOGIC;
  signal sq2_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter0_reg[32]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter1_reg[32]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter2_reg[32]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  counter0_OUT <= \^counter0_out\;
  counter1_OUT <= \^counter1_out\;
  counter2_OUT <= \^counter2_out\;
  counter_out(31 downto 0) <= \^counter_out\(31 downto 0);
M0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFDD0000000C"
    )
        port map (
      I0 => clr0_reg_n_0,
      I1 => counter_we,
      I2 => counter_ch(0),
      I3 => rst,
      I4 => counter_ch(1),
      I5 => M0_reg_n_0,
      O => M0_i_1_n_0
    );
M0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => M0_i_1_n_0,
      Q => M0_reg_n_0,
      R => '0'
    );
M1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF5500000C00"
    )
        port map (
      I0 => clr1_reg_n_0,
      I1 => counter_ch(0),
      I2 => counter_ch(1),
      I3 => counter_we,
      I4 => rst,
      I5 => M1_reg_n_0,
      O => M1_i_1_n_0
    );
M1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => M1_i_1_n_0,
      Q => M1_reg_n_0,
      R => '0'
    );
M2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDD00000C00"
    )
        port map (
      I0 => clr2_reg_n_0,
      I1 => counter_we,
      I2 => counter_ch(0),
      I3 => counter_ch(1),
      I4 => rst,
      I5 => M2_reg_n_0,
      O => M2_i_1_n_0
    );
M2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => M2_i_1_n_0,
      Q => M2_reg_n_0,
      R => '0'
    );
clr0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE01010000"
    )
        port map (
      I0 => rst,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \^counter0_out\,
      I4 => M0_reg_n_0,
      I5 => clr0_reg_n_0,
      O => clr0_i_1_n_0
    );
clr0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      D => clr0_i_1_n_0,
      Q => clr0_reg_n_0,
      R => '0'
    );
clr1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE01010000"
    )
        port map (
      I0 => rst,
      I1 => \counter_Ctrl_reg_n_0_\(9),
      I2 => \counter_Ctrl_reg_n_0_\(10),
      I3 => \^counter1_out\,
      I4 => M1_reg_n_0,
      I5 => clr1_reg_n_0,
      O => clr1_i_1_n_0
    );
clr1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => '1',
      D => clr1_i_1_n_0,
      Q => clr1_reg_n_0,
      R => '0'
    );
clr2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE01010000"
    )
        port map (
      I0 => rst,
      I1 => \counter_Ctrl_reg_n_0_\(17),
      I2 => \counter_Ctrl_reg_n_0_\(18),
      I3 => \^counter2_out\,
      I4 => M2_reg_n_0,
      I5 => clr2_reg_n_0,
      O => clr2_i_1_n_0
    );
clr2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => '1',
      D => clr2_i_1_n_0,
      Q => clr2_reg_n_0,
      R => '0'
    );
\counter0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(0),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(1),
      I4 => \^counter_out\(0),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[0]_i_1_n_0\
    );
\counter0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(10),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(11),
      I4 => counter00(10),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[10]_i_1_n_0\
    );
\counter0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(11),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(12),
      I4 => counter00(11),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[11]_i_1_n_0\
    );
\counter0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(12),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(13),
      I4 => counter00(12),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[12]_i_1_n_0\
    );
\counter0[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(12),
      O => \counter0[12]_i_3_n_0\
    );
\counter0[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(11),
      O => \counter0[12]_i_4_n_0\
    );
\counter0[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(10),
      O => \counter0[12]_i_5_n_0\
    );
\counter0[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(9),
      O => \counter0[12]_i_6_n_0\
    );
\counter0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(13),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(14),
      I4 => counter00(13),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[13]_i_1_n_0\
    );
\counter0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(14),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(15),
      I4 => counter00(14),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[14]_i_1_n_0\
    );
\counter0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(15),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(16),
      I4 => counter00(15),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[15]_i_1_n_0\
    );
\counter0[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(16),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(17),
      I4 => counter00(16),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[16]_i_1_n_0\
    );
\counter0[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(16),
      O => \counter0[16]_i_3_n_0\
    );
\counter0[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(15),
      O => \counter0[16]_i_4_n_0\
    );
\counter0[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(14),
      O => \counter0[16]_i_5_n_0\
    );
\counter0[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(13),
      O => \counter0[16]_i_6_n_0\
    );
\counter0[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(17),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(18),
      I4 => counter00(17),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[17]_i_1_n_0\
    );
\counter0[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(18),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(19),
      I4 => counter00(18),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[18]_i_1_n_0\
    );
\counter0[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(19),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(20),
      I4 => counter00(19),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[19]_i_1_n_0\
    );
\counter0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(1),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(2),
      I4 => counter00(1),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[1]_i_1_n_0\
    );
\counter0[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(20),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(21),
      I4 => counter00(20),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[20]_i_1_n_0\
    );
\counter0[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(20),
      O => \counter0[20]_i_3_n_0\
    );
\counter0[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(19),
      O => \counter0[20]_i_4_n_0\
    );
\counter0[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(18),
      O => \counter0[20]_i_5_n_0\
    );
\counter0[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(17),
      O => \counter0[20]_i_6_n_0\
    );
\counter0[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(21),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(22),
      I4 => counter00(21),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[21]_i_1_n_0\
    );
\counter0[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(22),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(23),
      I4 => counter00(22),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[22]_i_1_n_0\
    );
\counter0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(23),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(24),
      I4 => counter00(23),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[23]_i_1_n_0\
    );
\counter0[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(24),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(25),
      I4 => counter00(24),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[24]_i_1_n_0\
    );
\counter0[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(24),
      O => \counter0[24]_i_3_n_0\
    );
\counter0[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(23),
      O => \counter0[24]_i_4_n_0\
    );
\counter0[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(22),
      O => \counter0[24]_i_5_n_0\
    );
\counter0[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(21),
      O => \counter0[24]_i_6_n_0\
    );
\counter0[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(25),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(26),
      I4 => counter00(25),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[25]_i_1_n_0\
    );
\counter0[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(26),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(27),
      I4 => counter00(26),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[26]_i_1_n_0\
    );
\counter0[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(27),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(28),
      I4 => counter00(27),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[27]_i_1_n_0\
    );
\counter0[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(28),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(29),
      I4 => counter00(28),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[28]_i_1_n_0\
    );
\counter0[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(28),
      O => \counter0[28]_i_3_n_0\
    );
\counter0[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(27),
      O => \counter0[28]_i_4_n_0\
    );
\counter0[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(26),
      O => \counter0[28]_i_5_n_0\
    );
\counter0[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(25),
      O => \counter0[28]_i_6_n_0\
    );
\counter0[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(29),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(30),
      I4 => counter00(29),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[29]_i_1_n_0\
    );
\counter0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(2),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(3),
      I4 => counter00(2),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[2]_i_1_n_0\
    );
\counter0[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(30),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(31),
      I4 => counter00(30),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[30]_i_1_n_0\
    );
\counter0[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \^counter0_out\,
      I3 => sq0,
      O => \counter0[30]_i_2_n_0\
    );
\counter0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => M0_reg_n_0,
      I1 => \^counter0_out\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => counter0(31)
    );
\counter0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => counter00(31),
      I1 => \counter0[31]_i_3_n_0\,
      I2 => \counter0[31]_i_4_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(31),
      O => \counter0[31]_i_2_n_0\
    );
\counter0[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC1DCF1D"
    )
        port map (
      I0 => M0_reg_n_0,
      I1 => p_0_in(0),
      I2 => \^counter0_out\,
      I3 => p_0_in(1),
      I4 => sq0,
      O => \counter0[31]_i_3_n_0\
    );
\counter0[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1D"
    )
        port map (
      I0 => M0_reg_n_0,
      I1 => p_0_in(0),
      I2 => \^counter0_out\,
      I3 => p_0_in(1),
      O => \counter0[31]_i_4_n_0\
    );
\counter0[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A3A0F3AA02AAA2"
    )
        port map (
      I0 => counter00(32),
      I1 => M0_reg_n_0,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => sq0,
      I5 => \^counter0_out\,
      O => \counter0[32]_i_1_n_0\
    );
\counter0[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter0_out\,
      O => \counter0[32]_i_3_n_0\
    );
\counter0[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(31),
      O => \counter0[32]_i_4_n_0\
    );
\counter0[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(30),
      O => \counter0[32]_i_5_n_0\
    );
\counter0[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(29),
      O => \counter0[32]_i_6_n_0\
    );
\counter0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(3),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(4),
      I4 => counter00(3),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[3]_i_1_n_0\
    );
\counter0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(4),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(5),
      I4 => counter00(4),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[4]_i_1_n_0\
    );
\counter0[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(4),
      O => \counter0[4]_i_3_n_0\
    );
\counter0[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(3),
      O => \counter0[4]_i_4_n_0\
    );
\counter0[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(2),
      O => \counter0[4]_i_5_n_0\
    );
\counter0[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(1),
      O => \counter0[4]_i_6_n_0\
    );
\counter0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(5),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(6),
      I4 => counter00(5),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[5]_i_1_n_0\
    );
\counter0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(6),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(7),
      I4 => counter00(6),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[6]_i_1_n_0\
    );
\counter0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(7),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(8),
      I4 => counter00(7),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[7]_i_1_n_0\
    );
\counter0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(8),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(9),
      I4 => counter00(8),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[8]_i_1_n_0\
    );
\counter0[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(8),
      O => \counter0[8]_i_3_n_0\
    );
\counter0[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(7),
      O => \counter0[8]_i_4_n_0\
    );
\counter0[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(6),
      O => \counter0[8]_i_5_n_0\
    );
\counter0[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_out\(5),
      O => \counter0[8]_i_6_n_0\
    );
\counter0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter0_Lock_reg_n_0_\(9),
      I1 => \counter0[31]_i_4_n_0\,
      I2 => \counter0[30]_i_2_n_0\,
      I3 => \counter0_Lock_reg_n_0_\(10),
      I4 => counter00(9),
      I5 => \counter0[31]_i_3_n_0\,
      O => \counter0[9]_i_1_n_0\
    );
\counter0_Lock[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter_ch(0),
      I1 => counter_we,
      I2 => counter_ch(1),
      O => counter0_Lock
    );
\counter0_Lock_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(0),
      Q => \counter0_Lock_reg_n_0_\(0)
    );
\counter0_Lock_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(10),
      Q => \counter0_Lock_reg_n_0_\(10)
    );
\counter0_Lock_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(11),
      Q => \counter0_Lock_reg_n_0_\(11)
    );
\counter0_Lock_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(12),
      Q => \counter0_Lock_reg_n_0_\(12)
    );
\counter0_Lock_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(13),
      Q => \counter0_Lock_reg_n_0_\(13)
    );
\counter0_Lock_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(14),
      Q => \counter0_Lock_reg_n_0_\(14)
    );
\counter0_Lock_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(15),
      Q => \counter0_Lock_reg_n_0_\(15)
    );
\counter0_Lock_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(16),
      Q => \counter0_Lock_reg_n_0_\(16)
    );
\counter0_Lock_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(17),
      Q => \counter0_Lock_reg_n_0_\(17)
    );
\counter0_Lock_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(18),
      Q => \counter0_Lock_reg_n_0_\(18)
    );
\counter0_Lock_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(19),
      Q => \counter0_Lock_reg_n_0_\(19)
    );
\counter0_Lock_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(1),
      Q => \counter0_Lock_reg_n_0_\(1)
    );
\counter0_Lock_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(20),
      Q => \counter0_Lock_reg_n_0_\(20)
    );
\counter0_Lock_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(21),
      Q => \counter0_Lock_reg_n_0_\(21)
    );
\counter0_Lock_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(22),
      Q => \counter0_Lock_reg_n_0_\(22)
    );
\counter0_Lock_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(23),
      Q => \counter0_Lock_reg_n_0_\(23)
    );
\counter0_Lock_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(24),
      Q => \counter0_Lock_reg_n_0_\(24)
    );
\counter0_Lock_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(25),
      Q => \counter0_Lock_reg_n_0_\(25)
    );
\counter0_Lock_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(26),
      Q => \counter0_Lock_reg_n_0_\(26)
    );
\counter0_Lock_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(27),
      Q => \counter0_Lock_reg_n_0_\(27)
    );
\counter0_Lock_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(28),
      Q => \counter0_Lock_reg_n_0_\(28)
    );
\counter0_Lock_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(29),
      Q => \counter0_Lock_reg_n_0_\(29)
    );
\counter0_Lock_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(2),
      Q => \counter0_Lock_reg_n_0_\(2)
    );
\counter0_Lock_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(30),
      Q => \counter0_Lock_reg_n_0_\(30)
    );
\counter0_Lock_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(31),
      Q => \counter0_Lock_reg_n_0_\(31)
    );
\counter0_Lock_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(3),
      Q => \counter0_Lock_reg_n_0_\(3)
    );
\counter0_Lock_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(4),
      Q => \counter0_Lock_reg_n_0_\(4)
    );
\counter0_Lock_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(5),
      Q => \counter0_Lock_reg_n_0_\(5)
    );
\counter0_Lock_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(6),
      Q => \counter0_Lock_reg_n_0_\(6)
    );
\counter0_Lock_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(7),
      Q => \counter0_Lock_reg_n_0_\(7)
    );
\counter0_Lock_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(8),
      Q => \counter0_Lock_reg_n_0_\(8)
    );
\counter0_Lock_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter0_Lock,
      CLR => rst,
      D => counter_val(9),
      Q => \counter0_Lock_reg_n_0_\(9)
    );
\counter0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[0]_i_1_n_0\,
      Q => \^counter_out\(0)
    );
\counter0_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[10]_i_1_n_0\,
      Q => \^counter_out\(10)
    );
\counter0_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[11]_i_1_n_0\,
      Q => \^counter_out\(11)
    );
\counter0_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[12]_i_1_n_0\,
      Q => \^counter_out\(12)
    );
\counter0_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[8]_i_2_n_0\,
      CO(3) => \counter0_reg[12]_i_2_n_0\,
      CO(2) => \counter0_reg[12]_i_2_n_1\,
      CO(1) => \counter0_reg[12]_i_2_n_2\,
      CO(0) => \counter0_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_out\(12 downto 9),
      O(3 downto 0) => counter00(12 downto 9),
      S(3) => \counter0[12]_i_3_n_0\,
      S(2) => \counter0[12]_i_4_n_0\,
      S(1) => \counter0[12]_i_5_n_0\,
      S(0) => \counter0[12]_i_6_n_0\
    );
\counter0_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[13]_i_1_n_0\,
      Q => \^counter_out\(13)
    );
\counter0_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[14]_i_1_n_0\,
      Q => \^counter_out\(14)
    );
\counter0_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[15]_i_1_n_0\,
      Q => \^counter_out\(15)
    );
\counter0_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[16]_i_1_n_0\,
      Q => \^counter_out\(16)
    );
\counter0_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[12]_i_2_n_0\,
      CO(3) => \counter0_reg[16]_i_2_n_0\,
      CO(2) => \counter0_reg[16]_i_2_n_1\,
      CO(1) => \counter0_reg[16]_i_2_n_2\,
      CO(0) => \counter0_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_out\(16 downto 13),
      O(3 downto 0) => counter00(16 downto 13),
      S(3) => \counter0[16]_i_3_n_0\,
      S(2) => \counter0[16]_i_4_n_0\,
      S(1) => \counter0[16]_i_5_n_0\,
      S(0) => \counter0[16]_i_6_n_0\
    );
\counter0_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[17]_i_1_n_0\,
      Q => \^counter_out\(17)
    );
\counter0_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[18]_i_1_n_0\,
      Q => \^counter_out\(18)
    );
\counter0_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[19]_i_1_n_0\,
      Q => \^counter_out\(19)
    );
\counter0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[1]_i_1_n_0\,
      Q => \^counter_out\(1)
    );
\counter0_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[20]_i_1_n_0\,
      Q => \^counter_out\(20)
    );
\counter0_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[16]_i_2_n_0\,
      CO(3) => \counter0_reg[20]_i_2_n_0\,
      CO(2) => \counter0_reg[20]_i_2_n_1\,
      CO(1) => \counter0_reg[20]_i_2_n_2\,
      CO(0) => \counter0_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_out\(20 downto 17),
      O(3 downto 0) => counter00(20 downto 17),
      S(3) => \counter0[20]_i_3_n_0\,
      S(2) => \counter0[20]_i_4_n_0\,
      S(1) => \counter0[20]_i_5_n_0\,
      S(0) => \counter0[20]_i_6_n_0\
    );
\counter0_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[21]_i_1_n_0\,
      Q => \^counter_out\(21)
    );
\counter0_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[22]_i_1_n_0\,
      Q => \^counter_out\(22)
    );
\counter0_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[23]_i_1_n_0\,
      Q => \^counter_out\(23)
    );
\counter0_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[24]_i_1_n_0\,
      Q => \^counter_out\(24)
    );
\counter0_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[20]_i_2_n_0\,
      CO(3) => \counter0_reg[24]_i_2_n_0\,
      CO(2) => \counter0_reg[24]_i_2_n_1\,
      CO(1) => \counter0_reg[24]_i_2_n_2\,
      CO(0) => \counter0_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_out\(24 downto 21),
      O(3 downto 0) => counter00(24 downto 21),
      S(3) => \counter0[24]_i_3_n_0\,
      S(2) => \counter0[24]_i_4_n_0\,
      S(1) => \counter0[24]_i_5_n_0\,
      S(0) => \counter0[24]_i_6_n_0\
    );
\counter0_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[25]_i_1_n_0\,
      Q => \^counter_out\(25)
    );
\counter0_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[26]_i_1_n_0\,
      Q => \^counter_out\(26)
    );
\counter0_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[27]_i_1_n_0\,
      Q => \^counter_out\(27)
    );
\counter0_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[28]_i_1_n_0\,
      Q => \^counter_out\(28)
    );
\counter0_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[24]_i_2_n_0\,
      CO(3) => \counter0_reg[28]_i_2_n_0\,
      CO(2) => \counter0_reg[28]_i_2_n_1\,
      CO(1) => \counter0_reg[28]_i_2_n_2\,
      CO(0) => \counter0_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_out\(28 downto 25),
      O(3 downto 0) => counter00(28 downto 25),
      S(3) => \counter0[28]_i_3_n_0\,
      S(2) => \counter0[28]_i_4_n_0\,
      S(1) => \counter0[28]_i_5_n_0\,
      S(0) => \counter0[28]_i_6_n_0\
    );
\counter0_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[29]_i_1_n_0\,
      Q => \^counter_out\(29)
    );
\counter0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[2]_i_1_n_0\,
      Q => \^counter_out\(2)
    );
\counter0_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[30]_i_1_n_0\,
      Q => \^counter_out\(30)
    );
\counter0_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[31]_i_2_n_0\,
      Q => \^counter_out\(31)
    );
\counter0_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => \counter0[32]_i_1_n_0\,
      Q => \^counter0_out\
    );
\counter0_reg[32]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[28]_i_2_n_0\,
      CO(3) => \NLW_counter0_reg[32]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_reg[32]_i_2_n_1\,
      CO(1) => \counter0_reg[32]_i_2_n_2\,
      CO(0) => \counter0_reg[32]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^counter_out\(31 downto 29),
      O(3 downto 0) => counter00(32 downto 29),
      S(3) => \counter0[32]_i_3_n_0\,
      S(2) => \counter0[32]_i_4_n_0\,
      S(1) => \counter0[32]_i_5_n_0\,
      S(0) => \counter0[32]_i_6_n_0\
    );
\counter0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[3]_i_1_n_0\,
      Q => \^counter_out\(3)
    );
\counter0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[4]_i_1_n_0\,
      Q => \^counter_out\(4)
    );
\counter0_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter0_reg[4]_i_2_n_0\,
      CO(2) => \counter0_reg[4]_i_2_n_1\,
      CO(1) => \counter0_reg[4]_i_2_n_2\,
      CO(0) => \counter0_reg[4]_i_2_n_3\,
      CYINIT => \^counter_out\(0),
      DI(3 downto 0) => \^counter_out\(4 downto 1),
      O(3 downto 0) => counter00(4 downto 1),
      S(3) => \counter0[4]_i_3_n_0\,
      S(2) => \counter0[4]_i_4_n_0\,
      S(1) => \counter0[4]_i_5_n_0\,
      S(0) => \counter0[4]_i_6_n_0\
    );
\counter0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[5]_i_1_n_0\,
      Q => \^counter_out\(5)
    );
\counter0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[6]_i_1_n_0\,
      Q => \^counter_out\(6)
    );
\counter0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[7]_i_1_n_0\,
      Q => \^counter_out\(7)
    );
\counter0_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[8]_i_1_n_0\,
      Q => \^counter_out\(8)
    );
\counter0_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_reg[4]_i_2_n_0\,
      CO(3) => \counter0_reg[8]_i_2_n_0\,
      CO(2) => \counter0_reg[8]_i_2_n_1\,
      CO(1) => \counter0_reg[8]_i_2_n_2\,
      CO(0) => \counter0_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_out\(8 downto 5),
      O(3 downto 0) => counter00(8 downto 5),
      S(3) => \counter0[8]_i_3_n_0\,
      S(2) => \counter0[8]_i_4_n_0\,
      S(1) => \counter0[8]_i_5_n_0\,
      S(0) => \counter0[8]_i_6_n_0\
    );
\counter0_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => counter0(31),
      CLR => rst,
      D => \counter0[9]_i_1_n_0\,
      Q => \^counter_out\(9)
    );
\counter1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter1(0),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(0),
      I4 => \counter1_Lock_reg_n_0_\(1),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(0)
    );
\counter1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(10),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(10),
      I4 => \counter1_Lock_reg_n_0_\(11),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(10)
    );
\counter1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(11),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(11),
      I4 => \counter1_Lock_reg_n_0_\(12),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(11)
    );
\counter1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(12),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(12),
      I4 => \counter1_Lock_reg_n_0_\(13),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(12)
    );
\counter1[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(12),
      O => \counter1[12]_i_3_n_0\
    );
\counter1[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(11),
      O => \counter1[12]_i_4_n_0\
    );
\counter1[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(10),
      O => \counter1[12]_i_5_n_0\
    );
\counter1[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(9),
      O => \counter1[12]_i_6_n_0\
    );
\counter1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(13),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(13),
      I4 => \counter1_Lock_reg_n_0_\(14),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(13)
    );
\counter1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(14),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(14),
      I4 => \counter1_Lock_reg_n_0_\(15),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(14)
    );
\counter1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(15),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(15),
      I4 => \counter1_Lock_reg_n_0_\(16),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(15)
    );
\counter1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(16),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(16),
      I4 => \counter1_Lock_reg_n_0_\(17),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(16)
    );
\counter1[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(16),
      O => \counter1[16]_i_3_n_0\
    );
\counter1[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(15),
      O => \counter1[16]_i_4_n_0\
    );
\counter1[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(14),
      O => \counter1[16]_i_5_n_0\
    );
\counter1[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(13),
      O => \counter1[16]_i_6_n_0\
    );
\counter1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(17),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(17),
      I4 => \counter1_Lock_reg_n_0_\(18),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(17)
    );
\counter1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(18),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(18),
      I4 => \counter1_Lock_reg_n_0_\(19),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(18)
    );
\counter1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(19),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(19),
      I4 => \counter1_Lock_reg_n_0_\(20),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(19)
    );
\counter1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(1),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(1),
      I4 => \counter1_Lock_reg_n_0_\(2),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(1)
    );
\counter1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(20),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(20),
      I4 => \counter1_Lock_reg_n_0_\(21),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(20)
    );
\counter1[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(20),
      O => \counter1[20]_i_3_n_0\
    );
\counter1[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(19),
      O => \counter1[20]_i_4_n_0\
    );
\counter1[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(18),
      O => \counter1[20]_i_5_n_0\
    );
\counter1[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(17),
      O => \counter1[20]_i_6_n_0\
    );
\counter1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(21),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(21),
      I4 => \counter1_Lock_reg_n_0_\(22),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(21)
    );
\counter1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(22),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(22),
      I4 => \counter1_Lock_reg_n_0_\(23),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(22)
    );
\counter1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(23),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(23),
      I4 => \counter1_Lock_reg_n_0_\(24),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(23)
    );
\counter1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(24),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(24),
      I4 => \counter1_Lock_reg_n_0_\(25),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(24)
    );
\counter1[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(24),
      O => \counter1[24]_i_3_n_0\
    );
\counter1[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(23),
      O => \counter1[24]_i_4_n_0\
    );
\counter1[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(22),
      O => \counter1[24]_i_5_n_0\
    );
\counter1[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(21),
      O => \counter1[24]_i_6_n_0\
    );
\counter1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(25),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(25),
      I4 => \counter1_Lock_reg_n_0_\(26),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(25)
    );
\counter1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(26),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(26),
      I4 => \counter1_Lock_reg_n_0_\(27),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(26)
    );
\counter1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(27),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(27),
      I4 => \counter1_Lock_reg_n_0_\(28),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(27)
    );
\counter1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(28),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(28),
      I4 => \counter1_Lock_reg_n_0_\(29),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(28)
    );
\counter1[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(28),
      O => \counter1[28]_i_3_n_0\
    );
\counter1[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(27),
      O => \counter1[28]_i_4_n_0\
    );
\counter1[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(26),
      O => \counter1[28]_i_5_n_0\
    );
\counter1[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(25),
      O => \counter1[28]_i_6_n_0\
    );
\counter1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(29),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(29),
      I4 => \counter1_Lock_reg_n_0_\(30),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(29)
    );
\counter1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(2),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(2),
      I4 => \counter1_Lock_reg_n_0_\(3),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(2)
    );
\counter1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(30),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(30),
      I4 => \counter1_Lock_reg_n_0_\(31),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(30)
    );
\counter1[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \counter_Ctrl_reg_n_0_\(9),
      I1 => \counter_Ctrl_reg_n_0_\(10),
      I2 => \^counter1_out\,
      I3 => sq1,
      O => \counter1[30]_i_2_n_0\
    );
\counter1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \counter1_Lock_reg_n_0_\(31),
      I1 => \counter1[31]_i_2_n_0\,
      I2 => counter10(31),
      I3 => \counter1[31]_i_3_n_0\,
      O => p_1_in(31)
    );
\counter1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => M1_reg_n_0,
      I1 => \counter_Ctrl_reg_n_0_\(9),
      I2 => \^counter1_out\,
      I3 => \counter_Ctrl_reg_n_0_\(10),
      O => \counter1[31]_i_2_n_0\
    );
\counter1[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBA1ABF1"
    )
        port map (
      I0 => \counter_Ctrl_reg_n_0_\(9),
      I1 => M1_reg_n_0,
      I2 => \counter_Ctrl_reg_n_0_\(10),
      I3 => \^counter1_out\,
      I4 => sq1,
      O => \counter1[31]_i_3_n_0\
    );
\counter1[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \counter_Ctrl_reg_n_0_\(10),
      I1 => \counter_Ctrl_reg_n_0_\(9),
      I2 => \^counter1_out\,
      I3 => M1_reg_n_0,
      O => \counter1[32]_i_1_n_0\
    );
\counter1[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F0F9FF00300030"
    )
        port map (
      I0 => sq1,
      I1 => \^counter1_out\,
      I2 => \counter_Ctrl_reg_n_0_\(9),
      I3 => \counter_Ctrl_reg_n_0_\(10),
      I4 => M1_reg_n_0,
      I5 => counter10(32),
      O => p_1_in(32)
    );
\counter1[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter1_out\,
      O => \counter1[32]_i_4_n_0\
    );
\counter1[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(31),
      O => \counter1[32]_i_5_n_0\
    );
\counter1[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(30),
      O => \counter1[32]_i_6_n_0\
    );
\counter1[32]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(29),
      O => \counter1[32]_i_7_n_0\
    );
\counter1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(3),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(3),
      I4 => \counter1_Lock_reg_n_0_\(4),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(3)
    );
\counter1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(4),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(4),
      I4 => \counter1_Lock_reg_n_0_\(5),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(4)
    );
\counter1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(4),
      O => \counter1[4]_i_3_n_0\
    );
\counter1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(3),
      O => \counter1[4]_i_4_n_0\
    );
\counter1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(2),
      O => \counter1[4]_i_5_n_0\
    );
\counter1[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(1),
      O => \counter1[4]_i_6_n_0\
    );
\counter1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(5),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(5),
      I4 => \counter1_Lock_reg_n_0_\(6),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(5)
    );
\counter1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(6),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(6),
      I4 => \counter1_Lock_reg_n_0_\(7),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(6)
    );
\counter1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(7),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(7),
      I4 => \counter1_Lock_reg_n_0_\(8),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(7)
    );
\counter1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(8),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(8),
      I4 => \counter1_Lock_reg_n_0_\(9),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(8)
    );
\counter1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(8),
      O => \counter1[8]_i_3_n_0\
    );
\counter1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(7),
      O => \counter1[8]_i_4_n_0\
    );
\counter1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(6),
      O => \counter1[8]_i_5_n_0\
    );
\counter1[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(5),
      O => \counter1[8]_i_6_n_0\
    );
\counter1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter1[31]_i_3_n_0\,
      I1 => counter10(9),
      I2 => \counter1[31]_i_2_n_0\,
      I3 => \counter1_Lock_reg_n_0_\(9),
      I4 => \counter1_Lock_reg_n_0_\(10),
      I5 => \counter1[30]_i_2_n_0\,
      O => p_1_in(9)
    );
\counter1_Lock[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_ch(1),
      I1 => counter_ch(0),
      I2 => counter_we,
      O => counter1_Lock
    );
\counter1_Lock_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(0),
      Q => \counter1_Lock_reg_n_0_\(0)
    );
\counter1_Lock_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(10),
      Q => \counter1_Lock_reg_n_0_\(10)
    );
\counter1_Lock_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(11),
      Q => \counter1_Lock_reg_n_0_\(11)
    );
\counter1_Lock_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(12),
      Q => \counter1_Lock_reg_n_0_\(12)
    );
\counter1_Lock_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(13),
      Q => \counter1_Lock_reg_n_0_\(13)
    );
\counter1_Lock_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(14),
      Q => \counter1_Lock_reg_n_0_\(14)
    );
\counter1_Lock_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(15),
      Q => \counter1_Lock_reg_n_0_\(15)
    );
\counter1_Lock_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(16),
      Q => \counter1_Lock_reg_n_0_\(16)
    );
\counter1_Lock_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(17),
      Q => \counter1_Lock_reg_n_0_\(17)
    );
\counter1_Lock_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(18),
      Q => \counter1_Lock_reg_n_0_\(18)
    );
\counter1_Lock_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(19),
      Q => \counter1_Lock_reg_n_0_\(19)
    );
\counter1_Lock_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(1),
      Q => \counter1_Lock_reg_n_0_\(1)
    );
\counter1_Lock_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(20),
      Q => \counter1_Lock_reg_n_0_\(20)
    );
\counter1_Lock_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(21),
      Q => \counter1_Lock_reg_n_0_\(21)
    );
\counter1_Lock_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(22),
      Q => \counter1_Lock_reg_n_0_\(22)
    );
\counter1_Lock_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(23),
      Q => \counter1_Lock_reg_n_0_\(23)
    );
\counter1_Lock_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(24),
      Q => \counter1_Lock_reg_n_0_\(24)
    );
\counter1_Lock_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(25),
      Q => \counter1_Lock_reg_n_0_\(25)
    );
\counter1_Lock_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(26),
      Q => \counter1_Lock_reg_n_0_\(26)
    );
\counter1_Lock_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(27),
      Q => \counter1_Lock_reg_n_0_\(27)
    );
\counter1_Lock_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(28),
      Q => \counter1_Lock_reg_n_0_\(28)
    );
\counter1_Lock_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(29),
      Q => \counter1_Lock_reg_n_0_\(29)
    );
\counter1_Lock_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(2),
      Q => \counter1_Lock_reg_n_0_\(2)
    );
\counter1_Lock_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(30),
      Q => \counter1_Lock_reg_n_0_\(30)
    );
\counter1_Lock_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(31),
      Q => \counter1_Lock_reg_n_0_\(31)
    );
\counter1_Lock_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(3),
      Q => \counter1_Lock_reg_n_0_\(3)
    );
\counter1_Lock_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(4),
      Q => \counter1_Lock_reg_n_0_\(4)
    );
\counter1_Lock_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(5),
      Q => \counter1_Lock_reg_n_0_\(5)
    );
\counter1_Lock_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(6),
      Q => \counter1_Lock_reg_n_0_\(6)
    );
\counter1_Lock_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(7),
      Q => \counter1_Lock_reg_n_0_\(7)
    );
\counter1_Lock_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(8),
      Q => \counter1_Lock_reg_n_0_\(8)
    );
\counter1_Lock_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter1_Lock,
      CLR => rst,
      D => counter_val(9),
      Q => \counter1_Lock_reg_n_0_\(9)
    );
\counter1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(0),
      Q => counter1(0)
    );
\counter1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(10),
      Q => counter1(10)
    );
\counter1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(11),
      Q => counter1(11)
    );
\counter1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(12),
      Q => counter1(12)
    );
\counter1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[8]_i_2_n_0\,
      CO(3) => \counter1_reg[12]_i_2_n_0\,
      CO(2) => \counter1_reg[12]_i_2_n_1\,
      CO(1) => \counter1_reg[12]_i_2_n_2\,
      CO(0) => \counter1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter1(12 downto 9),
      O(3 downto 0) => counter10(12 downto 9),
      S(3) => \counter1[12]_i_3_n_0\,
      S(2) => \counter1[12]_i_4_n_0\,
      S(1) => \counter1[12]_i_5_n_0\,
      S(0) => \counter1[12]_i_6_n_0\
    );
\counter1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(13),
      Q => counter1(13)
    );
\counter1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(14),
      Q => counter1(14)
    );
\counter1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(15),
      Q => counter1(15)
    );
\counter1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(16),
      Q => counter1(16)
    );
\counter1_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[12]_i_2_n_0\,
      CO(3) => \counter1_reg[16]_i_2_n_0\,
      CO(2) => \counter1_reg[16]_i_2_n_1\,
      CO(1) => \counter1_reg[16]_i_2_n_2\,
      CO(0) => \counter1_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter1(16 downto 13),
      O(3 downto 0) => counter10(16 downto 13),
      S(3) => \counter1[16]_i_3_n_0\,
      S(2) => \counter1[16]_i_4_n_0\,
      S(1) => \counter1[16]_i_5_n_0\,
      S(0) => \counter1[16]_i_6_n_0\
    );
\counter1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(17),
      Q => counter1(17)
    );
\counter1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(18),
      Q => counter1(18)
    );
\counter1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(19),
      Q => counter1(19)
    );
\counter1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(1),
      Q => counter1(1)
    );
\counter1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(20),
      Q => counter1(20)
    );
\counter1_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[16]_i_2_n_0\,
      CO(3) => \counter1_reg[20]_i_2_n_0\,
      CO(2) => \counter1_reg[20]_i_2_n_1\,
      CO(1) => \counter1_reg[20]_i_2_n_2\,
      CO(0) => \counter1_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter1(20 downto 17),
      O(3 downto 0) => counter10(20 downto 17),
      S(3) => \counter1[20]_i_3_n_0\,
      S(2) => \counter1[20]_i_4_n_0\,
      S(1) => \counter1[20]_i_5_n_0\,
      S(0) => \counter1[20]_i_6_n_0\
    );
\counter1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(21),
      Q => counter1(21)
    );
\counter1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(22),
      Q => counter1(22)
    );
\counter1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(23),
      Q => counter1(23)
    );
\counter1_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(24),
      Q => counter1(24)
    );
\counter1_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[20]_i_2_n_0\,
      CO(3) => \counter1_reg[24]_i_2_n_0\,
      CO(2) => \counter1_reg[24]_i_2_n_1\,
      CO(1) => \counter1_reg[24]_i_2_n_2\,
      CO(0) => \counter1_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter1(24 downto 21),
      O(3 downto 0) => counter10(24 downto 21),
      S(3) => \counter1[24]_i_3_n_0\,
      S(2) => \counter1[24]_i_4_n_0\,
      S(1) => \counter1[24]_i_5_n_0\,
      S(0) => \counter1[24]_i_6_n_0\
    );
\counter1_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(25),
      Q => counter1(25)
    );
\counter1_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(26),
      Q => counter1(26)
    );
\counter1_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(27),
      Q => counter1(27)
    );
\counter1_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(28),
      Q => counter1(28)
    );
\counter1_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[24]_i_2_n_0\,
      CO(3) => \counter1_reg[28]_i_2_n_0\,
      CO(2) => \counter1_reg[28]_i_2_n_1\,
      CO(1) => \counter1_reg[28]_i_2_n_2\,
      CO(0) => \counter1_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter1(28 downto 25),
      O(3 downto 0) => counter10(28 downto 25),
      S(3) => \counter1[28]_i_3_n_0\,
      S(2) => \counter1[28]_i_4_n_0\,
      S(1) => \counter1[28]_i_5_n_0\,
      S(0) => \counter1[28]_i_6_n_0\
    );
\counter1_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(29),
      Q => counter1(29)
    );
\counter1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(2),
      Q => counter1(2)
    );
\counter1_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(30),
      Q => counter1(30)
    );
\counter1_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(31),
      Q => counter1(31)
    );
\counter1_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(32),
      Q => \^counter1_out\
    );
\counter1_reg[32]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[28]_i_2_n_0\,
      CO(3) => \NLW_counter1_reg[32]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \counter1_reg[32]_i_3_n_1\,
      CO(1) => \counter1_reg[32]_i_3_n_2\,
      CO(0) => \counter1_reg[32]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => counter1(31 downto 29),
      O(3 downto 0) => counter10(32 downto 29),
      S(3) => \counter1[32]_i_4_n_0\,
      S(2) => \counter1[32]_i_5_n_0\,
      S(1) => \counter1[32]_i_6_n_0\,
      S(0) => \counter1[32]_i_7_n_0\
    );
\counter1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(3),
      Q => counter1(3)
    );
\counter1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(4),
      Q => counter1(4)
    );
\counter1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter1_reg[4]_i_2_n_0\,
      CO(2) => \counter1_reg[4]_i_2_n_1\,
      CO(1) => \counter1_reg[4]_i_2_n_2\,
      CO(0) => \counter1_reg[4]_i_2_n_3\,
      CYINIT => counter1(0),
      DI(3 downto 0) => counter1(4 downto 1),
      O(3 downto 0) => counter10(4 downto 1),
      S(3) => \counter1[4]_i_3_n_0\,
      S(2) => \counter1[4]_i_4_n_0\,
      S(1) => \counter1[4]_i_5_n_0\,
      S(0) => \counter1[4]_i_6_n_0\
    );
\counter1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(5),
      Q => counter1(5)
    );
\counter1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(6),
      Q => counter1(6)
    );
\counter1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(7),
      Q => counter1(7)
    );
\counter1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(8),
      Q => counter1(8)
    );
\counter1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[4]_i_2_n_0\,
      CO(3) => \counter1_reg[8]_i_2_n_0\,
      CO(2) => \counter1_reg[8]_i_2_n_1\,
      CO(1) => \counter1_reg[8]_i_2_n_2\,
      CO(0) => \counter1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter1(8 downto 5),
      O(3 downto 0) => counter10(8 downto 5),
      S(3) => \counter1[8]_i_3_n_0\,
      S(2) => \counter1[8]_i_4_n_0\,
      S(1) => \counter1[8]_i_5_n_0\,
      S(0) => \counter1[8]_i_6_n_0\
    );
\counter1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => \counter1[32]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(9),
      Q => counter1(9)
    );
\counter2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter2(0),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(0),
      I4 => \counter2_Lock_reg_n_0_\(1),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[0]_i_1_n_0\
    );
\counter2[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(10),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(10),
      I4 => \counter2_Lock_reg_n_0_\(11),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[10]_i_1_n_0\
    );
\counter2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(11),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(11),
      I4 => \counter2_Lock_reg_n_0_\(12),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[11]_i_1_n_0\
    );
\counter2[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(12),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(12),
      I4 => \counter2_Lock_reg_n_0_\(13),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[12]_i_1_n_0\
    );
\counter2[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(12),
      O => \counter2[12]_i_3_n_0\
    );
\counter2[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(11),
      O => \counter2[12]_i_4_n_0\
    );
\counter2[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(10),
      O => \counter2[12]_i_5_n_0\
    );
\counter2[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(9),
      O => \counter2[12]_i_6_n_0\
    );
\counter2[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(13),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(13),
      I4 => \counter2_Lock_reg_n_0_\(14),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[13]_i_1_n_0\
    );
\counter2[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(14),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(14),
      I4 => \counter2_Lock_reg_n_0_\(15),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[14]_i_1_n_0\
    );
\counter2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(15),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(15),
      I4 => \counter2_Lock_reg_n_0_\(16),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[15]_i_1_n_0\
    );
\counter2[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(16),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(16),
      I4 => \counter2_Lock_reg_n_0_\(17),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[16]_i_1_n_0\
    );
\counter2[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(16),
      O => \counter2[16]_i_3_n_0\
    );
\counter2[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(15),
      O => \counter2[16]_i_4_n_0\
    );
\counter2[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(14),
      O => \counter2[16]_i_5_n_0\
    );
\counter2[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(13),
      O => \counter2[16]_i_6_n_0\
    );
\counter2[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(17),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(17),
      I4 => \counter2_Lock_reg_n_0_\(18),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[17]_i_1_n_0\
    );
\counter2[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(18),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(18),
      I4 => \counter2_Lock_reg_n_0_\(19),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[18]_i_1_n_0\
    );
\counter2[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(19),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(19),
      I4 => \counter2_Lock_reg_n_0_\(20),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[19]_i_1_n_0\
    );
\counter2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(1),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(1),
      I4 => \counter2_Lock_reg_n_0_\(2),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[1]_i_1_n_0\
    );
\counter2[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(20),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(20),
      I4 => \counter2_Lock_reg_n_0_\(21),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[20]_i_1_n_0\
    );
\counter2[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(20),
      O => \counter2[20]_i_3_n_0\
    );
\counter2[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(19),
      O => \counter2[20]_i_4_n_0\
    );
\counter2[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(18),
      O => \counter2[20]_i_5_n_0\
    );
\counter2[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(17),
      O => \counter2[20]_i_6_n_0\
    );
\counter2[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(21),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(21),
      I4 => \counter2_Lock_reg_n_0_\(22),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[21]_i_1_n_0\
    );
\counter2[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(22),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(22),
      I4 => \counter2_Lock_reg_n_0_\(23),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[22]_i_1_n_0\
    );
\counter2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(23),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(23),
      I4 => \counter2_Lock_reg_n_0_\(24),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[23]_i_1_n_0\
    );
\counter2[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(24),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(24),
      I4 => \counter2_Lock_reg_n_0_\(25),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[24]_i_1_n_0\
    );
\counter2[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(24),
      O => \counter2[24]_i_3_n_0\
    );
\counter2[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(23),
      O => \counter2[24]_i_4_n_0\
    );
\counter2[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(22),
      O => \counter2[24]_i_5_n_0\
    );
\counter2[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(21),
      O => \counter2[24]_i_6_n_0\
    );
\counter2[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(25),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(25),
      I4 => \counter2_Lock_reg_n_0_\(26),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[25]_i_1_n_0\
    );
\counter2[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(26),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(26),
      I4 => \counter2_Lock_reg_n_0_\(27),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[26]_i_1_n_0\
    );
\counter2[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(27),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(27),
      I4 => \counter2_Lock_reg_n_0_\(28),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[27]_i_1_n_0\
    );
\counter2[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(28),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(28),
      I4 => \counter2_Lock_reg_n_0_\(29),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[28]_i_1_n_0\
    );
\counter2[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(28),
      O => \counter2[28]_i_3_n_0\
    );
\counter2[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(27),
      O => \counter2[28]_i_4_n_0\
    );
\counter2[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(26),
      O => \counter2[28]_i_5_n_0\
    );
\counter2[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(25),
      O => \counter2[28]_i_6_n_0\
    );
\counter2[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(29),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(29),
      I4 => \counter2_Lock_reg_n_0_\(30),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[29]_i_1_n_0\
    );
\counter2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(2),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(2),
      I4 => \counter2_Lock_reg_n_0_\(3),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[2]_i_1_n_0\
    );
\counter2[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(30),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(30),
      I4 => \counter2_Lock_reg_n_0_\(31),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[30]_i_1_n_0\
    );
\counter2[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \counter_Ctrl_reg_n_0_\(17),
      I1 => \counter_Ctrl_reg_n_0_\(18),
      I2 => \^counter2_out\,
      I3 => sq2,
      O => \counter2[30]_i_2_n_0\
    );
\counter2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \counter2_Lock_reg_n_0_\(31),
      I1 => \counter2[31]_i_2_n_0\,
      I2 => counter20(31),
      I3 => \counter2[31]_i_3_n_0\,
      O => \counter2[31]_i_1_n_0\
    );
\counter2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => M2_reg_n_0,
      I1 => \counter_Ctrl_reg_n_0_\(17),
      I2 => \^counter2_out\,
      I3 => \counter_Ctrl_reg_n_0_\(18),
      O => \counter2[31]_i_2_n_0\
    );
\counter2[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBA1ABF1"
    )
        port map (
      I0 => \counter_Ctrl_reg_n_0_\(17),
      I1 => M2_reg_n_0,
      I2 => \counter_Ctrl_reg_n_0_\(18),
      I3 => \^counter2_out\,
      I4 => sq2,
      O => \counter2[31]_i_3_n_0\
    );
\counter2[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \counter_Ctrl_reg_n_0_\(18),
      I1 => \counter_Ctrl_reg_n_0_\(17),
      I2 => \^counter2_out\,
      I3 => M2_reg_n_0,
      O => \counter2[32]_i_1_n_0\
    );
\counter2[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F0F9FF00300030"
    )
        port map (
      I0 => sq2,
      I1 => \^counter2_out\,
      I2 => \counter_Ctrl_reg_n_0_\(17),
      I3 => \counter_Ctrl_reg_n_0_\(18),
      I4 => M2_reg_n_0,
      I5 => counter20(32),
      O => \counter2[32]_i_2_n_0\
    );
\counter2[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter2_out\,
      O => \counter2[32]_i_4_n_0\
    );
\counter2[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(31),
      O => \counter2[32]_i_5_n_0\
    );
\counter2[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(30),
      O => \counter2[32]_i_6_n_0\
    );
\counter2[32]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(29),
      O => \counter2[32]_i_7_n_0\
    );
\counter2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(3),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(3),
      I4 => \counter2_Lock_reg_n_0_\(4),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[3]_i_1_n_0\
    );
\counter2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(4),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(4),
      I4 => \counter2_Lock_reg_n_0_\(5),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[4]_i_1_n_0\
    );
\counter2[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(4),
      O => \counter2[4]_i_3_n_0\
    );
\counter2[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(3),
      O => \counter2[4]_i_4_n_0\
    );
\counter2[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(2),
      O => \counter2[4]_i_5_n_0\
    );
\counter2[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(1),
      O => \counter2[4]_i_6_n_0\
    );
\counter2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(5),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(5),
      I4 => \counter2_Lock_reg_n_0_\(6),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[5]_i_1_n_0\
    );
\counter2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(6),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(6),
      I4 => \counter2_Lock_reg_n_0_\(7),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[6]_i_1_n_0\
    );
\counter2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(7),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(7),
      I4 => \counter2_Lock_reg_n_0_\(8),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[7]_i_1_n_0\
    );
\counter2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(8),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(8),
      I4 => \counter2_Lock_reg_n_0_\(9),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[8]_i_1_n_0\
    );
\counter2[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(8),
      O => \counter2[8]_i_3_n_0\
    );
\counter2[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(7),
      O => \counter2[8]_i_4_n_0\
    );
\counter2[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(6),
      O => \counter2[8]_i_5_n_0\
    );
\counter2[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(5),
      O => \counter2[8]_i_6_n_0\
    );
\counter2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => counter20(9),
      I2 => \counter2[31]_i_2_n_0\,
      I3 => \counter2_Lock_reg_n_0_\(9),
      I4 => \counter2_Lock_reg_n_0_\(10),
      I5 => \counter2[30]_i_2_n_0\,
      O => \counter2[9]_i_1_n_0\
    );
\counter2_Lock[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_ch(0),
      I1 => counter_we,
      I2 => counter_ch(1),
      O => counter2_Lock
    );
\counter2_Lock_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(0),
      Q => \counter2_Lock_reg_n_0_\(0)
    );
\counter2_Lock_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(10),
      Q => \counter2_Lock_reg_n_0_\(10)
    );
\counter2_Lock_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(11),
      Q => \counter2_Lock_reg_n_0_\(11)
    );
\counter2_Lock_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(12),
      Q => \counter2_Lock_reg_n_0_\(12)
    );
\counter2_Lock_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(13),
      Q => \counter2_Lock_reg_n_0_\(13)
    );
\counter2_Lock_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(14),
      Q => \counter2_Lock_reg_n_0_\(14)
    );
\counter2_Lock_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(15),
      Q => \counter2_Lock_reg_n_0_\(15)
    );
\counter2_Lock_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(16),
      Q => \counter2_Lock_reg_n_0_\(16)
    );
\counter2_Lock_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(17),
      Q => \counter2_Lock_reg_n_0_\(17)
    );
\counter2_Lock_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(18),
      Q => \counter2_Lock_reg_n_0_\(18)
    );
\counter2_Lock_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(19),
      Q => \counter2_Lock_reg_n_0_\(19)
    );
\counter2_Lock_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(1),
      Q => \counter2_Lock_reg_n_0_\(1)
    );
\counter2_Lock_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(20),
      Q => \counter2_Lock_reg_n_0_\(20)
    );
\counter2_Lock_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(21),
      Q => \counter2_Lock_reg_n_0_\(21)
    );
\counter2_Lock_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(22),
      Q => \counter2_Lock_reg_n_0_\(22)
    );
\counter2_Lock_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(23),
      Q => \counter2_Lock_reg_n_0_\(23)
    );
\counter2_Lock_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(24),
      Q => \counter2_Lock_reg_n_0_\(24)
    );
\counter2_Lock_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(25),
      Q => \counter2_Lock_reg_n_0_\(25)
    );
\counter2_Lock_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(26),
      Q => \counter2_Lock_reg_n_0_\(26)
    );
\counter2_Lock_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(27),
      Q => \counter2_Lock_reg_n_0_\(27)
    );
\counter2_Lock_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(28),
      Q => \counter2_Lock_reg_n_0_\(28)
    );
\counter2_Lock_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(29),
      Q => \counter2_Lock_reg_n_0_\(29)
    );
\counter2_Lock_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(2),
      Q => \counter2_Lock_reg_n_0_\(2)
    );
\counter2_Lock_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(30),
      Q => \counter2_Lock_reg_n_0_\(30)
    );
\counter2_Lock_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(31),
      Q => \counter2_Lock_reg_n_0_\(31)
    );
\counter2_Lock_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(3),
      Q => \counter2_Lock_reg_n_0_\(3)
    );
\counter2_Lock_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(4),
      Q => \counter2_Lock_reg_n_0_\(4)
    );
\counter2_Lock_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(5),
      Q => \counter2_Lock_reg_n_0_\(5)
    );
\counter2_Lock_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(6),
      Q => \counter2_Lock_reg_n_0_\(6)
    );
\counter2_Lock_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(7),
      Q => \counter2_Lock_reg_n_0_\(7)
    );
\counter2_Lock_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(8),
      Q => \counter2_Lock_reg_n_0_\(8)
    );
\counter2_Lock_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter2_Lock,
      CLR => rst,
      D => counter_val(9),
      Q => \counter2_Lock_reg_n_0_\(9)
    );
\counter2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[0]_i_1_n_0\,
      Q => counter2(0)
    );
\counter2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[10]_i_1_n_0\,
      Q => counter2(10)
    );
\counter2_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[11]_i_1_n_0\,
      Q => counter2(11)
    );
\counter2_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[12]_i_1_n_0\,
      Q => counter2(12)
    );
\counter2_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[8]_i_2_n_0\,
      CO(3) => \counter2_reg[12]_i_2_n_0\,
      CO(2) => \counter2_reg[12]_i_2_n_1\,
      CO(1) => \counter2_reg[12]_i_2_n_2\,
      CO(0) => \counter2_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter2(12 downto 9),
      O(3 downto 0) => counter20(12 downto 9),
      S(3) => \counter2[12]_i_3_n_0\,
      S(2) => \counter2[12]_i_4_n_0\,
      S(1) => \counter2[12]_i_5_n_0\,
      S(0) => \counter2[12]_i_6_n_0\
    );
\counter2_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[13]_i_1_n_0\,
      Q => counter2(13)
    );
\counter2_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[14]_i_1_n_0\,
      Q => counter2(14)
    );
\counter2_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[15]_i_1_n_0\,
      Q => counter2(15)
    );
\counter2_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[16]_i_1_n_0\,
      Q => counter2(16)
    );
\counter2_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[12]_i_2_n_0\,
      CO(3) => \counter2_reg[16]_i_2_n_0\,
      CO(2) => \counter2_reg[16]_i_2_n_1\,
      CO(1) => \counter2_reg[16]_i_2_n_2\,
      CO(0) => \counter2_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter2(16 downto 13),
      O(3 downto 0) => counter20(16 downto 13),
      S(3) => \counter2[16]_i_3_n_0\,
      S(2) => \counter2[16]_i_4_n_0\,
      S(1) => \counter2[16]_i_5_n_0\,
      S(0) => \counter2[16]_i_6_n_0\
    );
\counter2_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[17]_i_1_n_0\,
      Q => counter2(17)
    );
\counter2_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[18]_i_1_n_0\,
      Q => counter2(18)
    );
\counter2_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[19]_i_1_n_0\,
      Q => counter2(19)
    );
\counter2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[1]_i_1_n_0\,
      Q => counter2(1)
    );
\counter2_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[20]_i_1_n_0\,
      Q => counter2(20)
    );
\counter2_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[16]_i_2_n_0\,
      CO(3) => \counter2_reg[20]_i_2_n_0\,
      CO(2) => \counter2_reg[20]_i_2_n_1\,
      CO(1) => \counter2_reg[20]_i_2_n_2\,
      CO(0) => \counter2_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter2(20 downto 17),
      O(3 downto 0) => counter20(20 downto 17),
      S(3) => \counter2[20]_i_3_n_0\,
      S(2) => \counter2[20]_i_4_n_0\,
      S(1) => \counter2[20]_i_5_n_0\,
      S(0) => \counter2[20]_i_6_n_0\
    );
\counter2_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[21]_i_1_n_0\,
      Q => counter2(21)
    );
\counter2_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[22]_i_1_n_0\,
      Q => counter2(22)
    );
\counter2_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[23]_i_1_n_0\,
      Q => counter2(23)
    );
\counter2_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[24]_i_1_n_0\,
      Q => counter2(24)
    );
\counter2_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[20]_i_2_n_0\,
      CO(3) => \counter2_reg[24]_i_2_n_0\,
      CO(2) => \counter2_reg[24]_i_2_n_1\,
      CO(1) => \counter2_reg[24]_i_2_n_2\,
      CO(0) => \counter2_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter2(24 downto 21),
      O(3 downto 0) => counter20(24 downto 21),
      S(3) => \counter2[24]_i_3_n_0\,
      S(2) => \counter2[24]_i_4_n_0\,
      S(1) => \counter2[24]_i_5_n_0\,
      S(0) => \counter2[24]_i_6_n_0\
    );
\counter2_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[25]_i_1_n_0\,
      Q => counter2(25)
    );
\counter2_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[26]_i_1_n_0\,
      Q => counter2(26)
    );
\counter2_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[27]_i_1_n_0\,
      Q => counter2(27)
    );
\counter2_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[28]_i_1_n_0\,
      Q => counter2(28)
    );
\counter2_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[24]_i_2_n_0\,
      CO(3) => \counter2_reg[28]_i_2_n_0\,
      CO(2) => \counter2_reg[28]_i_2_n_1\,
      CO(1) => \counter2_reg[28]_i_2_n_2\,
      CO(0) => \counter2_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter2(28 downto 25),
      O(3 downto 0) => counter20(28 downto 25),
      S(3) => \counter2[28]_i_3_n_0\,
      S(2) => \counter2[28]_i_4_n_0\,
      S(1) => \counter2[28]_i_5_n_0\,
      S(0) => \counter2[28]_i_6_n_0\
    );
\counter2_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[29]_i_1_n_0\,
      Q => counter2(29)
    );
\counter2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[2]_i_1_n_0\,
      Q => counter2(2)
    );
\counter2_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[30]_i_1_n_0\,
      Q => counter2(30)
    );
\counter2_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[31]_i_1_n_0\,
      Q => counter2(31)
    );
\counter2_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[32]_i_2_n_0\,
      Q => \^counter2_out\
    );
\counter2_reg[32]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[28]_i_2_n_0\,
      CO(3) => \NLW_counter2_reg[32]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \counter2_reg[32]_i_3_n_1\,
      CO(1) => \counter2_reg[32]_i_3_n_2\,
      CO(0) => \counter2_reg[32]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => counter2(31 downto 29),
      O(3 downto 0) => counter20(32 downto 29),
      S(3) => \counter2[32]_i_4_n_0\,
      S(2) => \counter2[32]_i_5_n_0\,
      S(1) => \counter2[32]_i_6_n_0\,
      S(0) => \counter2[32]_i_7_n_0\
    );
\counter2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[3]_i_1_n_0\,
      Q => counter2(3)
    );
\counter2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[4]_i_1_n_0\,
      Q => counter2(4)
    );
\counter2_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter2_reg[4]_i_2_n_0\,
      CO(2) => \counter2_reg[4]_i_2_n_1\,
      CO(1) => \counter2_reg[4]_i_2_n_2\,
      CO(0) => \counter2_reg[4]_i_2_n_3\,
      CYINIT => counter2(0),
      DI(3 downto 0) => counter2(4 downto 1),
      O(3 downto 0) => counter20(4 downto 1),
      S(3) => \counter2[4]_i_3_n_0\,
      S(2) => \counter2[4]_i_4_n_0\,
      S(1) => \counter2[4]_i_5_n_0\,
      S(0) => \counter2[4]_i_6_n_0\
    );
\counter2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[5]_i_1_n_0\,
      Q => counter2(5)
    );
\counter2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[6]_i_1_n_0\,
      Q => counter2(6)
    );
\counter2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[7]_i_1_n_0\,
      Q => counter2(7)
    );
\counter2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[8]_i_1_n_0\,
      Q => counter2(8)
    );
\counter2_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[4]_i_2_n_0\,
      CO(3) => \counter2_reg[8]_i_2_n_0\,
      CO(2) => \counter2_reg[8]_i_2_n_1\,
      CO(1) => \counter2_reg[8]_i_2_n_2\,
      CO(0) => \counter2_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter2(8 downto 5),
      O(3 downto 0) => counter20(8 downto 5),
      S(3) => \counter2[8]_i_3_n_0\,
      S(2) => \counter2[8]_i_4_n_0\,
      S(1) => \counter2[8]_i_5_n_0\,
      S(0) => \counter2[8]_i_6_n_0\
    );
\counter2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => \counter2[32]_i_1_n_0\,
      CLR => rst,
      D => \counter2[9]_i_1_n_0\,
      Q => counter2(9)
    );
\counter_Ctrl[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter_ch(1),
      I1 => counter_ch(0),
      I2 => counter_we,
      O => counter_Ctrl
    );
\counter_Ctrl_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_Ctrl,
      CLR => rst,
      D => counter_val(10),
      Q => \counter_Ctrl_reg_n_0_\(10)
    );
\counter_Ctrl_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_Ctrl,
      CLR => rst,
      D => counter_val(17),
      Q => \counter_Ctrl_reg_n_0_\(17)
    );
\counter_Ctrl_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_Ctrl,
      CLR => rst,
      D => counter_val(18),
      Q => \counter_Ctrl_reg_n_0_\(18)
    );
\counter_Ctrl_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_Ctrl,
      CLR => rst,
      D => counter_val(1),
      Q => p_0_in(0)
    );
\counter_Ctrl_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_Ctrl,
      CLR => rst,
      D => counter_val(2),
      Q => p_0_in(1)
    );
\counter_Ctrl_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_Ctrl,
      CLR => rst,
      D => counter_val(9),
      Q => \counter_Ctrl_reg_n_0_\(9)
    );
sq0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^counter0_out\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => sq0,
      O => sq0_i_1_n_0
    );
sq0_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => sq0_i_1_n_0,
      Q => sq0
    );
sq1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^counter1_out\,
      I1 => \counter_Ctrl_reg_n_0_\(10),
      I2 => \counter_Ctrl_reg_n_0_\(9),
      I3 => sq1,
      O => sq1_i_1_n_0
    );
sq1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk1,
      CE => '1',
      CLR => rst,
      D => sq1_i_1_n_0,
      Q => sq1
    );
sq2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^counter2_out\,
      I1 => \counter_Ctrl_reg_n_0_\(18),
      I2 => \counter_Ctrl_reg_n_0_\(17),
      I3 => sq2,
      O => sq2_i_1_n_0
    );
sq2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2,
      CE => '1',
      CLR => rst,
      D => sq2_i_1_n_0,
      Q => sq2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    clk0 : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    clk2 : in STD_LOGIC;
    counter0_OUT : out STD_LOGIC;
    counter1_OUT : out STD_LOGIC;
    counter2_OUT : out STD_LOGIC;
    counter_we : in STD_LOGIC;
    rst : in STD_LOGIC;
    counter_ch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    counter_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_val : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Counter_x_0,Counter_x,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Counter_x,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter_x
     port map (
      clk => clk,
      clk0 => clk0,
      clk1 => clk1,
      clk2 => clk2,
      counter0_OUT => counter0_OUT,
      counter1_OUT => counter1_OUT,
      counter2_OUT => counter2_OUT,
      counter_ch(1 downto 0) => counter_ch(1 downto 0),
      counter_out(31 downto 0) => counter_out(31 downto 0),
      counter_val(31 downto 0) => counter_val(31 downto 0),
      counter_we => counter_we,
      rst => rst
    );
end STRUCTURE;
