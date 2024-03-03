// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:user:MIO_BUS:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
MIO_BUS_0 your_instance_name (
  .GPIOe0000000_we(GPIOe0000000_we),  // output wire GPIOe0000000_we
  .GPIOf0000000_we(GPIOf0000000_we),  // output wire GPIOf0000000_we
  .clk(clk),                          // input wire clk
  .counter0_out(counter0_out),        // input wire counter0_out
  .counter1_out(counter1_out),        // input wire counter1_out
  .counter2_out(counter2_out),        // input wire counter2_out
  .counter_we(counter_we),            // output wire counter_we
  .data_ram_we(data_ram_we),          // output wire data_ram_we
  .mem_w(mem_w),                      // input wire mem_w
  .rst(rst),                          // input wire rst
  .BTN(BTN),                          // input wire [3 : 0] BTN
  .Cpu_data2bus(Cpu_data2bus),        // input wire [31 : 0] Cpu_data2bus
  .Cpu_data4bus(Cpu_data4bus),        // output wire [31 : 0] Cpu_data4bus
  .Peripheral_in(Peripheral_in),      // output wire [31 : 0] Peripheral_in
  .SW(SW),                            // input wire [15 : 0] SW
  .addr_bus(addr_bus),                // input wire [31 : 0] addr_bus
  .counter_out(counter_out),          // input wire [31 : 0] counter_out
  .led_out(led_out),                  // input wire [15 : 0] led_out
  .ram_addr(ram_addr),                // output wire [9 : 0] ram_addr
  .ram_data_in(ram_data_in),          // output wire [31 : 0] ram_data_in
  .ram_data_out(ram_data_out)        // input wire [31 : 0] ram_data_out
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file MIO_BUS_0.v when simulating
// the core, MIO_BUS_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

