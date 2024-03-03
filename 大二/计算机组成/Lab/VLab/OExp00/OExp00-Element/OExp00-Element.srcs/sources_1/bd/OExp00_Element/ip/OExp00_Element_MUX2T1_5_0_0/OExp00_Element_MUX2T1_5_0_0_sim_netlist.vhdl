-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 10 18:07:55 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vteacher/OExp00/OExp00-Element/OExp00-Element.srcs/sources_1/bd/OExp00_Element/ip/OExp00_Element_MUX2T1_5_0_0/OExp00_Element_MUX2T1_5_0_0_sim_netlist.vhdl
-- Design      : OExp00_Element_MUX2T1_5_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OExp00_Element_MUX2T1_5_0_0_MUX2T1_5 is
  port (
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OExp00_Element_MUX2T1_5_0_0_MUX2T1_5 : entity is "MUX2T1_5";
end OExp00_Element_MUX2T1_5_0_0_MUX2T1_5;

architecture STRUCTURE of OExp00_Element_MUX2T1_5_0_0_MUX2T1_5 is
begin
\o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(0),
      I1 => I0(0),
      I2 => s,
      O => o(0)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(1),
      I1 => I0(1),
      I2 => s,
      O => o(1)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(2),
      I1 => I0(2),
      I2 => s,
      O => o(2)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(3),
      I1 => I0(3),
      I2 => s,
      O => o(3)
    );
\o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I1(4),
      I1 => I0(4),
      I2 => s,
      O => o(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OExp00_Element_MUX2T1_5_0_0 is
  port (
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of OExp00_Element_MUX2T1_5_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of OExp00_Element_MUX2T1_5_0_0 : entity is "OExp00_Element_MUX2T1_5_0_0,MUX2T1_5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of OExp00_Element_MUX2T1_5_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of OExp00_Element_MUX2T1_5_0_0 : entity is "MUX2T1_5,Vivado 2017.4";
end OExp00_Element_MUX2T1_5_0_0;

architecture STRUCTURE of OExp00_Element_MUX2T1_5_0_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
begin
inst: entity work.OExp00_Element_MUX2T1_5_0_0_MUX2T1_5
     port map (
      I0(4 downto 0) => I0(4 downto 0),
      I1(4 downto 0) => I1(4 downto 0),
      o(4 downto 0) => o(4 downto 0),
      s => s
    );
end STRUCTURE;
