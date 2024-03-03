-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:39:08 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SAnti_jitter_0/SAnti_jitter_0_sim_netlist.vhdl
-- Design      : SAnti_jitter_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SAnti_jitter_0_SAnti_jitter is
  port (
    CR : out STD_LOGIC;
    Key_ready : out STD_LOGIC;
    RSTN : in STD_LOGIC;
    clk : in STD_LOGIC;
    readn : in STD_LOGIC;
    rst : out STD_LOGIC;
    BTN_OK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Key_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Key_x : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Key_y : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_OK : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of SAnti_jitter_0_SAnti_jitter : entity is "7795c07";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SAnti_jitter_0_SAnti_jitter : entity is "SAnti_jitter";
end SAnti_jitter_0_SAnti_jitter;

architecture STRUCTURE of SAnti_jitter_0_SAnti_jitter is
  signal \^sw\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal btn_temp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal button : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \button__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pulse_i_1_n_0 : STD_LOGIC;
  signal \pulse_out[3]_i_10_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_12_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_14_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_15_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_16_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_17_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_18_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_19_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \pulse_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \pulse_out_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \pulse_out_reg[3]_i_8_n_2\ : STD_LOGIC;
  signal pulse_reg_n_0 : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal \rst_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal rst_counter_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \rst_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rst_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rst_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rst_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rst_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \rst_counter_reg_n_0_\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rst_i_1_n_0 : STD_LOGIC;
  signal rst_i_2_n_0 : STD_LOGIC;
  signal rst_i_3_n_0 : STD_LOGIC;
  signal rst_i_4_n_0 : STD_LOGIC;
  signal rst_i_5_n_0 : STD_LOGIC;
  signal rst_i_6_n_0 : STD_LOGIC;
  signal rst_i_7_n_0 : STD_LOGIC;
  signal rst_i_8_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sw_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_counter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pulse_out_reg[3]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pulse_out_reg[3]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_out_reg[3]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_out_reg[3]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_rst_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_rst_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_rst_counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_rst_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_rst_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_rst_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pulse_out[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pulse_out[3]_i_7\ : label is "soft_lutpair0";
begin
  Key_x(4 downto 0) <= \^sw\(15 downto 11);
  \^sw\(15 downto 0) <= SW(15 downto 0);
  rst <= \^rst\;
  Key_ready <= 'Z';
  Key_out(0) <= 'Z';
  Key_out(1) <= 'Z';
  Key_out(2) <= 'Z';
  Key_out(3) <= 'Z';
  Key_out(4) <= 'Z';
\BTN_OK_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(0),
      Q => BTN_OK(0),
      R => '0'
    );
\BTN_OK_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(1),
      Q => BTN_OK(1),
      R => '0'
    );
\BTN_OK_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(2),
      Q => BTN_OK(2),
      R => '0'
    );
\BTN_OK_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(3),
      Q => BTN_OK(3),
      R => '0'
    );
CR_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RSTN,
      O => button(4)
    );
CR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => button(4),
      Q => CR,
      R => '0'
    );
\SW_OK_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(0),
      Q => SW_OK(0),
      R => '0'
    );
\SW_OK_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(10),
      Q => SW_OK(10),
      R => '0'
    );
\SW_OK_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(11),
      Q => SW_OK(11),
      R => '0'
    );
\SW_OK_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(12),
      Q => SW_OK(12),
      R => '0'
    );
\SW_OK_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(13),
      Q => SW_OK(13),
      R => '0'
    );
\SW_OK_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(14),
      Q => SW_OK(14),
      R => '0'
    );
\SW_OK_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(15),
      Q => SW_OK(15),
      R => '0'
    );
\SW_OK_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(1),
      Q => SW_OK(1),
      R => '0'
    );
\SW_OK_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(2),
      Q => SW_OK(2),
      R => '0'
    );
\SW_OK_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(3),
      Q => SW_OK(3),
      R => '0'
    );
\SW_OK_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(4),
      Q => SW_OK(4),
      R => '0'
    );
\SW_OK_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(5),
      Q => SW_OK(5),
      R => '0'
    );
\SW_OK_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(6),
      Q => SW_OK(6),
      R => '0'
    );
\SW_OK_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(7),
      Q => SW_OK(7),
      R => '0'
    );
\SW_OK_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(8),
      Q => SW_OK(8),
      R => '0'
    );
\SW_OK_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \^sw\(9),
      Q => SW_OK(9),
      R => '0'
    );
\btn_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \button__0\(0),
      Q => btn_temp(0),
      R => '0'
    );
\btn_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \button__0\(1),
      Q => btn_temp(1),
      R => '0'
    );
