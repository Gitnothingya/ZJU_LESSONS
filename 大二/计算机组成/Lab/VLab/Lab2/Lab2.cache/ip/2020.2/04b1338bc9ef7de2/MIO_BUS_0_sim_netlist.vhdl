-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:43:58 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MIO_BUS_0_sim_netlist.vhdl
-- Design      : MIO_BUS_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIO_BUS is
  port (
    GPIOe0000000_we : out STD_LOGIC;
    GPIOf0000000_we : out STD_LOGIC;
    clk : in STD_LOGIC;
    counter0_out : in STD_LOGIC;
    counter1_out : in STD_LOGIC;
    counter2_out : in STD_LOGIC;
    counter_we : out STD_LOGIC;
    data_ram_we : out STD_LOGIC;
    mem_w : in STD_LOGIC;
    rst : in STD_LOGIC;
    BTN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cpu_data2bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Cpu_data4bus : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Peripheral_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIO_BUS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIO_BUS is
  signal \Cpu_data4bus[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Cpu_data4bus[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Cpu_data4bus[31]_INST_0_i_3_n_0\ : STD_LOGIC;
begin
\Cpu_data4bus[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(0),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(0),
      I4 => SW(0),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(0)
    );
\Cpu_data4bus[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(10),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(10),
      I4 => SW(10),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(10)
    );
\Cpu_data4bus[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(11),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(11),
      I4 => SW(11),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(11)
    );
\Cpu_data4bus[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(12),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(12),
      I4 => SW(12),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(12)
    );
\Cpu_data4bus[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(13),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(13),
      I4 => SW(13),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(13)
    );
\Cpu_data4bus[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(14),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(14),
      I4 => SW(14),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(14)
    );
\Cpu_data4bus[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(15),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(15),
      I4 => SW(15),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(15)
    );
\Cpu_data4bus[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(16),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(16),
      I4 => led_out(0),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(16)
    );
\Cpu_data4bus[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(17),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(17),
      I4 => led_out(1),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(17)
    );
\Cpu_data4bus[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(18),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(18),
      I4 => led_out(2),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(18)
    );
\Cpu_data4bus[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(19),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(19),
      I4 => led_out(3),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(19)
    );
\Cpu_data4bus[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(1),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(1),
      I4 => SW(1),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(1)
    );
\Cpu_data4bus[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(20),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(20),
      I4 => led_out(4),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(20)
    );
\Cpu_data4bus[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(21),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(21),
      I4 => led_out(5),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(21)
    );
\Cpu_data4bus[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(22),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(22),
      I4 => led_out(6),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(22)
    );
\Cpu_data4bus[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(23),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(23),
      I4 => led_out(7),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(23)
    );
\Cpu_data4bus[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(24),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(24),
      I4 => led_out(8),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(24)
    );
\Cpu_data4bus[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(25),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(25),
      I4 => led_out(9),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(25)
    );
\Cpu_data4bus[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(26),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(26),
      I4 => led_out(10),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(26)
    );
\Cpu_data4bus[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(27),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(27),
      I4 => led_out(11),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(27)
    );
\Cpu_data4bus[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(28),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(28),
      I4 => led_out(12),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(28)
    );
\Cpu_data4bus[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(29),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(29),
      I4 => counter2_out,
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(29)
    );
\Cpu_data4bus[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(2),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(2),
      I4 => SW(2),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(2)
    );
\Cpu_data4bus[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(30),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(30),
      I4 => counter1_out,
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(30)
    );
\Cpu_data4bus[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(31),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(31),
      I4 => counter0_out,
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(31)
    );
\Cpu_data4bus[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => mem_w,
      O => \Cpu_data4bus[31]_INST_0_i_1_n_0\
    );
\Cpu_data4bus[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400000004000"
    )
        port map (
      I0 => mem_w,
      I1 => addr_bus(30),
      I2 => addr_bus(29),
      I3 => addr_bus(31),
      I4 => addr_bus(28),
      I5 => addr_bus(2),
      O => \Cpu_data4bus[31]_INST_0_i_2_n_0\
    );
\Cpu_data4bus[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => mem_w,
      I1 => addr_bus(30),
      I2 => addr_bus(29),
      I3 => addr_bus(31),
      I4 => addr_bus(28),
      I5 => addr_bus(2),
      O => \Cpu_data4bus[31]_INST_0_i_3_n_0\
    );
\Cpu_data4bus[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(3),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(3),
      I4 => SW(3),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(3)
    );
\Cpu_data4bus[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(4),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(4),
      I4 => SW(4),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(4)
    );
\Cpu_data4bus[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(5),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(5),
      I4 => SW(5),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(5)
    );
\Cpu_data4bus[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(6),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(6),
      I4 => SW(6),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(6)
    );
\Cpu_data4bus[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(7),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(7),
      I4 => SW(7),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(7)
    );
\Cpu_data4bus[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(8),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(8),
      I4 => SW(8),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(8)
    );
\Cpu_data4bus[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \Cpu_data4bus[31]_INST_0_i_1_n_0\,
      I1 => ram_data_out(9),
      I2 => \Cpu_data4bus[31]_INST_0_i_2_n_0\,
      I3 => counter_out(9),
      I4 => SW(9),
      I5 => \Cpu_data4bus[31]_INST_0_i_3_n_0\,
      O => Cpu_data4bus(9)
    );
GPIOe0000000_we_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => mem_w,
      I2 => addr_bus(31),
      I3 => addr_bus(29),
      I4 => addr_bus(30),
      O => GPIOe0000000_we
    );
GPIOf0000000_we_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => addr_bus(2),
      I1 => addr_bus(28),
      I2 => mem_w,
      I3 => addr_bus(31),
      I4 => addr_bus(29),
      I5 => addr_bus(30),
      O => GPIOf0000000_we
    );
\Peripheral_in[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(0),
      O => Peripheral_in(0)
    );
\Peripheral_in[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(10),
      O => Peripheral_in(10)
    );
\Peripheral_in[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(11),
      O => Peripheral_in(11)
    );
\Peripheral_in[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(12),
      O => Peripheral_in(12)
    );
\Peripheral_in[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(13),
      O => Peripheral_in(13)
    );
\Peripheral_in[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(14),
      O => Peripheral_in(14)
    );
\Peripheral_in[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(15),
      O => Peripheral_in(15)
    );
\Peripheral_in[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(16),
      O => Peripheral_in(16)
    );
\Peripheral_in[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(17),
      O => Peripheral_in(17)
    );
\Peripheral_in[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(18),
      O => Peripheral_in(18)
    );
\Peripheral_in[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(19),
      O => Peripheral_in(19)
    );
\Peripheral_in[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(1),
      O => Peripheral_in(1)
    );
\Peripheral_in[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(20),
      O => Peripheral_in(20)
    );
\Peripheral_in[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(21),
      O => Peripheral_in(21)
    );
\Peripheral_in[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(22),
      O => Peripheral_in(22)
    );
\Peripheral_in[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(23),
      O => Peripheral_in(23)
    );
\Peripheral_in[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(24),
      O => Peripheral_in(24)
    );
\Peripheral_in[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(25),
      O => Peripheral_in(25)
    );
\Peripheral_in[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(26),
      O => Peripheral_in(26)
    );
\Peripheral_in[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(27),
      O => Peripheral_in(27)
    );
\Peripheral_in[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(28),
      O => Peripheral_in(28)
    );
\Peripheral_in[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(29),
      O => Peripheral_in(29)
    );
\Peripheral_in[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(2),
      O => Peripheral_in(2)
    );
\Peripheral_in[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(30),
      O => Peripheral_in(30)
    );
\Peripheral_in[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(31),
      O => Peripheral_in(31)
    );
\Peripheral_in[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(3),
      O => Peripheral_in(3)
    );
\Peripheral_in[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(4),
      O => Peripheral_in(4)
    );
\Peripheral_in[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(5),
      O => Peripheral_in(5)
    );
\Peripheral_in[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(6),
      O => Peripheral_in(6)
    );
\Peripheral_in[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(7),
      O => Peripheral_in(7)
    );
\Peripheral_in[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(8),
      O => Peripheral_in(8)
    );
\Peripheral_in[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr_bus(31),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => Cpu_data2bus(9),
      O => Peripheral_in(9)
    );
counter_we_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mem_w,
      I1 => addr_bus(2),
      I2 => addr_bus(28),
      I3 => addr_bus(31),
      I4 => addr_bus(29),
      I5 => addr_bus(30),
      O => counter_we
    );
