-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 15 11:46:04 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top adc_1 -prefix
--               adc_1_ adc_0_sim_netlist.vhdl
-- Design      : adc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adc_1_adc is
  port (
    S : out STD_LOGIC_VECTOR ( 32 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C0 : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end adc_1_adc;

architecture STRUCTURE of adc_1_adc is
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
entity adc_1 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C0 : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adc_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adc_1 : entity is "adc_0,adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of adc_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of adc_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adc_1 : entity is "adc,Vivado 2020.2";
end adc_1;

architecture STRUCTURE of adc_1 is
begin
inst: entity work.adc_1_adc
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      C0 => C0,
      S(32 downto 0) => S(32 downto 0)
    );
end STRUCTURE;
