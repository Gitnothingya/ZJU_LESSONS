-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Mar 30 20:34:31 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ orl_0_sim_netlist.vhdl
-- Design      : orl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl is
  port (
    S : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl is
  signal S_INST_0_i_1_n_0 : STD_LOGIC;
  signal S_INST_0_i_2_n_0 : STD_LOGIC;
  signal S_INST_0_i_3_n_0 : STD_LOGIC;
  signal S_INST_0_i_4_n_0 : STD_LOGIC;
  signal S_INST_0_i_5_n_0 : STD_LOGIC;
  signal S_INST_0_i_6_n_0 : STD_LOGIC;
begin
S_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
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
S_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => A(12),
      I1 => A(13),
      I2 => A(10),
      I3 => A(11),
      I4 => A(9),
      I5 => A(8),
      O => S_INST_0_i_1_n_0
    );
S_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => A(18),
      I1 => A(19),
      I2 => A(16),
      I3 => A(17),
      I4 => A(15),
      I5 => A(14),
      O => S_INST_0_i_2_n_0
    );
S_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => A(30),
      I1 => A(31),
      I2 => A(28),
      I3 => A(29),
      I4 => A(27),
      I5 => A(26),
      O => S_INST_0_i_3_n_0
    );
S_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => A(24),
      I1 => A(25),
      I2 => A(22),
      I3 => A(23),
      I4 => A(21),
      I5 => A(20),
      O => S_INST_0_i_4_n_0
    );
S_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      O => S_INST_0_i_5_n_0
    );
S_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => A(6),
      I1 => A(7),
      I2 => A(4),
      I3 => A(5),
      I4 => A(3),
      I5 => A(2),
      O => S_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "orl_0,orl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "orl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_orl
     port map (
      A(31 downto 0) => A(31 downto 0),
      S => S
    );
end STRUCTURE;
