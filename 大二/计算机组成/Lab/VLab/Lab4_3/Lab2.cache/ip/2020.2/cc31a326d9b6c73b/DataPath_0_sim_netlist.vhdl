-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 12:11:26 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataPath_0_sim_netlist.vhdl
-- Design      : DataPath_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALUT is
  port (
    ALU_operation_0_sp_1 : out STD_LOGIC;
    \ALU_operation[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \inst_field[31]\ : out STD_LOGIC;
    \Q_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALUSrc_B : in STD_LOGIC;
    inst_field : in STD_LOGIC_VECTOR ( 24 downto 0 );
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALU_out : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \Q[31]_i_5\ : in STD_LOGIC;
    \Q[31]_i_5_0\ : in STD_LOGIC;
    \Q[31]_i_9_0\ : in STD_LOGIC;
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Jump : in STD_LOGIC;
    \Q_reg[3]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALUT;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALUT is
  signal \^alu_operation[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ALU_operation_0_sn_1 : STD_LOGIC;
  signal \ALU_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Q[31]_i_11_n_0\ : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal \^inst_field[31]\ : STD_LOGIC;
  signal \res2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \res2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \res2_carry__0_n_0\ : STD_LOGIC;
  signal \res2_carry__0_n_1\ : STD_LOGIC;
  signal \res2_carry__0_n_2\ : STD_LOGIC;
  signal \res2_carry__0_n_3\ : STD_LOGIC;
  signal \res2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \res2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \res2_carry__1_n_0\ : STD_LOGIC;
  signal \res2_carry__1_n_1\ : STD_LOGIC;
  signal \res2_carry__1_n_2\ : STD_LOGIC;
  signal \res2_carry__1_n_3\ : STD_LOGIC;
  signal \res2_carry__2_n_1\ : STD_LOGIC;
  signal \res2_carry__2_n_2\ : STD_LOGIC;
  signal \res2_carry__2_n_3\ : STD_LOGIC;
  signal res2_carry_i_1_n_0 : STD_LOGIC;
  signal res2_carry_i_2_n_0 : STD_LOGIC;
  signal res2_carry_i_3_n_0 : STD_LOGIC;
  signal res2_carry_i_4_n_0 : STD_LOGIC;
  signal res2_carry_i_5_n_0 : STD_LOGIC;
  signal res2_carry_i_6_n_0 : STD_LOGIC;
  signal res2_carry_i_7_n_0 : STD_LOGIC;
  signal res2_carry_i_8_n_0 : STD_LOGIC;
  signal res2_carry_i_9_n_0 : STD_LOGIC;
  signal res2_carry_n_0 : STD_LOGIC;
  signal res2_carry_n_1 : STD_LOGIC;
  signal res2_carry_n_2 : STD_LOGIC;
  signal res2_carry_n_3 : STD_LOGIC;
  signal NLW_res2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_out[0]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of res2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \res2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \res2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \res2_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of res2_carry_i_9 : label is "soft_lutpair0";
begin
  \ALU_operation[0]_0\(0) <= \^alu_operation[0]_0\(0);
  ALU_operation_0_sp_1 <= ALU_operation_0_sn_1;
  \inst_field[31]\ <= \^inst_field[31]\;
\ALU_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00505AAAAA0A0"
    )
        port map (
      I0 => \ALU_out[0]_INST_0_i_1_n_0\,
      I1 => data7,
      I2 => ALU_operation(0),
      I3 => O(0),
      I4 => ALU_operation(1),
      I5 => ALU_operation(2),
      O => \^alu_operation[0]_0\(0)
    );
\ALU_out[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(0),
      I2 => ImmSel(0),
      I3 => inst_field(13),
      I4 => ImmSel(1),
      O => \ALU_out[0]_INST_0_i_1_n_0\
    );
\ALU_out[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(1),
      I2 => inst_field(0),
      I3 => ImmSel(0),
      I4 => inst_field(13),
      I5 => ALUSrc_B,
      O => \^inst_field[31]\
    );
\Q[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ALU_out(5),
      I1 => ALU_out(4),
      I2 => ALU_out(6),
      I3 => \Q[31]_i_9_0\,
      I4 => ALU_out(3),
      I5 => \^alu_operation[0]_0\(0),
      O => \Q[31]_i_11_n_0\
    );
\Q[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ALU_out(1),
      I1 => ALU_out(0),
      I2 => ALU_out(2),
      I3 => \Q[31]_i_11_n_0\,
      I4 => \Q[31]_i_5\,
      I5 => \Q[31]_i_5_0\,
      O => ALU_operation_0_sn_1
    );
\Q[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E20FE2"
    )
        port map (
      I0 => \Q_reg[3]\(0),
      I1 => ALU_operation_0_sn_1,
      I2 => Q(0),
      I3 => Jump,
      I4 => \Q_reg[3]_0\,
      O => \Q_reg[0]\(0)
    );
res2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => res2_carry_n_0,
      CO(2) => res2_carry_n_1,
      CO(1) => res2_carry_n_2,
      CO(0) => res2_carry_n_3,
      CYINIT => '0',
      DI(3) => res2_carry_i_1_n_0,
      DI(2) => res2_carry_i_2_n_0,
      DI(1) => res2_carry_i_3_n_0,
      DI(0) => res2_carry_i_4_n_0,
      O(3 downto 0) => NLW_res2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => res2_carry_i_5_n_0,
      S(2) => res2_carry_i_6_n_0,
      S(1) => res2_carry_i_7_n_0,
      S(0) => res2_carry_i_8_n_0
    );
\res2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => res2_carry_n_0,
      CO(3) => \res2_carry__0_n_0\,
      CO(2) => \res2_carry__0_n_1\,
      CO(1) => \res2_carry__0_n_2\,
      CO(0) => \res2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \res2_carry__0_i_1_n_0\,
      DI(2) => \res2_carry__0_i_2_n_0\,
      DI(1) => \res2_carry__0_i_3_n_0\,
      DI(0) => \res2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_res2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \res2_carry__0_i_5_n_0\,
      S(2) => \res2_carry__0_i_6_n_0\,
      S(1) => \res2_carry__0_i_7_n_0\,
      S(0) => \res2_carry__0_i_8_n_0\
    );
\res2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0008AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(7),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      I5 => inst_field(8),
      O => \res2_carry__0_i_1_n_0\
    );
\res2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0008AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(5),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      I5 => inst_field(6),
      O => \res2_carry__0_i_2_n_0\
    );
\res2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(23),
      I2 => \^inst_field[31]\,
      O => \res2_carry__0_i_3_n_0\
    );
\res2_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(21),
      I2 => inst_field(22),
      O => \res2_carry__0_i_4_n_0\
    );
\res2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03335333FFFFFFFF"
    )
        port map (
      I0 => inst_field(8),
      I1 => inst_field(24),
      I2 => ImmSel(0),
      I3 => ImmSel(1),
      I4 => inst_field(7),
      I5 => ALUSrc_B,
      O => \res2_carry__0_i_5_n_0\
    );
\res2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03335333FFFFFFFF"
    )
        port map (
      I0 => inst_field(6),
      I1 => inst_field(24),
      I2 => ImmSel(0),
      I3 => ImmSel(1),
      I4 => inst_field(5),
      I5 => ALUSrc_B,
      O => \res2_carry__0_i_6_n_0\
    );
\res2_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^inst_field[31]\,
      I1 => inst_field(23),
      I2 => ALUSrc_B,
      O => \res2_carry__0_i_7_n_0\
    );
\res2_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => inst_field(22),
      I1 => inst_field(21),
      I2 => ALUSrc_B,
      O => \res2_carry__0_i_8_n_0\
    );
\res2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res2_carry__0_n_0\,
      CO(3) => \res2_carry__1_n_0\,
      CO(2) => \res2_carry__1_n_1\,
      CO(1) => \res2_carry__1_n_2\,
      CO(0) => \res2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \res2_carry__1_i_1_n_0\,
      DI(2) => \res2_carry__1_i_2_n_0\,
      DI(1) => \res2_carry__1_i_3_n_0\,
      DI(0) => \res2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_res2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \res2_carry__1_i_5_n_0\,
      S(2) => \res2_carry__1_i_6_n_0\,
      S(1) => \res2_carry__1_i_7_n_0\,
      S(0) => \res2_carry__1_i_8_n_0\
    );
\res2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(24),
      O => \res2_carry__1_i_1_n_0\
    );
\res2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(24),
      O => \res2_carry__1_i_2_n_0\
    );
\res2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0008AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(11),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      I5 => inst_field(12),
      O => \res2_carry__1_i_3_n_0\
    );
\res2_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0008AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(9),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      I5 => inst_field(10),
      O => \res2_carry__1_i_4_n_0\
    );
\res2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \res2_carry__1_i_5_n_0\
    );
\res2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \res2_carry__1_i_6_n_0\
    );
\res2_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03335333FFFFFFFF"
    )
        port map (
      I0 => inst_field(12),
      I1 => inst_field(24),
      I2 => ImmSel(0),
      I3 => ImmSel(1),
      I4 => inst_field(11),
      I5 => ALUSrc_B,
      O => \res2_carry__1_i_7_n_0\
    );
\res2_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03335333FFFFFFFF"
    )
        port map (
      I0 => inst_field(10),
      I1 => inst_field(24),
      I2 => ImmSel(0),
      I3 => ImmSel(1),
      I4 => inst_field(9),
      I5 => ALUSrc_B,
      O => \res2_carry__1_i_8_n_0\
    );
\res2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \res2_carry__1_n_0\,
      CO(3) => data7,
      CO(2) => \res2_carry__2_n_1\,
      CO(1) => \res2_carry__2_n_2\,
      CO(0) => \res2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \NLW_res2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
res2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(19),
      I2 => inst_field(20),
      O => res2_carry_i_1_n_0
    );
res2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8AA88008"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(17),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(4),
      I5 => inst_field(18),
      O => res2_carry_i_2_n_0
    );
res2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8A8AA0AA808"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(15),
      I2 => res2_carry_i_9_n_0,
      I3 => inst_field(2),
      I4 => inst_field(16),
      I5 => inst_field(3),
      O => res2_carry_i_3_n_0
    );
res2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEEEEAEAAAAAEA"
    )
        port map (
      I0 => \ALU_out[0]_INST_0_i_1_n_0\,
      I1 => ALUSrc_B,
      I2 => inst_field(14),
      I3 => ImmSel(1),
      I4 => ImmSel(0),
      I5 => inst_field(1),
      O => res2_carry_i_4_n_0
    );
res2_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => inst_field(20),
      I1 => inst_field(19),
      I2 => ALUSrc_B,
      O => res2_carry_i_5_n_0
    );
res2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01105115FFFFFFFF"
    )
        port map (
      I0 => inst_field(18),
      I1 => inst_field(4),
      I2 => ImmSel(0),
      I3 => ImmSel(1),
      I4 => inst_field(17),
      I5 => ALUSrc_B,
      O => res2_carry_i_6_n_0
    );
res2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05000533FFFFFFFF"
    )
        port map (
      I0 => inst_field(3),
      I1 => inst_field(16),
      I2 => inst_field(2),
      I3 => res2_carry_i_9_n_0,
      I4 => inst_field(15),
      I5 => ALUSrc_B,
      O => res2_carry_i_7_n_0
    );
res2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014D7FFFF"
    )
        port map (
      I0 => inst_field(1),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(14),
      I4 => ALUSrc_B,
      I5 => \ALU_out[0]_INST_0_i_1_n_0\,
      O => res2_carry_i_8_n_0
    );
