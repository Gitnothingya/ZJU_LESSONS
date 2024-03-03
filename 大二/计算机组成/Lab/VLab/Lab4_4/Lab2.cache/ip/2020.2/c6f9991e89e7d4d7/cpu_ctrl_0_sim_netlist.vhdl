-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 11:52:08 2022
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_ctrl is
  port (
    ImmSel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALUSrc_B : out STD_LOGIC;
    MemtoReg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Branch : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    MemRW : out STD_LOGIC;
    ALU_Control : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OPcode : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Fun7 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_ctrl is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUSrc_B__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Branch__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ImmSel__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MemRW__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \MemtoReg__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RegWrite__0\ : label is "soft_lutpair2";
begin
\ALUSrc_B__0\: unisim.vcomponents.LUT5
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
\ALU_Control[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00048045"
    )
        port map (
      I0 => OPcode(1),
      I1 => OPcode(3),
      I2 => OPcode(4),
      I3 => OPcode(0),
      I4 => OPcode(2),
      O => ALU_Control(0)
    );
\ALU_Control[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFF8FFFC"
    )
        port map (
      I0 => Fun7,
      I1 => OPcode(2),
      I2 => OPcode(0),
      I3 => OPcode(4),
      I4 => OPcode(3),
      I5 => OPcode(1),
      O => ALU_Control(1)
    );
\Branch__0\: unisim.vcomponents.LUT5
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
\ImmSel__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000020"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(2),
      I2 => OPcode(4),
      I3 => OPcode(0),
      I4 => OPcode(1),
      O => ImmSel(0)
    );
\MemRW__0\: unisim.vcomponents.LUT5
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
\MemtoReg__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => OPcode(3),
      I1 => OPcode(1),
      I2 => OPcode(0),
      I3 => OPcode(4),
      I4 => OPcode(2),
      O => MemtoReg(0)
    );
\RegWrite__0\: unisim.vcomponents.LUT5
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
  signal \^alu_control\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^memtoreg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  ALU_Control(2 downto 1) <= \^alu_control\(2 downto 1);
  ALU_Control(0) <= \<const0>\;
  CPU_MIO <= \<const0>\;
  Jump <= \^memtoreg\(1);
  MemtoReg(1 downto 0) <= \^memtoreg\(1 downto 0);
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu_ctrl
     port map (
      ALUSrc_B => ALUSrc_B,
      ALU_Control(1 downto 0) => \^alu_control\(2 downto 1),
      Branch => Branch,
      Fun7 => Fun7,
      ImmSel(0) => ImmSel(1),
      MemRW => MemRW,
      MemtoReg(0) => \^memtoreg\(0),
      OPcode(4 downto 0) => OPcode(4 downto 0),
      RegWrite => RegWrite
    );
end STRUCTURE;
