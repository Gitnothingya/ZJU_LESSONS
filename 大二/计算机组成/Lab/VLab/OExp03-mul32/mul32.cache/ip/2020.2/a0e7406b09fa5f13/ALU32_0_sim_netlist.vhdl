-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar 27 10:40:08 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ALU32_0_sim_netlist.vhdl
-- Design      : ALU32_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc is
  port (
    S : out STD_LOGIC_VECTOR ( 32 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C0 : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc is
  signal \S[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_n_0\ : STD_LOGIC;
  signal \S[0]_INST_0_n_1\ : STD_LOGIC;
  signal \S[0]_INST_0_n_2\ : STD_LOGIC;
  signal \S[0]_INST_0_n_3\ : STD_LOGIC;
  signal \S[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_n_1\ : STD_LOGIC;
  signal \S[12]_INST_0_n_2\ : STD_LOGIC;
  signal \S[12]_INST_0_n_3\ : STD_LOGIC;
  signal \S[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_n_1\ : STD_LOGIC;
  signal \S[16]_INST_0_n_2\ : STD_LOGIC;
  signal \S[16]_INST_0_n_3\ : STD_LOGIC;
  signal \S[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_n_1\ : STD_LOGIC;
  signal \S[20]_INST_0_n_2\ : STD_LOGIC;
  signal \S[20]_INST_0_n_3\ : STD_LOGIC;
  signal \S[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_n_1\ : STD_LOGIC;
  signal \S[24]_INST_0_n_2\ : STD_LOGIC;
  signal \S[24]_INST_0_n_3\ : STD_LOGIC;
  signal \S[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_n_1\ : STD_LOGIC;
  signal \S[28]_INST_0_n_2\ : STD_LOGIC;
  signal \S[28]_INST_0_n_3\ : STD_LOGIC;
  signal \S[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_n_1\ : STD_LOGIC;
  signal \S[4]_INST_0_n_2\ : STD_LOGIC;
  signal \S[4]_INST_0_n_3\ : STD_LOGIC;
  signal \S[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_n_1\ : STD_LOGIC;
  signal \S[8]_INST_0_n_2\ : STD_LOGIC;
  signal \S[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_S[32]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S[32]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \S[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[16]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[20]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[24]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[28]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[32]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \S[8]_INST_0\ : label is 35;
begin
\S[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \S[0]_INST_0_n_0\,
      CO(2) => \S[0]_INST_0_n_1\,
      CO(1) => \S[0]_INST_0_n_2\,
      CO(0) => \S[0]_INST_0_n_3\,
      CYINIT => C0,
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => S(3 downto 0),
      S(3) => \S[0]_INST_0_i_1_n_0\,
      S(2) => \S[0]_INST_0_i_2_n_0\,
      S(1) => \S[0]_INST_0_i_3_n_0\,
      S(0) => \S[0]_INST_0_i_4_n_0\
    );
\S[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(3),
      I1 => C0,
      I2 => B(3),
      O => \S[0]_INST_0_i_1_n_0\
    );
\S[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(2),
      I1 => C0,
      I2 => B(2),
      O => \S[0]_INST_0_i_2_n_0\
    );
\S[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(1),
      I1 => C0,
      I2 => B(1),
      O => \S[0]_INST_0_i_3_n_0\
    );
\S[0]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(0),
      I1 => C0,
      I2 => B(0),
      O => \S[0]_INST_0_i_4_n_0\
    );
\S[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[8]_INST_0_n_0\,
      CO(3) => \S[12]_INST_0_n_0\,
      CO(2) => \S[12]_INST_0_n_1\,
      CO(1) => \S[12]_INST_0_n_2\,
      CO(0) => \S[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(15 downto 12),
      O(3 downto 0) => S(15 downto 12),
      S(3) => \S[12]_INST_0_i_1_n_0\,
      S(2) => \S[12]_INST_0_i_2_n_0\,
      S(1) => \S[12]_INST_0_i_3_n_0\,
      S(0) => \S[12]_INST_0_i_4_n_0\
    );
\S[12]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(15),
      I1 => C0,
      I2 => B(15),
      O => \S[12]_INST_0_i_1_n_0\
    );
\S[12]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(14),
      I1 => C0,
      I2 => B(14),
      O => \S[12]_INST_0_i_2_n_0\
    );
\S[12]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(13),
      I1 => C0,
      I2 => B(13),
      O => \S[12]_INST_0_i_3_n_0\
    );
\S[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(12),
      I1 => C0,
      I2 => B(12),
      O => \S[12]_INST_0_i_4_n_0\
    );
\S[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[12]_INST_0_n_0\,
      CO(3) => \S[16]_INST_0_n_0\,
      CO(2) => \S[16]_INST_0_n_1\,
      CO(1) => \S[16]_INST_0_n_2\,
      CO(0) => \S[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(19 downto 16),
      O(3 downto 0) => S(19 downto 16),
      S(3) => \S[16]_INST_0_i_1_n_0\,
      S(2) => \S[16]_INST_0_i_2_n_0\,
      S(1) => \S[16]_INST_0_i_3_n_0\,
      S(0) => \S[16]_INST_0_i_4_n_0\
    );
\S[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(19),
      I1 => C0,
      I2 => B(19),
      O => \S[16]_INST_0_i_1_n_0\
    );
\S[16]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(18),
      I1 => C0,
      I2 => B(18),
      O => \S[16]_INST_0_i_2_n_0\
    );
\S[16]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(17),
      I1 => C0,
      I2 => B(17),
      O => \S[16]_INST_0_i_3_n_0\
    );
\S[16]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(16),
      I1 => C0,
      I2 => B(16),
      O => \S[16]_INST_0_i_4_n_0\
    );
\S[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[16]_INST_0_n_0\,
      CO(3) => \S[20]_INST_0_n_0\,
      CO(2) => \S[20]_INST_0_n_1\,
      CO(1) => \S[20]_INST_0_n_2\,
      CO(0) => \S[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(23 downto 20),
      O(3 downto 0) => S(23 downto 20),
      S(3) => \S[20]_INST_0_i_1_n_0\,
      S(2) => \S[20]_INST_0_i_2_n_0\,
      S(1) => \S[20]_INST_0_i_3_n_0\,
      S(0) => \S[20]_INST_0_i_4_n_0\
    );
\S[20]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(23),
      I1 => C0,
      I2 => B(23),
      O => \S[20]_INST_0_i_1_n_0\
    );
\S[20]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(22),
      I1 => C0,
      I2 => B(22),
      O => \S[20]_INST_0_i_2_n_0\
    );
\S[20]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(21),
      I1 => C0,
      I2 => B(21),
      O => \S[20]_INST_0_i_3_n_0\
    );
\S[20]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(20),
      I1 => C0,
      I2 => B(20),
      O => \S[20]_INST_0_i_4_n_0\
    );
\S[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[20]_INST_0_n_0\,
      CO(3) => \S[24]_INST_0_n_0\,
      CO(2) => \S[24]_INST_0_n_1\,
      CO(1) => \S[24]_INST_0_n_2\,
      CO(0) => \S[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(27 downto 24),
      O(3 downto 0) => S(27 downto 24),
      S(3) => \S[24]_INST_0_i_1_n_0\,
      S(2) => \S[24]_INST_0_i_2_n_0\,
      S(1) => \S[24]_INST_0_i_3_n_0\,
      S(0) => \S[24]_INST_0_i_4_n_0\
    );
\S[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(27),
      I1 => C0,
      I2 => B(27),
      O => \S[24]_INST_0_i_1_n_0\
    );
\S[24]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(26),
      I1 => C0,
      I2 => B(26),
      O => \S[24]_INST_0_i_2_n_0\
    );
\S[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(25),
      I1 => C0,
      I2 => B(25),
      O => \S[24]_INST_0_i_3_n_0\
    );
\S[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(24),
      I1 => C0,
      I2 => B(24),
      O => \S[24]_INST_0_i_4_n_0\
    );
\S[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[24]_INST_0_n_0\,
      CO(3) => \S[28]_INST_0_n_0\,
      CO(2) => \S[28]_INST_0_n_1\,
      CO(1) => \S[28]_INST_0_n_2\,
      CO(0) => \S[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(31 downto 28),
      O(3 downto 0) => S(31 downto 28),
      S(3) => \S[28]_INST_0_i_1_n_0\,
      S(2) => \S[28]_INST_0_i_2_n_0\,
      S(1) => \S[28]_INST_0_i_3_n_0\,
      S(0) => \S[28]_INST_0_i_4_n_0\
    );
\S[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(31),
      I1 => C0,
      I2 => B(31),
      O => \S[28]_INST_0_i_1_n_0\
    );
\S[28]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(30),
      I1 => C0,
      I2 => B(30),
      O => \S[28]_INST_0_i_2_n_0\
    );
\S[28]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(29),
      I1 => C0,
      I2 => B(29),
      O => \S[28]_INST_0_i_3_n_0\
    );
\S[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(28),
      I1 => C0,
      I2 => B(28),
      O => \S[28]_INST_0_i_4_n_0\
    );
\S[32]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[28]_INST_0_n_0\,
      CO(3 downto 0) => \NLW_S[32]_INST_0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_S[32]_INST_0_O_UNCONNECTED\(3 downto 1),
      O(0) => S(32),
      S(3 downto 1) => B"000",
      S(0) => C0
    );
\S[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[0]_INST_0_n_0\,
      CO(3) => \S[4]_INST_0_n_0\,
      CO(2) => \S[4]_INST_0_n_1\,
      CO(1) => \S[4]_INST_0_n_2\,
      CO(0) => \S[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3 downto 0) => S(7 downto 4),
      S(3) => \S[4]_INST_0_i_1_n_0\,
      S(2) => \S[4]_INST_0_i_2_n_0\,
      S(1) => \S[4]_INST_0_i_3_n_0\,
      S(0) => \S[4]_INST_0_i_4_n_0\
    );
\S[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(7),
      I1 => C0,
      I2 => B(7),
      O => \S[4]_INST_0_i_1_n_0\
    );
\S[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(6),
      I1 => C0,
      I2 => B(6),
      O => \S[4]_INST_0_i_2_n_0\
    );
\S[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(5),
      I1 => C0,
      I2 => B(5),
      O => \S[4]_INST_0_i_3_n_0\
    );
\S[4]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(4),
      I1 => C0,
      I2 => B(4),
      O => \S[4]_INST_0_i_4_n_0\
    );
\S[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S[4]_INST_0_n_0\,
      CO(3) => \S[8]_INST_0_n_0\,
      CO(2) => \S[8]_INST_0_n_1\,
      CO(1) => \S[8]_INST_0_n_2\,
      CO(0) => \S[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3 downto 0) => S(11 downto 8),
      S(3) => \S[8]_INST_0_i_1_n_0\,
      S(2) => \S[8]_INST_0_i_2_n_0\,
      S(1) => \S[8]_INST_0_i_3_n_0\,
      S(0) => \S[8]_INST_0_i_4_n_0\
    );
\S[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(11),
      I1 => C0,
      I2 => B(11),
      O => \S[8]_INST_0_i_1_n_0\
    );
\S[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(10),
      I1 => C0,
      I2 => B(10),
      O => \S[8]_INST_0_i_2_n_0\
    );
\S[8]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(9),
      I1 => C0,
      I2 => B(9),
      O => \S[8]_INST_0_i_3_n_0\
    );
