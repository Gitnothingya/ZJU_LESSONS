-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:44:30 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev_0_sim_netlist.vhdl
-- Design      : SSeg7_Dev_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_10 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_10 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_10;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_10 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_11 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_11 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_11;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_11 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_12 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_12 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_12;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_12 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_13 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_13 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_13;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_13 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
XLXI_47_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_7 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_7 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_7;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_7 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_8 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_8 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_8;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_8 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_MC14495_ZJU_9 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_MC14495_ZJU_9 : entity is "MC14495_ZJU";
end SSeg7_Dev_0_MC14495_ZJU_9;

architecture STRUCTURE of SSeg7_Dev_0_MC14495_ZJU_9 is
  signal XLXN_111 : STD_LOGIC;
  signal XLXN_115 : STD_LOGIC;
  signal XLXN_119 : STD_LOGIC;
  signal XLXN_14 : STD_LOGIC;
  signal XLXN_140 : STD_LOGIC;
  signal XLXN_141 : STD_LOGIC;
  signal XLXN_170 : STD_LOGIC;
  signal XLXN_171 : STD_LOGIC;
  signal XLXN_172 : STD_LOGIC;
  signal XLXN_184 : STD_LOGIC;
  signal XLXN_185 : STD_LOGIC;
  signal XLXN_186 : STD_LOGIC;
  signal XLXN_200 : STD_LOGIC;
  signal XLXN_201 : STD_LOGIC;
  signal XLXN_202 : STD_LOGIC;
  signal XLXN_208 : STD_LOGIC;
  signal XLXN_209 : STD_LOGIC;
  signal XLXN_210 : STD_LOGIC;
  signal XLXN_211 : STD_LOGIC;
  signal XLXN_212 : STD_LOGIC;
  signal XLXN_213 : STD_LOGIC;
  signal XLXN_214 : STD_LOGIC;
  signal XLXN_24 : STD_LOGIC;
  signal XLXN_26 : STD_LOGIC;
  signal XLXN_27 : STD_LOGIC;
  signal XLXN_28 : STD_LOGIC;
  signal XLXN_61 : STD_LOGIC;
  signal XLXN_62 : STD_LOGIC;
  signal XLXN_72 : STD_LOGIC;
  signal XLXN_73 : STD_LOGIC;
  signal XLXN_74 : STD_LOGIC;
  signal XLXN_75 : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XLXI_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of XLXI_1 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of XLXI_1 : label is "I:I0";
  attribute BOX_TYPE of XLXI_17 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_17 : label is "OR4";
  attribute BOX_TYPE of XLXI_18 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_18 : label is "AND4";
  attribute BOX_TYPE of XLXI_19 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_19 : label is "AND3";
  attribute BOX_TYPE of XLXI_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_2 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_2 : label is "I:I0";
  attribute BOX_TYPE of XLXI_20 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_20 : label is "AND3";
  attribute BOX_TYPE of XLXI_21 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_21 : label is "AND3";
  attribute BOX_TYPE of XLXI_22 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_22 : label is "OR4";
  attribute BOX_TYPE of XLXI_23 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_23 : label is "AND4";
  attribute BOX_TYPE of XLXI_24 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_24 : label is "AND3";
  attribute BOX_TYPE of XLXI_26 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_26 : label is "OR3";
  attribute BOX_TYPE of XLXI_27 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_27 : label is "AND3";
  attribute BOX_TYPE of XLXI_28 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_28 : label is "AND4";
  attribute BOX_TYPE of XLXI_29 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_29 : label is "OR4";
  attribute BOX_TYPE of XLXI_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_3 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_3 : label is "I:I0";
  attribute BOX_TYPE of XLXI_30 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_30 : label is "AND3";
  attribute BOX_TYPE of XLXI_32 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_32 : label is "AND2";
  attribute BOX_TYPE of XLXI_35 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_35 : label is "AND3";
  attribute BOX_TYPE of XLXI_36 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_36 : label is "OR3";
  attribute BOX_TYPE of XLXI_37 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_37 : label is "AND3";
  attribute BOX_TYPE of XLXI_38 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_38 : label is "AND3";
  attribute BOX_TYPE of XLXI_39 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_39 : label is "AND3";
  attribute BOX_TYPE of XLXI_4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_4 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_4 : label is "I:I0";
  attribute BOX_TYPE of XLXI_41 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_41 : label is "OR4";
  attribute BOX_TYPE of XLXI_42 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_42 : label is "AND3";
  attribute BOX_TYPE of XLXI_43 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_43 : label is "AND4";
  attribute BOX_TYPE of XLXI_44 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_44 : label is "AND4";
  attribute BOX_TYPE of XLXI_46 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_46 : label is "OR3";
  attribute BOX_TYPE of XLXI_47 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_47 : label is "OR2";
  attribute BOX_TYPE of XLXI_48 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_48 : label is "OR2";
  attribute BOX_TYPE of XLXI_49 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_49 : label is "OR2";
  attribute BOX_TYPE of XLXI_5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_5 : label is "AND4";
  attribute BOX_TYPE of XLXI_50 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_50 : label is "OR2";
  attribute BOX_TYPE of XLXI_51 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_51 : label is "OR2";
  attribute BOX_TYPE of XLXI_52 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_52 : label is "OR2";
  attribute BOX_TYPE of XLXI_53 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_53 : label is "OR2";
  attribute BOX_TYPE of XLXI_57 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_57 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP of XLXI_57 : label is "I:I0";
  attribute BOX_TYPE of XLXI_6 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_6 : label is "AND4";
  attribute BOX_TYPE of XLXI_7 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_7 : label is "AND4";
  attribute BOX_TYPE of XLXI_8 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of XLXI_8 : label is "AND4";
