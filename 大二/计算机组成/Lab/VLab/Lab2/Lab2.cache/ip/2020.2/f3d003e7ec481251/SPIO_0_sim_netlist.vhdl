-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:44:44 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPIO_0_sim_netlist.vhdl
-- Design      : SPIO_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LED_P2S is
  port (
    LED_PEN : out STD_LOGIC;
    Start : in STD_LOGIC;
    clk : in STD_LOGIC;
    led_clk : out STD_LOGIC;
    led_sout : out STD_LOGIC;
    rst : in STD_LOGIC;
    LED_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LED_P2S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LED_P2S is
  signal EN_i_1_n_0 : STD_LOGIC;
  signal \^led_pen\ : STD_LOGIC;
  signal \buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[0]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[0]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \^led_clk\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal s_clk_i_1_n_0 : STD_LOGIC;
  signal shift_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shift_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \^start\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EN_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \buffer[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \buffer[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \buffer[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \buffer[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buffer[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \buffer[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buffer[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \buffer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buffer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buffer[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \buffer[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \buffer[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \buffer[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \buffer[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_count[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair1";
begin
  LED_PEN <= \^led_pen\;
  led_clk <= \^led_clk\;
EN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB000B"
    )
        port map (
      I0 => \^start\(1),
      I1 => \^start\(0),
      I2 => state(0),
      I3 => state(1),
      I4 => \^led_pen\,
      O => EN_i_1_n_0
    );
EN_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => EN_i_1_n_0,
      Q => \^led_pen\
    );
\buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF10AA10"
    )
        port map (
      I0 => state(1),
      I1 => \^start\(1),
      I2 => \^start\(0),
      I3 => state(0),
      I4 => \buffer[0]_i_3_n_0\,
      I5 => rst,
      O => \buffer[0]_i_1_n_0\
    );
\buffer[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(0),
      I1 => state(0),
      I2 => LED_out(15),
      O => \buffer[0]_i_2_n_0\
    );
\buffer[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => shift_count(3),
      I1 => shift_count(1),
      I2 => shift_count(0),
      I3 => shift_count(2),
      I4 => \^led_clk\,
      O => \buffer[0]_i_3_n_0\
    );
\buffer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(10),
      I1 => state(0),
      I2 => LED_out(5),
      O => \buffer[10]_i_1_n_0\
    );
\buffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(11),
      I1 => state(0),
      I2 => LED_out(4),
      O => \buffer[11]_i_1_n_0\
    );
\buffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(12),
      I1 => state(0),
      I2 => LED_out(3),
      O => \buffer[12]_i_1_n_0\
    );
\buffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(13),
      I1 => state(0),
      I2 => LED_out(2),
      O => \buffer[13]_i_1_n_0\
    );
\buffer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(14),
      I1 => state(0),
      I2 => LED_out(1),
      O => \buffer[14]_i_1_n_0\
    );
\buffer[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LED_out(0),
      I1 => state(0),
      O => \buffer[15]_i_1_n_0\
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(1),
      I1 => state(0),
      I2 => LED_out(14),
      O => \buffer[1]_i_1_n_0\
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(2),
      I1 => state(0),
      I2 => LED_out(13),
      O => \buffer[2]_i_1_n_0\
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(3),
      I1 => state(0),
      I2 => LED_out(12),
      O => \buffer[3]_i_1_n_0\
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(4),
      I1 => state(0),
      I2 => LED_out(11),
      O => \buffer[4]_i_1_n_0\
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(5),
      I1 => state(0),
      I2 => LED_out(10),
      O => \buffer[5]_i_1_n_0\
    );
\buffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(6),
      I1 => state(0),
      I2 => LED_out(9),
      O => \buffer[6]_i_1_n_0\
    );
\buffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(7),
      I1 => state(0),
      I2 => LED_out(8),
      O => \buffer[7]_i_1_n_0\
    );
\buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(8),
      I1 => state(0),
      I2 => LED_out(7),
      O => \buffer[8]_i_1_n_0\
    );
\buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in(9),
      I1 => state(0),
      I2 => LED_out(6),
      O => \buffer[9]_i_1_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[0]_i_2_n_0\,
      Q => led_sout,
      R => '0'
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[10]_i_1_n_0\,
      Q => p_0_in(9),
      R => '0'
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[11]_i_1_n_0\,
      Q => p_0_in(10),
      R => '0'
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[12]_i_1_n_0\,
      Q => p_0_in(11),
      R => '0'
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[13]_i_1_n_0\,
      Q => p_0_in(12),
      R => '0'
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[14]_i_1_n_0\,
      Q => p_0_in(13),
      R => '0'
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[15]_i_1_n_0\,
      Q => p_0_in(14),
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[1]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[2]_i_1_n_0\,
      Q => p_0_in(1),
      R => '0'
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[3]_i_1_n_0\,
      Q => p_0_in(2),
      R => '0'
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[4]_i_1_n_0\,
      Q => p_0_in(3),
      R => '0'
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[5]_i_1_n_0\,
      Q => p_0_in(4),
      R => '0'
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[6]_i_1_n_0\,
      Q => p_0_in(5),
      R => '0'
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[7]_i_1_n_0\,
      Q => p_0_in(6),
      R => '0'
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[8]_i_1_n_0\,
      Q => p_0_in(7),
      R => '0'
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer[9]_i_1_n_0\,
      Q => p_0_in(8),
      R => '0'
    );
s_clk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^led_clk\,
      O => s_clk_i_1_n_0
    );
s_clk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => s_clk_i_1_n_0,
      Q => \^led_clk\
    );