res2_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ImmSel(0),
      I1 => ImmSel(1),
      O => res2_carry_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCReg is
  port (
    ALU_out : out STD_LOGIC_VECTOR ( 20 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALU_operation_2_sp_1 : out STD_LOGIC;
    \ALU_operation[2]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ALU_operation[2]_1\ : out STD_LOGIC;
    ALUSrc_B_0 : out STD_LOGIC;
    ALUSrc_B_1 : out STD_LOGIC;
    ALUSrc_B_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \inst_field[31]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \inst_field[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \inst_field[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \inst_field[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ImmSel_1_sp_1 : out STD_LOGIC;
    \inst_field[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \inst_field[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[26]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 24 downto 0 );
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUSrc_B : in STD_LOGIC;
    \ALU_out[31]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \Q[31]_i_9\ : in STD_LOGIC;
    Branch : in STD_LOGIC;
    Jump : in STD_LOGIC;
    \Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    add_c1 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \Q_reg[3]_1\ : in STD_LOGIC;
    add_c0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCReg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCReg is
  signal \^alusrc_b_0\ : STD_LOGIC;
  signal \^alusrc_b_1\ : STD_LOGIC;
  signal ALU_operation_2_sn_1 : STD_LOGIC;
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \ALU_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ImmSel_1_sn_1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Q[11]_i_2_n_0\ : STD_LOGIC;
  signal \Q[11]_i_3_n_0\ : STD_LOGIC;
  signal \Q[11]_i_4_n_0\ : STD_LOGIC;
  signal \Q[11]_i_5_n_0\ : STD_LOGIC;
  signal \Q[11]_i_6_n_0\ : STD_LOGIC;
  signal \Q[11]_i_7_n_0\ : STD_LOGIC;
  signal \Q[11]_i_8_n_0\ : STD_LOGIC;
  signal \Q[11]_i_9_n_0\ : STD_LOGIC;
  signal \Q[15]_i_10_n_0\ : STD_LOGIC;
  signal \Q[15]_i_11_n_0\ : STD_LOGIC;
  signal \Q[15]_i_12_n_0\ : STD_LOGIC;
  signal \Q[15]_i_13_n_0\ : STD_LOGIC;
  signal \Q[15]_i_2_n_0\ : STD_LOGIC;
  signal \Q[15]_i_3_n_0\ : STD_LOGIC;
  signal \Q[15]_i_4_n_0\ : STD_LOGIC;
  signal \Q[15]_i_5_n_0\ : STD_LOGIC;
  signal \Q[15]_i_6_n_0\ : STD_LOGIC;
  signal \Q[15]_i_7_n_0\ : STD_LOGIC;
  signal \Q[15]_i_8_n_0\ : STD_LOGIC;
  signal \Q[15]_i_9_n_0\ : STD_LOGIC;
  signal \Q[19]_i_10_n_0\ : STD_LOGIC;
  signal \Q[19]_i_11_n_0\ : STD_LOGIC;
  signal \Q[19]_i_12_n_0\ : STD_LOGIC;
  signal \Q[19]_i_13_n_0\ : STD_LOGIC;
  signal \Q[19]_i_2_n_0\ : STD_LOGIC;
  signal \Q[19]_i_3_n_0\ : STD_LOGIC;
  signal \Q[19]_i_4_n_0\ : STD_LOGIC;
  signal \Q[19]_i_5_n_0\ : STD_LOGIC;
  signal \Q[19]_i_6_n_0\ : STD_LOGIC;
  signal \Q[19]_i_7_n_0\ : STD_LOGIC;
  signal \Q[19]_i_8_n_0\ : STD_LOGIC;
  signal \Q[19]_i_9_n_0\ : STD_LOGIC;
  signal \Q[23]_i_2_n_0\ : STD_LOGIC;
  signal \Q[23]_i_3_n_0\ : STD_LOGIC;
  signal \Q[23]_i_4_n_0\ : STD_LOGIC;
  signal \Q[23]_i_5_n_0\ : STD_LOGIC;
  signal \Q[23]_i_6_n_0\ : STD_LOGIC;
  signal \Q[23]_i_7_n_0\ : STD_LOGIC;
  signal \Q[23]_i_8_n_0\ : STD_LOGIC;
  signal \Q[23]_i_9_n_0\ : STD_LOGIC;
  signal \Q[27]_i_2_n_0\ : STD_LOGIC;
  signal \Q[27]_i_3_n_0\ : STD_LOGIC;
  signal \Q[27]_i_4_n_0\ : STD_LOGIC;
  signal \Q[27]_i_5_n_0\ : STD_LOGIC;
  signal \Q[27]_i_6_n_0\ : STD_LOGIC;
  signal \Q[27]_i_7_n_0\ : STD_LOGIC;
  signal \Q[27]_i_8_n_0\ : STD_LOGIC;
  signal \Q[27]_i_9_n_0\ : STD_LOGIC;
  signal \Q[31]_i_10_n_0\ : STD_LOGIC;
  signal \Q[31]_i_15_n_0\ : STD_LOGIC;
  signal \Q[31]_i_16_n_0\ : STD_LOGIC;
  signal \Q[31]_i_17_n_0\ : STD_LOGIC;
  signal \Q[31]_i_18_n_0\ : STD_LOGIC;
  signal \Q[31]_i_19_n_0\ : STD_LOGIC;
  signal \Q[31]_i_20_n_0\ : STD_LOGIC;
  signal \Q[31]_i_21_n_0\ : STD_LOGIC;
  signal \Q[31]_i_22_n_0\ : STD_LOGIC;
  signal \Q[31]_i_23_n_0\ : STD_LOGIC;
  signal \Q[31]_i_24_n_0\ : STD_LOGIC;
  signal \Q[31]_i_25_n_0\ : STD_LOGIC;
  signal \Q[31]_i_26_n_0\ : STD_LOGIC;
  signal \Q[31]_i_2_n_0\ : STD_LOGIC;
  signal \Q[31]_i_3_n_0\ : STD_LOGIC;
  signal \Q[31]_i_4_n_0\ : STD_LOGIC;
  signal \Q[31]_i_5_n_0\ : STD_LOGIC;
  signal \Q[31]_i_6_n_0\ : STD_LOGIC;
  signal \Q[31]_i_7_n_0\ : STD_LOGIC;
  signal \Q[31]_i_8_n_0\ : STD_LOGIC;
  signal \Q[3]_i_10_n_0\ : STD_LOGIC;
  signal \Q[3]_i_11_n_0\ : STD_LOGIC;
  signal \Q[3]_i_12_n_0\ : STD_LOGIC;
  signal \Q[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q[3]_i_3_n_0\ : STD_LOGIC;
  signal \Q[3]_i_4_n_0\ : STD_LOGIC;
  signal \Q[3]_i_5_n_0\ : STD_LOGIC;
  signal \Q[3]_i_6_n_0\ : STD_LOGIC;
  signal \Q[3]_i_7_n_0\ : STD_LOGIC;
  signal \Q[3]_i_8_n_0\ : STD_LOGIC;
  signal \Q[7]_i_10_n_0\ : STD_LOGIC;
  signal \Q[7]_i_2_n_0\ : STD_LOGIC;
  signal \Q[7]_i_3_n_0\ : STD_LOGIC;
  signal \Q[7]_i_4_n_0\ : STD_LOGIC;
  signal \Q[7]_i_5_n_0\ : STD_LOGIC;
  signal \Q[7]_i_6_n_0\ : STD_LOGIC;
  signal \Q[7]_i_7_n_0\ : STD_LOGIC;
  signal \Q[7]_i_8_n_0\ : STD_LOGIC;
  signal \Q[7]_i_9_n_0\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \Q_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_Q_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_out[12]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ALU_out[13]_INST_0_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ALU_out[14]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ALU_out[15]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ALU_out[16]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ALU_out[17]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ALU_out[18]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ALU_out[19]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ALU_out[1]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ALU_out[2]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ALU_out[31]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ALU_out[3]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ALU_out[3]_INST_0_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \ALU_out[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALU_out[4]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \ALU_out[7]_INST_0_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \Q[15]_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q[15]_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q[15]_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q[15]_i_13\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[19]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q[19]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[19]_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[19]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[31]_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q[31]_i_23\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[31]_i_24\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q[31]_i_26\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q[3]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q[3]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q[3]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[7]_i_10\ : label is "soft_lutpair2";
begin
  ALUSrc_B_0 <= \^alusrc_b_0\;
  ALUSrc_B_1 <= \^alusrc_b_1\;
  ALU_operation_2_sp_1 <= ALU_operation_2_sn_1;
  ALU_out(20 downto 0) <= \^alu_out\(20 downto 0);
  DI(0) <= \^di\(0);
  ImmSel_1_sp_1 <= ImmSel_1_sn_1;
  Q(31 downto 0) <= \^q\(31 downto 0);
\ALU_out[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(23),
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(2),
      I5 => ALU_operation(2),
      O => \^alu_out\(9)
    );
\ALU_out[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[12]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(4),
      I4 => ALU_operation(2),
      O => \^alu_out\(10)
    );
\ALU_out[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(5),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \ALU_out[12]_INST_0_i_1_n_0\
    );
\ALU_out[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[13]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(5),
      I4 => ALU_operation(2),
      O => \^alu_out\(11)
    );
\ALU_out[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(6),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \ALU_out[13]_INST_0_i_1_n_0\
    );
\ALU_out[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[14]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(6),
      I4 => ALU_operation(2),
      O => \^alu_out\(12)
    );
\ALU_out[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(7),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \ALU_out[14]_INST_0_i_1_n_0\
    );
\ALU_out[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[15]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(7),
      I4 => ALU_operation(2),
      O => \^alu_out\(13)
    );
\ALU_out[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(8),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \ALU_out[15]_INST_0_i_1_n_0\
    );
\ALU_out[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[16]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(8),
      I4 => ALU_operation(2),
      O => \^alu_out\(14)
    );
\ALU_out[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(9),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \ALU_out[16]_INST_0_i_1_n_0\
    );
\ALU_out[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(10),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \^alusrc_b_1\
    );
\ALU_out[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(11),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \^alusrc_b_0\
    );
\ALU_out[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[19]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(11),
      I4 => ALU_operation(2),
      O => \^alu_out\(15)
    );
\ALU_out[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8000"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(12),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(24),
      O => \ALU_out[19]_INST_0_i_1_n_0\
    );
\ALU_out[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[1]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(1),
      I4 => ALU_operation(2),
      O => \^alu_out\(0)
    );
\ALU_out[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(14),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(1),
      O => \ALU_out[1]_INST_0_i_1_n_0\
    );
\ALU_out[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(12),
      I5 => ALU_operation(2),
      O => \^alu_out\(16)
    );
\ALU_out[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(13),
      I5 => ALU_operation(2),
      O => \^alu_out\(17)
    );
\ALU_out[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(14),
      I5 => ALU_operation(2),
      O => \^alu_out\(18)
    );
\ALU_out[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(19),
      I5 => ALU_operation(2),
      O => \^alu_out\(19)
    );
\ALU_out[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[2]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(2),
      I4 => ALU_operation(2),
      O => \^alu_out\(1)
    );
\ALU_out[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(15),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(2),
      O => \ALU_out[2]_INST_0_i_1_n_0\
    );
\ALU_out[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[31]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => \ALU_out[31]\(23),
      I4 => ALU_operation(2),
      O => \^alu_out\(20)
    );
\ALU_out[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => ImmSel(1),
      I1 => ImmSel(0),
      I2 => ALUSrc_B,
      I3 => inst_field(24),
      O => \ALU_out[31]_INST_0_i_1_n_0\
    );
\ALU_out[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[3]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(3),
      I4 => ALU_operation(2),
      O => \^alu_out\(2)
    );
\ALU_out[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(16),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(3),
      O => \ALU_out[3]_INST_0_i_1_n_0\
    );
\ALU_out[3]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ALU_out[3]_INST_0_i_2_n_0\,
      CO(2) => \ALU_out[3]_INST_0_i_2_n_1\,
      CO(1) => \ALU_out[3]_INST_0_i_2_n_2\,
      CO(0) => \ALU_out[3]_INST_0_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => data6(3 downto 1),
      O(0) => O(0),
      S(3) => \ALU_out[3]_INST_0_i_3_n_0\,
      S(2) => \ALU_out[3]_INST_0_i_4_n_0\,
      S(1) => \ALU_out[3]_INST_0_i_5_n_0\,
      S(0) => \ALU_out[3]_INST_0_i_6_n_0\
    );
\ALU_out[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14D7FFFF"
    )
        port map (
      I0 => inst_field(3),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(16),
      I4 => ALUSrc_B,
      O => \ALU_out[3]_INST_0_i_3_n_0\
    );
\ALU_out[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14D7FFFF"
    )
        port map (
      I0 => inst_field(2),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(15),
      I4 => ALUSrc_B,
      O => \ALU_out[3]_INST_0_i_4_n_0\
    );
\ALU_out[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14D7FFFF"
    )
        port map (
      I0 => inst_field(1),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(14),
      I4 => ALUSrc_B,
      O => \ALU_out[3]_INST_0_i_5_n_0\
    );
\ALU_out[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFBFFFF"
    )
        port map (
      I0 => ImmSel(1),
      I1 => inst_field(13),
      I2 => ImmSel(0),
      I3 => inst_field(0),
      I4 => ALUSrc_B,
      O => \ALU_out[3]_INST_0_i_6_n_0\
    );
\ALU_out[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => \ALU_out[4]_INST_0_i_1_n_0\,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(4),
      I4 => ALU_operation(2),
      O => \^alu_out\(3)
    );
\ALU_out[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(17),
      I2 => ImmSel(1),
      I3 => ImmSel(0),
      I4 => inst_field(4),
      O => \ALU_out[4]_INST_0_i_1_n_0\
    );
\ALU_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(18),
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(5),
      I5 => ALU_operation(2),
      O => \^alu_out\(4)
    );
\ALU_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(19),
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(6),
      I5 => ALU_operation(2),
      O => \^alu_out\(5)
    );
\ALU_out[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(20),
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(7),
      I5 => ALU_operation(2),
      O => \^alu_out\(6)
    );
\ALU_out[7]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_out[3]_INST_0_i_2_n_0\,
      CO(3) => CO(0),
      CO(2) => \ALU_out[7]_INST_0_i_1_n_1\,
      CO(1) => \ALU_out[7]_INST_0_i_1_n_2\,
      CO(0) => \ALU_out[7]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(7 downto 4),
      S(3) => \ALU_out[7]_INST_0_i_2_n_0\,
      S(2) => \ALU_out[7]_INST_0_i_3_n_0\,
      S(1) => \ALU_out[7]_INST_0_i_4_n_0\,
      S(0) => \ALU_out[7]_INST_0_i_5_n_0\
    );
\ALU_out[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(20),
      I1 => ALUSrc_B,
      O => \ALU_out[7]_INST_0_i_2_n_0\
    );
\ALU_out[7]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(19),
      I1 => ALUSrc_B,
      O => \ALU_out[7]_INST_0_i_3_n_0\
    );
\ALU_out[7]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(18),
      I1 => ALUSrc_B,
      O => \ALU_out[7]_INST_0_i_4_n_0\
    );
\ALU_out[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14D7FFFF"
    )
        port map (
      I0 => inst_field(4),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(17),
      I4 => ALUSrc_B,
      O => \ALU_out[7]_INST_0_i_5_n_0\
    );
\ALU_out[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(21),
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(0),
      I5 => ALU_operation(2),
      O => \^alu_out\(7)
    );
\ALU_out[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(22),
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(1),
      I5 => ALU_operation(2),
      O => \^alu_out\(8)
    );
\Q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(11),
      I1 => Jump,
      O => \Q[11]_i_2_n_0\
    );
\Q[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(10),
      I1 => Jump,
      O => \Q[11]_i_3_n_0\
    );
\Q[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(9),
      I1 => Jump,
      O => \Q[11]_i_4_n_0\
    );
\Q[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(8),
      I1 => Jump,
      O => \Q[11]_i_5_n_0\
    );
\Q[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(11),
      I1 => add_c1(10),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(10),
      I4 => Jump,
      I5 => \^di\(0),
      O => \Q[11]_i_6_n_0\
    );
\Q[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(10),
      I1 => add_c1(9),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(9),
      I4 => Jump,
      I5 => inst_field(23),
      O => \Q[11]_i_7_n_0\
    );
\Q[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(9),
      I1 => add_c1(8),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(8),
      I4 => Jump,
      I5 => inst_field(22),
      O => \Q[11]_i_8_n_0\
    );
\Q[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(8),
      I1 => add_c1(7),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(7),
      I4 => Jump,
      I5 => inst_field(21),
      O => \Q[11]_i_9_n_0\
    );
\Q[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(8),
      O => \Q[15]_i_10_n_0\
    );
\Q[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(7),
      O => \Q[15]_i_11_n_0\
    );
\Q[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(6),
      O => \Q[15]_i_12_n_0\
    );
\Q[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(5),
      O => \Q[15]_i_13_n_0\
    );
\Q[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(15),
      I1 => Jump,
      O => \Q[15]_i_2_n_0\
    );
\Q[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(14),
      I1 => Jump,
      O => \Q[15]_i_3_n_0\
    );
\Q[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(13),
      I1 => Jump,
      O => \Q[15]_i_4_n_0\
    );
\Q[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(12),
      I1 => Jump,
      O => \Q[15]_i_5_n_0\
    );
\Q[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(15),
      I1 => add_c1(14),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(14),
      I4 => Jump,
      I5 => \Q[15]_i_10_n_0\,
      O => \Q[15]_i_6_n_0\
    );
\Q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(14),
      I1 => add_c1(13),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(13),
      I4 => Jump,
      I5 => \Q[15]_i_11_n_0\,
      O => \Q[15]_i_7_n_0\
    );
\Q[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(13),
      I1 => add_c1(12),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(12),
      I4 => Jump,
      I5 => \Q[15]_i_12_n_0\,
      O => \Q[15]_i_8_n_0\
    );
\Q[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(12),
      I1 => add_c1(11),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(11),
      I4 => Jump,
      I5 => \Q[15]_i_13_n_0\,
      O => \Q[15]_i_9_n_0\
    );
\Q[19]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(12),
      O => \Q[19]_i_10_n_0\
    );
\Q[19]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(11),
      O => \Q[19]_i_11_n_0\
    );
\Q[19]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(10),
      O => \Q[19]_i_12_n_0\
    );
\Q[19]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(9),
      O => \Q[19]_i_13_n_0\
    );
\Q[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(19),
      I1 => Jump,
      O => \Q[19]_i_2_n_0\
    );
\Q[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(18),
      I1 => Jump,
      O => \Q[19]_i_3_n_0\
    );
\Q[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(17),
      I1 => Jump,
      O => \Q[19]_i_4_n_0\
    );
\Q[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(16),
      I1 => Jump,
      O => \Q[19]_i_5_n_0\
    );
\Q[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(19),
      I1 => add_c1(18),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(18),
      I4 => Jump,
      I5 => \Q[19]_i_10_n_0\,
      O => \Q[19]_i_6_n_0\
    );
\Q[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(18),
      I1 => add_c1(17),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(17),
      I4 => Jump,
      I5 => \Q[19]_i_11_n_0\,
      O => \Q[19]_i_7_n_0\
    );
\Q[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(17),
      I1 => add_c1(16),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(16),
      I4 => Jump,
      I5 => \Q[19]_i_12_n_0\,
      O => \Q[19]_i_8_n_0\
    );
\Q[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(16),
      I1 => add_c1(15),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(15),
      I4 => Jump,
      I5 => \Q[19]_i_13_n_0\,
      O => \Q[19]_i_9_n_0\
    );
\Q[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(23),
      I1 => Jump,
      O => \Q[23]_i_2_n_0\
    );
\Q[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(22),
      I1 => Jump,
      O => \Q[23]_i_3_n_0\
    );
