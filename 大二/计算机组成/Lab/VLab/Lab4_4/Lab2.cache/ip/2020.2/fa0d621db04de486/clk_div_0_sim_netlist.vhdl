-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:40:39 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_div_0_sim_netlist.vhdl
-- Design      : clk_div_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div is
  port (
    clkdiv : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk_CPU : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    STEP : in STD_LOGIC;
    SW8 : in STD_LOGIC;
    SW2 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div is
  signal \^clkdiv\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clkdiv[3]_i_2_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \clkdiv_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_clkdiv_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clkdiv_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clkdiv_reg[7]_i_1\ : label is 11;
begin
  clkdiv(31 downto 0) <= \^clkdiv\(31 downto 0);
\Clk_CPU__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => STEP,
      I1 => SW8,
      I2 => \^clkdiv\(24),
      I3 => SW2,
      I4 => \^clkdiv\(2),
      O => Clk_CPU
    );
\clkdiv[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv\(0),
      O => \clkdiv[3]_i_2_n_0\
    );
\clkdiv_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[3]_i_1_n_7\,
      Q => \^clkdiv\(0)
    );
\clkdiv_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[11]_i_1_n_5\,
      Q => \^clkdiv\(10)
    );
\clkdiv_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[11]_i_1_n_4\,
      Q => \^clkdiv\(11)
    );
\clkdiv_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[7]_i_1_n_0\,
      CO(3) => \clkdiv_reg[11]_i_1_n_0\,
      CO(2) => \clkdiv_reg[11]_i_1_n_1\,
      CO(1) => \clkdiv_reg[11]_i_1_n_2\,
      CO(0) => \clkdiv_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[11]_i_1_n_4\,
      O(2) => \clkdiv_reg[11]_i_1_n_5\,
      O(1) => \clkdiv_reg[11]_i_1_n_6\,
      O(0) => \clkdiv_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(11 downto 8)
    );
\clkdiv_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[15]_i_1_n_7\,
      Q => \^clkdiv\(12)
    );
\clkdiv_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[15]_i_1_n_6\,
      Q => \^clkdiv\(13)
    );
\clkdiv_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[15]_i_1_n_5\,
      Q => \^clkdiv\(14)
    );
\clkdiv_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[15]_i_1_n_4\,
      Q => \^clkdiv\(15)
    );
\clkdiv_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[11]_i_1_n_0\,
      CO(3) => \clkdiv_reg[15]_i_1_n_0\,
      CO(2) => \clkdiv_reg[15]_i_1_n_1\,
      CO(1) => \clkdiv_reg[15]_i_1_n_2\,
      CO(0) => \clkdiv_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[15]_i_1_n_4\,
      O(2) => \clkdiv_reg[15]_i_1_n_5\,
      O(1) => \clkdiv_reg[15]_i_1_n_6\,
      O(0) => \clkdiv_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(15 downto 12)
    );
\clkdiv_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[19]_i_1_n_7\,
      Q => \^clkdiv\(16)
    );
\clkdiv_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[19]_i_1_n_6\,
      Q => \^clkdiv\(17)
    );
\clkdiv_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[19]_i_1_n_5\,
      Q => \^clkdiv\(18)
    );
\clkdiv_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[19]_i_1_n_4\,
      Q => \^clkdiv\(19)
    );
\clkdiv_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[15]_i_1_n_0\,
      CO(3) => \clkdiv_reg[19]_i_1_n_0\,
      CO(2) => \clkdiv_reg[19]_i_1_n_1\,
      CO(1) => \clkdiv_reg[19]_i_1_n_2\,
      CO(0) => \clkdiv_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[19]_i_1_n_4\,
      O(2) => \clkdiv_reg[19]_i_1_n_5\,
      O(1) => \clkdiv_reg[19]_i_1_n_6\,
      O(0) => \clkdiv_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(19 downto 16)
    );
\clkdiv_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[3]_i_1_n_6\,
      Q => \^clkdiv\(1)
    );
\clkdiv_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[23]_i_1_n_7\,
      Q => \^clkdiv\(20)
    );
\clkdiv_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[23]_i_1_n_6\,
      Q => \^clkdiv\(21)
    );
\clkdiv_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[23]_i_1_n_5\,
      Q => \^clkdiv\(22)
    );
\clkdiv_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[23]_i_1_n_4\,
      Q => \^clkdiv\(23)
    );
\clkdiv_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[19]_i_1_n_0\,
      CO(3) => \clkdiv_reg[23]_i_1_n_0\,
      CO(2) => \clkdiv_reg[23]_i_1_n_1\,
      CO(1) => \clkdiv_reg[23]_i_1_n_2\,
      CO(0) => \clkdiv_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[23]_i_1_n_4\,
      O(2) => \clkdiv_reg[23]_i_1_n_5\,
      O(1) => \clkdiv_reg[23]_i_1_n_6\,
      O(0) => \clkdiv_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(23 downto 20)
    );