\shift_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => shift_count(0),
      O => \shift_count[0]_i_1_n_0\
    );
\shift_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => shift_count(0),
      I1 => shift_count(1),
      I2 => state(0),
      O => \shift_count[1]_i_1_n_0\
    );
\shift_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => shift_count(1),
      I1 => shift_count(0),
      I2 => shift_count(2),
      I3 => state(0),
      O => \shift_count[2]_i_1_n_0\
    );
\shift_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD0D"
    )
        port map (
      I0 => \^start\(0),
      I1 => \^start\(1),
      I2 => state(0),
      I3 => \buffer[0]_i_3_n_0\,
      I4 => state(1),
      O => \shift_count[3]_i_1_n_0\
    );
\shift_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => shift_count(2),
      I1 => shift_count(1),
      I2 => shift_count(0),
      I3 => shift_count(3),
      I4 => state(0),
      O => \shift_count[3]_i_2_n_0\
    );
\shift_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => rst,
      D => \shift_count[0]_i_1_n_0\,
      Q => shift_count(0)
    );
\shift_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => rst,
      D => \shift_count[1]_i_1_n_0\,
      Q => shift_count(1)
    );
\shift_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => rst,
      D => \shift_count[2]_i_1_n_0\,
      Q => shift_count(2)
    );
\shift_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => rst,
      D => \shift_count[3]_i_2_n_0\,
      Q => shift_count(3)
    );
\start_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Start,
      Q => \^start\(0),
      R => '0'
    );
\start_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^start\(0),
      Q => \^start\(1),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^start\(0),
      I1 => \^start\(1),
      I2 => state(0),
      I3 => state(1),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80000000"
    )
        port map (
      I0 => shift_count(2),
      I1 => shift_count(1),
      I2 => shift_count(0),
      I3 => shift_count(3),
      I4 => state(0),
      I5 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \state[0]_i_1_n_0\,
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \state[1]_i_1_n_0\,
      Q => state(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPIO is
  port (
    EN : in STD_LOGIC;
    LED_PEN : out STD_LOGIC;
    Start : in STD_LOGIC;
    clk : in STD_LOGIC;
    led_clk : out STD_LOGIC;
    led_clrn : out STD_LOGIC;
    led_sout : out STD_LOGIC;
    rst : in STD_LOGIC;
    GPIOf0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    LED_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    P_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_set : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPIO : entity is "984c3a83";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPIO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPIO is
  signal \<const1>\ : STD_LOGIC;
  signal \GPIOf0[13]_i_1_n_0\ : STD_LOGIC;
  signal \^led_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  LED_out(15 downto 0) <= \^led_out\(15 downto 0);
  led_clrn <= \<const1>\;
\GPIOf0[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EN,
      I1 => rst,
      O => \GPIOf0[13]_i_1_n_0\
    );
\GPIOf0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(18),
      Q => GPIOf0(0),
      R => '0'
    );
\GPIOf0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(28),
      Q => GPIOf0(10),
      R => '0'
    );
\GPIOf0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(29),
      Q => GPIOf0(11),
      R => '0'
    );
