// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  1 15:45:33 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/MIO_BUS_0/MIO_BUS_0_sim_netlist.v
// Design      : MIO_BUS_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MIO_BUS_0,MIO_BUS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MIO_BUS,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module MIO_BUS_0
   (GPIOe0000000_we,
    GPIOf0000000_we,
    clk,
    counter0_out,
    counter1_out,
    counter2_out,
    counter_we,
    data_ram_we,
    mem_w,
    rst,
    BTN,
    Cpu_data2bus,
    Cpu_data4bus,
    Peripheral_in,
    SW,
    addr_bus,
    counter_out,
    led_out,
    ram_addr,
    ram_data_in,
    ram_data_out);
  output GPIOe0000000_we;
  output GPIOf0000000_we;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input counter0_out;
  input counter1_out;
  input counter2_out;
  output counter_we;
  output data_ram_we;
  input mem_w;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
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

  wire [3:0]BTN;
  wire [31:0]Cpu_data2bus;
  wire [31:0]Cpu_data4bus;
  wire GPIOe0000000_we;
  wire GPIOf0000000_we;
  wire [31:0]Peripheral_in;
  wire [15:0]SW;
  wire [31:0]addr_bus;
  wire clk;
  wire counter0_out;
  wire counter1_out;
  wire counter2_out;
  wire [31:0]counter_out;
  wire counter_we;
  wire data_ram_we;
  wire [15:0]led_out;
  wire mem_w;
  wire [9:0]ram_addr;
  wire [31:0]ram_data_in;
  wire [31:0]ram_data_out;
  wire rst;

  (* black_box = "1" *) 
  MIO_BUS_0_MIO_BUS inst
       (.BTN(BTN),
        .Cpu_data2bus(Cpu_data2bus),
        .Cpu_data4bus(Cpu_data4bus),
        .GPIOe0000000_we(GPIOe0000000_we),
        .GPIOf0000000_we(GPIOf0000000_we),
        .Peripheral_in(Peripheral_in),
        .SW(SW),
        .addr_bus(addr_bus),
        .clk(clk),
        .counter0_out(counter0_out),
        .counter1_out(counter1_out),
        .counter2_out(counter2_out),
        .counter_out(counter_out),
        .counter_we(counter_we),
        .data_ram_we(data_ram_we),
        .led_out(led_out),
        .mem_w(mem_w),
        .ram_addr(ram_addr),
        .ram_data_in(ram_data_in),
        .ram_data_out(ram_data_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "MIO_BUS" *) 
module MIO_BUS_0_MIO_BUS
   (GPIOe0000000_we,
    GPIOf0000000_we,
    clk,
    counter0_out,
    counter1_out,
    counter2_out,
    counter_we,
    data_ram_we,
    mem_w,
    rst,
    BTN,
    Cpu_data2bus,
    Cpu_data4bus,
    Peripheral_in,
    SW,
    addr_bus,
    counter_out,
    led_out,
    ram_addr,
    ram_data_in,
    ram_data_out);
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

  wire [31:0]Cpu_data2bus;
  wire [31:0]Cpu_data4bus;
  wire \Cpu_data4bus[31]_INST_0_i_1_n_0 ;
  wire \Cpu_data4bus[31]_INST_0_i_2_n_0 ;
  wire \Cpu_data4bus[31]_INST_0_i_3_n_0 ;
  wire GPIOe0000000_we;
  wire GPIOf0000000_we;
  wire [31:0]Peripheral_in;
  wire [15:0]SW;
  wire [31:0]addr_bus;
  wire counter0_out;
  wire counter1_out;
  wire counter2_out;
  wire [31:0]counter_out;
  wire counter_we;
  wire data_ram_we;
  wire [15:0]led_out;
  wire mem_w;
  wire [9:0]ram_addr;
  wire [31:0]ram_data_in;
  wire [31:0]ram_data_out;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[0]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[0]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[0]),
        .I4(SW[0]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[10]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[10]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[10]),
        .I4(SW[10]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[11]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[11]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[11]),
        .I4(SW[11]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[12]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[12]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[12]),
        .I4(SW[12]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[13]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[13]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[13]),
        .I4(SW[13]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[14]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[14]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[14]),
        .I4(SW[14]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[15]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[15]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[15]),
        .I4(SW[15]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[16]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[16]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[16]),
        .I4(led_out[0]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[17]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[17]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[17]),
        .I4(led_out[1]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[18]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[18]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[18]),
        .I4(led_out[2]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[19]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[19]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[19]),
        .I4(led_out[3]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[1]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[1]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[1]),
        .I4(SW[1]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[20]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[20]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[20]),
        .I4(led_out[4]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[21]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[21]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[21]),
        .I4(led_out[5]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[22]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[22]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[22]),
        .I4(led_out[6]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[23]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[23]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[23]),
        .I4(led_out[7]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[24]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[24]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[24]),
        .I4(led_out[8]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[25]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[25]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[25]),
        .I4(led_out[9]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[26]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[26]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[26]),
        .I4(led_out[10]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[27]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[27]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[27]),
        .I4(led_out[11]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[28]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[28]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[28]),
        .I4(led_out[12]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[29]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[29]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[29]),
        .I4(counter2_out),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[2]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[2]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[2]),
        .I4(SW[2]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[30]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[30]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[30]),
        .I4(counter1_out),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[31]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[31]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[31]),
        .I4(counter0_out),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[31]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Cpu_data4bus[31]_INST_0_i_1 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(mem_w),
        .O(\Cpu_data4bus[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000400000004000)) 
    \Cpu_data4bus[31]_INST_0_i_2 
       (.I0(mem_w),
        .I1(addr_bus[30]),
        .I2(addr_bus[29]),
        .I3(addr_bus[31]),
        .I4(addr_bus[28]),
        .I5(addr_bus[2]),
        .O(\Cpu_data4bus[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \Cpu_data4bus[31]_INST_0_i_3 
       (.I0(mem_w),
        .I1(addr_bus[30]),
        .I2(addr_bus[29]),
        .I3(addr_bus[31]),
        .I4(addr_bus[28]),
        .I5(addr_bus[2]),
        .O(\Cpu_data4bus[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[3]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[3]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[3]),
        .I4(SW[3]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[4]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[4]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[4]),
        .I4(SW[4]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[5]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[5]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[5]),
        .I4(SW[5]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[6]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[6]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[6]),
        .I4(SW[6]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[7]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[7]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[7]),
        .I4(SW[7]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[8]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[8]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[8]),
        .I4(SW[8]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Cpu_data4bus[9]_INST_0 
       (.I0(\Cpu_data4bus[31]_INST_0_i_1_n_0 ),
        .I1(ram_data_out[9]),
        .I2(\Cpu_data4bus[31]_INST_0_i_2_n_0 ),
        .I3(counter_out[9]),
        .I4(SW[9]),
        .I5(\Cpu_data4bus[31]_INST_0_i_3_n_0 ),
        .O(Cpu_data4bus[9]));
  LUT5 #(
    .INIT(32'h40000000)) 
    GPIOe0000000_we_INST_0
       (.I0(addr_bus[28]),
        .I1(mem_w),
        .I2(addr_bus[31]),
        .I3(addr_bus[29]),
        .I4(addr_bus[30]),
        .O(GPIOe0000000_we));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    GPIOf0000000_we_INST_0
       (.I0(addr_bus[2]),
        .I1(addr_bus[28]),
        .I2(mem_w),
        .I3(addr_bus[31]),
        .I4(addr_bus[29]),
        .I5(addr_bus[30]),
        .O(GPIOf0000000_we));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[0]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[0]),
        .O(Peripheral_in[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[10]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[10]),
        .O(Peripheral_in[10]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[11]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[11]),
        .O(Peripheral_in[11]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[12]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[12]),
        .O(Peripheral_in[12]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[13]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[13]),
        .O(Peripheral_in[13]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[14]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[14]),
        .O(Peripheral_in[14]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[15]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[15]),
        .O(Peripheral_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[16]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[16]),
        .O(Peripheral_in[16]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[17]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[17]),
        .O(Peripheral_in[17]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[18]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[18]),
        .O(Peripheral_in[18]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[19]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[19]),
        .O(Peripheral_in[19]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[1]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[1]),
        .O(Peripheral_in[1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[20]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[20]),
        .O(Peripheral_in[20]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[21]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[21]),
        .O(Peripheral_in[21]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[22]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[22]),
        .O(Peripheral_in[22]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[23]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[23]),
        .O(Peripheral_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[24]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[24]),
        .O(Peripheral_in[24]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[25]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[25]),
        .O(Peripheral_in[25]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[26]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[26]),
        .O(Peripheral_in[26]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[27]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[27]),
        .O(Peripheral_in[27]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[28]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[28]),
        .O(Peripheral_in[28]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[29]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[29]),
        .O(Peripheral_in[29]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[2]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[2]),
        .O(Peripheral_in[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[30]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[30]),
        .O(Peripheral_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[31]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[31]),
        .O(Peripheral_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[3]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[3]),
        .O(Peripheral_in[3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[4]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[4]),
        .O(Peripheral_in[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[5]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[5]),
        .O(Peripheral_in[5]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[6]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[6]),
        .O(Peripheral_in[6]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[7]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[7]),
        .O(Peripheral_in[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[8]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[8]),
        .O(Peripheral_in[8]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Peripheral_in[9]_INST_0 
       (.I0(addr_bus[31]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(Cpu_data2bus[9]),
        .O(Peripheral_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    counter_we_INST_0
       (.I0(mem_w),
        .I1(addr_bus[2]),
        .I2(addr_bus[28]),
        .I3(addr_bus[31]),
        .I4(addr_bus[29]),
        .I5(addr_bus[30]),
        .O(counter_we));
  LUT5 #(
    .INIT(32'h00010000)) 
    data_ram_we_INST_0
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(mem_w),
        .O(data_ram_we));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[0]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[2]),
        .O(ram_addr[0]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[1]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[3]),
        .O(ram_addr[1]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[2]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[4]),
        .O(ram_addr[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[3]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[5]),
        .O(ram_addr[3]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[4]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[6]),
        .O(ram_addr[4]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[5]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[7]),
        .O(ram_addr[5]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[6]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[8]),
        .O(ram_addr[6]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[7]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[9]),
        .O(ram_addr[7]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[8]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[10]),
        .O(ram_addr[8]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_addr[9]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(addr_bus[11]),
        .O(ram_addr[9]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[0]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[0]),
        .O(ram_data_in[0]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[10]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[10]),
        .O(ram_data_in[10]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[11]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[11]),
        .O(ram_data_in[11]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[12]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[12]),
        .O(ram_data_in[12]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[13]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[13]),
        .O(ram_data_in[13]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[14]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[14]),
        .O(ram_data_in[14]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[15]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[15]),
        .O(ram_data_in[15]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[16]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[16]),
        .O(ram_data_in[16]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[17]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[17]),
        .O(ram_data_in[17]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[18]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[18]),
        .O(ram_data_in[18]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[19]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[19]),
        .O(ram_data_in[19]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[1]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[1]),
        .O(ram_data_in[1]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[20]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[20]),
        .O(ram_data_in[20]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[21]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[21]),
        .O(ram_data_in[21]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[22]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[22]),
        .O(ram_data_in[22]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[23]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[23]),
        .O(ram_data_in[23]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[24]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[24]),
        .O(ram_data_in[24]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[25]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[25]),
        .O(ram_data_in[25]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[26]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[26]),
        .O(ram_data_in[26]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[27]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[27]),
        .O(ram_data_in[27]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[28]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[28]),
        .O(ram_data_in[28]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[29]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[29]),
        .O(ram_data_in[29]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[2]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[2]),
        .O(ram_data_in[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[30]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[30]),
        .O(ram_data_in[30]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[31]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[31]),
        .O(ram_data_in[31]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[3]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[3]),
        .O(ram_data_in[3]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[4]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[4]),
        .O(ram_data_in[4]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[5]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[5]),
        .O(ram_data_in[5]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[6]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[6]),
        .O(ram_data_in[6]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[7]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[7]),
        .O(ram_data_in[7]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[8]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[8]),
        .O(ram_data_in[8]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ram_data_in[9]_INST_0 
       (.I0(addr_bus[28]),
        .I1(addr_bus[29]),
        .I2(addr_bus[30]),
        .I3(addr_bus[31]),
        .I4(Cpu_data2bus[9]),
        .O(ram_data_in[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