\btn_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \button__0\(2),
      Q => btn_temp(2),
      R => '0'
    );
\btn_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \button__0\(3),
      Q => btn_temp(3),
      R => '0'
    );
\btn_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => button(4),
      Q => btn_temp(4),
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEFFEEFFFFF"
    )
        port map (
      I0 => \pulse_out_reg[3]_i_8_n_2\,
      I1 => \counter[0]_i_4_n_0\,
      I2 => btn_temp(4),
      I3 => RSTN,
      I4 => Key_y(3),
      I5 => btn_temp(3),
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \pulse_out[3]_i_6_n_0\,
      I1 => \pulse_out[3]_i_5_n_0\,
      I2 => \pulse_out[3]_i_4_n_0\,
      O => sel
    );
\counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF99FF99FFFFF"
    )
        port map (
      I0 => Key_y(2),
      I1 => btn_temp(2),
      I2 => Key_y(1),
      I3 => btn_temp(1),
      I4 => btn_temp(0),
      I5 => Key_y(0),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_\(0),
      O => \counter[0]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[0]_i_3_n_7\,
      Q => \counter_reg_n_0_\(0),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_3_n_4\,
      O(2) => \counter_reg[0]_i_3_n_5\,
      O(1) => \counter_reg[0]_i_3_n_6\,
      O(0) => \counter_reg[0]_i_3_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_5_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[0]_i_3_n_6\,
      Q => counter_reg(1),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_reg(31 downto 28)
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[0]_i_3_n_5\,
      Q => counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[0]_i_3_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
pulse_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFEF"
    )
        port map (
      I0 => \pulse_out[3]_i_6_n_0\,
      I1 => \pulse_out[3]_i_5_n_0\,
      I2 => \pulse_out[3]_i_4_n_0\,
      I3 => pulse_reg_n_0,
      I4 => \counter[0]_i_1_n_0\,
      O => pulse_i_1_n_0
    );
\pulse_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Key_y(0),
      O => \button__0\(0)
    );
\pulse_out[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Key_y(1),
      O => \button__0\(1)
    );
\pulse_out[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Key_y(2),
      O => \button__0\(2)
    );
\pulse_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pulse_reg_n_0,
      I1 => \pulse_out[3]_i_2_n_0\,
      O => \pulse_out[3]_i_1_n_0\
    );
\pulse_out[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(13),
      I2 => counter_reg(21),
      I3 => counter_reg(14),
      O => \pulse_out[3]_i_10_n_0\
    );
\pulse_out[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter_reg(23),
      I2 => counter_reg(10),
      I3 => counter_reg(29),
      I4 => counter_reg(15),
      I5 => counter_reg(18),
      O => \pulse_out[3]_i_11_n_0\
    );
\pulse_out[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(9),
      I2 => counter_reg(24),
      I3 => counter_reg(16),
      O => \pulse_out[3]_i_12_n_0\
    );
\pulse_out[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^sw\(15),
      I1 => sw_temp(15),
      O => \pulse_out[3]_i_14_n_0\
    );
\pulse_out[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sw_temp(12),
      I1 => \^sw\(12),
      I2 => sw_temp(13),
      I3 => \^sw\(13),
      I4 => \^sw\(14),
      I5 => sw_temp(14),
      O => \pulse_out[3]_i_15_n_0\
    );
\pulse_out[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sw_temp(9),
      I1 => \^sw\(9),
      I2 => sw_temp(10),
      I3 => \^sw\(10),
      I4 => \^sw\(11),
      I5 => sw_temp(11),
      O => \pulse_out[3]_i_16_n_0\
    );
\pulse_out[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sw_temp(7),
      I1 => \^sw\(7),
      I2 => sw_temp(6),
      I3 => \^sw\(6),
      I4 => \^sw\(8),
      I5 => sw_temp(8),
      O => \pulse_out[3]_i_17_n_0\
    );
\pulse_out[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sw_temp(3),
      I1 => \^sw\(3),
      I2 => sw_temp(4),
      I3 => \^sw\(4),
      I4 => \^sw\(5),
      I5 => sw_temp(5),
      O => \pulse_out[3]_i_18_n_0\
    );
\pulse_out[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sw_temp(2),
      I1 => \^sw\(2),
      I2 => sw_temp(0),
      I3 => \^sw\(0),
      I4 => \^sw\(1),
      I5 => sw_temp(1),
      O => \pulse_out[3]_i_19_n_0\
    );