data_ram_we_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => mem_w,
      O => data_ram_we
    );
\ram_addr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(2),
      O => ram_addr(0)
    );
\ram_addr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(3),
      O => ram_addr(1)
    );
\ram_addr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(4),
      O => ram_addr(2)
    );
\ram_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(5),
      O => ram_addr(3)
    );
\ram_addr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(6),
      O => ram_addr(4)
    );
\ram_addr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(7),
      O => ram_addr(5)
    );
\ram_addr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(8),
      O => ram_addr(6)
    );
\ram_addr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(9),
      O => ram_addr(7)
    );
\ram_addr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(10),
      O => ram_addr(8)
    );
\ram_addr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => addr_bus(11),
      O => ram_addr(9)
    );
\ram_data_in[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(0),
      O => ram_data_in(0)
    );
\ram_data_in[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(10),
      O => ram_data_in(10)
    );
\ram_data_in[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(11),
      O => ram_data_in(11)
    );
\ram_data_in[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(12),
      O => ram_data_in(12)
    );
\ram_data_in[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(13),
      O => ram_data_in(13)
    );
\ram_data_in[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(14),
      O => ram_data_in(14)
    );
\ram_data_in[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(15),
      O => ram_data_in(15)
    );
\ram_data_in[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(16),
      O => ram_data_in(16)
    );
