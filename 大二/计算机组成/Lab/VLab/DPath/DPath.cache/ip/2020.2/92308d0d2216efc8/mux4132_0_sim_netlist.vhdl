-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 28 15:33:05 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mux4132_0_sim_netlist.vhdl
-- Design      : mux4132_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux4132 is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux4132;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux4132 is
begin
\o[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(0),
      I1 => I0(0),
      I2 => I3(0),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(0),
      O => o(0)
    );
\o[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(10),
      I1 => I0(10),
      I2 => I3(10),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(10),
      O => o(10)
    );
\o[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(11),
      I1 => I0(11),
      I2 => I3(11),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(11),
      O => o(11)
    );
\o[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(12),
      I1 => I0(12),
      I2 => I3(12),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(12),
      O => o(12)
    );
\o[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(13),
      I1 => I0(13),
      I2 => I3(13),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(13),
      O => o(13)
    );
\o[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(14),
      I1 => I0(14),
      I2 => I3(14),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(14),
      O => o(14)
    );
\o[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(15),
      I1 => I0(15),
      I2 => I3(15),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(15),
      O => o(15)
    );
\o[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(16),
      I1 => I0(16),
      I2 => I3(16),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(16),
      O => o(16)
    );
\o[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(17),
      I1 => I0(17),
      I2 => I3(17),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(17),
      O => o(17)
    );
\o[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(18),
      I1 => I0(18),
      I2 => I3(18),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(18),
      O => o(18)
    );
\o[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(19),
      I1 => I0(19),
      I2 => I3(19),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(19),
      O => o(19)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(1),
      I1 => I0(1),
      I2 => I3(1),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(1),
      O => o(1)
    );
\o[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(20),
      I1 => I0(20),
      I2 => I3(20),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(20),
      O => o(20)
    );
\o[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(21),
      I1 => I0(21),
      I2 => I3(21),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(21),
      O => o(21)
    );
\o[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(22),
      I1 => I0(22),
      I2 => I3(22),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(22),
      O => o(22)
    );
\o[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(23),
      I1 => I0(23),
      I2 => I3(23),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(23),
      O => o(23)
    );
\o[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(24),
      I1 => I0(24),
      I2 => I3(24),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(24),
      O => o(24)
    );
\o[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(25),
      I1 => I0(25),
      I2 => I3(25),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(25),
      O => o(25)
    );
\o[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(26),
      I1 => I0(26),
      I2 => I3(26),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(26),
      O => o(26)
    );
\o[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(27),
      I1 => I0(27),
      I2 => I3(27),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(27),
      O => o(27)
    );
\o[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(28),
      I1 => I0(28),
      I2 => I3(28),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(28),
      O => o(28)
    );
\o[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(29),
      I1 => I0(29),
      I2 => I3(29),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(29),
      O => o(29)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(2),
      I1 => I0(2),
      I2 => I3(2),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(2),
      O => o(2)
    );
\o[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(30),
      I1 => I0(30),
      I2 => I3(30),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(30),
      O => o(30)
    );
\o[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(31),
      I1 => I0(31),
      I2 => I3(31),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(31),
      O => o(31)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(3),
      I1 => I0(3),
      I2 => I3(3),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(3),
      O => o(3)
    );
\o[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(4),
      I1 => I0(4),
      I2 => I3(4),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(4),
      O => o(4)
    );
\o[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(5),
      I1 => I0(5),
      I2 => I3(5),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(5),
      O => o(5)
    );
\o[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(6),
      I1 => I0(6),
      I2 => I3(6),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(6),
      O => o(6)
    );
\o[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(7),
      I1 => I0(7),
      I2 => I3(7),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(7),
      O => o(7)
    );
\o[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(8),
      I1 => I0(8),
      I2 => I3(8),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(8),
      O => o(8)
    );
\o[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I1(9),
      I1 => I0(9),
      I2 => I3(9),
      I3 => s(1),
      I4 => s(0),
      I5 => I2(9),
      O => o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    I0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mux4132_0,mux4132,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mux4132,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux4132
     port map (
      I0(31 downto 0) => I0(31 downto 0),
      I1(31 downto 0) => I1(31 downto 0),
      I2(31 downto 0) => I2(31 downto 0),
      I3(31 downto 0) => I3(31 downto 0),
      o(31 downto 0) => o(31 downto 0),
      s(1 downto 0) => s(1 downto 0)
    );
end STRUCTURE;