\pulse_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FD"
    )
        port map (
      I0 => \pulse_out[3]_i_4_n_0\,
      I1 => \pulse_out[3]_i_5_n_0\,
      I2 => \pulse_out[3]_i_6_n_0\,
      I3 => \pulse_out[3]_i_7_n_0\,
      I4 => \pulse_out_reg[3]_i_8_n_2\,
      O => \pulse_out[3]_i_2_n_0\
    );
\pulse_out[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Key_y(3),
      O => \button__0\(3)
    );
\pulse_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(27),
      I2 => counter_reg(6),
      I3 => counter_reg(12),
      I4 => \pulse_out[3]_i_9_n_0\,
      I5 => \pulse_out[3]_i_10_n_0\,
      O => \pulse_out[3]_i_4_n_0\
    );
\pulse_out[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => counter_reg(3),
      I3 => counter_reg(5),
      I4 => counter_reg(4),
      O => \pulse_out[3]_i_5_n_0\
    );
\pulse_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pulse_out[3]_i_11_n_0\,
      I1 => \pulse_out[3]_i_12_n_0\,
      I2 => counter_reg(25),
      I3 => counter_reg(19),
      I4 => counter_reg(30),
      I5 => counter_reg(7),
      O => \pulse_out[3]_i_6_n_0\
    );
\pulse_out[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF99F"
    )
        port map (
      I0 => btn_temp(3),
      I1 => Key_y(3),
      I2 => RSTN,
      I3 => btn_temp(4),
      I4 => \counter[0]_i_4_n_0\,
      O => \pulse_out[3]_i_7_n_0\
    );
\pulse_out[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(31),
      I1 => counter_reg(26),
      I2 => counter_reg(20),
      I3 => counter_reg(8),
      O => \pulse_out[3]_i_9_n_0\
    );
\pulse_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(0),
      Q => pulse_out(0),
      R => \pulse_out[3]_i_1_n_0\
    );
\pulse_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(1),
      Q => pulse_out(1),
      R => \pulse_out[3]_i_1_n_0\
    );
\pulse_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(2),
      Q => pulse_out(2),
      R => \pulse_out[3]_i_1_n_0\
    );
\pulse_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulse_out[3]_i_2_n_0\,
      D => \button__0\(3),
      Q => pulse_out(3),
      R => \pulse_out[3]_i_1_n_0\
    );
\pulse_out_reg[3]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pulse_out_reg[3]_i_13_n_0\,
      CO(2 downto 0) => \NLW_pulse_out_reg[3]_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_pulse_out_reg[3]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \pulse_out[3]_i_16_n_0\,
      S(2) => \pulse_out[3]_i_17_n_0\,
      S(1) => \pulse_out[3]_i_18_n_0\,
      S(0) => \pulse_out[3]_i_19_n_0\
    );
\pulse_out_reg[3]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_out_reg[3]_i_13_n_0\,
      CO(3 downto 2) => \NLW_pulse_out_reg[3]_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pulse_out_reg[3]_i_8_n_2\,
      CO(0) => \NLW_pulse_out_reg[3]_i_8_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_pulse_out_reg[3]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \pulse_out[3]_i_14_n_0\,
      S(0) => \pulse_out[3]_i_15_n_0\
    );
pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_i_1_n_0,
      Q => pulse_reg_n_0,
      R => '0'
    );
\rst_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020002020202"
    )
        port map (
      I0 => rst_i_2_n_0,
      I1 => rst_i_3_n_0,
      I2 => rst_i_4_n_0,
      I3 => \pulse_out[3]_i_6_n_0\,
      I4 => \pulse_out[3]_i_5_n_0\,
      I5 => \pulse_out[3]_i_4_n_0\,
      O => \rst_counter[0]_i_1_n_0\
    );
\rst_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rst_counter_reg_n_0_\(0),
      O => \rst_counter[0]_i_3_n_0\
    );
\rst_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[0]_i_2_n_7\,
      Q => \rst_counter_reg_n_0_\(0),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rst_counter_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rst_counter_reg[0]_i_2_n_4\,
      O(2) => \rst_counter_reg[0]_i_2_n_5\,
      O(1) => \rst_counter_reg[0]_i_2_n_6\,
      O(0) => \rst_counter_reg[0]_i_2_n_7\,
      S(3 downto 2) => rst_counter_reg(3 downto 2),
      S(1) => \rst_counter_reg_n_0_\(1),
      S(0) => \rst_counter[0]_i_3_n_0\
    );
\rst_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[8]_i_1_n_5\,
      Q => rst_counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[8]_i_1_n_4\,
      Q => rst_counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[12]_i_1_n_7\,
      Q => rst_counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[8]_i_1_n_0\,
      CO(3) => \rst_counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[12]_i_1_n_4\,
      O(2) => \rst_counter_reg[12]_i_1_n_5\,
      O(1) => \rst_counter_reg[12]_i_1_n_6\,
      O(0) => \rst_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(15 downto 12)
    );