begin
XLXI_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(3),
      O => XLXN_14
    );
XLXI_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_28,
      I1 => XLXN_27,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_208
    );
XLXI_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_72
    );
XLXI_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_73
    );
XLXI_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(2),
      O => XLXN_61
    );
XLXI_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_74
    );
XLXI_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(3),
      O => XLXN_75
    );
XLXI_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_75,
      I1 => XLXN_74,
      I2 => XLXN_73,
      I3 => XLXN_72,
      O => XLXN_209
    );
XLXI_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => XLXN_14,
      O => XLXN_111
    );
XLXI_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => Hexs(2),
      I2 => Hexs(3),
      O => XLXN_115
    );
XLXI_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_115,
      I1 => XLXN_111,
      I2 => XLXN_74,
      O => XLXN_210
    );
XLXI_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      O => XLXN_140
    );
XLXI_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_141
    );
XLXI_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_141,
      I1 => XLXN_140,
      I2 => XLXN_26,
      I3 => XLXN_119,
      O => XLXN_211
    );
XLXI_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(1),
      O => XLXN_62
    );
XLXI_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => Hexs(2),
      I2 => XLXN_14,
      O => XLXN_171
    );
XLXI_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_14,
      O => XLXN_170
    );
XLXI_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => XLXN_61,
      O => XLXN_172
    );
XLXI_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_172,
      I1 => XLXN_171,
      I2 => XLXN_170,
      O => XLXN_212
    );
XLXI_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_184
    );
XLXI_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(1),
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_185
    );
XLXI_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_14,
      O => XLXN_186
    );
XLXI_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hexs(0),
      O => XLXN_24
    );
XLXI_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => XLXN_186,
      I1 => XLXN_185,
      I2 => XLXN_184,
      I3 => XLXN_27,
      O => XLXN_213
    );
XLXI_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => XLXN_62,
      I1 => XLXN_61,
      I2 => XLXN_14,
      O => XLXN_200
    );
XLXI_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_201
    );
XLXI_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_202
    );
XLXI_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => XLXN_202,
      I1 => XLXN_201,
      I2 => XLXN_200,
      O => XLXN_214
    );
XLXI_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_208,
      O => SEG_TXT(7)
    );
\XLXI_47_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LES(0),
      I1 => flash,
      O => en
    );
XLXI_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_209,
      O => SEG_TXT(6)
    );
XLXI_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_210,
      O => SEG_TXT(5)
    );
XLXI_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_61,
      I2 => XLXN_62,
      I3 => XLXN_14,
      O => XLXN_119
    );
XLXI_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_211,
      O => SEG_TXT(4)
    );
XLXI_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_212,
      O => SEG_TXT(3)
    );
XLXI_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_213,
      O => SEG_TXT(2)
    );
XLXI_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => en,
      I1 => XLXN_214,
      O => SEG_TXT(1)
    );
XLXI_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => point(0),
      O => SEG_TXT(0)
    );
XLXI_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => XLXN_24,
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => XLXN_14,
      O => XLXN_26
    );
XLXI_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => XLXN_62,
      I2 => Hexs(2),
      I3 => Hexs(3),
      O => XLXN_27
    );