\S[8]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(8),
      I1 => C0,
      I2 => B(8),
      O => \S[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32 is
  port (
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132 is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132 is
  signal \o[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o[9]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\o[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[0]_INST_0_i_1_n_0\,
      I1 => \o[0]_INST_0_i_2_n_0\,
      O => o(0),
      S => s(2)
    );
\o[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(0),
      I1 => I2(0),
      I2 => s(1),
      I3 => I1(0),
      I4 => s(0),
      I5 => I0(0),
      O => \o[0]_INST_0_i_1_n_0\
    );
\o[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I7(0),
      I1 => I2(0),
      I2 => s(1),
      I3 => I5(0),
      I4 => s(0),
      I5 => I4(0),
      O => \o[0]_INST_0_i_2_n_0\
    );
\o[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[10]_INST_0_i_1_n_0\,
      I1 => \o[10]_INST_0_i_2_n_0\,
      O => o(10),
      S => s(2)
    );
\o[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(10),
      I1 => I2(10),
      I2 => s(1),
      I3 => I1(10),
      I4 => s(0),
      I5 => I0(10),
      O => \o[10]_INST_0_i_1_n_0\
    );
\o[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(10),
      I1 => s(1),
      I2 => I5(10),
      I3 => s(0),
      I4 => I4(10),
      O => \o[10]_INST_0_i_2_n_0\
    );
\o[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[11]_INST_0_i_1_n_0\,
      I1 => \o[11]_INST_0_i_2_n_0\,
      O => o(11),
      S => s(2)
    );
\o[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(11),
      I1 => I2(11),
      I2 => s(1),
      I3 => I1(11),
      I4 => s(0),
      I5 => I0(11),
      O => \o[11]_INST_0_i_1_n_0\
    );
\o[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(11),
      I1 => s(1),
      I2 => I5(11),
      I3 => s(0),
      I4 => I4(11),
      O => \o[11]_INST_0_i_2_n_0\
    );
\o[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[12]_INST_0_i_1_n_0\,
      I1 => \o[12]_INST_0_i_2_n_0\,
      O => o(12),
      S => s(2)
    );
\o[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(12),
      I1 => I2(12),
      I2 => s(1),
      I3 => I1(12),
      I4 => s(0),
      I5 => I0(12),
      O => \o[12]_INST_0_i_1_n_0\
    );
\o[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(12),
      I1 => s(1),
      I2 => I5(12),
      I3 => s(0),
      I4 => I4(12),
      O => \o[12]_INST_0_i_2_n_0\
    );
\o[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[13]_INST_0_i_1_n_0\,
      I1 => \o[13]_INST_0_i_2_n_0\,
      O => o(13),
      S => s(2)
    );
\o[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(13),
      I1 => I2(13),
      I2 => s(1),
      I3 => I1(13),
      I4 => s(0),
      I5 => I0(13),
      O => \o[13]_INST_0_i_1_n_0\
    );
\o[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(13),
      I1 => s(1),
      I2 => I5(13),
      I3 => s(0),
      I4 => I4(13),
      O => \o[13]_INST_0_i_2_n_0\
    );
\o[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[14]_INST_0_i_1_n_0\,
      I1 => \o[14]_INST_0_i_2_n_0\,
      O => o(14),
      S => s(2)
    );
\o[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(14),
      I1 => I2(14),
      I2 => s(1),
      I3 => I1(14),
      I4 => s(0),
      I5 => I0(14),
      O => \o[14]_INST_0_i_1_n_0\
    );
\o[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(14),
      I1 => s(1),
      I2 => I5(14),
      I3 => s(0),
      I4 => I4(14),
      O => \o[14]_INST_0_i_2_n_0\
    );
\o[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[15]_INST_0_i_1_n_0\,
      I1 => \o[15]_INST_0_i_2_n_0\,
      O => o(15),
      S => s(2)
    );
\o[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(15),
      I1 => I2(15),
      I2 => s(1),
      I3 => I1(15),
      I4 => s(0),
      I5 => I0(15),
      O => \o[15]_INST_0_i_1_n_0\
    );
\o[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(15),
      I1 => s(1),
      I2 => I5(15),
      I3 => s(0),
      I4 => I4(15),
      O => \o[15]_INST_0_i_2_n_0\
    );
\o[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[16]_INST_0_i_1_n_0\,
      I1 => \o[16]_INST_0_i_2_n_0\,
      O => o(16),
      S => s(2)
    );
\o[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(16),
      I1 => I2(16),
      I2 => s(1),
      I3 => I1(16),
      I4 => s(0),
      I5 => I0(16),
      O => \o[16]_INST_0_i_1_n_0\
    );
\o[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(16),
      I1 => s(1),
      I2 => I5(16),
      I3 => s(0),
      I4 => I4(16),
      O => \o[16]_INST_0_i_2_n_0\
    );
\o[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[17]_INST_0_i_1_n_0\,
      I1 => \o[17]_INST_0_i_2_n_0\,
      O => o(17),
      S => s(2)
    );
\o[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(17),
      I1 => I2(17),
      I2 => s(1),
      I3 => I1(17),
      I4 => s(0),
      I5 => I0(17),
      O => \o[17]_INST_0_i_1_n_0\
    );
\o[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(17),
      I1 => s(1),
      I2 => I5(17),
      I3 => s(0),
      I4 => I4(17),
      O => \o[17]_INST_0_i_2_n_0\
    );
\o[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[18]_INST_0_i_1_n_0\,
      I1 => \o[18]_INST_0_i_2_n_0\,
      O => o(18),
      S => s(2)
    );
\o[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(18),
      I1 => I2(18),
      I2 => s(1),
      I3 => I1(18),
      I4 => s(0),
      I5 => I0(18),
      O => \o[18]_INST_0_i_1_n_0\
    );
\o[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(18),
      I1 => s(1),
      I2 => I5(18),
      I3 => s(0),
      I4 => I4(18),
      O => \o[18]_INST_0_i_2_n_0\
    );
\o[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[19]_INST_0_i_1_n_0\,
      I1 => \o[19]_INST_0_i_2_n_0\,
      O => o(19),
      S => s(2)
    );
\o[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(19),
      I1 => I2(19),
      I2 => s(1),
      I3 => I1(19),
      I4 => s(0),
      I5 => I0(19),
      O => \o[19]_INST_0_i_1_n_0\
    );
\o[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(19),
      I1 => s(1),
      I2 => I5(19),
      I3 => s(0),
      I4 => I4(19),
      O => \o[19]_INST_0_i_2_n_0\
    );
\o[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[1]_INST_0_i_1_n_0\,
      I1 => \o[1]_INST_0_i_2_n_0\,
      O => o(1),
      S => s(2)
    );
\o[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(1),
      I1 => I2(1),
      I2 => s(1),
      I3 => I1(1),
      I4 => s(0),
      I5 => I0(1),
      O => \o[1]_INST_0_i_1_n_0\
    );
\o[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(1),
      I1 => s(1),
      I2 => I5(1),
      I3 => s(0),
      I4 => I4(1),
      O => \o[1]_INST_0_i_2_n_0\
    );
\o[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[20]_INST_0_i_1_n_0\,
      I1 => \o[20]_INST_0_i_2_n_0\,
      O => o(20),
      S => s(2)
    );
\o[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(20),
      I1 => I2(20),
      I2 => s(1),
      I3 => I1(20),
      I4 => s(0),
      I5 => I0(20),
      O => \o[20]_INST_0_i_1_n_0\
    );
\o[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(20),
      I1 => s(1),
      I2 => I5(20),
      I3 => s(0),
      I4 => I4(20),
      O => \o[20]_INST_0_i_2_n_0\
    );
\o[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[21]_INST_0_i_1_n_0\,
      I1 => \o[21]_INST_0_i_2_n_0\,
      O => o(21),
      S => s(2)
    );
\o[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(21),
      I1 => I2(21),
      I2 => s(1),
      I3 => I1(21),
      I4 => s(0),
      I5 => I0(21),
      O => \o[21]_INST_0_i_1_n_0\
    );
\o[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(21),
      I1 => s(1),
      I2 => I5(21),
      I3 => s(0),
      I4 => I4(21),
      O => \o[21]_INST_0_i_2_n_0\
    );
\o[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[22]_INST_0_i_1_n_0\,
      I1 => \o[22]_INST_0_i_2_n_0\,
      O => o(22),
      S => s(2)
    );
\o[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(22),
      I1 => I2(22),
      I2 => s(1),
      I3 => I1(22),
      I4 => s(0),
      I5 => I0(22),
      O => \o[22]_INST_0_i_1_n_0\
    );
\o[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(22),
      I1 => s(1),
      I2 => I5(22),
      I3 => s(0),
      I4 => I4(22),
      O => \o[22]_INST_0_i_2_n_0\
    );
\o[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[23]_INST_0_i_1_n_0\,
      I1 => \o[23]_INST_0_i_2_n_0\,
      O => o(23),
      S => s(2)
    );
\o[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(23),
      I1 => I2(23),
      I2 => s(1),
      I3 => I1(23),
      I4 => s(0),
      I5 => I0(23),
      O => \o[23]_INST_0_i_1_n_0\
    );
\o[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(23),
      I1 => s(1),
      I2 => I5(23),
      I3 => s(0),
      I4 => I4(23),
      O => \o[23]_INST_0_i_2_n_0\
    );
\o[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[24]_INST_0_i_1_n_0\,
      I1 => \o[24]_INST_0_i_2_n_0\,
      O => o(24),
      S => s(2)
    );
\o[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(24),
      I1 => I2(24),
      I2 => s(1),
      I3 => I1(24),
      I4 => s(0),
      I5 => I0(24),
      O => \o[24]_INST_0_i_1_n_0\
    );
\o[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(24),
      I1 => s(1),
      I2 => I5(24),
      I3 => s(0),
      I4 => I4(24),
      O => \o[24]_INST_0_i_2_n_0\
    );
\o[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[25]_INST_0_i_1_n_0\,
      I1 => \o[25]_INST_0_i_2_n_0\,
      O => o(25),
      S => s(2)
    );
\o[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(25),
      I1 => I2(25),
      I2 => s(1),
      I3 => I1(25),
      I4 => s(0),
      I5 => I0(25),
      O => \o[25]_INST_0_i_1_n_0\
    );
\o[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(25),
      I1 => s(1),
      I2 => I5(25),
      I3 => s(0),
      I4 => I4(25),
      O => \o[25]_INST_0_i_2_n_0\
    );
\o[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[26]_INST_0_i_1_n_0\,
      I1 => \o[26]_INST_0_i_2_n_0\,
      O => o(26),
      S => s(2)
    );
\o[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(26),
      I1 => I2(26),
      I2 => s(1),
      I3 => I1(26),
      I4 => s(0),
      I5 => I0(26),
      O => \o[26]_INST_0_i_1_n_0\
    );
\o[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(26),
      I1 => s(1),
      I2 => I5(26),
      I3 => s(0),
      I4 => I4(26),
      O => \o[26]_INST_0_i_2_n_0\
    );
\o[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[27]_INST_0_i_1_n_0\,
      I1 => \o[27]_INST_0_i_2_n_0\,
      O => o(27),
      S => s(2)
    );
\o[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(27),
      I1 => I2(27),
      I2 => s(1),
      I3 => I1(27),
      I4 => s(0),
      I5 => I0(27),
      O => \o[27]_INST_0_i_1_n_0\
    );
\o[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(27),
      I1 => s(1),
      I2 => I5(27),
      I3 => s(0),
      I4 => I4(27),
      O => \o[27]_INST_0_i_2_n_0\
    );
\o[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[28]_INST_0_i_1_n_0\,
      I1 => \o[28]_INST_0_i_2_n_0\,
      O => o(28),
      S => s(2)
    );
\o[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(28),
      I1 => I2(28),
      I2 => s(1),
      I3 => I1(28),
      I4 => s(0),
      I5 => I0(28),
      O => \o[28]_INST_0_i_1_n_0\
    );
\o[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(28),
      I1 => s(1),
      I2 => I5(28),
      I3 => s(0),
      I4 => I4(28),
      O => \o[28]_INST_0_i_2_n_0\
    );
\o[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[29]_INST_0_i_1_n_0\,
      I1 => \o[29]_INST_0_i_2_n_0\,
      O => o(29),
      S => s(2)
    );
\o[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(29),
      I1 => I2(29),
      I2 => s(1),
      I3 => I1(29),
      I4 => s(0),
      I5 => I0(29),
      O => \o[29]_INST_0_i_1_n_0\
    );
\o[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(29),
      I1 => s(1),
      I2 => I5(29),
      I3 => s(0),
      I4 => I4(29),
      O => \o[29]_INST_0_i_2_n_0\
    );
\o[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[2]_INST_0_i_1_n_0\,
      I1 => \o[2]_INST_0_i_2_n_0\,
      O => o(2),
      S => s(2)
    );
\o[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(2),
      I1 => I2(2),
      I2 => s(1),
      I3 => I1(2),
      I4 => s(0),
      I5 => I0(2),
      O => \o[2]_INST_0_i_1_n_0\
    );
\o[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(2),
      I1 => s(1),
      I2 => I5(2),
      I3 => s(0),
      I4 => I4(2),
      O => \o[2]_INST_0_i_2_n_0\
    );
\o[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[30]_INST_0_i_1_n_0\,
      I1 => \o[30]_INST_0_i_2_n_0\,
      O => o(30),
      S => s(2)
    );
\o[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(30),
      I1 => I2(30),
      I2 => s(1),
      I3 => I1(30),
      I4 => s(0),
      I5 => I0(30),
      O => \o[30]_INST_0_i_1_n_0\
    );
\o[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(30),
      I1 => s(1),
      I2 => I5(30),
      I3 => s(0),
      I4 => I4(30),
      O => \o[30]_INST_0_i_2_n_0\
    );
\o[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[31]_INST_0_i_1_n_0\,
      I1 => \o[31]_INST_0_i_2_n_0\,
      O => o(31),
      S => s(2)
    );
\o[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(31),
      I1 => I2(31),
      I2 => s(1),
      I3 => I1(31),
      I4 => s(0),
      I5 => I0(31),
      O => \o[31]_INST_0_i_1_n_0\
    );
\o[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(31),
      I1 => s(1),
      I2 => I5(31),
      I3 => s(0),
      I4 => I4(31),
      O => \o[31]_INST_0_i_2_n_0\
    );
\o[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[3]_INST_0_i_1_n_0\,
      I1 => \o[3]_INST_0_i_2_n_0\,
      O => o(3),
      S => s(2)
    );
\o[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(3),
      I1 => I2(3),
      I2 => s(1),
      I3 => I1(3),
      I4 => s(0),
      I5 => I0(3),
      O => \o[3]_INST_0_i_1_n_0\
    );
\o[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(3),
      I1 => s(1),
      I2 => I5(3),
      I3 => s(0),
      I4 => I4(3),
      O => \o[3]_INST_0_i_2_n_0\
    );
\o[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[4]_INST_0_i_1_n_0\,
      I1 => \o[4]_INST_0_i_2_n_0\,
      O => o(4),
      S => s(2)
    );
\o[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(4),
      I1 => I2(4),
      I2 => s(1),
      I3 => I1(4),
      I4 => s(0),
      I5 => I0(4),
      O => \o[4]_INST_0_i_1_n_0\
    );
\o[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(4),
      I1 => s(1),
      I2 => I5(4),
      I3 => s(0),
      I4 => I4(4),
      O => \o[4]_INST_0_i_2_n_0\
    );
\o[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[5]_INST_0_i_1_n_0\,
      I1 => \o[5]_INST_0_i_2_n_0\,
      O => o(5),
      S => s(2)
    );
\o[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(5),
      I1 => I2(5),
      I2 => s(1),
      I3 => I1(5),
      I4 => s(0),
      I5 => I0(5),
      O => \o[5]_INST_0_i_1_n_0\
    );
\o[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(5),
      I1 => s(1),
      I2 => I5(5),
      I3 => s(0),
      I4 => I4(5),
      O => \o[5]_INST_0_i_2_n_0\
    );
\o[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[6]_INST_0_i_1_n_0\,
      I1 => \o[6]_INST_0_i_2_n_0\,
      O => o(6),
      S => s(2)
    );
\o[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(6),
      I1 => I2(6),
      I2 => s(1),
      I3 => I1(6),
      I4 => s(0),
      I5 => I0(6),
      O => \o[6]_INST_0_i_1_n_0\
    );
\o[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(6),
      I1 => s(1),
      I2 => I5(6),
      I3 => s(0),
      I4 => I4(6),
      O => \o[6]_INST_0_i_2_n_0\
    );
\o[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[7]_INST_0_i_1_n_0\,
      I1 => \o[7]_INST_0_i_2_n_0\,
      O => o(7),
      S => s(2)
    );
\o[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(7),
      I1 => I2(7),
      I2 => s(1),
      I3 => I1(7),
      I4 => s(0),
      I5 => I0(7),
      O => \o[7]_INST_0_i_1_n_0\
    );
\o[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(7),
      I1 => s(1),
      I2 => I5(7),
      I3 => s(0),
      I4 => I4(7),
      O => \o[7]_INST_0_i_2_n_0\
    );
\o[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[8]_INST_0_i_1_n_0\,
      I1 => \o[8]_INST_0_i_2_n_0\,
      O => o(8),
      S => s(2)
    );
\o[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(8),
      I1 => I2(8),
      I2 => s(1),
      I3 => I1(8),
      I4 => s(0),
      I5 => I0(8),
      O => \o[8]_INST_0_i_1_n_0\
    );
\o[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(8),
      I1 => s(1),
      I2 => I5(8),
      I3 => s(0),
      I4 => I4(8),
      O => \o[8]_INST_0_i_2_n_0\
    );
\o[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o[9]_INST_0_i_1_n_0\,
      I1 => \o[9]_INST_0_i_2_n_0\,
      O => o(9),
      S => s(2)
    );
\o[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => I3(9),
      I1 => I2(9),
      I2 => s(1),
      I3 => I1(9),
      I4 => s(0),
      I5 => I0(9),
      O => \o[9]_INST_0_i_1_n_0\
    );
\o[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => I2(9),
      I1 => s(1),
      I2 => I5(9),
      I3 => s(0),
      I4 => I4(9),
      O => \o[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32 is
  port (
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32 is
  port (
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 : entity is "orl_0,orl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 : entity is "orl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0 is
  signal S_INST_0_i_1_n_0 : STD_LOGIC;
  signal S_INST_0_i_2_n_0 : STD_LOGIC;
  signal S_INST_0_i_3_n_0 : STD_LOGIC;
  signal S_INST_0_i_4_n_0 : STD_LOGIC;
  signal S_INST_0_i_5_n_0 : STD_LOGIC;
  signal S_INST_0_i_6_n_0 : STD_LOGIC;
begin
S_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => S_INST_0_i_1_n_0,
      I1 => S_INST_0_i_2_n_0,
      I2 => S_INST_0_i_3_n_0,
      I3 => S_INST_0_i_4_n_0,
      I4 => S_INST_0_i_5_n_0,
      I5 => S_INST_0_i_6_n_0,
      O => S
    );
S_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      O => S_INST_0_i_1_n_0
    );
S_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(4),
      I1 => A(5),
      I2 => A(2),
      I3 => A(3),
      I4 => A(7),
      I5 => A(6),
      O => S_INST_0_i_2_n_0
    );
S_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(10),
      I1 => A(11),
      I2 => A(8),
      I3 => A(9),
      I4 => A(13),
      I5 => A(12),
      O => S_INST_0_i_3_n_0
    );
S_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(16),
      I1 => A(17),
      I2 => A(14),
      I3 => A(15),
      I4 => A(19),
      I5 => A(18),
      O => S_INST_0_i_4_n_0
    );
S_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(22),
      I1 => A(23),
      I2 => A(20),
      I3 => A(21),
      I4 => A(25),
      I5 => A(24),
      O => S_INST_0_i_5_n_0
    );
S_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => A(28),
      I1 => A(29),
      I2 => A(26),
      I3 => A(27),
      I4 => A(31),
      I5 => A(30),
      O => S_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl is
  port (
    res : out STD_LOGIC_VECTOR ( 30 downto 0 );
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl is
  signal \res[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \res[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \res[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \res[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \res[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \res[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \res[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \res[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \res[0]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \res[0]_INST_0_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \res[10]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \res[10]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \res[11]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \res[11]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \res[12]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \res[12]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \res[13]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \res[13]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \res[14]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \res[14]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \res[15]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \res[15]_INST_0_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \res[16]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \res[16]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \res[16]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \res[17]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \res[17]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \res[17]_INST_0_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \res[18]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \res[18]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \res[18]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \res[19]_INST_0_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \res[19]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \res[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \res[26]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \res[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \res[28]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \res[29]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \res[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \res[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \res[4]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \res[5]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \res[6]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \res[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \res[8]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \res[8]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \res[9]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \res[9]_INST_0_i_2\ : label is "soft_lutpair1";
begin
\res[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \res[1]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[0]_INST_0_i_1_n_0\,
      I3 => B(1),
      I4 => \res[0]_INST_0_i_2_n_0\,
      O => res(0)
    );
\res[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[6]_INST_0_i_2_n_0\,
      I1 => B(2),
      I2 => \res[2]_INST_0_i_2_n_0\,
      O => \res[0]_INST_0_i_1_n_0\
    );
\res[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[4]_INST_0_i_2_n_0\,
      I1 => B(2),
      I2 => \res[0]_INST_0_i_3_n_0\,
      O => \res[0]_INST_0_i_2_n_0\
    );
\res[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(24),
      I1 => A(8),
      I2 => B(3),
      I3 => A(16),
      I4 => B(4),
      I5 => A(0),
      O => \res[0]_INST_0_i_3_n_0\
    );
\res[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[11]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[10]_INST_0_i_1_n_0\,
      O => res(10)
    );
\res[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[16]_INST_0_i_3_n_0\,
      I1 => \res[12]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[14]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[10]_INST_0_i_2_n_0\,
      O => \res[10]_INST_0_i_1_n_0\
    );
\res[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(18),
      I1 => B(3),
      I2 => A(26),
      I3 => B(4),
      I4 => A(10),
      O => \res[10]_INST_0_i_2_n_0\
    );
\res[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[12]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[11]_INST_0_i_1_n_0\,
      O => res(11)
    );
\res[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[17]_INST_0_i_3_n_0\,
      I1 => \res[13]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[15]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[11]_INST_0_i_2_n_0\,
      O => \res[11]_INST_0_i_1_n_0\
    );
\res[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(19),
      I1 => B(3),
      I2 => A(27),
      I3 => B(4),
      I4 => A(11),
      O => \res[11]_INST_0_i_2_n_0\
    );
\res[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[13]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[12]_INST_0_i_1_n_0\,
      O => res(12)
    );
\res[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[18]_INST_0_i_3_n_0\,
      I1 => \res[14]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[16]_INST_0_i_3_n_0\,
      I4 => B(2),
      I5 => \res[12]_INST_0_i_2_n_0\,
      O => \res[12]_INST_0_i_1_n_0\
    );
\res[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(20),
      I1 => B(3),
      I2 => A(28),
      I3 => B(4),
      I4 => A(12),
      O => \res[12]_INST_0_i_2_n_0\
    );
\res[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[14]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[13]_INST_0_i_1_n_0\,
      O => res(13)
    );
\res[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[19]_INST_0_i_3_n_0\,
      I1 => \res[15]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[17]_INST_0_i_3_n_0\,
      I4 => B(2),
      I5 => \res[13]_INST_0_i_2_n_0\,
      O => \res[13]_INST_0_i_1_n_0\
    );
\res[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(21),
      I1 => B(3),
      I2 => A(29),
      I3 => B(4),
      I4 => A(13),
      O => \res[13]_INST_0_i_2_n_0\
    );
\res[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[15]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[14]_INST_0_i_1_n_0\,
      O => res(14)
    );
\res[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[16]_INST_0_i_2_n_0\,
      I1 => \res[16]_INST_0_i_3_n_0\,
      I2 => B(1),
      I3 => \res[18]_INST_0_i_3_n_0\,
      I4 => B(2),
      I5 => \res[14]_INST_0_i_2_n_0\,
      O => \res[14]_INST_0_i_1_n_0\
    );
\res[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(22),
      I1 => B(3),
      I2 => A(30),
      I3 => B(4),
      I4 => A(14),
      O => \res[14]_INST_0_i_2_n_0\
    );
\res[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[16]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[15]_INST_0_i_1_n_0\,
      O => res(15)
    );
\res[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[17]_INST_0_i_2_n_0\,
      I1 => \res[17]_INST_0_i_3_n_0\,
      I2 => B(1),
      I3 => \res[19]_INST_0_i_3_n_0\,
      I4 => B(2),
      I5 => \res[15]_INST_0_i_2_n_0\,
      O => \res[15]_INST_0_i_1_n_0\
    );
\res[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(23),
      I1 => B(3),
      I2 => A(31),
      I3 => B(4),
      I4 => A(15),
      O => \res[15]_INST_0_i_2_n_0\
    );
\res[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[17]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[16]_INST_0_i_1_n_0\,
      O => res(16)
    );
\res[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[18]_INST_0_i_2_n_0\,
      I1 => \res[18]_INST_0_i_3_n_0\,
      I2 => B(1),
      I3 => \res[16]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[16]_INST_0_i_3_n_0\,
      O => \res[16]_INST_0_i_1_n_0\
    );
\res[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(28),
      I1 => B(3),
      I2 => A(20),
      I3 => B(4),
      O => \res[16]_INST_0_i_2_n_0\
    );
\res[16]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(24),
      I1 => B(3),
      I2 => A(16),
      I3 => B(4),
      O => \res[16]_INST_0_i_3_n_0\
    );
\res[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[18]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[17]_INST_0_i_1_n_0\,
      O => res(17)
    );
\res[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[19]_INST_0_i_2_n_0\,
      I1 => \res[19]_INST_0_i_3_n_0\,
      I2 => B(1),
      I3 => \res[17]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[17]_INST_0_i_3_n_0\,
      O => \res[17]_INST_0_i_1_n_0\
    );
\res[17]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(29),
      I1 => B(3),
      I2 => A(21),
      I3 => B(4),
      O => \res[17]_INST_0_i_2_n_0\
    );
\res[17]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(25),
      I1 => B(3),
      I2 => A(17),
      I3 => B(4),
      O => \res[17]_INST_0_i_3_n_0\
    );
\res[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[19]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[18]_INST_0_i_1_n_0\,
      O => res(18)
    );
\res[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \res[20]_INST_0_i_1_n_0\,
      I1 => B(1),
      I2 => \res[18]_INST_0_i_2_n_0\,
      I3 => B(2),
      I4 => \res[18]_INST_0_i_3_n_0\,
      O => \res[18]_INST_0_i_1_n_0\
    );
\res[18]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(30),
      I1 => B(3),
      I2 => A(22),
      I3 => B(4),
      O => \res[18]_INST_0_i_2_n_0\
    );
\res[18]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(26),
      I1 => B(3),
      I2 => A(18),
      I3 => B(4),
      O => \res[18]_INST_0_i_3_n_0\
    );
\res[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \res[22]_INST_0_i_1_n_0\,
      I1 => B(1),
      I2 => \res[20]_INST_0_i_1_n_0\,
      I3 => B(0),
      I4 => \res[19]_INST_0_i_1_n_0\,
      O => res(19)
    );
\res[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \res[21]_INST_0_i_1_n_0\,
      I1 => B(1),
      I2 => \res[19]_INST_0_i_2_n_0\,
      I3 => B(2),
      I4 => \res[19]_INST_0_i_3_n_0\,
      O => \res[19]_INST_0_i_1_n_0\
    );
\res[19]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(31),
      I1 => B(3),
      I2 => A(23),
      I3 => B(4),
      O => \res[19]_INST_0_i_2_n_0\
    );
\res[19]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(27),
      I1 => B(3),
      I2 => A(19),
      I3 => B(4),
      O => \res[19]_INST_0_i_3_n_0\
    );
\res[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[2]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[1]_INST_0_i_1_n_0\,
      O => res(1)
    );
\res[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[7]_INST_0_i_2_n_0\,
      I1 => \res[3]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[5]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[1]_INST_0_i_2_n_0\,
      O => \res[1]_INST_0_i_1_n_0\
    );
\res[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(25),
      I1 => A(9),
      I2 => B(3),
      I3 => A(17),
      I4 => B(4),
      I5 => A(1),
      O => \res[1]_INST_0_i_2_n_0\
    );
\res[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[23]_INST_0_i_1_n_0\,
      I1 => \res[21]_INST_0_i_1_n_0\,
      I2 => B(0),
      I3 => \res[22]_INST_0_i_1_n_0\,
      I4 => B(1),
      I5 => \res[20]_INST_0_i_1_n_0\,
      O => res(20)
    );
\res[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(24),
      I1 => B(2),
      I2 => A(28),
      I3 => B(3),
      I4 => A(20),
      I5 => B(4),
      O => \res[20]_INST_0_i_1_n_0\
    );
\res[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[24]_INST_0_i_2_n_0\,
      I1 => \res[22]_INST_0_i_1_n_0\,
      I2 => B(0),
      I3 => \res[23]_INST_0_i_1_n_0\,
      I4 => B(1),
      I5 => \res[21]_INST_0_i_1_n_0\,
      O => res(21)
    );
\res[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(25),
      I1 => B(2),
      I2 => A(29),
      I3 => B(3),
      I4 => A(21),
      I5 => B(4),
      O => \res[21]_INST_0_i_1_n_0\
    );
\res[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[25]_INST_0_i_2_n_0\,
      I1 => \res[23]_INST_0_i_1_n_0\,
      I2 => B(0),
      I3 => \res[24]_INST_0_i_2_n_0\,
      I4 => B(1),
      I5 => \res[22]_INST_0_i_1_n_0\,
      O => res(22)
    );
\res[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(26),
      I1 => B(2),
      I2 => A(30),
      I3 => B(3),
      I4 => A(22),
      I5 => B(4),
      O => \res[22]_INST_0_i_1_n_0\
    );
\res[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[24]_INST_0_i_1_n_0\,
      I1 => \res[24]_INST_0_i_2_n_0\,
      I2 => B(0),
      I3 => \res[25]_INST_0_i_2_n_0\,
      I4 => B(1),
      I5 => \res[23]_INST_0_i_1_n_0\,
      O => res(23)
    );
\res[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(27),
      I1 => B(2),
      I2 => A(31),
      I3 => B(3),
      I4 => A(23),
      I5 => B(4),
      O => \res[23]_INST_0_i_1_n_0\
    );
\res[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[25]_INST_0_i_1_n_0\,
      I1 => \res[25]_INST_0_i_2_n_0\,
      I2 => B(0),
      I3 => \res[24]_INST_0_i_1_n_0\,
      I4 => B(1),
      I5 => \res[24]_INST_0_i_2_n_0\,
      O => res(24)
    );
\res[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(30),
      I1 => B(2),
      I2 => B(4),
      I3 => A(26),
      I4 => B(3),
      O => \res[24]_INST_0_i_1_n_0\
    );
\res[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(28),
      I1 => B(2),
      I2 => B(4),
      I3 => A(24),
      I4 => B(3),
      O => \res[24]_INST_0_i_2_n_0\
    );
\res[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \res[25]_INST_0_i_1_n_0\,
      I1 => B(1),
      I2 => \res[25]_INST_0_i_2_n_0\,
      I3 => \res[26]_INST_0_i_1_n_0\,
      I4 => B(0),
      O => res(25)
    );
\res[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(31),
      I1 => B(2),
      I2 => B(4),
      I3 => A(27),
      I4 => B(3),
      O => \res[25]_INST_0_i_1_n_0\
    );
\res[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(29),
      I1 => B(2),
      I2 => B(4),
      I3 => A(25),
      I4 => B(3),
      O => \res[25]_INST_0_i_2_n_0\
    );
\res[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[27]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[26]_INST_0_i_1_n_0\,
      O => res(26)
    );
\res[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => B(3),
      I1 => A(28),
      I2 => B(4),
      I3 => B(2),
      I4 => B(1),
      I5 => \res[24]_INST_0_i_1_n_0\,
      O => \res[26]_INST_0_i_1_n_0\
    );
\res[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[28]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[27]_INST_0_i_1_n_0\,
      O => res(27)
    );
\res[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => B(3),
      I1 => A(29),
      I2 => B(4),
      I3 => B(2),
      I4 => B(1),
      I5 => \res[25]_INST_0_i_1_n_0\,
      O => \res[27]_INST_0_i_1_n_0\
    );
\res[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[29]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[28]_INST_0_i_1_n_0\,
      O => res(28)
    );
\res[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => A(30),
      I1 => B(1),
      I2 => B(3),
      I3 => A(28),
      I4 => B(4),
      I5 => B(2),
      O => \res[28]_INST_0_i_1_n_0\
    );
\res[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[30]_INST_0_i_2_n_0\,
      I1 => B(0),
      I2 => \res[29]_INST_0_i_1_n_0\,
      O => res(29)
    );
\res[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => A(31),
      I1 => B(1),
      I2 => B(3),
      I3 => A(29),
      I4 => B(4),
      I5 => B(2),
      O => \res[29]_INST_0_i_1_n_0\
    );
\res[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[3]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[2]_INST_0_i_1_n_0\,
      O => res(2)
    );
\res[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[8]_INST_0_i_2_n_0\,
      I1 => \res[4]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[6]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[2]_INST_0_i_2_n_0\,
      O => \res[2]_INST_0_i_1_n_0\
    );
\res[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(26),
      I1 => A(10),
      I2 => B(3),
      I3 => A(18),
      I4 => B(4),
      I5 => A(2),
      O => \res[2]_INST_0_i_2_n_0\
    );
\res[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[30]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[30]_INST_0_i_2_n_0\,
      O => res(30)
    );
\res[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => B(2),
      I1 => B(4),
      I2 => A(31),
      I3 => B(3),
      I4 => B(1),
      O => \res[30]_INST_0_i_1_n_0\
    );
\res[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => B(2),
      I1 => B(4),
      I2 => A(30),
      I3 => B(3),
      I4 => B(1),
      O => \res[30]_INST_0_i_2_n_0\
    );
\res[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[4]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[3]_INST_0_i_1_n_0\,
      O => res(3)
    );
\res[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[9]_INST_0_i_2_n_0\,
      I1 => \res[5]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[7]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[3]_INST_0_i_2_n_0\,
      O => \res[3]_INST_0_i_1_n_0\
    );
\res[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(27),
      I1 => A(11),
      I2 => B(3),
      I3 => A(19),
      I4 => B(4),
      I5 => A(3),
      O => \res[3]_INST_0_i_2_n_0\
    );
\res[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[5]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[4]_INST_0_i_1_n_0\,
      O => res(4)
    );
\res[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[10]_INST_0_i_2_n_0\,
      I1 => \res[6]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[8]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[4]_INST_0_i_2_n_0\,
      O => \res[4]_INST_0_i_1_n_0\
    );
\res[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(28),
      I1 => A(12),
      I2 => B(3),
      I3 => A(20),
      I4 => B(4),
      I5 => A(4),
      O => \res[4]_INST_0_i_2_n_0\
    );
\res[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[6]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[5]_INST_0_i_1_n_0\,
      O => res(5)
    );
\res[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[11]_INST_0_i_2_n_0\,
      I1 => \res[7]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[9]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[5]_INST_0_i_2_n_0\,
      O => \res[5]_INST_0_i_1_n_0\
    );
\res[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(29),
      I1 => A(13),
      I2 => B(3),
      I3 => A(21),
      I4 => B(4),
      I5 => A(5),
      O => \res[5]_INST_0_i_2_n_0\
    );
\res[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[7]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[6]_INST_0_i_1_n_0\,
      O => res(6)
    );
\res[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[12]_INST_0_i_2_n_0\,
      I1 => \res[8]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[10]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[6]_INST_0_i_2_n_0\,
      O => \res[6]_INST_0_i_1_n_0\
    );
\res[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(30),
      I1 => A(14),
      I2 => B(3),
      I3 => A(22),
      I4 => B(4),
      I5 => A(6),
      O => \res[6]_INST_0_i_2_n_0\
    );
\res[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[8]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[7]_INST_0_i_1_n_0\,
      O => res(7)
    );
\res[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[13]_INST_0_i_2_n_0\,
      I1 => \res[9]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[11]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[7]_INST_0_i_2_n_0\,
      O => \res[7]_INST_0_i_1_n_0\
    );
\res[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(31),
      I1 => A(15),
      I2 => B(3),
      I3 => A(23),
      I4 => B(4),
      I5 => A(7),
      O => \res[7]_INST_0_i_2_n_0\
    );
\res[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[9]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[8]_INST_0_i_1_n_0\,
      O => res(8)
    );
\res[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[14]_INST_0_i_2_n_0\,
      I1 => \res[10]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[12]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[8]_INST_0_i_2_n_0\,
      O => \res[8]_INST_0_i_1_n_0\
    );
\res[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(16),
      I1 => B(3),
      I2 => A(24),
      I3 => B(4),
      I4 => A(8),
      O => \res[8]_INST_0_i_2_n_0\
    );
\res[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \res[10]_INST_0_i_1_n_0\,
      I1 => B(0),
      I2 => \res[9]_INST_0_i_1_n_0\,
      O => res(9)
    );
\res[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \res[15]_INST_0_i_2_n_0\,
      I1 => \res[11]_INST_0_i_2_n_0\,
      I2 => B(1),
      I3 => \res[13]_INST_0_i_2_n_0\,
      I4 => B(2),
      I5 => \res[9]_INST_0_i_2_n_0\,
      O => \res[9]_INST_0_i_1_n_0\
    );
\res[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(17),
      I1 => B(3),
      I2 => A(25),
      I3 => B(4),
      I4 => A(9),
      O => \res[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 is
  port (
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 is
begin
\res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => res(0)
    );
\res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => res(10)
    );
\res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      O => res(11)
    );
\res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      O => res(12)
    );
\res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      O => res(13)
    );
\res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      O => res(14)
    );
\res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      O => res(15)
    );
\res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      O => res(16)
    );
\res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(17),
      I1 => A(17),
      O => res(17)
    );
\res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      O => res(18)
    );
\res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(19),
      I1 => A(19),
      O => res(19)
    );