\GPIOf0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(30),
      Q => GPIOf0(12),
      R => '0'
    );
\GPIOf0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(31),
      Q => GPIOf0(13),
      R => '0'
    );
\GPIOf0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(19),
      Q => GPIOf0(1),
      R => '0'
    );
\GPIOf0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(20),
      Q => GPIOf0(2),
      R => '0'
    );
\GPIOf0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(21),
      Q => GPIOf0(3),
      R => '0'
    );
\GPIOf0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(22),
      Q => GPIOf0(4),
      R => '0'
    );
\GPIOf0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(23),
      Q => GPIOf0(5),
      R => '0'
    );
\GPIOf0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(24),
      Q => GPIOf0(6),
      R => '0'
    );
\GPIOf0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(25),
      Q => GPIOf0(7),
      R => '0'
    );
\GPIOf0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(26),
      Q => GPIOf0(8),
      R => '0'
    );
\GPIOf0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \GPIOf0[13]_i_1_n_0\,
      D => P_Data(27),
      Q => GPIOf0(9),
      R => '0'
    );
LED_P2S: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LED_P2S
     port map (
      LED_PEN => LED_PEN,
      LED_out(15 downto 0) => \^led_out\(15 downto 0),
      Start => Start,
      clk => clk,
      led_clk => led_clk,
      led_sout => led_sout,
      rst => rst
    );
\LED_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(2),
      Q => \^led_out\(0)
    );
\LED_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(12),
      Q => \^led_out\(10)
    );
\LED_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(13),
      Q => \^led_out\(11)
    );
\LED_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(14),
      Q => \^led_out\(12)
    );
\LED_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(15),
      Q => \^led_out\(13)
    );
\LED_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(16),
      Q => \^led_out\(14)
    );
\LED_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(17),
      Q => \^led_out\(15)
    );
\LED_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      D => P_Data(3),
      PRE => rst,
      Q => \^led_out\(1)
    );
\LED_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(4),
      Q => \^led_out\(2)
    );
\LED_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      D => P_Data(5),
      PRE => rst,
      Q => \^led_out\(3)
    );
\LED_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(6),
      Q => \^led_out\(4)
    );
\LED_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      D => P_Data(7),
      PRE => rst,
      Q => \^led_out\(5)
    );
\LED_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(8),
      Q => \^led_out\(6)
    );
\LED_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(9),
      Q => \^led_out\(7)
    );
\LED_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(10),
      Q => \^led_out\(8)
    );
\LED_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(11),
      Q => \^led_out\(9)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\counter_set_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(0),
      Q => counter_set(0)
    );
\counter_set_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => P_Data(1),
      Q => counter_set(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    EN : in STD_LOGIC;
    LED_PEN : out STD_LOGIC;
    Start : in STD_LOGIC;
    clk : in STD_LOGIC;
    led_clk : out STD_LOGIC;
    led_clrn : out STD_LOGIC;
    led_sout : out STD_LOGIC;
    rst : in STD_LOGIC;
    GPIOf0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    LED_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    P_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_set : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPIO_0,SPIO,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPIO,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of led_clk : signal is "xilinx.com:signal:clock:1.0 led_clk CLK";
  attribute X_INTERFACE_PARAMETER of led_clk : signal is "XIL_INTERFACENAME led_clk, ASSOCIATED_BUSIF led_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPIO
     port map (
      EN => EN,
      GPIOf0(13 downto 0) => GPIOf0(13 downto 0),
      LED_PEN => LED_PEN,
      LED_out(15 downto 0) => LED_out(15 downto 0),
      P_Data(31 downto 0) => P_Data(31 downto 0),
      Start => Start,
      clk => clk,
      counter_set(1 downto 0) => counter_set(1 downto 0),
      led_clk => led_clk,
      led_clrn => led_clrn,
      led_sout => led_sout,
      rst => rst
    );
end STRUCTURE;