XLXI_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Hexs(0),
      I1 => Hexs(1),
      I2 => XLXN_61,
      I3 => Hexs(3),
      O => XLXN_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_P2S is
  port (
    s_clk_reg_0 : out STD_LOGIC;
    SEG_PEN : out STD_LOGIC;
    seg_sout : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    SEG_TXT : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SW0 : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_P2S : entity is "P2S";
end SSeg7_Dev_0_P2S;

architecture STRUCTURE of SSeg7_Dev_0_P2S is
  signal EN_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^seg_pen\ : STD_LOGIC;
  signal \buffer\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[0]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[0]_i_4_n_0\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal s_clk_i_1_n_0 : STD_LOGIC;
  signal \^s_clk_reg_0\ : STD_LOGIC;
  signal shift_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \shift_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[5]_i_3_n_0\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^start\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EN_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_IDLE:00,S_TRAN:01,S_DONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_IDLE:00,S_TRAN:01,S_DONE:10";
  attribute SOFT_HLUTNM of \buffer[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_count[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_count[5]_i_3\ : label is "soft_lutpair3";
begin
  SEG_PEN <= \^seg_pen\;
  s_clk_reg_0 <= \^s_clk_reg_0\;
EN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB000B"
    )
        port map (
      I0 => \^start\(1),
      I1 => \^start\(0),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^seg_pen\,
      O => EN_i_1_n_0
    );
EN_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => EN_i_1_n_0,
      Q => \^seg_pen\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F044"
    )
        port map (
      I0 => \^start\(1),
      I1 => \^start\(0),
      I2 => \buffer[0]_i_4_n_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => \buffer[0]_i_4_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003D0D0D0D"
    )
        port map (
      I0 => \buffer[0]_i_3_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^s_clk_reg_0\,
      I4 => \buffer[0]_i_4_n_0\,
      I5 => rst,
      O => \buffer[0]_i_1_n_0\
    );
\buffer[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(0),
      I2 => \state__0\(1),
      I3 => SEG_TXT(0),
      I4 => SW0,
      I5 => Hexs(30),
      O => \buffer\(0)
    );
\buffer[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^start\(1),
      I1 => \^start\(0),
      O => \buffer[0]_i_3_n_0\
    );
\buffer[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \shift_count_reg_n_0_[5]\,
      I1 => \shift_count_reg_n_0_[4]\,
      I2 => \shift_count_reg_n_0_[1]\,
      I3 => \shift_count_reg_n_0_[0]\,
      I4 => \shift_count_reg_n_0_[3]\,
      I5 => \shift_count_reg_n_0_[2]\,
      O => \buffer[0]_i_4_n_0\
    );
\buffer[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(10),
      I2 => \state__0\(1),
      I3 => SEG_TXT(10),
      I4 => SW0,
      I5 => Hexs(9),
      O => \buffer\(10)
    );
\buffer[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(11),
      I2 => \state__0\(1),
      I3 => SEG_TXT(11),
      I4 => SW0,
      I5 => Hexs(21),
      O => \buffer\(11)
    );
\buffer[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(12),
      I2 => \state__0\(1),
      I3 => SEG_TXT(12),
      I4 => SW0,
      I5 => Hexs(29),
      O => \buffer\(12)
    );
\buffer[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(13),
      I2 => \state__0\(1),
      I3 => SEG_TXT(13),
      I4 => SW0,
      I5 => Hexs(20),
      O => \buffer\(13)
    );
\buffer[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(14),
      I2 => \state__0\(1),
      I3 => SEG_TXT(14),
      I4 => SW0,
      I5 => Hexs(8),
      O => \buffer\(14)
    );
\buffer[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(15),
      I2 => \state__0\(1),
      I3 => SEG_TXT(15),
      I4 => SW0,
      I5 => Hexs(2),
      O => \buffer\(15)
    );
\buffer[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(16),
      I2 => \state__0\(1),
      I3 => SEG_TXT(16),
      I4 => SW0,
      I5 => Hexs(26),
      O => \buffer\(16)
    );
\buffer[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(17),
      I2 => \state__0\(1),
      I3 => SEG_TXT(17),
      I4 => SW0,
      I5 => Hexs(13),
      O => \buffer\(17)
    );
\buffer[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(18),
      I2 => \state__0\(1),
      I3 => SEG_TXT(18),
      I4 => SW0,
      I5 => Hexs(7),
      O => \buffer\(18)
    );
\buffer[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(19),
      I2 => \state__0\(1),
      I3 => SEG_TXT(19),
      I4 => SW0,
      I5 => Hexs(19),
      O => \buffer\(19)
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(1),
      I2 => \state__0\(1),
      I3 => SEG_TXT(1),
      I4 => SW0,
      I5 => Hexs(15),
      O => \buffer\(1)
    );
\buffer[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(20),
      I2 => \state__0\(1),
      I3 => SEG_TXT(20),
      I4 => SW0,
      I5 => Hexs(27),
      O => \buffer\(20)
    );
\buffer[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(21),
      I2 => \state__0\(1),
      I3 => SEG_TXT(21),
      I4 => SW0,
      I5 => Hexs(18),
      O => \buffer\(21)
    );
\buffer[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(22),
      I2 => \state__0\(1),
      I3 => SEG_TXT(22),
      I4 => SW0,
      I5 => Hexs(6),
      O => \buffer\(22)
    );
\buffer[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(23),
      I2 => \state__0\(1),
      I3 => SEG_TXT(23),
      I4 => SW0,
      I5 => Hexs(1),
      O => \buffer\(23)
    );
\buffer[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(24),
      I2 => \state__0\(1),
      I3 => SEG_TXT(24),
      I4 => SW0,
      I5 => Hexs(24),
      O => \buffer\(24)
    );
\buffer[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(25),
      I2 => \state__0\(1),
      I3 => SEG_TXT(25),
      I4 => SW0,
      I5 => Hexs(12),
      O => \buffer\(25)
    );
\buffer[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(26),
      I2 => \state__0\(1),
      I3 => SEG_TXT(26),
      I4 => SW0,
      I5 => Hexs(5),
      O => \buffer\(26)
    );
\buffer[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(27),
      I2 => \state__0\(1),
      I3 => SEG_TXT(27),
      I4 => SW0,
      I5 => Hexs(17),
      O => \buffer\(27)
    );
\buffer[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(28),
      I2 => \state__0\(1),
      I3 => SEG_TXT(28),
      I4 => SW0,
      I5 => Hexs(25),
      O => \buffer\(28)
    );
\buffer[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(29),
      I2 => \state__0\(1),
      I3 => SEG_TXT(29),
      I4 => SW0,
      I5 => Hexs(16),
      O => \buffer\(29)
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(2),
      I2 => \state__0\(1),
      I3 => SEG_TXT(2),
      I4 => SW0,
      I5 => Hexs(11),
      O => \buffer\(2)
    );
\buffer[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(30),
      I2 => \state__0\(1),
      I3 => SEG_TXT(30),
      I4 => SW0,
      I5 => Hexs(4),
      O => \buffer\(30)
    );
\buffer[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(31),
      I2 => \state__0\(1),
      I3 => SEG_TXT(31),
      I4 => SW0,
      I5 => Hexs(0),
      O => \buffer\(31)
    );
\buffer[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(32),
      I2 => \state__0\(1),
      I3 => SEG_TXT(32),
      I4 => SW0,
      I5 => Hexs(30),
      O => \buffer\(32)
    );
\buffer[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(33),
      I2 => \state__0\(1),
      I3 => SEG_TXT(33),
      I4 => SW0,
      I5 => Hexs(15),
      O => \buffer\(33)
    );
\buffer[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(34),
      I2 => \state__0\(1),
      I3 => SEG_TXT(34),
      I4 => SW0,
      I5 => Hexs(11),
      O => \buffer\(34)
    );
\buffer[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(35),
      I2 => \state__0\(1),
      I3 => SEG_TXT(35),
      I4 => SW0,
      I5 => Hexs(23),
      O => \buffer\(35)
    );
\buffer[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(36),
      I2 => \state__0\(1),
      I3 => SEG_TXT(36),
      I4 => SW0,
      I5 => Hexs(31),
      O => \buffer\(36)
    );
\buffer[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(37),
      I2 => \state__0\(1),
      I3 => SEG_TXT(37),
      I4 => SW0,
      I5 => Hexs(22),
      O => \buffer\(37)
    );
\buffer[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(38),
      I2 => \state__0\(1),
      I3 => SEG_TXT(38),
      I4 => SW0,
      I5 => Hexs(10),
      O => \buffer\(38)
    );
\buffer[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(39),
      I2 => \state__0\(1),
      I3 => SEG_TXT(39),
      I4 => SW0,
      I5 => Hexs(3),
      O => \buffer\(39)
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(3),
      I2 => \state__0\(1),
      I3 => SEG_TXT(3),
      I4 => SW0,
      I5 => Hexs(23),
      O => \buffer\(3)
    );
\buffer[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(40),
      I2 => \state__0\(1),
      I3 => SEG_TXT(40),
      I4 => SW0,
      I5 => Hexs(28),
      O => \buffer\(40)
    );
\buffer[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(41),
      I2 => \state__0\(1),
      I3 => SEG_TXT(41),
      I4 => SW0,
      I5 => Hexs(14),
      O => \buffer\(41)
    );
\buffer[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(42),
      I2 => \state__0\(1),
      I3 => SEG_TXT(42),
      I4 => SW0,
      I5 => Hexs(9),
      O => \buffer\(42)
    );
\buffer[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(43),
      I2 => \state__0\(1),
      I3 => SEG_TXT(43),
      I4 => SW0,
      I5 => Hexs(21),
      O => \buffer\(43)
    );
\buffer[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(44),
      I2 => \state__0\(1),
      I3 => SEG_TXT(44),
      I4 => SW0,
      I5 => Hexs(29),
      O => \buffer\(44)
    );
\buffer[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(45),
      I2 => \state__0\(1),
      I3 => SEG_TXT(45),
      I4 => SW0,
      I5 => Hexs(20),
      O => \buffer\(45)
    );
\buffer[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(46),
      I2 => \state__0\(1),
      I3 => SEG_TXT(46),
      I4 => SW0,
      I5 => Hexs(8),
      O => \buffer\(46)
    );
\buffer[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(47),
      I2 => \state__0\(1),
      I3 => SEG_TXT(47),
      I4 => SW0,
      I5 => Hexs(2),
      O => \buffer\(47)
    );
\buffer[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(48),
      I2 => \state__0\(1),
      I3 => SEG_TXT(48),
      I4 => SW0,
      I5 => Hexs(26),
      O => \buffer\(48)
    );
\buffer[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(49),
      I2 => \state__0\(1),
      I3 => SEG_TXT(49),
      I4 => SW0,
      I5 => Hexs(13),
      O => \buffer\(49)
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(4),
      I2 => \state__0\(1),
      I3 => SEG_TXT(4),
      I4 => SW0,
      I5 => Hexs(31),
      O => \buffer\(4)
    );
\buffer[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(50),
      I2 => \state__0\(1),
      I3 => SEG_TXT(50),
      I4 => SW0,
      I5 => Hexs(7),
      O => \buffer\(50)
    );
\buffer[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(51),
      I2 => \state__0\(1),
      I3 => SEG_TXT(51),
      I4 => SW0,
      I5 => Hexs(19),
      O => \buffer\(51)
    );
\buffer[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(52),
      I2 => \state__0\(1),
      I3 => SEG_TXT(52),
      I4 => SW0,
      I5 => Hexs(27),
      O => \buffer\(52)
    );
\buffer[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(53),
      I2 => \state__0\(1),
      I3 => SEG_TXT(53),
      I4 => SW0,
      I5 => Hexs(18),
      O => \buffer\(53)
    );
\buffer[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(54),
      I2 => \state__0\(1),
      I3 => SEG_TXT(54),
      I4 => SW0,
      I5 => Hexs(6),
      O => \buffer\(54)
    );
\buffer[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(55),
      I2 => \state__0\(1),
      I3 => SEG_TXT(55),
      I4 => SW0,
      I5 => Hexs(1),
      O => \buffer\(55)
    );
\buffer[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(56),
      I2 => \state__0\(1),
      I3 => SEG_TXT(56),
      I4 => SW0,
      I5 => Hexs(24),
      O => \buffer\(56)
    );
\buffer[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(57),
      I2 => \state__0\(1),
      I3 => SEG_TXT(57),
      I4 => SW0,
      I5 => Hexs(12),
      O => \buffer\(57)
    );
\buffer[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(58),
      I2 => \state__0\(1),
      I3 => SEG_TXT(58),
      I4 => SW0,
      I5 => Hexs(5),
      O => \buffer\(58)
    );
\buffer[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(59),
      I2 => \state__0\(1),
      I3 => SEG_TXT(59),
      I4 => SW0,
      I5 => Hexs(17),
      O => \buffer\(59)
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(5),
      I2 => \state__0\(1),
      I3 => SEG_TXT(5),
      I4 => SW0,
      I5 => Hexs(22),
      O => \buffer\(5)
    );
\buffer[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(60),
      I2 => \state__0\(1),
      I3 => SEG_TXT(60),
      I4 => SW0,
      I5 => Hexs(25),
      O => \buffer\(60)
    );
\buffer[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(61),
      I2 => \state__0\(1),
      I3 => SEG_TXT(61),
      I4 => SW0,
      I5 => Hexs(16),
      O => \buffer\(61)
    );
\buffer[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(62),
      I2 => \state__0\(1),
      I3 => SEG_TXT(62),
      I4 => SW0,
      I5 => Hexs(4),
      O => \buffer\(62)
    );
\buffer[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => Hexs(0),
      I1 => SW0,
      I2 => SEG_TXT(63),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \buffer\(63)
    );
\buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(6),
      I2 => \state__0\(1),
      I3 => SEG_TXT(6),
      I4 => SW0,
      I5 => Hexs(10),
      O => \buffer\(6)
    );
\buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(7),
      I2 => \state__0\(1),
      I3 => SEG_TXT(7),
      I4 => SW0,
      I5 => Hexs(3),
      O => \buffer\(7)
    );
\buffer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(8),
      I2 => \state__0\(1),
      I3 => SEG_TXT(8),
      I4 => SW0,
      I5 => Hexs(28),
      O => \buffer\(8)
    );
\buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in10(9),
      I2 => \state__0\(1),
      I3 => SEG_TXT(9),
      I4 => SW0,
      I5 => Hexs(14),
      O => \buffer\(9)
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(0),
      Q => seg_sout,
      R => '0'
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(10),
      Q => in10(9),
      R => '0'
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(11),
      Q => in10(10),
      R => '0'
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(12),
      Q => in10(11),
      R => '0'
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(13),
      Q => in10(12),
      R => '0'
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(14),
      Q => in10(13),
      R => '0'
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(15),
      Q => in10(14),
      R => '0'
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(16),
      Q => in10(15),
      R => '0'
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(17),
      Q => in10(16),
      R => '0'
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(18),
      Q => in10(17),
      R => '0'
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(19),
      Q => in10(18),
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(1),
      Q => in10(0),
      R => '0'
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(20),
      Q => in10(19),
      R => '0'
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(21),
      Q => in10(20),
      R => '0'
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(22),
      Q => in10(21),
      R => '0'
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(23),
      Q => in10(22),
      R => '0'
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(24),
      Q => in10(23),
      R => '0'
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(25),
      Q => in10(24),
      R => '0'
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(26),
      Q => in10(25),
      R => '0'
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(27),
      Q => in10(26),
      R => '0'
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(28),
      Q => in10(27),
      R => '0'
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(29),
      Q => in10(28),
      R => '0'
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(2),
      Q => in10(1),
      R => '0'
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(30),
      Q => in10(29),
      R => '0'
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(31),
      Q => in10(30),
      R => '0'
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(32),
      Q => in10(31),
      R => '0'
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(33),
      Q => in10(32),
      R => '0'
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(34),
      Q => in10(33),
      R => '0'
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(35),
      Q => in10(34),
      R => '0'
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(36),
      Q => in10(35),
      R => '0'
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(37),
      Q => in10(36),
      R => '0'
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(38),
      Q => in10(37),
      R => '0'
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(39),
      Q => in10(38),
      R => '0'
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(3),
      Q => in10(2),
      R => '0'
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(40),
      Q => in10(39),
      R => '0'
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(41),
      Q => in10(40),
      R => '0'
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(42),
      Q => in10(41),
      R => '0'
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(43),
      Q => in10(42),
      R => '0'
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(44),
      Q => in10(43),
      R => '0'
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(45),
      Q => in10(44),
      R => '0'
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(46),
      Q => in10(45),
      R => '0'
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(47),
      Q => in10(46),
      R => '0'
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(48),
      Q => in10(47),
      R => '0'
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(49),
      Q => in10(48),
      R => '0'
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(4),
      Q => in10(3),
      R => '0'
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(50),
      Q => in10(49),
      R => '0'
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(51),
      Q => in10(50),
      R => '0'
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(52),
      Q => in10(51),
      R => '0'
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(53),
      Q => in10(52),
      R => '0'
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(54),
      Q => in10(53),
      R => '0'
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(55),
      Q => in10(54),
      R => '0'
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(56),
      Q => in10(55),
      R => '0'
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(57),
      Q => in10(56),
      R => '0'
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(58),
      Q => in10(57),
      R => '0'
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(59),
      Q => in10(58),
      R => '0'
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(5),
      Q => in10(4),
      R => '0'
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(60),
      Q => in10(59),
      R => '0'
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(61),
      Q => in10(60),
      R => '0'
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(62),
      Q => in10(61),
      R => '0'
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(63),
      Q => in10(62),
      R => '0'
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(6),
      Q => in10(5),
      R => '0'
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(7),
      Q => in10(6),
      R => '0'
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(8),
      Q => in10(7),
      R => '0'
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[0]_i_1_n_0\,
      D => \buffer\(9),
      Q => in10(8),
      R => '0'
    );