\rst_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[12]_i_1_n_6\,
      Q => rst_counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[12]_i_1_n_5\,
      Q => rst_counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[12]_i_1_n_4\,
      Q => rst_counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[16]_i_1_n_7\,
      Q => rst_counter_reg(16),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[12]_i_1_n_0\,
      CO(3) => \rst_counter_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[16]_i_1_n_4\,
      O(2) => \rst_counter_reg[16]_i_1_n_5\,
      O(1) => \rst_counter_reg[16]_i_1_n_6\,
      O(0) => \rst_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(19 downto 16)
    );
\rst_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[16]_i_1_n_6\,
      Q => rst_counter_reg(17),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[16]_i_1_n_5\,
      Q => rst_counter_reg(18),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[16]_i_1_n_4\,
      Q => rst_counter_reg(19),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[0]_i_2_n_6\,
      Q => \rst_counter_reg_n_0_\(1),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[20]_i_1_n_7\,
      Q => rst_counter_reg(20),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[16]_i_1_n_0\,
      CO(3) => \rst_counter_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[20]_i_1_n_4\,
      O(2) => \rst_counter_reg[20]_i_1_n_5\,
      O(1) => \rst_counter_reg[20]_i_1_n_6\,
      O(0) => \rst_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(23 downto 20)
    );
\rst_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[20]_i_1_n_6\,
      Q => rst_counter_reg(21),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[20]_i_1_n_5\,
      Q => rst_counter_reg(22),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[20]_i_1_n_4\,
      Q => rst_counter_reg(23),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[24]_i_1_n_7\,
      Q => rst_counter_reg(24),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[20]_i_1_n_0\,
      CO(3) => \rst_counter_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[24]_i_1_n_4\,
      O(2) => \rst_counter_reg[24]_i_1_n_5\,
      O(1) => \rst_counter_reg[24]_i_1_n_6\,
      O(0) => \rst_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(27 downto 24)
    );
\rst_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[24]_i_1_n_6\,
      Q => rst_counter_reg(25),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[24]_i_1_n_5\,
      Q => rst_counter_reg(26),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[24]_i_1_n_4\,
      Q => rst_counter_reg(27),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[28]_i_1_n_7\,
      Q => rst_counter_reg(28),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_rst_counter_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[28]_i_1_n_4\,
      O(2) => \rst_counter_reg[28]_i_1_n_5\,
      O(1) => \rst_counter_reg[28]_i_1_n_6\,
      O(0) => \rst_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(31 downto 28)
    );
\rst_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[28]_i_1_n_6\,
      Q => rst_counter_reg(29),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[0]_i_2_n_5\,
      Q => rst_counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[28]_i_1_n_5\,
      Q => rst_counter_reg(30),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[28]_i_1_n_4\,
      Q => rst_counter_reg(31),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[0]_i_2_n_4\,
      Q => rst_counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[4]_i_1_n_7\,
      Q => rst_counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[0]_i_2_n_0\,
      CO(3) => \rst_counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[4]_i_1_n_4\,
      O(2) => \rst_counter_reg[4]_i_1_n_5\,
      O(1) => \rst_counter_reg[4]_i_1_n_6\,
      O(0) => \rst_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(7 downto 4)
    );
\rst_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[4]_i_1_n_6\,
      Q => rst_counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[4]_i_1_n_5\,
      Q => rst_counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[4]_i_1_n_4\,
      Q => rst_counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[8]_i_1_n_7\,
      Q => rst_counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\rst_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_counter_reg[4]_i_1_n_0\,
      CO(3) => \rst_counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_rst_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_counter_reg[8]_i_1_n_4\,
      O(2) => \rst_counter_reg[8]_i_1_n_5\,
      O(1) => \rst_counter_reg[8]_i_1_n_6\,
      O(0) => \rst_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => rst_counter_reg(11 downto 8)
    );
\rst_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rst_counter[0]_i_1_n_0\,
      D => \rst_counter_reg[8]_i_1_n_6\,
      Q => rst_counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FFFFFF00FD0000"
    )
        port map (
      I0 => rst_i_2_n_0,
      I1 => rst_i_3_n_0,
      I2 => rst_i_4_n_0,
      I3 => RSTN,
      I4 => \pulse_out[3]_i_2_n_0\,
      I5 => \^rst\,
      O => rst_i_1_n_0
    );
