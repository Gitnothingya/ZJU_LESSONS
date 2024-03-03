-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 15:19:56 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_ctrl_0_sim_netlist.vhdl
-- Design      : cpu_ctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    OPcode : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Fun3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Fun7 : in STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    ImmSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUSrc_B : out STD_LOGIC;
    MemtoReg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Jump : out STD_LOGIC;
    Branch : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    MemRW : out STD_LOGIC;
    ALU_Control : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CPU_MIO : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cpu_ctrl_0,cpu_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cpu_ctrl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Control[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^memtoreg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_Control[2]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALU_Control[2]_INST_0_i_2\ : label is "soft_lutpair0";
begin
  CPU_MIO <= \<const0>\;
  Jump <= \^memtoreg\(1);
  MemtoReg(1 downto 0) <= \^memtoreg\(1 downto 0);
ALUSrc_B_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFEFBF"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(2),
      I2 => OPcode(3),
      I3 => OPcode(4),
      I4 => OPcode(1),
      O => ALUSrc_B
    );
\ALU_Control[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B000B0B0B000"
    )
        port map (
      I0 => \ALU_Control[2]_INST_0_i_2_n_0\,
      I1 => Fun7,
      I2 => \ALU_Control[2]_INST_0_i_1_n_0\,
      I3 => Fun3(2),
      I4 => Fun3(1),
      I5 => Fun3(0),
      O => ALU_Control(0)
    );
\ALU_Control[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04450555FFFFFFFF"
    )
        port map (
      I0 => Fun3(0),
      I1 => \ALU_Control[2]_INST_0_i_2_n_0\,
      I2 => Fun3(2),
      I3 => Fun3(1),
      I4 => Fun7,
      I5 => \ALU_Control[2]_INST_0_i_1_n_0\,
      O => ALU_Control(1)
    );
\ALU_Control[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFCFFFFAEFE0000"
    )
        port map (
      I0 => Fun7,
      I1 => Fun3(0),
      I2 => Fun3(1),
      I3 => Fun3(2),
      I4 => \ALU_Control[2]_INST_0_i_1_n_0\,
      I5 => \ALU_Control[2]_INST_0_i_2_n_0\,
      O => ALU_Control(2)
    );
\ALU_Control[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(0),
      I2 => OPcode(4),
      I3 => OPcode(3),
      I4 => OPcode(1),
      O => \ALU_Control[2]_INST_0_i_1_n_0\
    );
\ALU_Control[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFAFFFE"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(2),
      I2 => OPcode(4),
      I3 => OPcode(1),
      I4 => OPcode(3),
      O => \ALU_Control[2]_INST_0_i_2_n_0\
    );
Branch_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(2),
      I2 => OPcode(3),
      I3 => OPcode(1),
      I4 => OPcode(0),
      O => Branch
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ImmSel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008100"
    )
        port map (
      I0 => OPcode(4),
      I1 => OPcode(1),
      I2 => OPcode(0),
      I3 => OPcode(3),
      I4 => OPcode(2),
      O => ImmSel(0)
    );
\ImmSel[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000020"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(2),
      I2 => OPcode(4),
      I3 => OPcode(0),
      I4 => OPcode(1),
      O => ImmSel(1)
    );
Jump_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => OPcode(2),
      I1 => OPcode(1),
      I2 => OPcode(0),
      I3 => OPcode(3),
      I4 => OPcode(4),
      O => \^memtoreg\(1)
    );
MemRW_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(2),
      I2 => OPcode(1),
      I3 => OPcode(0),
      I4 => OPcode(4),
      O => MemRW
    );
\MemtoReg[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(1),
      I2 => OPcode(0),
      I3 => OPcode(4),
      I4 => OPcode(2),
      O => \^memtoreg\(0)
    );
RegWrite_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000051"
    )
        port map (
      I0 => OPcode(0),
      I1 => OPcode(3),
      I2 => OPcode(2),
      I3 => OPcode(4),
      I4 => OPcode(1),
      O => RegWrite
    );
end STRUCTURE;
