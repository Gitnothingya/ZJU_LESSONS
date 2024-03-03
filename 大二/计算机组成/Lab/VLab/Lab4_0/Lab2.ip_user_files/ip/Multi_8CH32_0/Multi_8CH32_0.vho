-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:Multi_8CH32:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT Multi_8CH32_0
  PORT (
    EN : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    Data0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Disp_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    LES : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    LE_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Test : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    data1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    point_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    point_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : Multi_8CH32_0
  PORT MAP (
    EN => EN,
    clk => clk,
    rst => rst,
    Data0 => Data0,
    Disp_num => Disp_num,
    LES => LES,
    LE_out => LE_out,
    Test => Test,
    data1 => data1,
    data2 => data2,
    data3 => data3,
    data4 => data4,
    data5 => data5,
    data6 => data6,
    data7 => data7,
    point_in => point_in,
    point_out => point_out
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file Multi_8CH32_0.vhd when simulating
-- the core, Multi_8CH32_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

