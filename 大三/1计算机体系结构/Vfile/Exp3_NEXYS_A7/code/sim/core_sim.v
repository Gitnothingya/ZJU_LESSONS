`timescale 1ns / 1ps

module core_sim;
    reg clk, rst;
    wire[7:0] sim_uart_char_out;
    wire sim_uart_char_valid;

    wire [31:0] debug_WB_PC;
    
    reg [31:0] wb_pc;


    RV32core core(
        .debug_en(1'b0),
        .debug_step(1'b0),
        .debug_addr(7'b0),
        .debug_data(),
        .sim_uart_char_out(sim_uart_char_out),
        .sim_uart_char_valid(sim_uart_char_valid),
        .clk(clk),
        .rst(rst),
        .interrupter(1'b0),
        .debug_wb_PC(debug_WB_PC)
    );

    integer traceout;
    initial begin
        traceout = $fopen("trace0.out");
        wb_pc = 0;
        clk = 0;
        rst = 1;
        #2 rst = 0;
    end
    always #1 clk = ~clk;
    always@(clk)begin
        if(wb_pc != debug_WB_PC)begin
            // output signal values to file
            $fdisplay(traceout, " WB_PC=0x%8h",debug_WB_PC );
            wb_pc <= debug_WB_PC;
        end
    end
endmodule