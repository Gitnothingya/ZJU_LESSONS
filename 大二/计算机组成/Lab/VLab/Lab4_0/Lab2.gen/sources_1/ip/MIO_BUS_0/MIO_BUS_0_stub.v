// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:43:58 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/MIO_BUS_0/MIO_BUS_0_stub.v
// Design      : MIO_BUS_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MIO_BUS,Vivado 2020.2" *)
module MIO_BUS_0(GPIOe0000000_we, GPIOf0000000_we, clk, 
  counter0_out, counter1_out, counter2_out, counter_we, data_ram_we, mem_w, rst, BTN, Cpu_data2bus, 
  Cpu_data4bus, Peripheral_in, SW, addr_bus, counter_out, led_out, ram_addr, ram_data_in, 
  ram_data_out)
/* synthesis syn_black_box black_box_pad_pin="GPIOe0000000_we,GPIOf0000000_we,clk,counter0_out,counter1_out,counter2_out,counter_we,data_ram_we,mem_w,rst,BTN[3:0],Cpu_data2bus[31:0],Cpu_data4bus[31:0],Peripheral_in[31:0],SW[15:0],addr_bus[31:0],counter_out[31:0],led_out[15:0],ram_addr[9:0],ram_data_in[31:0],ram_data_out[31:0]" */;
  output GPIOe0000000_we;
  output GPIOf0000000_we;
  input clk;
  input counter0_out;
  input counter1_out;
  input counter2_out;
  output counter_we;
  output data_ram_we;
  input mem_w;
  input rst;
  input [3:0]BTN;
  input [31:0]Cpu_data2bus;
  output [31:0]Cpu_data4bus;
  output [31:0]Peripheral_in;
  input [15:0]SW;
  input [31:0]addr_bus;
  input [31:0]counter_out;
  input [15:0]led_out;
  output [9:0]ram_addr;
  output [31:0]ram_data_in;
  input [31:0]ram_data_out;
endmodule
