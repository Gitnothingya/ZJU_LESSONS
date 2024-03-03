-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 10 18:07:54 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OExp00_Element_MUX2T1_64_0_0_sim_netlist.vhdl
-- Design      : OExp00_Element_MUX2T1_64_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_64 is
  port (
    sel : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    o : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_64;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_64 is
begin
\o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(0),
      I1 => I0(0),
      I2 => sel,
      O => o(0)
    );
\o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(10),
      I1 => I0(10),
      I2 => sel,
      O => o(10)
    );
\o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(11),
      I1 => I0(11),
      I2 => sel,
      O => o(11)
    );
\o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(12),
      I1 => I0(12),
      I2 => sel,
      O => o(12)
    );
\o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(13),
      I1 => I0(13),
      I2 => sel,
      O => o(13)
    );
\o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(14),
      I1 => I0(14),
      I2 => sel,
      O => o(14)
    );
\o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(15),
      I1 => I0(15),
      I2 => sel,
      O => o(15)
    );
\o[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(16),
      I1 => I0(16),
      I2 => sel,
      O => o(16)
    );
\o[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(17),
      I1 => I0(17),
      I2 => sel,
      O => o(17)
    );
\o[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(18),
      I1 => I0(18),
      I2 => sel,
      O => o(18)
    );
\o[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(19),
      I1 => I0(19),
      I2 => sel,
      O => o(19)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(1),
      I1 => I0(1),
      I2 => sel,
      O => o(1)
    );
\o[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(20),
      I1 => I0(20),
      I2 => sel,
      O => o(20)
    );
\o[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(21),
      I1 => I0(21),
      I2 => sel,
      O => o(21)
    );
\o[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(22),
      I1 => I0(22),
      I2 => sel,
      O => o(22)
    );
\o[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(23),
      I1 => I0(23),
      I2 => sel,
      O => o(23)
    );
\o[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(24),
      I1 => I0(24),
      I2 => sel,
      O => o(24)
    );
\o[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(25),
      I1 => I0(25),
      I2 => sel,
      O => o(25)
    );
\o[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(26),
      I1 => I0(26),
      I2 => sel,
      O => o(26)
    );
\o[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(27),
      I1 => I0(27),
      I2 => sel,
      O => o(27)
    );
\o[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(28),
      I1 => I0(28),
      I2 => sel,
      O => o(28)
    );
\o[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(29),
      I1 => I0(29),
      I2 => sel,
      O => o(29)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(2),
      I1 => I0(2),
      I2 => sel,
      O => o(2)
    );
\o[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(30),
      I1 => I0(30),
      I2 => sel,
      O => o(30)
    );
\o[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(31),
      I1 => I0(31),
      I2 => sel,
      O => o(31)
    );
\o[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(32),
      I1 => I0(32),
      I2 => sel,
      O => o(32)
    );
\o[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(33),
      I1 => I0(33),
      I2 => sel,
      O => o(33)
    );
\o[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(34),
      I1 => I0(34),
      I2 => sel,
      O => o(34)
    );
\o[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(35),
      I1 => I0(35),
      I2 => sel,
      O => o(35)
    );
\o[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(36),
      I1 => I0(36),
      I2 => sel,
      O => o(36)
    );
\o[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(37),
      I1 => I0(37),
      I2 => sel,
      O => o(37)
    );
\o[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(38),
      I1 => I0(38),
      I2 => sel,
      O => o(38)
    );
\o[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(39),
      I1 => I0(39),
      I2 => sel,
      O => o(39)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(3),
      I1 => I0(3),
      I2 => sel,
      O => o(3)
    );
\o[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(40),
      I1 => I0(40),
      I2 => sel,
      O => o(40)
    );
\o[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(41),
      I1 => I0(41),
      I2 => sel,
      O => o(41)
    );
\o[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(42),
      I1 => I0(42),
      I2 => sel,
      O => o(42)
    );
\o[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(43),
      I1 => I0(43),
      I2 => sel,
      O => o(43)
    );
\o[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(44),
      I1 => I0(44),
      I2 => sel,
      O => o(44)
    );
\o[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(45),
      I1 => I0(45),
      I2 => sel,
      O => o(45)
    );
\o[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(46),
      I1 => I0(46),
      I2 => sel,
      O => o(46)
    );
\o[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(47),
      I1 => I0(47),
      I2 => sel,
      O => o(47)
    );
\o[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(48),
      I1 => I0(48),
      I2 => sel,
      O => o(48)
    );
\o[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(49),
      I1 => I0(49),
      I2 => sel,
      O => o(49)
    );
\o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(4),
      I1 => I0(4),
      I2 => sel,
      O => o(4)
    );
\o[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(50),
      I1 => I0(50),
      I2 => sel,
      O => o(50)
    );
\o[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(51),
      I1 => I0(51),
      I2 => sel,
      O => o(51)
    );
\o[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(52),
      I1 => I0(52),
      I2 => sel,
      O => o(52)
    );
\o[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(53),
      I1 => I0(53),
      I2 => sel,
      O => o(53)
    );
\o[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(54),
      I1 => I0(54),
      I2 => sel,
      O => o(54)
    );
\o[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(55),
      I1 => I0(55),
      I2 => sel,
      O => o(55)
    );
\o[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(56),
      I1 => I0(56),
      I2 => sel,
      O => o(56)
    );
\o[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(57),
      I1 => I0(57),
      I2 => sel,
      O => o(57)
    );
\o[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(58),
      I1 => I0(58),
      I2 => sel,
      O => o(58)
    );
\o[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(59),
      I1 => I0(59),
      I2 => sel,
      O => o(59)
    );
\o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(5),
      I1 => I0(5),
      I2 => sel,
      O => o(5)
    );
\o[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(60),
      I1 => I0(60),
      I2 => sel,
      O => o(60)
    );
\o[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(61),
      I1 => I0(61),
      I2 => sel,
      O => o(61)
    );
\o[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(62),
      I1 => I0(62),
      I2 => sel,
      O => o(62)
    );
\o[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(63),
      I1 => I0(63),
      I2 => sel,
      O => o(63)
    );
\o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(6),
      I1 => I0(6),
      I2 => sel,
      O => o(6)
    );
\o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(7),
      I1 => I0(7),
      I2 => sel,
      O => o(7)
    );
\o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(8),
      I1 => I0(8),
      I2 => sel,
      O => o(8)
    );
\o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(9),
      I1 => I0(9),
      I2 => sel,
      O => o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sel : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    o : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "OExp00_Element_MUX2T1_64_0_0,MUX2T1_64,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MUX2T1_64,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_64
     port map (
      I0(63 downto 0) => I0(63 downto 0),
      I1(63 downto 0) => I1(63 downto 0),
      o(63 downto 0) => o(63 downto 0),
      sel => sel
    );
end STRUCTURE;