s_clk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"86"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \^s_clk_reg_0\,
      O => s_clk_i_1_n_0
    );
s_clk_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => s_clk_i_1_n_0,
      Q => \^s_clk_reg_0\
    );
\shift_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \shift_count_reg_n_0_[0]\,
      O => shift_count(0)
    );
\shift_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \shift_count_reg_n_0_[0]\,
      I2 => \shift_count_reg_n_0_[1]\,
      O => shift_count(1)
    );
\shift_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \shift_count_reg_n_0_[0]\,
      I2 => \shift_count_reg_n_0_[1]\,
      I3 => \shift_count_reg_n_0_[2]\,
      O => shift_count(2)
    );
\shift_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \shift_count_reg_n_0_[1]\,
      I2 => \shift_count_reg_n_0_[0]\,
      I3 => \shift_count_reg_n_0_[2]\,
      I4 => \shift_count_reg_n_0_[3]\,
      O => shift_count(3)
    );
\shift_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F0F0F080000000"
    )
        port map (
      I0 => \shift_count_reg_n_0_[1]\,
      I1 => \shift_count_reg_n_0_[0]\,
      I2 => \state__0\(0),
      I3 => \shift_count_reg_n_0_[2]\,
      I4 => \shift_count_reg_n_0_[3]\,
      I5 => \shift_count_reg_n_0_[4]\,
      O => shift_count(4)
    );