rst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rst_counter_reg(27),
      I1 => rst_counter_reg(30),
      I2 => rst_counter_reg(17),
      I3 => rst_counter_reg(19),
      I4 => rst_i_5_n_0,
      I5 => rst_i_6_n_0,
      O => rst_i_2_n_0
    );
rst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rst_i_7_n_0,
      I1 => rst_i_8_n_0,
      I2 => rst_counter_reg(20),
      I3 => RSTN,
      I4 => rst_counter_reg(26),
      I5 => rst_counter_reg(18),
      O => rst_i_3_n_0
    );
rst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => rst_counter_reg(2),
      I1 => rst_counter_reg(3),
      I2 => rst_counter_reg(4),
      I3 => rst_counter_reg(6),
      I4 => rst_counter_reg(5),
      O => rst_i_4_n_0
    );
rst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_counter_reg(29),
      I1 => rst_counter_reg(28),
      I2 => rst_counter_reg(23),
      I3 => rst_counter_reg(14),
      O => rst_i_5_n_0
    );
rst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_counter_reg(24),
      I1 => rst_counter_reg(15),
      I2 => rst_counter_reg(25),
      I3 => rst_counter_reg(10),
      O => rst_i_6_n_0
    );
rst_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rst_counter_reg(16),
      I1 => rst_counter_reg(11),
      I2 => rst_counter_reg(13),
      I3 => rst_counter_reg(21),
      I4 => rst_counter_reg(9),
      I5 => rst_counter_reg(31),
      O => rst_i_7_n_0
    );
rst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_counter_reg(22),
      I1 => rst_counter_reg(12),
      I2 => rst_counter_reg(8),
      I3 => rst_counter_reg(7),
      O => rst_i_8_n_0
    );
rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^rst\,
      R => '0'
    );
\sw_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(0),
      Q => sw_temp(0),
      R => '0'
    );
\sw_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(10),
      Q => sw_temp(10),
      R => '0'
    );
\sw_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(11),
      Q => sw_temp(11),
      R => '0'
    );
\sw_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(12),
      Q => sw_temp(12),
      R => '0'
    );
\sw_temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(13),
      Q => sw_temp(13),
      R => '0'
    );
\sw_temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(14),
      Q => sw_temp(14),
      R => '0'
    );
\sw_temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(15),
      Q => sw_temp(15),
      R => '0'
    );
\sw_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(1),
      Q => sw_temp(1),
      R => '0'
    );
\sw_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(2),
      Q => sw_temp(2),
      R => '0'
    );
\sw_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(3),
      Q => sw_temp(3),
      R => '0'
    );
\sw_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(4),
      Q => sw_temp(4),
      R => '0'
    );
\sw_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(5),
      Q => sw_temp(5),
      R => '0'
    );
\sw_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(6),
      Q => sw_temp(6),
      R => '0'
    );
\sw_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(7),
      Q => sw_temp(7),
      R => '0'
    );
\sw_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(8),
      Q => sw_temp(8),
      R => '0'
    );
\sw_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^sw\(9),
      Q => sw_temp(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SAnti_jitter_0 is
  port (
    CR : out STD_LOGIC;
    Key_ready : out STD_LOGIC;
    RSTN : in STD_LOGIC;
    clk : in STD_LOGIC;
    readn : in STD_LOGIC;
    rst : out STD_LOGIC;
    BTN_OK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Key_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Key_x : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Key_y : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_OK : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SAnti_jitter_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SAnti_jitter_0 : entity is "SAnti_jitter_0,SAnti_jitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SAnti_jitter_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of SAnti_jitter_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SAnti_jitter_0 : entity is "SAnti_jitter,Vivado 2020.2";
end SAnti_jitter_0;

architecture STRUCTURE of SAnti_jitter_0 is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RSTN : signal is "xilinx.com:signal:reset:1.0 RSTN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RSTN : signal is "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET RSTN, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.SAnti_jitter_0_SAnti_jitter
     port map (
      BTN_OK(3 downto 0) => BTN_OK(3 downto 0),
      CR => CR,
      Key_out(4 downto 0) => Key_out(4 downto 0),
      Key_ready => Key_ready,
      Key_x(4 downto 0) => Key_x(4 downto 0),
      Key_y(3 downto 0) => Key_y(3 downto 0),
      RSTN => RSTN,
      SW(15 downto 0) => SW(15 downto 0),
      SW_OK(15 downto 0) => SW_OK(15 downto 0),
      clk => clk,
      pulse_out(3 downto 0) => pulse_out(3 downto 0),
      readn => readn,
      rst => rst
    );
end STRUCTURE;
