`include "Defines.vh"

module Top(
    input clk_100mhz,
    input rstn,
    input [15:0] sw_in,
    input [4:0] key_col,
    output [4:0] key_row,
    output hs,
    output vs,
    output [3:0] vga_r,
    output [3:0] vga_g,
    output [3:0] vga_b,
    output [7:0] LED_o
);

    wire rst;
    wire [15:0] sw;
    wire [31:0] clk_div;
    wire [4:0] key_x;
    wire [4:0] key_y;

    ClockDividor clock_dividor(
        .clk(clk_100mhz),
        .rst(rst),
        .step_en(sw[0]),
        .clk_step(key_x[0]),
        .clk_div(clk_div),
        .clk_cpu(clk_cpu)
    );

    InputAntiJitter inputter(
        .clk(clk_100mhz),
        .rstn(rstn),
        .key_col(key_col),
        .sw_in(sw_in),
        .rst(rst),
        .key_row(key_row),
        .key_x(key_x),
        .key_y(key_y),
        .sw(sw)
    );
    
    //between Core and MACtrl
    wire [31:0] imem_addr;
    wire [31:0] imem_o_data;

    wire [31:0] dmem_addr;
    wire [31:0] dmem_o_data;
    wire [31:0] dmem_i_data;
    wire dmem_wen;

    //between MACtrl and DR1
    wire dr1_wen;
    wire [31:0] dr1_o_data;
    wire [31:0] dr1_i_data;   

    //MACtrl wire, between Mem and MACtrl
    //facing IMem
    wire[31:0] MAC_imem_data;
    wire[31:0] MAC_imem_addr;
    //facing DMem
    wire MAC_dmem_wen;
    wire[31:0] MAC_dmem_addr;
    wire[31:0] MAC_dmem_rdata;
    wire[31:0] MAC_dmem_wdata;

    `VGA_DBG_Core_Declaration
    `VGA_DBG_RegFile_Declaration

    Core core(
        `VGA_DBG_Core_Arguments
        .clk(clk_cpu),
        .rst(rst),
        .imem_addr(imem_addr),
        .inst(imem_o_data),
        .dmem_addr(dmem_addr),
        .dmem_o_data(dmem_o_data),
        .dmem_i_data(dmem_i_data),
        .dmem_wen(dmem_wen)
    );


    MACtrl memacc(
        //facing core
        .i_iaddr(imem_addr),
        .o_idata(imem_o_data),
        .i_dwen(dmem_wen),
        .i_daddr(dmem_addr),
        .i_d_idata(dmem_i_data),
        .o_d_odata(dmem_o_data),
        //facing IMem
        .o_iaddr(MAC_imem_addr),
        .i_idata(MAC_imem_data),
        //facing DMem
        .o_dwen(MAC_dmem_wen),
        .o_daddr(MAC_dmem_addr),
        .o_d_idata(MAC_dmem_wdata),
        .i_d_odata(MAC_dmem_rdata),
        //facing DR1
        .o_dr1wen(dr1_wen),
        .o_dr1_idata(dr1_i_data),
        .i_dr1_odata(dr1_o_data)
    );

    Mem mem(
        .i_addr(MAC_imem_addr),
        .i_data(MAC_imem_data),
        .clk(~clk_100mhz),
        .d_wen(MAC_dmem_wen),
        .d_addr(MAC_dmem_addr),
        .d_i_data(MAC_dmem_wdata),
        .d_o_data(MAC_dmem_rdata)
    );

    VGA vga(
        `VGA_DBG_VgaDebugger_Arguments
        .rst(rst),
        .clk_div(clk_div),
        .hs(hs),
        .vs(vs),
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b)
    );
 
    //assign dr1_wen=0;
    LEDCtrl dr1(
    .clk(~clk_100mhz),
    .wen(dr1_wen),
    .i_data(dr1_i_data),
    .o_data(dr1_o_data),
    .o_led_ctrl(LED_o)
    );

endmodule