\shift_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FD0D0D0D"
    )
        port map (
      I0 => \^start\(0),
      I1 => \^start\(1),
      I2 => \state__0\(0),
      I3 => \buffer[0]_i_4_n_0\,
      I4 => \^s_clk_reg_0\,
      I5 => \state__0\(1),
      O => \shift_count[5]_i_1_n_0\
    );
\shift_count[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \shift_count[5]_i_3_n_0\,
      I2 => \shift_count_reg_n_0_[4]\,
      I3 => \shift_count_reg_n_0_[5]\,
      O => shift_count(5)
    );
\shift_count[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \shift_count_reg_n_0_[3]\,
      I1 => \shift_count_reg_n_0_[1]\,
      I2 => \shift_count_reg_n_0_[0]\,
      I3 => \shift_count_reg_n_0_[2]\,
      O => \shift_count[5]_i_3_n_0\
    );
\shift_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[5]_i_1_n_0\,
      CLR => rst,
      D => shift_count(0),
      Q => \shift_count_reg_n_0_[0]\
    );
\shift_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[5]_i_1_n_0\,
      CLR => rst,
      D => shift_count(1),
      Q => \shift_count_reg_n_0_[1]\
    );
\shift_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[5]_i_1_n_0\,
      CLR => rst,
      D => shift_count(2),
      Q => \shift_count_reg_n_0_[2]\
    );
