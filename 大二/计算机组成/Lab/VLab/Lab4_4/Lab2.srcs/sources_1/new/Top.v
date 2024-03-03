`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/17 16:41:06
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
    input [3:0] BTN_y,
    input RSTN,
    input [15:0] SW,
    input clk_100mhz,

    output [4:0] BTN_x,
    output HSYNC,
    output VSYNC,
    output [3:0] Red,
    output [3:0] Green,
    output [3:0] Blue,
    output led_clk,
    output led_sout,
    output led_clrn,
    output LED_PEN,
    output seg_clk,
    output seg_clrn,
    output SEG_PEN,
    output wire seg_sout
    );
    wire fclk_100mhz=~clk_100mhz;

    wire rst;
    wire [3:0] BTN_OK;
    wire [15:0] SW_OK;

    wire [31:0] clkdiv;
    wire Clk_CPU;
    wire FClk_CPU = ~ Clk_CPU;

    wire counter0_OUT;
    wire counter1_OUT;
    wire counter2_OUT;
    wire [31:0] counter_out;

    wire [1:0]counter_set;
    wire [15:0] LED_out;

    wire CPU_MIO;
    wire MemRW;
    wire [31:0] Addr_out;
    wire [31:0] Data_out;
    wire [31:0] PC_out;//SCPU

    wire [31:0] Cpu_data4bus;
    wire GPIOe0000000_we;
    wire GPIOf0000000_we;
    wire [31:0] Peripheral_in;
    wire counter_we;
    wire data_ram_we;
    wire [9:0] ram_addr;
    wire [31:0] ram_data_in;//MIO_BUS

    wire [7:0] point_out;
    wire [7:0] LE_out;
    wire [31:0] Disp_num;

    wire [31:0] douta;

    wire [31:0] spo;

    wire [3:0] BTN_yo;

    wire [31:0] pbd_clkdiv;

wire INT;
assign INT = &{SW_OK[4:3],SW_OK[1]};



    clk_div_0   Uclk(
        .clk(clk_100mhz),
        .rst(rst),
        .SW2(),
        .SW8(),
        .STEP(),
        .clkdiv(pbd_clkdiv),
        .Clk_CPU()
    );
    pbdebounce  p1(.clk_1ms(pbd_clkdiv[17]),.button(BTN_y[0]),.pbreg(BTN_yo[0])),
                p2(.clk_1ms(pbd_clkdiv[17]),.button(BTN_y[1]),.pbreg(BTN_yo[1])),
                p3(.clk_1ms(pbd_clkdiv[17]),.button(BTN_y[2]),.pbreg(BTN_yo[2])),
                p4(.clk_1ms(pbd_clkdiv[17]),.button(BTN_y[3]),.pbreg(BTN_yo[3]));


    SAnti_jitter_0  U9(
        .clk(clk_100mhz),
        .RSTN(RSTN),
        .readn(),
        .Key_y(BTN_yo),
        .SW(SW),
        .Key_x(BTN_x),
        .Key_out(),
        .Key_ready(),
        .pulse_out(),
        .BTN_OK(BTN_OK),
        .SW_OK(SW_OK),
        .CR(),
        .rst(rst)
    );
    clk_div_0       U8(
        .clk(clk_100mhz),
        .rst(rst),
        .SW2(SW_OK[2]),
        .SW8(SW_OK[8]),
        .STEP(BTN_OK[0]),
        .clkdiv(clkdiv),
        .Clk_CPU(Clk_CPU)
    );

    wire [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;
    wire [31:0] x11,x12,x13,x14,x15,x16,x17,x18,x19,x20;
    wire [31:0] x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31;
    wire [4:0] rs1,rs2,rd;
    wire reg_wen,is_imm,is_branch,is_jal;
    wire [31:0] Imm_out,pc_branch,a_val,b_val;
    wire [3:0] wea;

    wire [31:0] mcause,mstatus,mepc,mtval,mtvec,mip;

    rom_d U2(
        .a(PC_out[11:2]),
        .spo(spo)
    );
    wire [31:0] out;//store÷∏¡Ó
    ram_b U3(
        .clka(fclk_100mhz),
        .wea(wea),
        .addra(ram_addr),
        .dina(out),
        .douta(douta)
    );
    Store_ctrl Store_we(
        .Stype(spo[14:12]),
        .data_ram_we(data_ram_we),
        .source_addr(Addr_out),
        .data_in(ram_data_in),
        .data_out(out),
        .wea(wea)
    );

    CPUT U1(
        .MIO_ready(),
        .clk(Clk_CPU),
        .rst(rst),
        .Data_in(Cpu_data4bus),
        .inst_in(spo),
        .INT(INT),
        .CPU_MIO(),
        .MemRW(MemRW),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .PC_out(PC_out),
        .x0(x0),
                   .x1(x1),
                   .x2(x2),
                   .x3(x3),
                   .x4(x4),
                   .x5(x5),
                   .x6(x6),
                   .x7(x7),
                   .x8(x8),
                   .x9(x9),
                   .x10(x10),
                   .x11(x11),
                   .x12(x12),
                   .x13(x13),
                   .x14(x14),
                   .x15(x15),
                   .x16(x16),
                   .x17(x17),
                   .x18(x18),
                   .x19(x19),
                   .x20(x20),
                   .x21(x21),
                   .x22(x22),
                   .x23(x23),
                   .x24(x24),
                   .x25(x25),
                   .x26(x26),
                   .x27(x27),
                   .x28(x28),
                   .x29(x29),
                   .x30(x30),
                   .x31(x31),
                   .Imm_out(Imm_out),
                   .pc_branch(pc_branch),
                   .a_val(a_val),
                   .b_val(b_val),
                   .reg_wen(reg_wen),
                   .is_imm(is_imm),
                   .is_branch(is_branch),
                   .is_jal(is_jal),
                   .rs1(rs1),
                   .rs2(rs2),
                   .rd(rd),
                   .mstatus(mstatus),
                   .mcause(mcause),
                   .mepc(mepc),
                   .mtval(mtval),
                   .mtvec(mtvec),
                   .mip(mip)
    );
    Counter_x_0 U10(
        .clk(FClk_CPU),
        .rst(rst),
        .clk0(clkdiv[6]),
        .clk1(clkdiv[9]),
        .clk2(clkdiv[11]),
        .counter_we(counter_we),
        .counter_val(Peripheral_in),
        .counter_ch(counter_set),
        .counter0_OUT(counter0_OUT),
        .counter1_OUT(counter1_OUT),
        .counter2_OUT(counter2_OUT),
        .counter_out(counter_out)
    );
    MIO_BUS_0 U4(
        .clk(clk_100mhz),
        .counter0_out(counter0_OUT),
        .counter1_out(counter1_OUT),
        .counter2_out(counter2_OUT),
        .mem_w(MemRW),
        .rst(rst),
        .BTN({BTN_OK}),
        .Cpu_data2bus(Data_out),
        .SW(SW_OK),
        .addr_bus(Addr_out),
        .counter_out(counter_out),
        .led_out(LED_out),
        .ram_data_out(douta),
        .GPIOe0000000_we(GPIOe0000000_we),
        .GPIOf0000000_we(GPIOf0000000_we),
        .counter_we(counter_we),
        .data_ram_we(data_ram_we),
        .Cpu_data4bus(Cpu_data4bus),
        .Peripheral_in(Peripheral_in),
        .ram_addr(ram_addr),
        .ram_data_in(ram_data_in)
    );
    SPIO_0 U7(
        .clk(fclk_100mhz),
        .rst(rst),
        .Start(clkdiv[20]),
        .EN(GPIOf0000000_we),
        .P_Data(Peripheral_in),
        .counter_set(counter_set),
        .LED_out(LED_out),
        .led_clk(led_clk),
        .led_sout(led_sout),
        .led_clrn(led_clrn),
        .LED_PEN(LED_PEN),
        .GPIOf0()
    );

    Multi_8CH32_0 U5(
        .clk(FClk_CPU),
        .rst(rst),
        .EN(GPIOe0000000_we),
        .Test(SW_OK[7:5]),
        .point_in({clkdiv[31:0],clkdiv[31:0]}),
        .LES(64'b0),
        .Data0(Peripheral_in),
        .data1({2'b0,PC_out[31:2]}),
        .data2(spo),
        .data3(counter_out),
        .data4(Addr_out),
        .data5(Data_out),
        .data6(Cpu_data4bus),
        .data7(PC_out),
        .point_out(point_out),
        .LE_out(LE_out),
        .Disp_num(Disp_num)
    );
    SSeg7_Dev_0 U6(
         .clk                     (clk_100mhz ),      
        .flash                   (clkdiv[25] ),      
        .Hexs                    (Disp_num ),      
        .LES                     (LE_out ),      
        .point                   (point_out ),      
        .rst                     (rst ),
        .Start                   (clkdiv[20] ),
        .SW0                     (SW_OK[0] ),
        .seg_clk                 (seg_clk ),
        .seg_clrn                (seg_clrn ),
        .SEG_PEN                 (SEG_PEN ),
        .seg_sout                (seg_sout )
        
    );
    VGA_0 U11(
         .clk_25m                 (clkdiv[1] ),
    .clk_100m                (clk_100mhz ),
    .rst                     (rst ),
    .pc                      (PC_out ),
    .inst                    (spo ),
    .alu_res                 (Addr_out ),
    .mem_wen                 (MemRW ),
    .dmem_o_data             (douta ),
    .dmem_i_data             (ram_data_in ),
    .dmem_addr               (Addr_out ),
    .rs1                     (rs1 ),
    .rs1_val                 (0 ),
    .rs2                     (rs2 ),
    .rs2_val                 (0 ),
    .rd                      (rd ),
    .reg_i_data              (Peripheral_in ),
    .reg_wen                 (reg_wen ),
    .is_imm                  (is_imm ),
    .is_auipc                (0 ),
    .is_lui                  (0 ),
    .imm                     (Imm_out ),
    .a_val                   (a_val ),
    .b_val                   (b_val ),
    .alu_ctrl                (0 ),
    .cmp_ctrl                (0 ),
    .cmp_res                 (0 ),
    .is_branch               (is_branch ),
    .is_jal                  (is_jal ),
    .is_jalr                 (0 ),
    .do_branch               (0 ),
    .pc_branch               (pc_branch ),
    .mem_ren                 (data_ram_we ),
    .csr_wen                 (0 ),
    .csr_ind                 (0 ),
    .csr_ctrl                (0 ),
    .csr_r_data              (0 ),
    .x0                      (x0),
    .ra                      (x1),
    .sp                      (x2),
    .gp                      (x3 ),
    .tp                      (x4 ),
    .t0                      (x5 ),
    .t1                      (x6 ),
    .t2                      (x7 ),
    .s0                      (x8 ),
    .s1                      (x9 ),
    .a0                      (x10 ),
    .a1                      (x11 ),
    .a2                      (x12 ),
    .a3                      (x13 ),
    .a4                      (x14 ),
    .a5                      (x15 ),
    .a6                      (x16 ),
    .a7                      (x17 ),
    .s2                      (x18 ),
    .s3                      (x19 ),
    .s4                      (x20 ),
    .s5                      (x21 ),
    .s6                      (x22 ),
    .s7                      (x23 ),
    .s8                      (x24 ),
    .s9                      (x25 ),
    .s10                     (x26 ),
    .s11                     (x27 ),
    .t3                      (x28 ),
    .t4                      (x29 ),
    .t5                      (x30 ),
    .t6                      (x31 ),
    .mstatus_o               (mstatus ),
    .mcause_o                (mcause ),
    .mepc_o                  (mepc ),
    .mtval_o                 (mtval ),
    .mtvec_o                 (mtvec ),
    .mie_o                   (0 ),
    .mip_o                   (mip ),

    .hs                      (HSYNC ),
    .vs                      (VSYNC ),
    .vga_r                   (Red ),
    .vga_g                   (Green ),
    .vga_b                   (Blue )
    );




endmodule