\Q[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(21),
      I1 => Jump,
      O => \Q[23]_i_4_n_0\
    );
\Q[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(20),
      I1 => Jump,
      O => \Q[23]_i_5_n_0\
    );
\Q[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(23),
      I1 => add_c1(22),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(22),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[23]_i_6_n_0\
    );
\Q[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(22),
      I1 => add_c1(21),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(21),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[23]_i_7_n_0\
    );
\Q[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(21),
      I1 => add_c1(20),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(20),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[23]_i_8_n_0\
    );
\Q[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(20),
      I1 => add_c1(19),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(19),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[23]_i_9_n_0\
    );
\Q[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(27),
      I1 => Jump,
      O => \Q[27]_i_2_n_0\
    );
\Q[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(26),
      I1 => Jump,
      O => \Q[27]_i_3_n_0\
    );
\Q[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(25),
      I1 => Jump,
      O => \Q[27]_i_4_n_0\
    );
\Q[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(24),
      I1 => Jump,
      O => \Q[27]_i_5_n_0\
    );
\Q[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(27),
      I1 => add_c1(26),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(26),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[27]_i_6_n_0\
    );
\Q[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(26),
      I1 => add_c1(25),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(25),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[27]_i_7_n_0\
    );
\Q[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(25),
      I1 => add_c1(24),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(24),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[27]_i_8_n_0\
    );
\Q[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(24),
      I1 => add_c1(23),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(23),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[27]_i_9_n_0\
    );
\Q[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => ImmSel(1),
      I1 => ImmSel(0),
      I2 => inst_field(24),
      O => \Q[31]_i_10_n_0\
    );
\Q[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55D0008A"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(3),
      I2 => ALU_operation(1),
      I3 => ALU_operation(0),
      I4 => \Q[31]_i_9\,
      I5 => \^alu_out\(2),
      O => ALU_operation_2_sn_1
    );
\Q[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Q[31]_i_15_n_0\,
      I1 => \Q[31]_i_16_n_0\,
      I2 => \Q[31]_i_17_n_0\,
      I3 => \Q[31]_i_18_n_0\,
      I4 => \Q[31]_i_19_n_0\,
      I5 => \^alu_out\(20),
      O => \ALU_operation[2]_0\
    );
\Q[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55D0008A"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(10),
      I2 => ALU_operation(1),
      I3 => ALU_operation(0),
      I4 => \^alusrc_b_0\,
      I5 => \^alu_out\(11),
      O => \ALU_operation[2]_1\
    );
\Q[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55D0008A"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(9),
      I2 => ALU_operation(1),
      I3 => ALU_operation(0),
      I4 => \^alusrc_b_1\,
      I5 => \^alu_out\(14),
      O => \Q[31]_i_15_n_0\
    );
\Q[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^alu_out\(5),
      I1 => \^alu_out\(7),
      I2 => \^alu_out\(16),
      I3 => \^alu_out\(17),
      O => \Q[31]_i_16_n_0\
    );
\Q[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^alu_out\(4),
      I1 => \^alu_out\(6),
      I2 => \^alu_out\(9),
      I3 => \^alu_out\(18),
      O => \Q[31]_i_17_n_0\
    );
\Q[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \Q[31]_i_20_n_0\,
      I1 => \Q[31]_i_21_n_0\,
      I2 => \Q[31]_i_22_n_0\,
      I3 => Branch,
      I4 => \^alu_out\(8),
      I5 => \^alu_out\(19),
      O => \Q[31]_i_18_n_0\
    );
\Q[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0AAA08AA"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(18),
      I2 => \Q[31]_i_23_n_0\,
      I3 => \Q[31]_i_24_n_0\,
      I4 => \ALU_out[31]\(21),
      I5 => \Q[31]_i_25_n_0\,
      O => \Q[31]_i_19_n_0\
    );
\Q[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(30),
      I1 => Jump,
      O => \Q[31]_i_2_n_0\
    );
\Q[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008A008A008A"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(17),
      I2 => ALU_operation(1),
      I3 => ALU_operation(0),
      I4 => ALUSrc_B,
      I5 => inst_field(24),
      O => \Q[31]_i_20_n_0\
    );
\Q[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008A008A008A"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(16),
      I2 => ALU_operation(1),
      I3 => ALU_operation(0),
      I4 => ALUSrc_B,
      I5 => inst_field(24),
      O => \Q[31]_i_21_n_0\
    );
\Q[31]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008A008A008A"
    )
        port map (
      I0 => ALU_operation(2),
      I1 => \ALU_out[31]\(20),
      I2 => ALU_operation(1),
      I3 => ALU_operation(0),
      I4 => ALUSrc_B,
      I5 => inst_field(24),
      O => \Q[31]_i_22_n_0\
    );
\Q[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ALU_operation(0),
      I1 => ALU_operation(1),
      O => \Q[31]_i_23_n_0\
    );
\Q[31]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => ALU_operation(0),
      I1 => ALU_operation(1),
      I2 => ALUSrc_B,
      I3 => inst_field(24),
      O => \Q[31]_i_24_n_0\
    );
\Q[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C0A0C00000000"
    )
        port map (
      I0 => \ALU_out[31]\(22),
      I1 => \Q[31]_i_26_n_0\,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => \ALU_out[31]\(15),
      I5 => ALU_operation(2),
      O => \Q[31]_i_25_n_0\
    );
\Q[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \Q[31]_i_26_n_0\
    );
\Q[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(29),
      I1 => Jump,
      O => \Q[31]_i_3_n_0\
    );
\Q[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(28),
      I1 => Jump,
      O => \Q[31]_i_4_n_0\
    );
\Q[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(31),
      I1 => add_c1(30),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(30),
      I4 => Jump,
      I5 => \Q[31]_i_10_n_0\,
      O => \Q[31]_i_5_n_0\
    );
\Q[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(30),
      I1 => add_c1(29),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(29),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[31]_i_6_n_0\
    );
\Q[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(29),
      I1 => add_c1(28),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(28),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[31]_i_7_n_0\
    );
\Q[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(28),
      I1 => add_c1(27),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(27),
      I4 => Jump,
      I5 => inst_field(24),
      O => \Q[31]_i_8_n_0\
    );
\Q[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => inst_field(3),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(16),
      O => \Q[3]_i_10_n_0\
    );
\Q[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => inst_field(2),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(15),
      O => \Q[3]_i_11_n_0\
    );
\Q[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => inst_field(1),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(14),
      O => \Q[3]_i_12_n_0\
    );
\Q[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => ImmSel(1),
      I1 => inst_field(13),
      I2 => ImmSel(0),
      I3 => inst_field(0),
      O => ImmSel_1_sn_1
    );
\Q[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => Jump,
      O => \Q[3]_i_2_n_0\
    );
\Q[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => Jump,
      O => \Q[3]_i_3_n_0\
    );
\Q[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => Jump,
      O => \Q[3]_i_4_n_0\
    );
\Q[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => Jump,
      O => \Q[3]_i_5_n_0\
    );
\Q[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(3),
      I1 => add_c1(2),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(2),
      I4 => Jump,
      I5 => \Q[3]_i_10_n_0\,
      O => \Q[3]_i_6_n_0\
    );
\Q[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(2),
      I1 => add_c1(1),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(1),
      I4 => Jump,
      I5 => \Q[3]_i_11_n_0\,
      O => \Q[3]_i_7_n_0\
    );
\Q[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(1),
      I1 => add_c1(0),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(0),
      I4 => Jump,
      I5 => \Q[3]_i_12_n_0\,
      O => \Q[3]_i_8_n_0\
    );
\Q[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => inst_field(4),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(17),
      O => \Q[7]_i_10_n_0\
    );
\Q[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(7),
      I1 => Jump,
      O => \Q[7]_i_2_n_0\
    );
\Q[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => Jump,
      O => \Q[7]_i_3_n_0\
    );
\Q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(5),
      I1 => Jump,
      O => \Q[7]_i_4_n_0\
    );
\Q[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => Jump,
      O => \Q[7]_i_5_n_0\
    );
\Q[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(7),
      I1 => add_c1(6),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(6),
      I4 => Jump,
      I5 => inst_field(20),
      O => \Q[7]_i_6_n_0\
    );
\Q[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(6),
      I1 => add_c1(5),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(5),
      I4 => Jump,
      I5 => inst_field(19),
      O => \Q[7]_i_7_n_0\
    );
\Q[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \^q\(5),
      I1 => add_c1(4),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(4),
      I4 => Jump,
      I5 => inst_field(18),
      O => \Q[7]_i_8_n_0\
    );
\Q[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFC0C5555FC0C"
    )
        port map (
      I0 => \^q\(4),
      I1 => add_c1(3),
      I2 => \Q_reg[3]_1\,
      I3 => add_c0(3),
      I4 => Jump,
      I5 => \Q[7]_i_10_n_0\,
      O => \Q[7]_i_9_n_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[3]_i_1_n_7\,
      Q => \^q\(0)
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[11]_i_1_n_5\,
      Q => \^q\(10)
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[11]_i_1_n_4\,
      Q => \^q\(11)
    );
\Q_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[7]_i_1_n_0\,
      CO(3) => \Q_reg[11]_i_1_n_0\,
      CO(2) => \Q_reg[11]_i_1_n_1\,
      CO(1) => \Q_reg[11]_i_1_n_2\,
      CO(0) => \Q_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[11]_i_2_n_0\,
      DI(2) => \Q[11]_i_3_n_0\,
      DI(1) => \Q[11]_i_4_n_0\,
      DI(0) => \Q[11]_i_5_n_0\,
      O(3) => \Q_reg[11]_i_1_n_4\,
      O(2) => \Q_reg[11]_i_1_n_5\,
      O(1) => \Q_reg[11]_i_1_n_6\,
      O(0) => \Q_reg[11]_i_1_n_7\,
      S(3) => \Q[11]_i_6_n_0\,
      S(2) => \Q[11]_i_7_n_0\,
      S(1) => \Q[11]_i_8_n_0\,
      S(0) => \Q[11]_i_9_n_0\
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[15]_i_1_n_7\,
      Q => \^q\(12)
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[15]_i_1_n_6\,
      Q => \^q\(13)
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[15]_i_1_n_5\,
      Q => \^q\(14)
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[15]_i_1_n_4\,
      Q => \^q\(15)
    );
\Q_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[11]_i_1_n_0\,
      CO(3) => \Q_reg[15]_i_1_n_0\,
      CO(2) => \Q_reg[15]_i_1_n_1\,
      CO(1) => \Q_reg[15]_i_1_n_2\,
      CO(0) => \Q_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[15]_i_2_n_0\,
      DI(2) => \Q[15]_i_3_n_0\,
      DI(1) => \Q[15]_i_4_n_0\,
      DI(0) => \Q[15]_i_5_n_0\,
      O(3) => \Q_reg[15]_i_1_n_4\,
      O(2) => \Q_reg[15]_i_1_n_5\,
      O(1) => \Q_reg[15]_i_1_n_6\,
      O(0) => \Q_reg[15]_i_1_n_7\,
      S(3) => \Q[15]_i_6_n_0\,
      S(2) => \Q[15]_i_7_n_0\,
      S(1) => \Q[15]_i_8_n_0\,
      S(0) => \Q[15]_i_9_n_0\
    );
\Q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[19]_i_1_n_7\,
      Q => \^q\(16)
    );
\Q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[19]_i_1_n_6\,
      Q => \^q\(17)
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[19]_i_1_n_5\,
      Q => \^q\(18)
    );
\Q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[19]_i_1_n_4\,
      Q => \^q\(19)
    );
\Q_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[15]_i_1_n_0\,
      CO(3) => \Q_reg[19]_i_1_n_0\,
      CO(2) => \Q_reg[19]_i_1_n_1\,
      CO(1) => \Q_reg[19]_i_1_n_2\,
      CO(0) => \Q_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[19]_i_2_n_0\,
      DI(2) => \Q[19]_i_3_n_0\,
      DI(1) => \Q[19]_i_4_n_0\,
      DI(0) => \Q[19]_i_5_n_0\,
      O(3) => \Q_reg[19]_i_1_n_4\,
      O(2) => \Q_reg[19]_i_1_n_5\,
      O(1) => \Q_reg[19]_i_1_n_6\,
      O(0) => \Q_reg[19]_i_1_n_7\,
      S(3) => \Q[19]_i_6_n_0\,
      S(2) => \Q[19]_i_7_n_0\,
      S(1) => \Q[19]_i_8_n_0\,
      S(0) => \Q[19]_i_9_n_0\
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[3]_i_1_n_6\,
      Q => \^q\(1)
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[23]_i_1_n_7\,
      Q => \^q\(20)
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[23]_i_1_n_6\,
      Q => \^q\(21)
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[23]_i_1_n_5\,
      Q => \^q\(22)
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[23]_i_1_n_4\,
      Q => \^q\(23)
    );
\Q_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[19]_i_1_n_0\,
      CO(3) => \Q_reg[23]_i_1_n_0\,
      CO(2) => \Q_reg[23]_i_1_n_1\,
      CO(1) => \Q_reg[23]_i_1_n_2\,
      CO(0) => \Q_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[23]_i_2_n_0\,
      DI(2) => \Q[23]_i_3_n_0\,
      DI(1) => \Q[23]_i_4_n_0\,
      DI(0) => \Q[23]_i_5_n_0\,
      O(3) => \Q_reg[23]_i_1_n_4\,
      O(2) => \Q_reg[23]_i_1_n_5\,
      O(1) => \Q_reg[23]_i_1_n_6\,
      O(0) => \Q_reg[23]_i_1_n_7\,
      S(3) => \Q[23]_i_6_n_0\,
      S(2) => \Q[23]_i_7_n_0\,
      S(1) => \Q[23]_i_8_n_0\,
      S(0) => \Q[23]_i_9_n_0\
    );
\Q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[27]_i_1_n_7\,
      Q => \^q\(24)
    );
\Q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[27]_i_1_n_6\,
      Q => \^q\(25)
    );
\Q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[27]_i_1_n_5\,
      Q => \^q\(26)
    );
\Q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[27]_i_1_n_4\,
      Q => \^q\(27)
    );
\Q_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[23]_i_1_n_0\,
      CO(3) => \Q_reg[27]_i_1_n_0\,
      CO(2) => \Q_reg[27]_i_1_n_1\,
      CO(1) => \Q_reg[27]_i_1_n_2\,
      CO(0) => \Q_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[27]_i_2_n_0\,
      DI(2) => \Q[27]_i_3_n_0\,
      DI(1) => \Q[27]_i_4_n_0\,
      DI(0) => \Q[27]_i_5_n_0\,
      O(3) => \Q_reg[27]_i_1_n_4\,
      O(2) => \Q_reg[27]_i_1_n_5\,
      O(1) => \Q_reg[27]_i_1_n_6\,
      O(0) => \Q_reg[27]_i_1_n_7\,
      S(3) => \Q[27]_i_6_n_0\,
      S(2) => \Q[27]_i_7_n_0\,
      S(1) => \Q[27]_i_8_n_0\,
      S(0) => \Q[27]_i_9_n_0\
    );
\Q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[31]_i_1_n_7\,
      Q => \^q\(28)
    );
\Q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[31]_i_1_n_6\,
      Q => \^q\(29)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[3]_i_1_n_5\,
      Q => \^q\(2)
    );
\Q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[31]_i_1_n_5\,
      Q => \^q\(30)
    );
\Q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[31]_i_1_n_4\,
      Q => \^q\(31)
    );
