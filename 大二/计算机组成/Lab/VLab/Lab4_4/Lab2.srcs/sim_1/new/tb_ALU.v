`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/09 10:13:01
// Design Name: 
// Module Name: tb_ALU
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

module tb_Top;

// Top Parameters
parameter PERIOD  = 10;


// Top Inputs
reg   [3:0]  BTN_y                         = 0 ;
reg   RSTN                                 = 0 ;
reg   [15:0]  SW                           = 0 ;
reg   clk_100mhz                           = 0 ;

// Top Outputs
wire  [4:0]  BTN_x                         ;    
wire  HSYNC                                ;
wire  VSYNC                                ;
wire  [3:0]  Red                           ;
wire  [3:0]  Green                         ;
wire  [3:0]  Blue                          ;
wire  led_clk                              ;
wire  led_sout                             ;
wire  led_clrn                             ;
wire  LED_PEN                              ;
wire  seg_clk                              ;
wire  seg_clrn                             ;
wire  SEG_PEN                              ;
wire  seg_sout                             ;


initial
begin
    RSTN = 0;
end

always #10 clk_100mhz = ~clk_100mhz;
Top  u_Top (
    .BTN_y                   ( BTN_y       [3:0]  ),
    .RSTN                    ( RSTN               ),
    .SW                      ( SW          [15:0] ),
    .clk_100mhz              ( clk_100mhz         ),

    .BTN_x                   ( BTN_x       [4:0]  ),
    .HSYNC                   ( HSYNC              ),
    .VSYNC                   ( VSYNC              ),
    .Red                     ( Red         [3:0]  ),
    .Green                   ( Green       [3:0]  ),
    .Blue                    ( Blue        [3:0]  ),
    .led_clk                 ( led_clk            ),
    .led_sout                ( led_sout           ),
    .led_clrn                ( led_clrn           ),
    .LED_PEN                 ( LED_PEN            ),
    .seg_clk                 ( seg_clk            ),
    .seg_clrn                ( seg_clrn           ),
    .SEG_PEN                 ( SEG_PEN            ),
    .seg_sout                ( seg_sout           )
);

endmodule