\shift_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[5]_i_1_n_0\,
      CLR => rst,
      D => shift_count(3),
      Q => \shift_count_reg_n_0_[3]\
    );
\shift_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[5]_i_1_n_0\,
      CLR => rst,
      D => shift_count(4),
      Q => \shift_count_reg_n_0_[4]\
    );
\shift_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_count[5]_i_1_n_0\,
      CLR => rst,
      D => shift_count(5),
      Q => \shift_count_reg_n_0_[5]\
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_13
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_0 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_0 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_0;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_0 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_12
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_1 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_1 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_1;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_1 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_11
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_2 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_2 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_2;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_2 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_10
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_3 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_3 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_3;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_3 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_9
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_4 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_4 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_4;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_4 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_8
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_5 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_5 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_5;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_5 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU_7
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_Hex2Seg_6 is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 0 to 0 );
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    point : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_Hex2Seg_6 : entity is "Hex2Seg";
end SSeg7_Dev_0_Hex2Seg_6;

architecture STRUCTURE of SSeg7_Dev_0_Hex2Seg_6 is
begin
MSEG: entity work.SSeg7_Dev_0_MC14495_ZJU
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_HexTo8SEG is
  port (
    SEG_TXT : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Hexs : in STD_LOGIC_VECTOR ( 31 downto 0 );
    point : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 7 downto 0 );
    flash : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_HexTo8SEG : entity is "HexTo8SEG";
end SSeg7_Dev_0_HexTo8SEG;

architecture STRUCTURE of SSeg7_Dev_0_HexTo8SEG is
begin
HTS0: entity work.SSeg7_Dev_0_Hex2Seg
     port map (
      Hexs(3 downto 0) => Hexs(31 downto 28),
      LES(0) => LES(7),
      SEG_TXT(7 downto 0) => SEG_TXT(7 downto 0),
      flash => flash,
      point(0) => point(7)
    );
HTS1: entity work.SSeg7_Dev_0_Hex2Seg_0
     port map (
      Hexs(3 downto 0) => Hexs(27 downto 24),
      LES(0) => LES(6),
      SEG_TXT(7 downto 0) => SEG_TXT(15 downto 8),
      flash => flash,
      point(0) => point(6)
    );
HTS2: entity work.SSeg7_Dev_0_Hex2Seg_1
     port map (
      Hexs(3 downto 0) => Hexs(23 downto 20),
      LES(0) => LES(5),
      SEG_TXT(7 downto 0) => SEG_TXT(23 downto 16),
      flash => flash,
      point(0) => point(5)
    );