\Q_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[27]_i_1_n_0\,
      CO(3) => \NLW_Q_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Q_reg[31]_i_1_n_1\,
      CO(1) => \Q_reg[31]_i_1_n_2\,
      CO(0) => \Q_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Q[31]_i_2_n_0\,
      DI(1) => \Q[31]_i_3_n_0\,
      DI(0) => \Q[31]_i_4_n_0\,
      O(3) => \Q_reg[31]_i_1_n_4\,
      O(2) => \Q_reg[31]_i_1_n_5\,
      O(1) => \Q_reg[31]_i_1_n_6\,
      O(0) => \Q_reg[31]_i_1_n_7\,
      S(3) => \Q[31]_i_5_n_0\,
      S(2) => \Q[31]_i_6_n_0\,
      S(1) => \Q[31]_i_7_n_0\,
      S(0) => \Q[31]_i_8_n_0\
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[3]_i_1_n_4\,
      Q => \^q\(3)
    );
\Q_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Q_reg[3]_i_1_n_0\,
      CO(2) => \Q_reg[3]_i_1_n_1\,
      CO(1) => \Q_reg[3]_i_1_n_2\,
      CO(0) => \Q_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[3]_i_2_n_0\,
      DI(2) => \Q[3]_i_3_n_0\,
      DI(1) => \Q[3]_i_4_n_0\,
      DI(0) => \Q[3]_i_5_n_0\,
      O(3) => \Q_reg[3]_i_1_n_4\,
      O(2) => \Q_reg[3]_i_1_n_5\,
      O(1) => \Q_reg[3]_i_1_n_6\,
      O(0) => \Q_reg[3]_i_1_n_7\,
      S(3) => \Q[3]_i_6_n_0\,
      S(2) => \Q[3]_i_7_n_0\,
      S(1) => \Q[3]_i_8_n_0\,
      S(0) => \Q_reg[3]_0\(0)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[7]_i_1_n_7\,
      Q => \^q\(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[7]_i_1_n_6\,
      Q => \^q\(5)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[7]_i_1_n_5\,
      Q => \^q\(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[7]_i_1_n_4\,
      Q => \^q\(7)
    );
\Q_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_reg[3]_i_1_n_0\,
      CO(3) => \Q_reg[7]_i_1_n_0\,
      CO(2) => \Q_reg[7]_i_1_n_1\,
      CO(1) => \Q_reg[7]_i_1_n_2\,
      CO(0) => \Q_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Q[7]_i_2_n_0\,
      DI(2) => \Q[7]_i_3_n_0\,
      DI(1) => \Q[7]_i_4_n_0\,
      DI(0) => \Q[7]_i_5_n_0\,
      O(3) => \Q_reg[7]_i_1_n_4\,
      O(2) => \Q_reg[7]_i_1_n_5\,
      O(1) => \Q_reg[7]_i_1_n_6\,
      O(0) => \Q_reg[7]_i_1_n_7\,
      S(3) => \Q[7]_i_6_n_0\,
      S(2) => \Q[7]_i_7_n_0\,
      S(1) => \Q[7]_i_8_n_0\,
      S(0) => \Q[7]_i_9_n_0\
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[11]_i_1_n_7\,
      Q => \^q\(8)
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \Q_reg[11]_i_1_n_6\,
      Q => \^q\(9)
    );
add_c0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \Q_reg[2]_0\(0)
    );
\add_c1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inst_field(20),
      I1 => \^q\(7),
      O => \inst_field[27]\(3)
    );
\add_c1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inst_field(19),
      I1 => \^q\(6),
      O => \inst_field[27]\(2)
    );
\add_c1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inst_field(18),
      I1 => \^q\(5),
      O => \inst_field[27]\(1)
    );
\add_c1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"417DBE82"
    )
        port map (
      I0 => inst_field(17),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(4),
      I4 => \^q\(4),
      O => \inst_field[27]\(0)
    );
\add_c1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => inst_field(13),
      I1 => ImmSel(0),
      I2 => inst_field(0),
      I3 => ImmSel(1),
      I4 => inst_field(24),
      O => \^di\(0)
    );
\add_c1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(1),
      I2 => inst_field(0),
      I3 => ImmSel(0),
      I4 => inst_field(13),
      I5 => \^q\(11),
      O => \inst_field[31]_0\(3)
    );
\add_c1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inst_field(23),
      I1 => \^q\(10),
      O => \inst_field[31]_0\(2)
    );
\add_c1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inst_field(22),
      I1 => \^q\(9),
      O => \inst_field[31]_0\(1)
    );
\add_c1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inst_field(21),
      I1 => \^q\(8),
      O => \inst_field[31]_0\(0)
    );
\add_c1_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(8),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(15),
      O => \inst_field[15]\(3)
    );
\add_c1_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(7),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(14),
      O => \inst_field[15]\(2)
    );
\add_c1_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(6),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(13),
      O => \inst_field[15]\(1)
    );
\add_c1_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(5),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(12),
      O => \inst_field[15]\(0)
    );
\add_c1_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(12),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(19),
      O => \inst_field[19]\(3)
    );
\add_c1_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(11),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(18),
      O => \inst_field[19]\(2)
    );
\add_c1_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(10),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(17),
      O => \inst_field[19]\(1)
    );
\add_c1_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"407FBF80"
    )
        port map (
      I0 => inst_field(9),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(24),
      I4 => \^q\(16),
      O => \inst_field[19]\(0)
    );
\add_c1_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(23),
      O => \Q_reg[22]_0\(3)
    );
\add_c1_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      O => \Q_reg[22]_0\(2)
    );
\add_c1_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(21),
      O => \Q_reg[22]_0\(1)
    );
\add_c1_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => inst_field(24),
      O => \Q_reg[22]_0\(0)
    );
\add_c1_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      O => \Q_reg[26]_0\(3)
    );
\add_c1_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(26),
      O => \Q_reg[26]_0\(2)
    );
\add_c1_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(25),
      O => \Q_reg[26]_0\(1)
    );
\add_c1_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(24),
      O => \Q_reg[26]_0\(0)
    );
\add_c1_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0202FD"
    )
        port map (
      I0 => inst_field(24),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => \^q\(31),
      I4 => \^q\(30),
      O => S(3)
    );
\add_c1_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      O => S(2)
    );
\add_c1_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(29),
      O => S(1)
    );
\add_c1_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(28),
      O => S(0)
    );
add_c1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"417DBE82"
    )
        port map (
      I0 => inst_field(16),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(3),
      I4 => \^q\(3),
      O => \inst_field[23]\(3)
    );
add_c1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"417DBE82"
    )
        port map (
      I0 => inst_field(15),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(2),
      I4 => \^q\(2),
      O => \inst_field[23]\(2)
    );
add_c1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"417DBE82"
    )
        port map (
      I0 => inst_field(14),
      I1 => ImmSel(1),
      I2 => ImmSel(0),
      I3 => inst_field(1),
      I4 => \^q\(1),
      O => \inst_field[23]\(1)
    );
add_c1_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4700B8"
    )
        port map (
      I0 => inst_field(0),
      I1 => ImmSel(0),
      I2 => inst_field(13),
      I3 => ImmSel(1),
      I4 => \^q\(0),
      O => \inst_field[23]\(0)
    );
\res2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(24),
      O => ALUSrc_B_2(3)
    );
\res2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(24),
      O => ALUSrc_B_2(2)
    );
\res2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(24),
      O => ALUSrc_B_2(1)
    );
\res2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(24),
      O => ALUSrc_B_2(0)
    );
\res2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \inst_field[31]\(3)
    );
\res2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \inst_field[31]\(2)
    );
\res2_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \inst_field[31]\(1)
    );
\res2_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(24),
      I1 => ALUSrc_B,
      O => \inst_field[31]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataPath is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALU_out : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \inst_field[31]\ : out STD_LOGIC;
    ALUSrc_B_0 : out STD_LOGIC;
    ALUSrc_B_1 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    inst_field : in STD_LOGIC_VECTOR ( 24 downto 0 );
    ALUSrc_B : in STD_LOGIC;
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ALU_out[31]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Branch : in STD_LOGIC;
    Jump : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataPath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataPath is
  signal ALU_n_0 : STD_LOGIC;
  signal ALU_n_3 : STD_LOGIC;
  signal \^alu_out\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Imm_out : STD_LOGIC_VECTOR ( 11 to 11 );
  signal PC_n_100 : STD_LOGIC;
  signal PC_n_101 : STD_LOGIC;
  signal PC_n_102 : STD_LOGIC;
  signal PC_n_22 : STD_LOGIC;
  signal PC_n_23 : STD_LOGIC;
  signal PC_n_25 : STD_LOGIC;
  signal PC_n_29 : STD_LOGIC;
  signal PC_n_30 : STD_LOGIC;
  signal PC_n_31 : STD_LOGIC;
  signal PC_n_32 : STD_LOGIC;
  signal PC_n_33 : STD_LOGIC;
  signal PC_n_34 : STD_LOGIC;
  signal PC_n_35 : STD_LOGIC;
  signal PC_n_68 : STD_LOGIC;
  signal PC_n_69 : STD_LOGIC;
  signal PC_n_70 : STD_LOGIC;
  signal PC_n_71 : STD_LOGIC;
  signal PC_n_73 : STD_LOGIC;
  signal PC_n_74 : STD_LOGIC;
  signal PC_n_75 : STD_LOGIC;
  signal PC_n_76 : STD_LOGIC;
  signal PC_n_77 : STD_LOGIC;
  signal PC_n_78 : STD_LOGIC;
  signal PC_n_79 : STD_LOGIC;
  signal PC_n_80 : STD_LOGIC;
  signal PC_n_81 : STD_LOGIC;
  signal PC_n_82 : STD_LOGIC;
  signal PC_n_83 : STD_LOGIC;
  signal PC_n_84 : STD_LOGIC;
  signal PC_n_85 : STD_LOGIC;
  signal PC_n_86 : STD_LOGIC;
  signal PC_n_87 : STD_LOGIC;
  signal PC_n_88 : STD_LOGIC;
  signal PC_n_89 : STD_LOGIC;
  signal PC_n_90 : STD_LOGIC;
  signal PC_n_91 : STD_LOGIC;
  signal PC_n_92 : STD_LOGIC;
  signal PC_n_93 : STD_LOGIC;
  signal PC_n_94 : STD_LOGIC;
  signal PC_n_95 : STD_LOGIC;
  signal PC_n_96 : STD_LOGIC;
  signal PC_n_97 : STD_LOGIC;
  signal PC_n_98 : STD_LOGIC;
  signal PC_n_99 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_c0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \add_c0_carry__0_n_0\ : STD_LOGIC;
  signal \add_c0_carry__0_n_1\ : STD_LOGIC;
  signal \add_c0_carry__0_n_2\ : STD_LOGIC;
  signal \add_c0_carry__0_n_3\ : STD_LOGIC;
  signal \add_c0_carry__1_n_0\ : STD_LOGIC;
  signal \add_c0_carry__1_n_1\ : STD_LOGIC;
  signal \add_c0_carry__1_n_2\ : STD_LOGIC;
  signal \add_c0_carry__1_n_3\ : STD_LOGIC;
  signal \add_c0_carry__2_n_0\ : STD_LOGIC;
  signal \add_c0_carry__2_n_1\ : STD_LOGIC;
  signal \add_c0_carry__2_n_2\ : STD_LOGIC;
  signal \add_c0_carry__2_n_3\ : STD_LOGIC;
  signal \add_c0_carry__3_n_0\ : STD_LOGIC;
  signal \add_c0_carry__3_n_1\ : STD_LOGIC;
  signal \add_c0_carry__3_n_2\ : STD_LOGIC;
  signal \add_c0_carry__3_n_3\ : STD_LOGIC;
  signal \add_c0_carry__4_n_0\ : STD_LOGIC;
  signal \add_c0_carry__4_n_1\ : STD_LOGIC;
  signal \add_c0_carry__4_n_2\ : STD_LOGIC;
  signal \add_c0_carry__4_n_3\ : STD_LOGIC;
  signal \add_c0_carry__5_n_0\ : STD_LOGIC;
  signal \add_c0_carry__5_n_1\ : STD_LOGIC;
  signal \add_c0_carry__5_n_2\ : STD_LOGIC;
  signal \add_c0_carry__5_n_3\ : STD_LOGIC;
  signal \add_c0_carry__6_n_2\ : STD_LOGIC;
  signal \add_c0_carry__6_n_3\ : STD_LOGIC;
  signal add_c0_carry_n_0 : STD_LOGIC;
  signal add_c0_carry_n_1 : STD_LOGIC;
  signal add_c0_carry_n_2 : STD_LOGIC;
  signal add_c0_carry_n_3 : STD_LOGIC;
  signal add_c1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \add_c1_carry__0_n_0\ : STD_LOGIC;
  signal \add_c1_carry__0_n_1\ : STD_LOGIC;
  signal \add_c1_carry__0_n_2\ : STD_LOGIC;
  signal \add_c1_carry__0_n_3\ : STD_LOGIC;
  signal \add_c1_carry__1_n_0\ : STD_LOGIC;
  signal \add_c1_carry__1_n_1\ : STD_LOGIC;
  signal \add_c1_carry__1_n_2\ : STD_LOGIC;
  signal \add_c1_carry__1_n_3\ : STD_LOGIC;
  signal \add_c1_carry__2_n_0\ : STD_LOGIC;
  signal \add_c1_carry__2_n_1\ : STD_LOGIC;
  signal \add_c1_carry__2_n_2\ : STD_LOGIC;
  signal \add_c1_carry__2_n_3\ : STD_LOGIC;
  signal \add_c1_carry__3_n_0\ : STD_LOGIC;
  signal \add_c1_carry__3_n_1\ : STD_LOGIC;
  signal \add_c1_carry__3_n_2\ : STD_LOGIC;
  signal \add_c1_carry__3_n_3\ : STD_LOGIC;
  signal \add_c1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \add_c1_carry__4_n_0\ : STD_LOGIC;
  signal \add_c1_carry__4_n_1\ : STD_LOGIC;
  signal \add_c1_carry__4_n_2\ : STD_LOGIC;
  signal \add_c1_carry__4_n_3\ : STD_LOGIC;
  signal \add_c1_carry__5_n_0\ : STD_LOGIC;
  signal \add_c1_carry__5_n_1\ : STD_LOGIC;
  signal \add_c1_carry__5_n_2\ : STD_LOGIC;
  signal \add_c1_carry__5_n_3\ : STD_LOGIC;
  signal \add_c1_carry__6_n_1\ : STD_LOGIC;
  signal \add_c1_carry__6_n_2\ : STD_LOGIC;
  signal \add_c1_carry__6_n_3\ : STD_LOGIC;
  signal add_c1_carry_n_0 : STD_LOGIC;
  signal add_c1_carry_n_1 : STD_LOGIC;
  signal add_c1_carry_n_2 : STD_LOGIC;
  signal add_c1_carry_n_3 : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^inst_field[31]\ : STD_LOGIC;
  signal mux2T1_o0 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal \NLW_add_c0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_c0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_c1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of add_c0_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of add_c1_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \add_c1_carry__6\ : label is 35;