\ram_data_in[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(17),
      O => ram_data_in(17)
    );
\ram_data_in[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(18),
      O => ram_data_in(18)
    );
\ram_data_in[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(19),
      O => ram_data_in(19)
    );
\ram_data_in[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(1),
      O => ram_data_in(1)
    );
\ram_data_in[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(20),
      O => ram_data_in(20)
    );
\ram_data_in[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(21),
      O => ram_data_in(21)
    );
\ram_data_in[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(22),
      O => ram_data_in(22)
    );
\ram_data_in[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(23),
      O => ram_data_in(23)
    );
\ram_data_in[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(24),
      O => ram_data_in(24)
    );
\ram_data_in[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(25),
      O => ram_data_in(25)
    );
\ram_data_in[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(26),
      O => ram_data_in(26)
    );
\ram_data_in[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(27),
      O => ram_data_in(27)
    );
\ram_data_in[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(28),
      O => ram_data_in(28)
    );
\ram_data_in[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(29),
      O => ram_data_in(29)
    );
\ram_data_in[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(2),
      O => ram_data_in(2)
    );
\ram_data_in[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(30),
      O => ram_data_in(30)
    );
\ram_data_in[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(31),
      O => ram_data_in(31)
    );
\ram_data_in[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(3),
      O => ram_data_in(3)
    );
\ram_data_in[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(4),
      O => ram_data_in(4)
    );
\ram_data_in[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(5),
      O => ram_data_in(5)
    );
\ram_data_in[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(6),
      O => ram_data_in(6)
    );
\ram_data_in[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(7),
      O => ram_data_in(7)
    );
\ram_data_in[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(8),
      O => ram_data_in(8)
    );
\ram_data_in[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addr_bus(28),
      I1 => addr_bus(29),
      I2 => addr_bus(30),
      I3 => addr_bus(31),
      I4 => Cpu_data2bus(9),
      O => ram_data_in(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    GPIOe0000000_we : out STD_LOGIC;
    GPIOf0000000_we : out STD_LOGIC;
    clk : in STD_LOGIC;
    counter0_out : in STD_LOGIC;
    counter1_out : in STD_LOGIC;
    counter2_out : in STD_LOGIC;
    counter_we : out STD_LOGIC;
    data_ram_we : out STD_LOGIC;
    mem_w : in STD_LOGIC;
    rst : in STD_LOGIC;
    BTN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cpu_data2bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Cpu_data4bus : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Peripheral_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MIO_BUS_0,MIO_BUS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MIO_BUS,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute black_box : string;
  attribute black_box of inst : label is "1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIO_BUS
     port map (
      BTN(3 downto 0) => BTN(3 downto 0),
      Cpu_data2bus(31 downto 0) => Cpu_data2bus(31 downto 0),
      Cpu_data4bus(31 downto 0) => Cpu_data4bus(31 downto 0),
      GPIOe0000000_we => GPIOe0000000_we,
      GPIOf0000000_we => GPIOf0000000_we,
      Peripheral_in(31 downto 0) => Peripheral_in(31 downto 0),
      SW(15 downto 0) => SW(15 downto 0),
      addr_bus(31 downto 0) => addr_bus(31 downto 0),
      clk => clk,
      counter0_out => counter0_out,
      counter1_out => counter1_out,
      counter2_out => counter2_out,
      counter_out(31 downto 0) => counter_out(31 downto 0),
      counter_we => counter_we,
      data_ram_we => data_ram_we,
      led_out(15 downto 0) => led_out(15 downto 0),
      mem_w => mem_w,
      ram_addr(9 downto 0) => ram_addr(9 downto 0),
      ram_data_in(31 downto 0) => ram_data_in(31 downto 0),
      ram_data_out(31 downto 0) => ram_data_out(31 downto 0),
      rst => rst
    );
end STRUCTURE;
