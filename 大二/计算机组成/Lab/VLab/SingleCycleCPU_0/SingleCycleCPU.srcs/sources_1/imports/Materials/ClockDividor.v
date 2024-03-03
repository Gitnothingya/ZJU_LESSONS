module ClockDividor(
    input clk,
    input rst,
    input step_en,
    input clk_step,
    output reg[31:0] clk_div,
    output clk_cpu
);

    always @(posedge clk or posedge rst) begin
        if (rst) clk_div <= 0;
        else clk_div <= clk_div + 1;
    end
    
    assign clk_cpu = step_en ? clk_step : clk_div[24];
    
endmodule