begin
  ALU_out(21 downto 0) <= \^alu_out\(21 downto 0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  \inst_field[31]\ <= \^inst_field[31]\;
ALU: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALUT
     port map (
      ALUSrc_B => ALUSrc_B,
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      \ALU_operation[0]_0\(0) => \^alu_out\(0),
      ALU_operation_0_sp_1 => ALU_n_0,
      ALU_out(6) => \^alu_out\(16),
      ALU_out(5 downto 4) => \^alu_out\(14 downto 13),
      ALU_out(3) => \^alu_out\(11),
      ALU_out(2) => \^alu_out\(4),
      ALU_out(1 downto 0) => \^alu_out\(2 downto 1),
      DI(3) => mux2T1_o0(30),
      DI(2) => PC_n_29,
      DI(1) => PC_n_30,
      DI(0) => PC_n_31,
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      Jump => Jump,
      O(0) => data6(0),
      Q(0) => \^q\(0),
      \Q[31]_i_5\ => PC_n_22,
      \Q[31]_i_5_0\ => PC_n_23,
      \Q[31]_i_9_0\ => PC_n_25,
      \Q_reg[0]\(0) => ALU_n_3,
      \Q_reg[3]\(0) => add_c1(0),
      \Q_reg[3]_0\ => PC_n_85,
      S(3) => PC_n_68,
      S(2) => PC_n_69,
      S(1) => PC_n_70,
      S(0) => PC_n_71,
      inst_field(24 downto 0) => inst_field(24 downto 0),
      \inst_field[31]\ => \^inst_field[31]\
    );
PC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCReg
     port map (
      ALUSrc_B => ALUSrc_B,
      ALUSrc_B_0 => ALUSrc_B_0,
      ALUSrc_B_1 => ALUSrc_B_1,
      ALUSrc_B_2(3) => mux2T1_o0(30),
      ALUSrc_B_2(2) => PC_n_29,
      ALUSrc_B_2(1) => PC_n_30,
      ALUSrc_B_2(0) => PC_n_31,
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      \ALU_operation[2]_0\ => PC_n_23,
      \ALU_operation[2]_1\ => PC_n_25,
      ALU_operation_2_sp_1 => PC_n_22,
      ALU_out(20 downto 0) => \^alu_out\(21 downto 1),
      \ALU_out[31]\(23 downto 0) => \ALU_out[31]\(23 downto 0),
      Branch => Branch,
      CO(0) => CO(0),
      DI(0) => Imm_out(11),
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      ImmSel_1_sp_1 => PC_n_85,
      Jump => Jump,
      O(0) => data6(0),
      Q(31 downto 0) => \^q\(31 downto 0),
      \Q[31]_i_9\ => \^inst_field[31]\,
      \Q_reg[22]_0\(3) => PC_n_94,
      \Q_reg[22]_0\(2) => PC_n_95,
      \Q_reg[22]_0\(1) => PC_n_96,
      \Q_reg[22]_0\(0) => PC_n_97,
      \Q_reg[26]_0\(3) => PC_n_98,
      \Q_reg[26]_0\(2) => PC_n_99,
      \Q_reg[26]_0\(1) => PC_n_100,
      \Q_reg[26]_0\(0) => PC_n_101,
      \Q_reg[2]_0\(0) => PC_n_102,
      \Q_reg[3]_0\(0) => ALU_n_3,
      \Q_reg[3]_1\ => ALU_n_0,
      S(3) => PC_n_32,
      S(2) => PC_n_33,
      S(1) => PC_n_34,
      S(0) => PC_n_35,
      add_c0(30 downto 0) => add_c0(31 downto 1),
      add_c1(30 downto 0) => add_c1(31 downto 1),
      clk => clk,
      inst_field(24 downto 0) => inst_field(24 downto 0),
      \inst_field[15]\(3) => PC_n_90,
      \inst_field[15]\(2) => PC_n_91,
      \inst_field[15]\(1) => PC_n_92,
      \inst_field[15]\(0) => PC_n_93,
      \inst_field[19]\(3) => PC_n_86,
      \inst_field[19]\(2) => PC_n_87,
      \inst_field[19]\(1) => PC_n_88,
      \inst_field[19]\(0) => PC_n_89,
      \inst_field[23]\(3) => PC_n_81,
      \inst_field[23]\(2) => PC_n_82,
      \inst_field[23]\(1) => PC_n_83,
      \inst_field[23]\(0) => PC_n_84,
      \inst_field[27]\(3) => PC_n_73,
      \inst_field[27]\(2) => PC_n_74,
      \inst_field[27]\(1) => PC_n_75,
      \inst_field[27]\(0) => PC_n_76,
      \inst_field[31]\(3) => PC_n_68,
      \inst_field[31]\(2) => PC_n_69,
      \inst_field[31]\(1) => PC_n_70,
      \inst_field[31]\(0) => PC_n_71,
      \inst_field[31]_0\(3) => PC_n_77,
      \inst_field[31]_0\(2) => PC_n_78,
      \inst_field[31]_0\(1) => PC_n_79,
      \inst_field[31]_0\(0) => PC_n_80,
      rst => rst
    );
add_c0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => add_c0_carry_n_0,
      CO(2) => add_c0_carry_n_1,
      CO(1) => add_c0_carry_n_2,
      CO(0) => add_c0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^q\(2),
      DI(0) => '0',
      O(3 downto 0) => add_c0(4 downto 1),
      S(3 downto 2) => \^q\(4 downto 3),
      S(1) => PC_n_102,
      S(0) => \^q\(1)
    );
\add_c0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => add_c0_carry_n_0,
      CO(3) => \add_c0_carry__0_n_0\,
      CO(2) => \add_c0_carry__0_n_1\,
      CO(1) => \add_c0_carry__0_n_2\,
      CO(0) => \add_c0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_c0(8 downto 5),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\add_c0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c0_carry__0_n_0\,
      CO(3) => \add_c0_carry__1_n_0\,
      CO(2) => \add_c0_carry__1_n_1\,
      CO(1) => \add_c0_carry__1_n_2\,
      CO(0) => \add_c0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_c0(12 downto 9),
      S(3 downto 0) => \^q\(12 downto 9)
    );
\add_c0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c0_carry__1_n_0\,
      CO(3) => \add_c0_carry__2_n_0\,
      CO(2) => \add_c0_carry__2_n_1\,
      CO(1) => \add_c0_carry__2_n_2\,
      CO(0) => \add_c0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_c0(16 downto 13),
      S(3 downto 0) => \^q\(16 downto 13)
    );
\add_c0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c0_carry__2_n_0\,
      CO(3) => \add_c0_carry__3_n_0\,
      CO(2) => \add_c0_carry__3_n_1\,
      CO(1) => \add_c0_carry__3_n_2\,
      CO(0) => \add_c0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_c0(20 downto 17),
      S(3 downto 0) => \^q\(20 downto 17)
    );
\add_c0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c0_carry__3_n_0\,
      CO(3) => \add_c0_carry__4_n_0\,
      CO(2) => \add_c0_carry__4_n_1\,
      CO(1) => \add_c0_carry__4_n_2\,
      CO(0) => \add_c0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_c0(24 downto 21),
      S(3 downto 0) => \^q\(24 downto 21)
    );
\add_c0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c0_carry__4_n_0\,
      CO(3) => \add_c0_carry__5_n_0\,
      CO(2) => \add_c0_carry__5_n_1\,
      CO(1) => \add_c0_carry__5_n_2\,
      CO(0) => \add_c0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_c0(28 downto 25),
      S(3 downto 0) => \^q\(28 downto 25)
    );
\add_c0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_add_c0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \add_c0_carry__6_n_2\,
      CO(0) => \add_c0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_add_c0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => add_c0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^q\(31 downto 29)
    );
add_c1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => add_c1_carry_n_0,
      CO(2) => add_c1_carry_n_1,
      CO(1) => add_c1_carry_n_2,
      CO(0) => add_c1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => add_c1(3 downto 0),
      S(3) => PC_n_81,
      S(2) => PC_n_82,
      S(1) => PC_n_83,
      S(0) => PC_n_84
    );
\add_c1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => add_c1_carry_n_0,
      CO(3) => \add_c1_carry__0_n_0\,
      CO(2) => \add_c1_carry__0_n_1\,
      CO(1) => \add_c1_carry__0_n_2\,
      CO(0) => \add_c1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => inst_field(20 downto 18),
      DI(0) => \^q\(4),
      O(3 downto 0) => add_c1(7 downto 4),
      S(3) => PC_n_73,
      S(2) => PC_n_74,
      S(1) => PC_n_75,
      S(0) => PC_n_76
    );
\add_c1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c1_carry__0_n_0\,
      CO(3) => \add_c1_carry__1_n_0\,
      CO(2) => \add_c1_carry__1_n_1\,
      CO(1) => \add_c1_carry__1_n_2\,
      CO(0) => \add_c1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => Imm_out(11),
      DI(2 downto 0) => inst_field(23 downto 21),
      O(3 downto 0) => add_c1(11 downto 8),
      S(3) => PC_n_77,
      S(2) => PC_n_78,
      S(1) => PC_n_79,
      S(0) => PC_n_80
    );
\add_c1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c1_carry__1_n_0\,
      CO(3) => \add_c1_carry__2_n_0\,
      CO(2) => \add_c1_carry__2_n_1\,
      CO(1) => \add_c1_carry__2_n_2\,
      CO(0) => \add_c1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(15 downto 12),
      O(3 downto 0) => add_c1(15 downto 12),
      S(3) => PC_n_90,
      S(2) => PC_n_91,
      S(1) => PC_n_92,
      S(0) => PC_n_93
    );
\add_c1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c1_carry__2_n_0\,
      CO(3) => \add_c1_carry__3_n_0\,
      CO(2) => \add_c1_carry__3_n_1\,
      CO(1) => \add_c1_carry__3_n_2\,
      CO(0) => \add_c1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(19 downto 16),
      O(3 downto 0) => add_c1(19 downto 16),
      S(3) => PC_n_86,
      S(2) => PC_n_87,
      S(1) => PC_n_88,
      S(0) => PC_n_89
    );
\add_c1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c1_carry__3_n_0\,
      CO(3) => \add_c1_carry__4_n_0\,
      CO(2) => \add_c1_carry__4_n_1\,
      CO(1) => \add_c1_carry__4_n_2\,
      CO(0) => \add_c1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^q\(22 downto 20),
      DI(0) => \add_c1_carry__4_i_1_n_0\,
      O(3 downto 0) => add_c1(23 downto 20),
      S(3) => PC_n_94,
      S(2) => PC_n_95,
      S(1) => PC_n_96,
      S(0) => PC_n_97
    );
\add_c1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inst_field(24),
      O => \add_c1_carry__4_i_1_n_0\
    );
\add_c1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c1_carry__4_n_0\,
      CO(3) => \add_c1_carry__5_n_0\,
      CO(2) => \add_c1_carry__5_n_1\,
      CO(1) => \add_c1_carry__5_n_2\,
      CO(0) => \add_c1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(26 downto 23),
      O(3 downto 0) => add_c1(27 downto 24),
      S(3) => PC_n_98,
      S(2) => PC_n_99,
      S(1) => PC_n_100,
      S(0) => PC_n_101
    );