HTS3: entity work.SSeg7_Dev_0_Hex2Seg_2
     port map (
      Hexs(3 downto 0) => Hexs(19 downto 16),
      LES(0) => LES(4),
      SEG_TXT(7 downto 0) => SEG_TXT(31 downto 24),
      flash => flash,
      point(0) => point(4)
    );
HTS4: entity work.SSeg7_Dev_0_Hex2Seg_3
     port map (
      Hexs(3 downto 0) => Hexs(15 downto 12),
      LES(0) => LES(3),
      SEG_TXT(7 downto 0) => SEG_TXT(39 downto 32),
      flash => flash,
      point(0) => point(3)
    );
HTS5: entity work.SSeg7_Dev_0_Hex2Seg_4
     port map (
      Hexs(3 downto 0) => Hexs(11 downto 8),
      LES(0) => LES(2),
      SEG_TXT(7 downto 0) => SEG_TXT(47 downto 40),
      flash => flash,
      point(0) => point(2)
    );
HTS6: entity work.SSeg7_Dev_0_Hex2Seg_5
     port map (
      Hexs(3 downto 0) => Hexs(7 downto 4),
      LES(0) => LES(1),
      SEG_TXT(7 downto 0) => SEG_TXT(55 downto 48),
      flash => flash,
      point(0) => point(1)
    );
HTS7: entity work.SSeg7_Dev_0_Hex2Seg_6
     port map (
      Hexs(3 downto 0) => Hexs(3 downto 0),
      LES(0) => LES(0),
      SEG_TXT(7 downto 0) => SEG_TXT(63 downto 56),
      flash => flash,
      point(0) => point(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0_SSeg7_Dev is
  port (
    s_clk_reg : out STD_LOGIC;
    seg_sout : out STD_LOGIC;
    SEG_PEN : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 31 downto 0 );
    point : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 7 downto 0 );
    flash : in STD_LOGIC;
    Start : in STD_LOGIC;
    SW0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SSeg7_Dev_0_SSeg7_Dev : entity is "SSeg7_Dev";
end SSeg7_Dev_0_SSeg7_Dev;

architecture STRUCTURE of SSeg7_Dev_0_SSeg7_Dev is
  signal XLXN_390 : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
M2: entity work.SSeg7_Dev_0_P2S
     port map (
      Hexs(31 downto 0) => Hexs(31 downto 0),
      SEG_PEN => SEG_PEN,
      SEG_TXT(63 downto 0) => XLXN_390(63 downto 0),
      SW0 => SW0,
      Start => Start,
      clk => clk,
      rst => rst,
      s_clk_reg_0 => s_clk_reg,
      seg_sout => seg_sout
    );
SM1: entity work.SSeg7_Dev_0_HexTo8SEG
     port map (
      Hexs(31 downto 0) => Hexs(31 downto 0),
      LES(7 downto 0) => LES(7 downto 0),
      SEG_TXT(63 downto 0) => XLXN_390(63 downto 0),
      flash => flash,
      point(7 downto 0) => point(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSeg7_Dev_0 is
  port (
    clk : in STD_LOGIC;
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 7 downto 0 );
    point : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    SW0 : in STD_LOGIC;
    seg_clk : out STD_LOGIC;
    seg_clrn : out STD_LOGIC;
    SEG_PEN : out STD_LOGIC;
    seg_sout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SSeg7_Dev_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SSeg7_Dev_0 : entity is "SSeg7_Dev_0,SSeg7_Dev,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SSeg7_Dev_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of SSeg7_Dev_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SSeg7_Dev_0 : entity is "SSeg7_Dev,Vivado 2020.2";
end SSeg7_Dev_0;

architecture STRUCTURE of SSeg7_Dev_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of seg_clk : signal is "xilinx.com:signal:clock:1.0 seg_clk CLK";
  attribute X_INTERFACE_PARAMETER of seg_clk : signal is "XIL_INTERFACENAME seg_clk, ASSOCIATED_BUSIF seg_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
begin
  seg_clrn <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.SSeg7_Dev_0_SSeg7_Dev
     port map (
      Hexs(31 downto 0) => Hexs(31 downto 0),
      LES(7 downto 0) => LES(7 downto 0),
      SEG_PEN => SEG_PEN,
      SW0 => SW0,
      Start => Start,
      clk => clk,
      flash => flash,
      point(7 downto 0) => point(7 downto 0),
      rst => rst,
      s_clk_reg => seg_clk,
      seg_sout => seg_sout
    );
end STRUCTURE;
