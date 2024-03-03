`timescale 1ns / 1ps

module core_sim;
    reg clk, rst, clkfast;
    wire [31:0] debug_data;
    wire [31:0] wb_pc;
    wire [31:0] wb_inst;
    wire [4:0] uart_debug_reg;


    RV32core core(
        .debug_en(1'b0),
        .debug_step(1'b0),
        .debug_addr(0),
        .debug_data(debug_data),
        .clk(clk),
        .rst(rst),
        .wb_pc(wb_pc),
        .wb_inst(wb_inst),
        .interrupter(1'b0)
    );

    initial begin
        clk = 0;
        clkfast = 0;
        rst = 1;
        #2 rst = 0;
    end
    always #1 clk = ~clk;
    always #1 clkfast = ~clkfast;

endmodule