\add_c1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_c1_carry__5_n_0\,
      CO(3) => \NLW_add_c1_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \add_c1_carry__6_n_1\,
      CO(1) => \add_c1_carry__6_n_2\,
      CO(0) => \add_c1_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(29 downto 27),
      O(3 downto 0) => add_c1(31 downto 28),
      S(3) => PC_n_32,
      S(2) => PC_n_33,
      S(1) => PC_n_34,
      S(0) => PC_n_35
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Branch : in STD_LOGIC;
    Jump : in STD_LOGIC;
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemtoReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUSrc_B : in STD_LOGIC;
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x31 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DataPath_0,DataPath,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DataPath,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ALU_out[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal inst_n_54 : STD_LOGIC;
  signal inst_n_55 : STD_LOGIC;
  signal inst_n_56 : STD_LOGIC;
  signal inst_n_57 : STD_LOGIC;
  signal \NLW_ALU_out[31]_INST_0_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ALU_out[11]_INST_0_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \ALU_out[15]_INST_0_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \ALU_out[19]_INST_0_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \ALU_out[23]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ALU_out[27]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ALU_out[31]_INST_0_i_2\ : label is 35;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  Data_out(31) <= \<const0>\;
  Data_out(30) <= \<const0>\;
  Data_out(29) <= \<const0>\;
  Data_out(28) <= \<const0>\;
  Data_out(27) <= \<const0>\;
  Data_out(26) <= \<const0>\;
  Data_out(25) <= \<const0>\;
  Data_out(24) <= \<const0>\;
  Data_out(23) <= \<const0>\;
  Data_out(22) <= \<const0>\;
  Data_out(21) <= \<const0>\;
  Data_out(20) <= \<const0>\;
  Data_out(19) <= \<const0>\;
  Data_out(18) <= \<const0>\;
  Data_out(17) <= \<const0>\;
  Data_out(16) <= \<const0>\;
  Data_out(15) <= \<const0>\;
  Data_out(14) <= \<const0>\;
  Data_out(13) <= \<const0>\;
  Data_out(12) <= \<const0>\;
  Data_out(11) <= \<const0>\;
  Data_out(10) <= \<const0>\;
  Data_out(9) <= \<const0>\;
  Data_out(8) <= \<const0>\;
  Data_out(7) <= \<const0>\;
  Data_out(6) <= \<const0>\;
  Data_out(5) <= \<const0>\;
  Data_out(4) <= \<const0>\;
  Data_out(3) <= \<const0>\;
  Data_out(2) <= \<const0>\;
  Data_out(1) <= \<const0>\;
  Data_out(0) <= \<const0>\;
  x0(31) <= \<const0>\;
  x0(30) <= \<const0>\;
  x0(29) <= \<const0>\;
  x0(28) <= \<const0>\;
  x0(27) <= \<const0>\;
  x0(26) <= \<const0>\;
  x0(25) <= \<const0>\;
  x0(24) <= \<const0>\;
  x0(23) <= \<const0>\;
  x0(22) <= \<const0>\;
  x0(21) <= \<const0>\;
  x0(20) <= \<const0>\;
  x0(19) <= \<const0>\;
  x0(18) <= \<const0>\;
  x0(17) <= \<const0>\;
  x0(16) <= \<const0>\;
  x0(15) <= \<const0>\;
  x0(14) <= \<const0>\;
  x0(13) <= \<const0>\;
  x0(12) <= \<const0>\;
  x0(11) <= \<const0>\;
  x0(10) <= \<const0>\;
  x0(9) <= \<const0>\;
  x0(8) <= \<const0>\;
  x0(7) <= \<const0>\;
  x0(6) <= \<const0>\;
  x0(5) <= \<const0>\;
  x0(4) <= \<const0>\;
  x0(3) <= \<const0>\;
  x0(2) <= \<const0>\;
  x0(1) <= \<const0>\;
  x0(0) <= \<const0>\;
  x1(31) <= \<const0>\;
  x1(30) <= \<const0>\;
  x1(29) <= \<const0>\;
  x1(28) <= \<const0>\;
  x1(27) <= \<const0>\;
  x1(26) <= \<const0>\;
  x1(25) <= \<const0>\;
  x1(24) <= \<const0>\;
  x1(23) <= \<const0>\;
  x1(22) <= \<const0>\;
  x1(21) <= \<const0>\;
  x1(20) <= \<const0>\;
  x1(19) <= \<const0>\;
  x1(18) <= \<const0>\;
  x1(17) <= \<const0>\;
  x1(16) <= \<const0>\;
  x1(15) <= \<const0>\;
  x1(14) <= \<const0>\;
  x1(13) <= \<const0>\;
  x1(12) <= \<const0>\;
  x1(11) <= \<const0>\;
  x1(10) <= \<const0>\;
  x1(9) <= \<const0>\;
  x1(8) <= \<const0>\;
  x1(7) <= \<const0>\;
  x1(6) <= \<const0>\;
  x1(5) <= \<const0>\;
  x1(4) <= \<const0>\;
  x1(3) <= \<const0>\;
  x1(2) <= \<const0>\;
  x1(1) <= \<const0>\;
  x1(0) <= \<const0>\;
  x10(31) <= \<const0>\;
  x10(30) <= \<const0>\;
  x10(29) <= \<const0>\;
  x10(28) <= \<const0>\;
  x10(27) <= \<const0>\;
  x10(26) <= \<const0>\;
  x10(25) <= \<const0>\;
  x10(24) <= \<const0>\;
  x10(23) <= \<const0>\;
  x10(22) <= \<const0>\;
  x10(21) <= \<const0>\;
  x10(20) <= \<const0>\;
  x10(19) <= \<const0>\;
  x10(18) <= \<const0>\;
  x10(17) <= \<const0>\;
  x10(16) <= \<const0>\;
  x10(15) <= \<const0>\;
  x10(14) <= \<const0>\;
  x10(13) <= \<const0>\;
  x10(12) <= \<const0>\;
  x10(11) <= \<const0>\;
  x10(10) <= \<const0>\;
  x10(9) <= \<const0>\;
  x10(8) <= \<const0>\;
  x10(7) <= \<const0>\;
  x10(6) <= \<const0>\;
  x10(5) <= \<const0>\;
  x10(4) <= \<const0>\;
  x10(3) <= \<const0>\;
  x10(2) <= \<const0>\;
  x10(1) <= \<const0>\;
  x10(0) <= \<const0>\;
  x11(31) <= \<const0>\;
  x11(30) <= \<const0>\;
  x11(29) <= \<const0>\;
  x11(28) <= \<const0>\;
  x11(27) <= \<const0>\;
  x11(26) <= \<const0>\;
  x11(25) <= \<const0>\;
  x11(24) <= \<const0>\;
  x11(23) <= \<const0>\;
  x11(22) <= \<const0>\;
  x11(21) <= \<const0>\;
  x11(20) <= \<const0>\;
  x11(19) <= \<const0>\;
  x11(18) <= \<const0>\;
  x11(17) <= \<const0>\;
  x11(16) <= \<const0>\;
  x11(15) <= \<const0>\;
  x11(14) <= \<const0>\;
  x11(13) <= \<const0>\;
  x11(12) <= \<const0>\;
  x11(11) <= \<const0>\;
  x11(10) <= \<const0>\;
  x11(9) <= \<const0>\;
  x11(8) <= \<const0>\;
  x11(7) <= \<const0>\;
  x11(6) <= \<const0>\;
  x11(5) <= \<const0>\;
  x11(4) <= \<const0>\;
  x11(3) <= \<const0>\;
  x11(2) <= \<const0>\;
  x11(1) <= \<const0>\;
  x11(0) <= \<const0>\;
  x12(31) <= \<const0>\;
  x12(30) <= \<const0>\;
  x12(29) <= \<const0>\;
  x12(28) <= \<const0>\;
  x12(27) <= \<const0>\;
  x12(26) <= \<const0>\;
  x12(25) <= \<const0>\;
  x12(24) <= \<const0>\;
  x12(23) <= \<const0>\;
  x12(22) <= \<const0>\;
  x12(21) <= \<const0>\;
  x12(20) <= \<const0>\;
  x12(19) <= \<const0>\;
  x12(18) <= \<const0>\;
  x12(17) <= \<const0>\;
  x12(16) <= \<const0>\;
  x12(15) <= \<const0>\;
  x12(14) <= \<const0>\;
  x12(13) <= \<const0>\;
  x12(12) <= \<const0>\;
  x12(11) <= \<const0>\;
  x12(10) <= \<const0>\;
  x12(9) <= \<const0>\;
  x12(8) <= \<const0>\;
  x12(7) <= \<const0>\;
  x12(6) <= \<const0>\;
  x12(5) <= \<const0>\;
  x12(4) <= \<const0>\;
  x12(3) <= \<const0>\;
  x12(2) <= \<const0>\;
  x12(1) <= \<const0>\;
  x12(0) <= \<const0>\;
  x13(31) <= \<const0>\;
  x13(30) <= \<const0>\;
  x13(29) <= \<const0>\;
  x13(28) <= \<const0>\;
  x13(27) <= \<const0>\;
  x13(26) <= \<const0>\;
  x13(25) <= \<const0>\;
  x13(24) <= \<const0>\;
  x13(23) <= \<const0>\;
  x13(22) <= \<const0>\;
  x13(21) <= \<const0>\;
  x13(20) <= \<const0>\;
  x13(19) <= \<const0>\;
  x13(18) <= \<const0>\;
  x13(17) <= \<const0>\;
  x13(16) <= \<const0>\;
  x13(15) <= \<const0>\;
  x13(14) <= \<const0>\;
  x13(13) <= \<const0>\;
  x13(12) <= \<const0>\;
  x13(11) <= \<const0>\;
  x13(10) <= \<const0>\;
  x13(9) <= \<const0>\;
  x13(8) <= \<const0>\;
  x13(7) <= \<const0>\;
  x13(6) <= \<const0>\;
  x13(5) <= \<const0>\;
  x13(4) <= \<const0>\;
  x13(3) <= \<const0>\;
  x13(2) <= \<const0>\;
  x13(1) <= \<const0>\;
  x13(0) <= \<const0>\;
  x14(31) <= \<const0>\;
  x14(30) <= \<const0>\;
  x14(29) <= \<const0>\;
  x14(28) <= \<const0>\;
  x14(27) <= \<const0>\;
  x14(26) <= \<const0>\;
  x14(25) <= \<const0>\;
  x14(24) <= \<const0>\;
  x14(23) <= \<const0>\;
  x14(22) <= \<const0>\;
  x14(21) <= \<const0>\;
  x14(20) <= \<const0>\;
  x14(19) <= \<const0>\;
  x14(18) <= \<const0>\;
  x14(17) <= \<const0>\;
  x14(16) <= \<const0>\;
  x14(15) <= \<const0>\;
  x14(14) <= \<const0>\;
  x14(13) <= \<const0>\;
  x14(12) <= \<const0>\;
  x14(11) <= \<const0>\;
  x14(10) <= \<const0>\;
  x14(9) <= \<const0>\;
  x14(8) <= \<const0>\;
  x14(7) <= \<const0>\;
  x14(6) <= \<const0>\;
  x14(5) <= \<const0>\;
  x14(4) <= \<const0>\;
  x14(3) <= \<const0>\;
  x14(2) <= \<const0>\;
  x14(1) <= \<const0>\;
  x14(0) <= \<const0>\;
  x15(31) <= \<const0>\;
  x15(30) <= \<const0>\;
  x15(29) <= \<const0>\;
  x15(28) <= \<const0>\;
  x15(27) <= \<const0>\;
  x15(26) <= \<const0>\;
  x15(25) <= \<const0>\;
  x15(24) <= \<const0>\;
  x15(23) <= \<const0>\;
  x15(22) <= \<const0>\;
  x15(21) <= \<const0>\;
  x15(20) <= \<const0>\;
  x15(19) <= \<const0>\;
  x15(18) <= \<const0>\;
  x15(17) <= \<const0>\;
  x15(16) <= \<const0>\;
  x15(15) <= \<const0>\;
  x15(14) <= \<const0>\;
  x15(13) <= \<const0>\;
  x15(12) <= \<const0>\;
  x15(11) <= \<const0>\;
  x15(10) <= \<const0>\;
  x15(9) <= \<const0>\;
  x15(8) <= \<const0>\;
  x15(7) <= \<const0>\;
  x15(6) <= \<const0>\;
  x15(5) <= \<const0>\;
  x15(4) <= \<const0>\;
  x15(3) <= \<const0>\;
  x15(2) <= \<const0>\;
  x15(1) <= \<const0>\;
  x15(0) <= \<const0>\;
  x16(31) <= \<const0>\;
  x16(30) <= \<const0>\;
  x16(29) <= \<const0>\;
  x16(28) <= \<const0>\;
  x16(27) <= \<const0>\;
  x16(26) <= \<const0>\;
  x16(25) <= \<const0>\;
  x16(24) <= \<const0>\;
  x16(23) <= \<const0>\;
  x16(22) <= \<const0>\;
  x16(21) <= \<const0>\;
  x16(20) <= \<const0>\;
  x16(19) <= \<const0>\;
  x16(18) <= \<const0>\;
  x16(17) <= \<const0>\;
  x16(16) <= \<const0>\;
  x16(15) <= \<const0>\;
  x16(14) <= \<const0>\;
  x16(13) <= \<const0>\;
  x16(12) <= \<const0>\;
  x16(11) <= \<const0>\;
  x16(10) <= \<const0>\;
  x16(9) <= \<const0>\;
  x16(8) <= \<const0>\;
  x16(7) <= \<const0>\;
  x16(6) <= \<const0>\;
  x16(5) <= \<const0>\;
  x16(4) <= \<const0>\;
  x16(3) <= \<const0>\;
  x16(2) <= \<const0>\;
  x16(1) <= \<const0>\;
  x16(0) <= \<const0>\;
  x17(31) <= \<const0>\;
  x17(30) <= \<const0>\;
  x17(29) <= \<const0>\;
  x17(28) <= \<const0>\;
  x17(27) <= \<const0>\;
  x17(26) <= \<const0>\;
  x17(25) <= \<const0>\;
  x17(24) <= \<const0>\;
  x17(23) <= \<const0>\;
  x17(22) <= \<const0>\;
  x17(21) <= \<const0>\;
  x17(20) <= \<const0>\;
  x17(19) <= \<const0>\;
  x17(18) <= \<const0>\;
  x17(17) <= \<const0>\;
  x17(16) <= \<const0>\;
  x17(15) <= \<const0>\;
  x17(14) <= \<const0>\;
  x17(13) <= \<const0>\;
  x17(12) <= \<const0>\;
  x17(11) <= \<const0>\;
  x17(10) <= \<const0>\;
  x17(9) <= \<const0>\;
  x17(8) <= \<const0>\;
  x17(7) <= \<const0>\;
  x17(6) <= \<const0>\;
  x17(5) <= \<const0>\;
  x17(4) <= \<const0>\;
  x17(3) <= \<const0>\;
  x17(2) <= \<const0>\;
  x17(1) <= \<const0>\;
  x17(0) <= \<const0>\;
  x18(31) <= \<const0>\;
  x18(30) <= \<const0>\;
  x18(29) <= \<const0>\;
  x18(28) <= \<const0>\;
  x18(27) <= \<const0>\;
  x18(26) <= \<const0>\;
  x18(25) <= \<const0>\;
  x18(24) <= \<const0>\;
  x18(23) <= \<const0>\;
  x18(22) <= \<const0>\;
  x18(21) <= \<const0>\;
  x18(20) <= \<const0>\;
  x18(19) <= \<const0>\;
  x18(18) <= \<const0>\;
  x18(17) <= \<const0>\;
  x18(16) <= \<const0>\;
  x18(15) <= \<const0>\;
  x18(14) <= \<const0>\;
  x18(13) <= \<const0>\;
  x18(12) <= \<const0>\;
  x18(11) <= \<const0>\;
  x18(10) <= \<const0>\;
  x18(9) <= \<const0>\;
  x18(8) <= \<const0>\;
  x18(7) <= \<const0>\;
  x18(6) <= \<const0>\;
  x18(5) <= \<const0>\;
  x18(4) <= \<const0>\;
  x18(3) <= \<const0>\;
  x18(2) <= \<const0>\;
  x18(1) <= \<const0>\;
  x18(0) <= \<const0>\;
  x19(31) <= \<const0>\;
  x19(30) <= \<const0>\;
  x19(29) <= \<const0>\;
  x19(28) <= \<const0>\;
  x19(27) <= \<const0>\;
  x19(26) <= \<const0>\;
  x19(25) <= \<const0>\;
  x19(24) <= \<const0>\;
  x19(23) <= \<const0>\;
  x19(22) <= \<const0>\;
  x19(21) <= \<const0>\;
  x19(20) <= \<const0>\;
  x19(19) <= \<const0>\;
  x19(18) <= \<const0>\;
  x19(17) <= \<const0>\;
  x19(16) <= \<const0>\;
  x19(15) <= \<const0>\;
  x19(14) <= \<const0>\;
  x19(13) <= \<const0>\;
  x19(12) <= \<const0>\;
  x19(11) <= \<const0>\;
  x19(10) <= \<const0>\;
  x19(9) <= \<const0>\;
  x19(8) <= \<const0>\;
  x19(7) <= \<const0>\;
  x19(6) <= \<const0>\;
  x19(5) <= \<const0>\;
  x19(4) <= \<const0>\;
  x19(3) <= \<const0>\;
  x19(2) <= \<const0>\;
  x19(1) <= \<const0>\;
  x19(0) <= \<const0>\;
  x2(31) <= \<const0>\;
  x2(30) <= \<const0>\;
  x2(29) <= \<const0>\;
  x2(28) <= \<const0>\;
  x2(27) <= \<const0>\;
  x2(26) <= \<const0>\;
  x2(25) <= \<const0>\;
  x2(24) <= \<const0>\;
  x2(23) <= \<const0>\;
  x2(22) <= \<const0>\;
  x2(21) <= \<const0>\;
  x2(20) <= \<const0>\;
  x2(19) <= \<const0>\;
  x2(18) <= \<const0>\;
  x2(17) <= \<const0>\;
  x2(16) <= \<const0>\;
  x2(15) <= \<const0>\;
  x2(14) <= \<const0>\;
  x2(13) <= \<const0>\;
  x2(12) <= \<const0>\;
  x2(11) <= \<const0>\;
  x2(10) <= \<const0>\;
  x2(9) <= \<const0>\;
  x2(8) <= \<const0>\;
  x2(7) <= \<const0>\;
  x2(6) <= \<const0>\;
  x2(5) <= \<const0>\;
  x2(4) <= \<const0>\;
  x2(3) <= \<const0>\;
  x2(2) <= \<const0>\;
  x2(1) <= \<const0>\;
  x2(0) <= \<const0>\;
  x20(31) <= \<const0>\;
  x20(30) <= \<const0>\;
  x20(29) <= \<const0>\;
  x20(28) <= \<const0>\;
  x20(27) <= \<const0>\;
  x20(26) <= \<const0>\;
  x20(25) <= \<const0>\;
  x20(24) <= \<const0>\;
  x20(23) <= \<const0>\;
  x20(22) <= \<const0>\;
  x20(21) <= \<const0>\;
  x20(20) <= \<const0>\;
  x20(19) <= \<const0>\;
  x20(18) <= \<const0>\;
  x20(17) <= \<const0>\;
  x20(16) <= \<const0>\;
  x20(15) <= \<const0>\;
  x20(14) <= \<const0>\;
  x20(13) <= \<const0>\;
  x20(12) <= \<const0>\;
  x20(11) <= \<const0>\;
  x20(10) <= \<const0>\;
  x20(9) <= \<const0>\;
  x20(8) <= \<const0>\;
  x20(7) <= \<const0>\;
  x20(6) <= \<const0>\;
  x20(5) <= \<const0>\;
  x20(4) <= \<const0>\;
  x20(3) <= \<const0>\;
  x20(2) <= \<const0>\;
  x20(1) <= \<const0>\;
  x20(0) <= \<const0>\;
  x21(31) <= \<const0>\;
  x21(30) <= \<const0>\;
  x21(29) <= \<const0>\;
  x21(28) <= \<const0>\;
  x21(27) <= \<const0>\;
  x21(26) <= \<const0>\;
  x21(25) <= \<const0>\;
  x21(24) <= \<const0>\;
  x21(23) <= \<const0>\;
  x21(22) <= \<const0>\;
  x21(21) <= \<const0>\;
  x21(20) <= \<const0>\;
  x21(19) <= \<const0>\;
  x21(18) <= \<const0>\;
  x21(17) <= \<const0>\;
  x21(16) <= \<const0>\;
  x21(15) <= \<const0>\;
  x21(14) <= \<const0>\;
  x21(13) <= \<const0>\;
  x21(12) <= \<const0>\;
  x21(11) <= \<const0>\;
  x21(10) <= \<const0>\;
  x21(9) <= \<const0>\;
  x21(8) <= \<const0>\;
  x21(7) <= \<const0>\;
  x21(6) <= \<const0>\;
  x21(5) <= \<const0>\;
  x21(4) <= \<const0>\;
  x21(3) <= \<const0>\;
  x21(2) <= \<const0>\;
  x21(1) <= \<const0>\;
  x21(0) <= \<const0>\;
  x22(31) <= \<const0>\;
  x22(30) <= \<const0>\;
  x22(29) <= \<const0>\;
  x22(28) <= \<const0>\;
  x22(27) <= \<const0>\;
  x22(26) <= \<const0>\;
  x22(25) <= \<const0>\;
  x22(24) <= \<const0>\;
  x22(23) <= \<const0>\;
  x22(22) <= \<const0>\;
  x22(21) <= \<const0>\;
  x22(20) <= \<const0>\;
  x22(19) <= \<const0>\;
  x22(18) <= \<const0>\;
  x22(17) <= \<const0>\;
  x22(16) <= \<const0>\;
  x22(15) <= \<const0>\;
  x22(14) <= \<const0>\;
  x22(13) <= \<const0>\;
  x22(12) <= \<const0>\;
  x22(11) <= \<const0>\;
  x22(10) <= \<const0>\;
  x22(9) <= \<const0>\;
  x22(8) <= \<const0>\;
  x22(7) <= \<const0>\;
  x22(6) <= \<const0>\;
  x22(5) <= \<const0>\;
  x22(4) <= \<const0>\;
  x22(3) <= \<const0>\;
  x22(2) <= \<const0>\;
  x22(1) <= \<const0>\;
  x22(0) <= \<const0>\;
  x23(31) <= \<const0>\;
  x23(30) <= \<const0>\;
  x23(29) <= \<const0>\;
  x23(28) <= \<const0>\;
  x23(27) <= \<const0>\;
  x23(26) <= \<const0>\;
  x23(25) <= \<const0>\;
  x23(24) <= \<const0>\;
  x23(23) <= \<const0>\;
  x23(22) <= \<const0>\;
  x23(21) <= \<const0>\;
  x23(20) <= \<const0>\;
  x23(19) <= \<const0>\;
  x23(18) <= \<const0>\;
  x23(17) <= \<const0>\;
  x23(16) <= \<const0>\;
  x23(15) <= \<const0>\;
  x23(14) <= \<const0>\;
  x23(13) <= \<const0>\;
  x23(12) <= \<const0>\;
  x23(11) <= \<const0>\;
  x23(10) <= \<const0>\;
  x23(9) <= \<const0>\;
  x23(8) <= \<const0>\;
  x23(7) <= \<const0>\;
  x23(6) <= \<const0>\;
  x23(5) <= \<const0>\;
  x23(4) <= \<const0>\;
  x23(3) <= \<const0>\;
  x23(2) <= \<const0>\;
  x23(1) <= \<const0>\;
  x23(0) <= \<const0>\;
  x24(31) <= \<const0>\;
  x24(30) <= \<const0>\;
  x24(29) <= \<const0>\;
  x24(28) <= \<const0>\;
  x24(27) <= \<const0>\;
  x24(26) <= \<const0>\;
  x24(25) <= \<const0>\;
  x24(24) <= \<const0>\;
  x24(23) <= \<const0>\;
  x24(22) <= \<const0>\;
  x24(21) <= \<const0>\;
  x24(20) <= \<const0>\;
  x24(19) <= \<const0>\;
  x24(18) <= \<const0>\;
  x24(17) <= \<const0>\;
  x24(16) <= \<const0>\;
  x24(15) <= \<const0>\;
  x24(14) <= \<const0>\;
  x24(13) <= \<const0>\;
  x24(12) <= \<const0>\;
  x24(11) <= \<const0>\;
  x24(10) <= \<const0>\;
  x24(9) <= \<const0>\;
  x24(8) <= \<const0>\;
  x24(7) <= \<const0>\;
  x24(6) <= \<const0>\;
  x24(5) <= \<const0>\;
  x24(4) <= \<const0>\;
  x24(3) <= \<const0>\;
  x24(2) <= \<const0>\;
  x24(1) <= \<const0>\;
  x24(0) <= \<const0>\;
  x25(31) <= \<const0>\;
  x25(30) <= \<const0>\;
  x25(29) <= \<const0>\;
  x25(28) <= \<const0>\;
  x25(27) <= \<const0>\;
  x25(26) <= \<const0>\;
  x25(25) <= \<const0>\;
  x25(24) <= \<const0>\;
  x25(23) <= \<const0>\;
  x25(22) <= \<const0>\;
  x25(21) <= \<const0>\;
  x25(20) <= \<const0>\;
  x25(19) <= \<const0>\;
  x25(18) <= \<const0>\;
  x25(17) <= \<const0>\;
  x25(16) <= \<const0>\;
  x25(15) <= \<const0>\;
  x25(14) <= \<const0>\;
  x25(13) <= \<const0>\;
  x25(12) <= \<const0>\;
  x25(11) <= \<const0>\;
  x25(10) <= \<const0>\;
  x25(9) <= \<const0>\;
  x25(8) <= \<const0>\;
  x25(7) <= \<const0>\;
  x25(6) <= \<const0>\;
  x25(5) <= \<const0>\;
  x25(4) <= \<const0>\;
  x25(3) <= \<const0>\;
  x25(2) <= \<const0>\;
  x25(1) <= \<const0>\;
  x25(0) <= \<const0>\;
  x26(31) <= \<const0>\;
  x26(30) <= \<const0>\;
  x26(29) <= \<const0>\;
  x26(28) <= \<const0>\;
  x26(27) <= \<const0>\;
  x26(26) <= \<const0>\;
  x26(25) <= \<const0>\;
  x26(24) <= \<const0>\;
  x26(23) <= \<const0>\;
  x26(22) <= \<const0>\;
  x26(21) <= \<const0>\;
  x26(20) <= \<const0>\;
  x26(19) <= \<const0>\;
  x26(18) <= \<const0>\;
  x26(17) <= \<const0>\;
  x26(16) <= \<const0>\;
  x26(15) <= \<const0>\;
  x26(14) <= \<const0>\;
  x26(13) <= \<const0>\;
  x26(12) <= \<const0>\;
  x26(11) <= \<const0>\;
  x26(10) <= \<const0>\;
  x26(9) <= \<const0>\;
  x26(8) <= \<const0>\;
  x26(7) <= \<const0>\;
  x26(6) <= \<const0>\;
  x26(5) <= \<const0>\;
  x26(4) <= \<const0>\;
  x26(3) <= \<const0>\;
  x26(2) <= \<const0>\;
  x26(1) <= \<const0>\;
  x26(0) <= \<const0>\;
  x27(31) <= \<const0>\;
  x27(30) <= \<const0>\;
  x27(29) <= \<const0>\;
  x27(28) <= \<const0>\;
  x27(27) <= \<const0>\;
  x27(26) <= \<const0>\;
  x27(25) <= \<const0>\;
  x27(24) <= \<const0>\;
  x27(23) <= \<const0>\;
  x27(22) <= \<const0>\;
  x27(21) <= \<const0>\;
  x27(20) <= \<const0>\;
  x27(19) <= \<const0>\;
  x27(18) <= \<const0>\;
  x27(17) <= \<const0>\;
  x27(16) <= \<const0>\;
  x27(15) <= \<const0>\;
  x27(14) <= \<const0>\;
  x27(13) <= \<const0>\;
  x27(12) <= \<const0>\;
  x27(11) <= \<const0>\;
  x27(10) <= \<const0>\;
  x27(9) <= \<const0>\;
  x27(8) <= \<const0>\;
  x27(7) <= \<const0>\;
  x27(6) <= \<const0>\;
  x27(5) <= \<const0>\;
  x27(4) <= \<const0>\;
  x27(3) <= \<const0>\;
  x27(2) <= \<const0>\;
  x27(1) <= \<const0>\;
  x27(0) <= \<const0>\;
  x28(31) <= \<const0>\;
  x28(30) <= \<const0>\;
  x28(29) <= \<const0>\;
  x28(28) <= \<const0>\;
  x28(27) <= \<const0>\;
  x28(26) <= \<const0>\;
  x28(25) <= \<const0>\;
  x28(24) <= \<const0>\;
  x28(23) <= \<const0>\;
  x28(22) <= \<const0>\;
  x28(21) <= \<const0>\;
  x28(20) <= \<const0>\;
  x28(19) <= \<const0>\;
  x28(18) <= \<const0>\;
  x28(17) <= \<const0>\;
  x28(16) <= \<const0>\;
  x28(15) <= \<const0>\;
  x28(14) <= \<const0>\;
  x28(13) <= \<const0>\;
  x28(12) <= \<const0>\;
  x28(11) <= \<const0>\;
  x28(10) <= \<const0>\;
  x28(9) <= \<const0>\;
  x28(8) <= \<const0>\;
  x28(7) <= \<const0>\;
  x28(6) <= \<const0>\;
  x28(5) <= \<const0>\;
  x28(4) <= \<const0>\;
  x28(3) <= \<const0>\;
  x28(2) <= \<const0>\;
  x28(1) <= \<const0>\;
  x28(0) <= \<const0>\;
  x29(31) <= \<const0>\;
  x29(30) <= \<const0>\;
  x29(29) <= \<const0>\;
  x29(28) <= \<const0>\;
  x29(27) <= \<const0>\;
  x29(26) <= \<const0>\;
  x29(25) <= \<const0>\;
  x29(24) <= \<const0>\;
  x29(23) <= \<const0>\;
  x29(22) <= \<const0>\;
  x29(21) <= \<const0>\;
  x29(20) <= \<const0>\;
  x29(19) <= \<const0>\;
  x29(18) <= \<const0>\;
  x29(17) <= \<const0>\;
  x29(16) <= \<const0>\;
  x29(15) <= \<const0>\;
  x29(14) <= \<const0>\;
  x29(13) <= \<const0>\;
  x29(12) <= \<const0>\;
  x29(11) <= \<const0>\;
  x29(10) <= \<const0>\;
  x29(9) <= \<const0>\;
  x29(8) <= \<const0>\;
  x29(7) <= \<const0>\;
  x29(6) <= \<const0>\;
  x29(5) <= \<const0>\;
  x29(4) <= \<const0>\;
  x29(3) <= \<const0>\;
  x29(2) <= \<const0>\;
  x29(1) <= \<const0>\;
  x29(0) <= \<const0>\;
  x3(31) <= \<const0>\;
  x3(30) <= \<const0>\;
  x3(29) <= \<const0>\;
  x3(28) <= \<const0>\;
  x3(27) <= \<const0>\;
  x3(26) <= \<const0>\;
  x3(25) <= \<const0>\;
  x3(24) <= \<const0>\;
  x3(23) <= \<const0>\;
  x3(22) <= \<const0>\;
  x3(21) <= \<const0>\;
  x3(20) <= \<const0>\;
  x3(19) <= \<const0>\;
  x3(18) <= \<const0>\;
  x3(17) <= \<const0>\;
  x3(16) <= \<const0>\;
  x3(15) <= \<const0>\;
  x3(14) <= \<const0>\;
  x3(13) <= \<const0>\;
  x3(12) <= \<const0>\;
  x3(11) <= \<const0>\;
  x3(10) <= \<const0>\;
  x3(9) <= \<const0>\;
  x3(8) <= \<const0>\;
  x3(7) <= \<const0>\;
  x3(6) <= \<const0>\;
  x3(5) <= \<const0>\;
  x3(4) <= \<const0>\;
  x3(3) <= \<const0>\;
  x3(2) <= \<const0>\;
  x3(1) <= \<const0>\;
  x3(0) <= \<const0>\;
  x30(31) <= \<const0>\;
  x30(30) <= \<const0>\;
  x30(29) <= \<const0>\;
  x30(28) <= \<const0>\;
  x30(27) <= \<const0>\;
  x30(26) <= \<const0>\;
  x30(25) <= \<const0>\;
  x30(24) <= \<const0>\;
  x30(23) <= \<const0>\;
  x30(22) <= \<const0>\;
  x30(21) <= \<const0>\;
  x30(20) <= \<const0>\;
  x30(19) <= \<const0>\;
  x30(18) <= \<const0>\;
  x30(17) <= \<const0>\;
  x30(16) <= \<const0>\;
  x30(15) <= \<const0>\;
  x30(14) <= \<const0>\;
  x30(13) <= \<const0>\;
  x30(12) <= \<const0>\;
  x30(11) <= \<const0>\;
  x30(10) <= \<const0>\;
  x30(9) <= \<const0>\;
  x30(8) <= \<const0>\;
  x30(7) <= \<const0>\;
  x30(6) <= \<const0>\;
  x30(5) <= \<const0>\;
  x30(4) <= \<const0>\;
  x30(3) <= \<const0>\;
  x30(2) <= \<const0>\;
  x30(1) <= \<const0>\;
  x30(0) <= \<const0>\;
  x31(31) <= \<const0>\;
  x31(30) <= \<const0>\;
  x31(29) <= \<const0>\;
  x31(28) <= \<const0>\;
  x31(27) <= \<const0>\;
  x31(26) <= \<const0>\;
  x31(25) <= \<const0>\;
  x31(24) <= \<const0>\;
  x31(23) <= \<const0>\;
  x31(22) <= \<const0>\;
  x31(21) <= \<const0>\;
  x31(20) <= \<const0>\;
  x31(19) <= \<const0>\;
  x31(18) <= \<const0>\;
  x31(17) <= \<const0>\;
  x31(16) <= \<const0>\;
  x31(15) <= \<const0>\;
  x31(14) <= \<const0>\;
  x31(13) <= \<const0>\;
  x31(12) <= \<const0>\;
  x31(11) <= \<const0>\;
  x31(10) <= \<const0>\;
  x31(9) <= \<const0>\;
  x31(8) <= \<const0>\;
  x31(7) <= \<const0>\;
  x31(6) <= \<const0>\;
  x31(5) <= \<const0>\;
  x31(4) <= \<const0>\;
  x31(3) <= \<const0>\;
  x31(2) <= \<const0>\;
  x31(1) <= \<const0>\;
  x31(0) <= \<const0>\;
  x4(31) <= \<const0>\;
  x4(30) <= \<const0>\;
  x4(29) <= \<const0>\;
  x4(28) <= \<const0>\;
  x4(27) <= \<const0>\;
  x4(26) <= \<const0>\;
  x4(25) <= \<const0>\;
  x4(24) <= \<const0>\;
  x4(23) <= \<const0>\;
  x4(22) <= \<const0>\;
  x4(21) <= \<const0>\;
  x4(20) <= \<const0>\;
  x4(19) <= \<const0>\;
  x4(18) <= \<const0>\;
  x4(17) <= \<const0>\;
  x4(16) <= \<const0>\;
  x4(15) <= \<const0>\;
  x4(14) <= \<const0>\;
  x4(13) <= \<const0>\;
  x4(12) <= \<const0>\;
  x4(11) <= \<const0>\;
  x4(10) <= \<const0>\;
  x4(9) <= \<const0>\;
  x4(8) <= \<const0>\;
  x4(7) <= \<const0>\;
  x4(6) <= \<const0>\;
  x4(5) <= \<const0>\;
  x4(4) <= \<const0>\;
  x4(3) <= \<const0>\;
  x4(2) <= \<const0>\;
  x4(1) <= \<const0>\;
  x4(0) <= \<const0>\;
  x5(31) <= \<const0>\;
  x5(30) <= \<const0>\;
  x5(29) <= \<const0>\;
  x5(28) <= \<const0>\;
  x5(27) <= \<const0>\;
  x5(26) <= \<const0>\;
  x5(25) <= \<const0>\;
  x5(24) <= \<const0>\;
  x5(23) <= \<const0>\;
  x5(22) <= \<const0>\;
  x5(21) <= \<const0>\;
  x5(20) <= \<const0>\;
  x5(19) <= \<const0>\;
  x5(18) <= \<const0>\;
  x5(17) <= \<const0>\;
  x5(16) <= \<const0>\;
  x5(15) <= \<const0>\;
  x5(14) <= \<const0>\;
  x5(13) <= \<const0>\;
  x5(12) <= \<const0>\;
  x5(11) <= \<const0>\;
  x5(10) <= \<const0>\;
  x5(9) <= \<const0>\;
  x5(8) <= \<const0>\;
  x5(7) <= \<const0>\;
  x5(6) <= \<const0>\;
  x5(5) <= \<const0>\;
  x5(4) <= \<const0>\;
  x5(3) <= \<const0>\;
  x5(2) <= \<const0>\;
  x5(1) <= \<const0>\;
  x5(0) <= \<const0>\;
  x6(31) <= \<const0>\;
  x6(30) <= \<const0>\;
  x6(29) <= \<const0>\;
  x6(28) <= \<const0>\;
  x6(27) <= \<const0>\;
  x6(26) <= \<const0>\;
  x6(25) <= \<const0>\;
  x6(24) <= \<const0>\;
  x6(23) <= \<const0>\;
  x6(22) <= \<const0>\;
  x6(21) <= \<const0>\;
  x6(20) <= \<const0>\;
  x6(19) <= \<const0>\;
  x6(18) <= \<const0>\;
  x6(17) <= \<const0>\;
  x6(16) <= \<const0>\;
  x6(15) <= \<const0>\;
  x6(14) <= \<const0>\;
  x6(13) <= \<const0>\;
  x6(12) <= \<const0>\;
  x6(11) <= \<const0>\;
  x6(10) <= \<const0>\;
  x6(9) <= \<const0>\;
  x6(8) <= \<const0>\;
  x6(7) <= \<const0>\;
  x6(6) <= \<const0>\;
  x6(5) <= \<const0>\;
  x6(4) <= \<const0>\;
  x6(3) <= \<const0>\;
  x6(2) <= \<const0>\;
  x6(1) <= \<const0>\;
  x6(0) <= \<const0>\;
  x7(31) <= \<const0>\;
  x7(30) <= \<const0>\;
  x7(29) <= \<const0>\;
  x7(28) <= \<const0>\;
  x7(27) <= \<const0>\;
  x7(26) <= \<const0>\;
  x7(25) <= \<const0>\;
  x7(24) <= \<const0>\;
  x7(23) <= \<const0>\;
  x7(22) <= \<const0>\;
  x7(21) <= \<const0>\;
  x7(20) <= \<const0>\;
  x7(19) <= \<const0>\;
  x7(18) <= \<const0>\;
  x7(17) <= \<const0>\;
  x7(16) <= \<const0>\;
  x7(15) <= \<const0>\;
  x7(14) <= \<const0>\;
  x7(13) <= \<const0>\;
  x7(12) <= \<const0>\;
  x7(11) <= \<const0>\;
  x7(10) <= \<const0>\;
  x7(9) <= \<const0>\;
  x7(8) <= \<const0>\;
  x7(7) <= \<const0>\;
  x7(6) <= \<const0>\;
  x7(5) <= \<const0>\;
  x7(4) <= \<const0>\;
  x7(3) <= \<const0>\;
  x7(2) <= \<const0>\;
  x7(1) <= \<const0>\;
  x7(0) <= \<const0>\;
  x8(31) <= \<const0>\;
  x8(30) <= \<const0>\;
  x8(29) <= \<const0>\;
  x8(28) <= \<const0>\;
  x8(27) <= \<const0>\;
  x8(26) <= \<const0>\;
  x8(25) <= \<const0>\;
  x8(24) <= \<const0>\;
  x8(23) <= \<const0>\;
  x8(22) <= \<const0>\;
  x8(21) <= \<const0>\;
  x8(20) <= \<const0>\;
  x8(19) <= \<const0>\;
  x8(18) <= \<const0>\;
  x8(17) <= \<const0>\;
  x8(16) <= \<const0>\;
  x8(15) <= \<const0>\;
  x8(14) <= \<const0>\;
  x8(13) <= \<const0>\;
  x8(12) <= \<const0>\;
  x8(11) <= \<const0>\;
  x8(10) <= \<const0>\;
  x8(9) <= \<const0>\;
  x8(8) <= \<const0>\;
  x8(7) <= \<const0>\;
  x8(6) <= \<const0>\;
  x8(5) <= \<const0>\;
  x8(4) <= \<const0>\;
  x8(3) <= \<const0>\;
  x8(2) <= \<const0>\;
  x8(1) <= \<const0>\;
  x8(0) <= \<const0>\;
  x9(31) <= \<const0>\;
  x9(30) <= \<const0>\;
  x9(29) <= \<const0>\;
  x9(28) <= \<const0>\;
  x9(27) <= \<const0>\;
  x9(26) <= \<const0>\;
  x9(25) <= \<const0>\;
  x9(24) <= \<const0>\;
  x9(23) <= \<const0>\;
  x9(22) <= \<const0>\;
  x9(21) <= \<const0>\;
  x9(20) <= \<const0>\;
  x9(19) <= \<const0>\;
  x9(18) <= \<const0>\;
  x9(17) <= \<const0>\;
  x9(16) <= \<const0>\;
  x9(15) <= \<const0>\;
  x9(14) <= \<const0>\;
  x9(13) <= \<const0>\;
  x9(12) <= \<const0>\;
  x9(11) <= \<const0>\;
  x9(10) <= \<const0>\;
  x9(9) <= \<const0>\;
  x9(8) <= \<const0>\;
  x9(7) <= \<const0>\;
  x9(6) <= \<const0>\;
  x9(5) <= \<const0>\;
  x9(4) <= \<const0>\;
  x9(3) <= \<const0>\;
  x9(2) <= \<const0>\;
  x9(1) <= \<const0>\;
  x9(0) <= \<const0>\;
\ALU_out[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => inst_n_54,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(11),
      I4 => ALU_operation(2),
      O => ALU_out(11)
    );
\ALU_out[11]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => inst_n_57,
      CO(3) => \ALU_out[11]_INST_0_i_2_n_0\,
      CO(2) => \ALU_out[11]_INST_0_i_2_n_1\,
      CO(1) => \ALU_out[11]_INST_0_i_2_n_2\,
      CO(0) => \ALU_out[11]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(11 downto 8),
      S(3) => \ALU_out[11]_INST_0_i_3_n_0\,
      S(2) => \ALU_out[11]_INST_0_i_4_n_0\,
      S(1) => \ALU_out[11]_INST_0_i_5_n_0\,
      S(0) => \ALU_out[11]_INST_0_i_6_n_0\
    );
