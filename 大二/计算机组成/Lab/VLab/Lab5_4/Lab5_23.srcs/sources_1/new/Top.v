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

wire [31:0] PC_out_IF;
wire [31:0] inst_out_IF     ;
wire [31:0] PC_out_ID       ;
wire [31:0] inst_ID         ;
wire [31:0] PC_out_EX       ;
wire [31:0] inst_Ex         ;
wire [4:0]  Rd_Ex           ;
wire [4:0]  Rs1_Ex          ;
wire [4:0]  Rs2_Ex          ;
wire [31:0] Rs1_val_Ex      ;
wire [31:0] Rs2_val_Ex      ;
wire reg_wen_Ex      ;
wire is_imm          ;
wire [31:0] imm             ;
wire is_branch       ;
wire is_jal          ;
wire is_jalr         ;
wire is_auipc        ;
wire is_lui          ;
wire MemRW_Ex        ;
wire MemRW_Mem       ;
wire [31:0] PC_out_Mem      ;
wire [31:0] inst_Mem   ;
wire [4:0]  Rd_Mem     ;
wire        reg_wen_Mem;
wire [31:0] mem_i_data ;
wire [31:0] alu_res    ;
wire [2:0]  Store_T ;
wire [31:0] PC_out_WB  ;
wire [31:0] inst_out_WB;
wire [31:0] Data_out_WB;
wire [4:0]  Rd_WB      ;
wire reg_wen_WB      ;
wire [31:0] x0;
wire [31:0] x1;
wire [31:0] x2;
wire [31:0] x3;
wire [31:0] x4;
wire [31:0] x5;
wire [31:0] x6;
wire [31:0] x7;
wire [31:0] x8;
wire [31:0] x9;
wire [31:0] x10;
wire [31:0] x11;
wire [31:0] x12;
wire [31:0] x13;
wire [31:0] x14;
wire [31:0] x15;
wire [31:0] x16;
wire [31:0] x17;
wire [31:0] x18;
wire [31:0] x19;
wire [31:0] x20;
wire [31:0] x21;
wire [31:0] x22;
wire [31:0] x23;
wire [31:0] x24;
wire [31:0] x25;
wire [31:0] x26;
wire [31:0] x27;
wire [31:0] x28;
wire [31:0] x29;
wire [31:0] x30;
wire [31:0] x31;

    rom_d U2(
        .a(PC_out_IF[11:2]),
        .spo(spo)
    );
    wire [31:0] out;//store÷∏¡Ó
    wire [3:0] wea;
    wire en_IF;
    wire en_IFID;
    ram_b U3(
        .clka(fclk_100mhz),
        .wea(wea),
        .addra(ram_addr),
        .dina(out),
        .douta(douta)
    );

    Store_ctrl Store_we(
        .Stype(Store_T),
        .data_ram_we(data_ram_we),
        .source_addr(Addr_out),
        .data_in(ram_data_in),
        .data_out(out),
        .wea(wea)
    );

