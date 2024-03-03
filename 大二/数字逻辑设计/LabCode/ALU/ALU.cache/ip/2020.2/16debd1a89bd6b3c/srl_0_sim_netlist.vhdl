-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 15 11:49:19 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ srl_0_sim_netlist.vhdl
-- Design      : srl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "srl_0,srl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "srl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