\ALU_out[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757F5555757FFFFF"
    )
        port map (
      I0 => ALUSrc_B,
      I1 => inst_field(20),
      I2 => ImmSel(0),
      I3 => inst_field(7),
      I4 => ImmSel(1),
      I5 => inst_field(31),
      O => \ALU_out[11]_INST_0_i_3_n_0\
    );
\ALU_out[11]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(30),
      I1 => ALUSrc_B,
      O => \ALU_out[11]_INST_0_i_4_n_0\
    );
\ALU_out[11]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(29),
      I1 => ALUSrc_B,
      O => \ALU_out[11]_INST_0_i_5_n_0\
    );
\ALU_out[11]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(28),
      I1 => ALUSrc_B,
      O => \ALU_out[11]_INST_0_i_6_n_0\
    );
\ALU_out[15]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_out[11]_INST_0_i_2_n_0\,
      CO(3) => \ALU_out[15]_INST_0_i_2_n_0\,
      CO(2) => \ALU_out[15]_INST_0_i_2_n_1\,
      CO(1) => \ALU_out[15]_INST_0_i_2_n_2\,
      CO(0) => \ALU_out[15]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(15 downto 12),
      S(3) => \ALU_out[15]_INST_0_i_3_n_0\,
      S(2) => \ALU_out[15]_INST_0_i_4_n_0\,
      S(1) => \ALU_out[15]_INST_0_i_5_n_0\,
      S(0) => \ALU_out[15]_INST_0_i_6_n_0\
    );