\res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => res(1)
    );
\res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      O => res(20)
    );
\res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      O => res(21)
    );
\res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      O => res(22)
    );
\res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(23),
      I1 => A(23),
      O => res(23)
    );
\res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      O => res(24)
    );
\res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      O => res(25)
    );
\res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      O => res(26)
    );
\res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      O => res(27)
    );
\res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      O => res(28)
    );
\res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      O => res(29)
    );
\res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => res(2)
    );
\res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      O => res(30)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(31),
      I1 => A(31),
      O => res(31)
    );
\res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      O => res(3)
    );
\res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => res(4)
    );
\res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => res(5)
    );
\res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => res(6)
    );
\res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => res(7)
    );
\res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => res(8)
    );
\res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C0 : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 : entity is "adc_1,adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 : entity is "adc,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      C0 => C0,
      S(32 downto 0) => S(32 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 : entity is "and32_0,and32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 : entity is "and32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 is
  port (
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 : entity is "mux8132_0,mux8132,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 : entity is "mux8132,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132
     port map (
      I0(31 downto 0) => I0(31 downto 0),
      I1(31 downto 0) => I1(31 downto 0),
      I2(31 downto 0) => I2(31 downto 0),
      I3(31 downto 0) => I3(31 downto 0),
      I4(31 downto 0) => I4(31 downto 0),
      I5(31 downto 0) => I5(31 downto 0),
      I7(0) => I7(0),
      o(31 downto 0) => o(31 downto 0),
      s(2 downto 0) => s(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 : entity is "nor32_0,nor32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 : entity is "nor32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 : entity is "or32_0,or32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 : entity is "or32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 : entity is "srl_0,srl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 : entity is "srl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(4 downto 0) => B(4 downto 0),
      res(30 downto 0) => res(30 downto 0)
    );
\res[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => B(1),
      I1 => B(3),
      I2 => A(31),
      I3 => B(4),
      I4 => B(2),
      I5 => B(0),
      O => res(31)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 : entity is "xor32_0,xor32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 : entity is "xor32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU32 is
  port (
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    operator : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU32 is
  signal addc : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal and_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal nor_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal or_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^res\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal srl_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xor_res : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc_ins : label is "adc_1,adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of adc_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of adc_ins : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adc_ins : label is "adc,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of and_ins : label is "and32_0,and32,{}";
  attribute DowngradeIPIdentifiedWarnings of and_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE of and_ins : label is "package_project";
  attribute X_CORE_INFO of and_ins : label is "and32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of mux : label is "mux8132_0,mux8132,{}";
  attribute DowngradeIPIdentifiedWarnings of mux : label is "yes";
  attribute IP_DEFINITION_SOURCE of mux : label is "package_project";
  attribute X_CORE_INFO of mux : label is "mux8132,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of nor_ins : label is "nor32_0,nor32,{}";
  attribute DowngradeIPIdentifiedWarnings of nor_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE of nor_ins : label is "package_project";
  attribute X_CORE_INFO of nor_ins : label is "nor32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of or_ins : label is "or32_0,or32,{}";
  attribute DowngradeIPIdentifiedWarnings of or_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE of or_ins : label is "package_project";
  attribute X_CORE_INFO of or_ins : label is "or32,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of orl_ins : label is "orl_0,orl,{}";
  attribute DowngradeIPIdentifiedWarnings of orl_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE of orl_ins : label is "package_project";
  attribute X_CORE_INFO of orl_ins : label is "orl,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of srl_ins : label is "srl_0,srl,{}";
  attribute DowngradeIPIdentifiedWarnings of srl_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE of srl_ins : label is "package_project";
  attribute X_CORE_INFO of srl_ins : label is "srl,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of xor_ins : label is "xor32_0,xor32,{}";
  attribute DowngradeIPIdentifiedWarnings of xor_ins : label is "yes";
  attribute IP_DEFINITION_SOURCE of xor_ins : label is "package_project";
  attribute X_CORE_INFO of xor_ins : label is "xor32,Vivado 2020.2";
begin
  res(31 downto 0) <= \^res\(31 downto 0);
adc_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      C0 => operator(2),
      S(32 downto 0) => addc(32 downto 0)
    );
and_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_and32_0
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => and_res(31 downto 0)
    );
mux: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux8132_0
     port map (
      I0(31 downto 0) => and_res(31 downto 0),
      I1(31 downto 0) => or_res(31 downto 0),
      I2(31 downto 0) => addc(31 downto 0),
      I3(31 downto 0) => xor_res(31 downto 0),
      I4(31 downto 0) => nor_res(31 downto 0),
      I5(31 downto 0) => srl_res(31 downto 0),
      I6(31 downto 0) => B"00000000000000000000000000000000",
      I7(31 downto 1) => B"0000000000000000000000000000000",
      I7(0) => addc(32),
      o(31 downto 0) => \^res\(31 downto 0),
      s(2 downto 0) => operator(2 downto 0)
    );
nor_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32_0
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => nor_res(31 downto 0)
    );
or_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32_0
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => or_res(31 downto 0)
    );
orl_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl_0
     port map (
      A(31 downto 0) => \^res\(31 downto 0),
      S => zero
    );
srl_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_0
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 5) => B"000000000000000000000000000",
      B(4 downto 0) => B(4 downto 0),
      res(31 downto 0) => srl_res(31 downto 0)
    );
xor_ins: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32_0
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      res(31 downto 0) => xor_res(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    operator : in STD_LOGIC_VECTOR ( 2 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ALU32_0,ALU32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ALU32,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU32
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      operator(2 downto 0) => operator(2 downto 0),
      res(31 downto 0) => res(31 downto 0),
      zero => zero
    );
end STRUCTURE;