\clkdiv_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[27]_i_1_n_7\,
      Q => \^clkdiv\(24)
    );
\clkdiv_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[27]_i_1_n_6\,
      Q => \^clkdiv\(25)
    );
\clkdiv_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[27]_i_1_n_5\,
      Q => \^clkdiv\(26)
    );
\clkdiv_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[27]_i_1_n_4\,
      Q => \^clkdiv\(27)
    );
\clkdiv_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[23]_i_1_n_0\,
      CO(3) => \clkdiv_reg[27]_i_1_n_0\,
      CO(2) => \clkdiv_reg[27]_i_1_n_1\,
      CO(1) => \clkdiv_reg[27]_i_1_n_2\,
      CO(0) => \clkdiv_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[27]_i_1_n_4\,
      O(2) => \clkdiv_reg[27]_i_1_n_5\,
      O(1) => \clkdiv_reg[27]_i_1_n_6\,
      O(0) => \clkdiv_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(27 downto 24)
    );
\clkdiv_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[31]_i_1_n_7\,
      Q => \^clkdiv\(28)
    );
\clkdiv_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[31]_i_1_n_6\,
      Q => \^clkdiv\(29)
    );
\clkdiv_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[3]_i_1_n_5\,
      Q => \^clkdiv\(2)
    );
\clkdiv_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[31]_i_1_n_5\,
      Q => \^clkdiv\(30)
    );
\clkdiv_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[31]_i_1_n_4\,
      Q => \^clkdiv\(31)
    );
\clkdiv_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[27]_i_1_n_0\,
      CO(3) => \NLW_clkdiv_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clkdiv_reg[31]_i_1_n_1\,
      CO(1) => \clkdiv_reg[31]_i_1_n_2\,
      CO(0) => \clkdiv_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[31]_i_1_n_4\,
      O(2) => \clkdiv_reg[31]_i_1_n_5\,
      O(1) => \clkdiv_reg[31]_i_1_n_6\,
      O(0) => \clkdiv_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(31 downto 28)
    );
\clkdiv_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[3]_i_1_n_4\,
      Q => \^clkdiv\(3)
    );
\clkdiv_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clkdiv_reg[3]_i_1_n_0\,
      CO(2) => \clkdiv_reg[3]_i_1_n_1\,
      CO(1) => \clkdiv_reg[3]_i_1_n_2\,
      CO(0) => \clkdiv_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clkdiv_reg[3]_i_1_n_4\,
      O(2) => \clkdiv_reg[3]_i_1_n_5\,
      O(1) => \clkdiv_reg[3]_i_1_n_6\,
      O(0) => \clkdiv_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^clkdiv\(3 downto 1),
      S(0) => \clkdiv[3]_i_2_n_0\
    );
\clkdiv_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[7]_i_1_n_7\,
      Q => \^clkdiv\(4)
    );
\clkdiv_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[7]_i_1_n_6\,
      Q => \^clkdiv\(5)
    );
\clkdiv_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[7]_i_1_n_5\,
      Q => \^clkdiv\(6)
    );
\clkdiv_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[7]_i_1_n_4\,
      Q => \^clkdiv\(7)
    );
\clkdiv_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clkdiv_reg[3]_i_1_n_0\,
      CO(3) => \clkdiv_reg[7]_i_1_n_0\,
      CO(2) => \clkdiv_reg[7]_i_1_n_1\,
      CO(1) => \clkdiv_reg[7]_i_1_n_2\,
      CO(0) => \clkdiv_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clkdiv_reg[7]_i_1_n_4\,
      O(2) => \clkdiv_reg[7]_i_1_n_5\,
      O(1) => \clkdiv_reg[7]_i_1_n_6\,
      O(0) => \clkdiv_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^clkdiv\(7 downto 4)
    );
\clkdiv_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[11]_i_1_n_7\,
      Q => \^clkdiv\(8)
    );
\clkdiv_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \clkdiv_reg[11]_i_1_n_6\,
      Q => \^clkdiv\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    SW2 : in STD_LOGIC;
    SW8 : in STD_LOGIC;
    STEP : in STD_LOGIC;
    clkdiv : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk_CPU : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clk_div_0,clk_div,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clk_div,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div
     port map (
      Clk_CPU => Clk_CPU,
      STEP => STEP,
      SW2 => SW2,
      SW8 => SW8,
      clk => clk,
      clkdiv(31 downto 0) => clkdiv(31 downto 0),
      rst => rst
    );
end STRUCTURE;