CPUT  U1 (
    .clk                     ( Clk_CPU             ),
    .rst                     ( rst                 ),
    .Data_in                 ( Cpu_data4bus        ),
    .inst_IF                 ( spo                 ),

    .PC_out_IF               ( PC_out_IF     ),
    .inst_out_IF             ( inst_out_IF   ),
    .PC_out_ID               ( PC_out_ID     ),
    .inst_ID                 ( inst_ID       ),
    .PC_out_EX               ( PC_out_EX     ),
    .inst_Ex                 ( inst_Ex       ),
    .Rd_Ex                   ( Rd_Ex         ),
    .Rs1_Ex                  ( Rs1_Ex        ),
    .Rs2_Ex                  ( Rs2_Ex        ),
    .Rs1_val_Ex              ( Rs1_val_Ex    ),
    .Rs2_val_Ex              ( Rs2_val_Ex    ),
    .reg_wen_Ex              ( reg_wen_Ex    ),
    .is_imm                  ( is_imm        ),
    .imm                     ( imm           ),
    .is_branch               ( is_branch           ),
    .is_jal                  ( is_jal              ),
    .is_jalr                 ( is_jalr             ),
    .is_auipc                ( is_auipc            ),
    .is_lui                  ( is_lui              ),
    .MemRW_Ex                ( MemRW_Ex            ),
    .MemRW_Mem               ( MemRW_Mem           ),
    .PC_out_Mem              ( PC_out_Mem          ),
    .Addr_out                ( Addr_out      ),//
    .Data_out                ( Data_out      ),//
    .inst_Mem                ( inst_Mem      ),
    .Rd_Mem                  ( Rd_Mem        ),
    .reg_wen_Mem             ( reg_wen_Mem   ),
    .mem_i_data              ( mem_i_data    ),
    .alu_res                 ( alu_res       ),
    .Store_T                 (Store_T),
    .PC_out_WB               ( PC_out_WB     ),
    .inst_out_WB             ( inst_out_WB   ),
    .Data_out_WB             ( Data_out_WB   ),
    .Rd_WB                   ( Rd_WB         ),
    .reg_wen_WB              ( reg_wen_WB    ),

    .en_IF                   (en_IF),
    .en_IFID                 (en_IFID),
    .x0                      ( x0            ),
    .x1                      ( x1            ),
    .x2                      ( x2            ),
    .x3                      ( x3            ),
    .x4                      ( x4            ),
    .x5                      ( x5            ),
    .x6                      ( x6            ),
    .x7                      ( x7            ),
    .x8                      ( x8            ),
    .x9                      ( x9            ),
    .x10                     ( x10           ),
    .x11                     ( x11           ),
    .x12                     ( x12           ),
    .x13                     ( x13           ),
    .x14                     ( x14           ),
    .x15                     ( x15           ),
    .x16                     ( x16           ),
    .x17                     ( x17           ),
    .x18                     ( x18           ),
    .x19                     ( x19           ),
    .x20                     ( x20           ),
    .x21                     ( x21           ),
    .x22                     ( x22           ),
    .x23                     ( x23           ),
    .x24                     ( x24           ),
    .x25                     ( x25           ),
    .x26                     ( x26           ),
    .x27                     ( x27           ),
    .x28                     ( x28           ),
    .x29                     ( x29           ),
    .x30                     ( x30           ),
    .x31                     ( x31           )
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
        .mem_w(MemRW_Mem),
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
        .data1({2'b0,PC_out_IF[31:2]}),
        .data2(spo),
        .data3(counter_out),
        .data4(Addr_out),
        .data5(Data_out),
        .data6(Cpu_data4bus),
        .data7(PC_out_IF),
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
    .PC_IF              ( PC_out_IF     ),
    .inst_IF            ( inst_out_IF   ),
    .PC_ID              ( PC_out_ID     ),
    .inst_ID            ( inst_ID       ),
    .PC_Ex              ( PC_out_EX     ),
    .MemRW_Ex           ( MemRW_Ex      ),
    .MemRW_Mem          ( MemRW_Mem     ),
    .Data_out           ( Data_out      ),
    .Addr_out           ( Addr_out      ),
    .Data_out_WB        ( Data_out_WB   ),
    .IfId_valid         ( en_IF),
    .IdEx_inst          ( inst_Ex       ),
    .IdEx_valid         ( en_IFID),
    .IdEx_rd            ( Rd_Ex         ),
    .IdEx_rs1           ( 0),
    .IdEx_rs2           ( 0),
    .IdEx_rs1_val       ( Rs1_val_Ex    ),
    .IdEx_rs2_val       ( Rs2_val_Ex    ),
    .IdEx_reg_wen       ( reg_wen_Ex    ),
    .IdEx_is_imm        ( is_imm        ),
    .IdEx_imm           ( imm           ),
    .IdEx_mem_ren       ( MemRW_Ex      ),
    .IdEx_is_branch     ( is_branch     ),
    .IdEx_is_jal        ( is_jal        ),
    .IdEx_is_jalr       ( is_jalr       ),
    .IdEx_is_auipc      ( is_auipc      ),
    .IdEx_is_lui        ( is_lui        ),
    .IdEx_alu_ctrl      ( 0),
    .IdEx_cmp_ctrl      ( 0),
    .ExMa_pc            ( PC_out_Mem    ),
    .ExMa_inst          ( inst_Mem      ),
    .ExMa_valid         ( 1),
    .ExMa_rd            ( Rd_Mem        ),
    .ExMa_reg_wen       ( reg_wen_Mem   ),
    .ExMa_mem_ren       ( MemRW_Mem     ),
    .ExMa_is_jal        ( 0),
    .ExMa_is_jalr       ( 0),
    .MaWb_pc            ( PC_out_WB     ),
    .MaWb_inst          ( inst_out_WB   ),
    .MaWb_valid         ( 1),
    .MaWb_rd            ( Rd_WB         ),
    .MaWb_reg_wen       ( reg_wen_WB    ),
    .x0(x0 ),
    .ra(x1 ),
    .sp(x2 ),
    .gp(x3 ),
    .tp(x4 ),
    .t0(x5 ),
    .t1(x6 ),
    .t2(x7 ),
    .s0(x8 ),
    .s1(x9 ),
    .a0(x10),
    .a1(x11),
    .a2(x12),
    .a3(x13),
    .a4(x14),
    .a5(x15),
    .a6(x16),
    .a7(x17),
    .s2(x18),
    .s3(x19),
    .s4(x20),
    .s5(x21),
    .s6(x22),
    .s7(x23),
    .s8(x24),
    .s9(x25),
    .s10(x26),
    .s11(x27),
    .t3(x28),
    .t4(x29),
    .t5(x30),
    .t6(x31),

    .hs                      (HSYNC ),
    .vs                      (VSYNC ),
    .vga_r                   (Red ),
    .vga_g                   (Green ),
    .vga_b                   (Blue )
    );




endmodule