\ALU_out[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(15),
      I4 => ALUSrc_B,
      O => \ALU_out[15]_INST_0_i_3_n_0\
    );
\ALU_out[15]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(14),
      I4 => ALUSrc_B,
      O => \ALU_out[15]_INST_0_i_4_n_0\
    );
\ALU_out[15]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(13),
      I4 => ALUSrc_B,
      O => \ALU_out[15]_INST_0_i_5_n_0\
    );
\ALU_out[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(12),
      I4 => ALUSrc_B,
      O => \ALU_out[15]_INST_0_i_6_n_0\
    );
\ALU_out[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => inst_n_56,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(17),
      I4 => ALU_operation(2),
      O => ALU_out(17)
    );
\ALU_out[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3101A8A8"
    )
        port map (
      I0 => inst_n_55,
      I1 => ALU_operation(0),
      I2 => ALU_operation(1),
      I3 => data6(18),
      I4 => ALU_operation(2),
      O => ALU_out(18)
    );
\ALU_out[19]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_out[15]_INST_0_i_2_n_0\,
      CO(3) => \ALU_out[19]_INST_0_i_2_n_0\,
      CO(2) => \ALU_out[19]_INST_0_i_2_n_1\,
      CO(1) => \ALU_out[19]_INST_0_i_2_n_2\,
      CO(0) => \ALU_out[19]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(19 downto 16),
      S(3) => \ALU_out[19]_INST_0_i_3_n_0\,
      S(2) => \ALU_out[19]_INST_0_i_4_n_0\,
      S(1) => \ALU_out[19]_INST_0_i_5_n_0\,
      S(0) => \ALU_out[19]_INST_0_i_6_n_0\
    );
\ALU_out[19]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(19),
      I4 => ALUSrc_B,
      O => \ALU_out[19]_INST_0_i_3_n_0\
    );
\ALU_out[19]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(18),
      I4 => ALUSrc_B,
      O => \ALU_out[19]_INST_0_i_4_n_0\
    );
\ALU_out[19]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(17),
      I4 => ALUSrc_B,
      O => \ALU_out[19]_INST_0_i_5_n_0\
    );
\ALU_out[19]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15D5FFFF"
    )
        port map (
      I0 => inst_field(31),
      I1 => ImmSel(0),
      I2 => ImmSel(1),
      I3 => inst_field(16),
      I4 => ALUSrc_B,
      O => \ALU_out[19]_INST_0_i_6_n_0\
    );
\ALU_out[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(23),
      I5 => ALU_operation(2),
      O => ALU_out(23)
    );
\ALU_out[23]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_out[19]_INST_0_i_2_n_0\,
      CO(3) => \ALU_out[23]_INST_0_i_1_n_0\,
      CO(2) => \ALU_out[23]_INST_0_i_1_n_1\,
      CO(1) => \ALU_out[23]_INST_0_i_1_n_2\,
      CO(0) => \ALU_out[23]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(23 downto 20),
      S(3) => \ALU_out[23]_INST_0_i_2_n_0\,
      S(2) => \ALU_out[23]_INST_0_i_3_n_0\,
      S(1) => \ALU_out[23]_INST_0_i_4_n_0\,
      S(0) => \ALU_out[23]_INST_0_i_5_n_0\
    );
\ALU_out[23]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[23]_INST_0_i_2_n_0\
    );
\ALU_out[23]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[23]_INST_0_i_3_n_0\
    );
\ALU_out[23]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[23]_INST_0_i_4_n_0\
    );
\ALU_out[23]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[23]_INST_0_i_5_n_0\
    );
\ALU_out[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(24),
      I5 => ALU_operation(2),
      O => ALU_out(24)
    );
\ALU_out[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(25),
      I5 => ALU_operation(2),
      O => ALU_out(25)
    );
\ALU_out[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(26),
      I5 => ALU_operation(2),
      O => ALU_out(26)
    );
\ALU_out[27]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_out[23]_INST_0_i_1_n_0\,
      CO(3) => \ALU_out[27]_INST_0_i_1_n_0\,
      CO(2) => \ALU_out[27]_INST_0_i_1_n_1\,
      CO(1) => \ALU_out[27]_INST_0_i_1_n_2\,
      CO(0) => \ALU_out[27]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(27 downto 24),
      S(3) => \ALU_out[27]_INST_0_i_2_n_0\,
      S(2) => \ALU_out[27]_INST_0_i_3_n_0\,
      S(1) => \ALU_out[27]_INST_0_i_4_n_0\,
      S(0) => \ALU_out[27]_INST_0_i_5_n_0\
    );
\ALU_out[27]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[27]_INST_0_i_2_n_0\
    );
\ALU_out[27]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[27]_INST_0_i_3_n_0\
    );
\ALU_out[27]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[27]_INST_0_i_4_n_0\
    );
\ALU_out[27]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[27]_INST_0_i_5_n_0\
    );
\ALU_out[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(28),
      I5 => ALU_operation(2),
      O => ALU_out(28)
    );
\ALU_out[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(29),
      I5 => ALU_operation(2),
      O => ALU_out(29)
    );
\ALU_out[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F07000788808880"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ALU_operation(0),
      I3 => ALU_operation(1),
      I4 => data6(30),
      I5 => ALU_operation(2),
      O => ALU_out(30)
    );
\ALU_out[31]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ALU_out[27]_INST_0_i_1_n_0\,
      CO(3) => \NLW_ALU_out[31]_INST_0_i_2_CO_UNCONNECTED\(3),
      CO(2) => \ALU_out[31]_INST_0_i_2_n_1\,
      CO(1) => \ALU_out[31]_INST_0_i_2_n_2\,
      CO(0) => \ALU_out[31]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data6(31 downto 28),
      S(3) => \ALU_out[31]_INST_0_i_3_n_0\,
      S(2) => \ALU_out[31]_INST_0_i_4_n_0\,
      S(1) => \ALU_out[31]_INST_0_i_5_n_0\,
      S(0) => \ALU_out[31]_INST_0_i_6_n_0\
    );
\ALU_out[31]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      I2 => ImmSel(0),
      I3 => ImmSel(1),
      O => \ALU_out[31]_INST_0_i_3_n_0\
    );
\ALU_out[31]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[31]_INST_0_i_4_n_0\
    );
\ALU_out[31]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[31]_INST_0_i_5_n_0\
    );
\ALU_out[31]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => inst_field(31),
      I1 => ALUSrc_B,
      O => \ALU_out[31]_INST_0_i_6_n_0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataPath
     port map (
      ALUSrc_B => ALUSrc_B,
      ALUSrc_B_0 => inst_n_55,
      ALUSrc_B_1 => inst_n_56,
      ALU_operation(2 downto 0) => ALU_operation(2 downto 0),
      ALU_out(21) => ALU_out(31),
      ALU_out(20) => ALU_out(27),
      ALU_out(19 downto 16) => ALU_out(22 downto 19),
      ALU_out(15 downto 11) => ALU_out(16 downto 12),
      ALU_out(10 downto 0) => ALU_out(10 downto 0),
      \ALU_out[31]\(23 downto 0) => data6(31 downto 8),
      Branch => Branch,
      CO(0) => inst_n_57,
      ImmSel(1 downto 0) => ImmSel(1 downto 0),
      Jump => Jump,
      Q(31 downto 0) => PC_out(31 downto 0),
      clk => clk,
      inst_field(24 downto 0) => inst_field(31 downto 7),
      \inst_field[31]\ => inst_n_54,
      rst => rst
    );
end STRUCTURE;
