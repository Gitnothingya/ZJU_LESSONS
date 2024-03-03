module InputAntiJitter(
    input  clk,
    input  rstn,
    input [4:0] key_col,
    input [15:0] sw_in,
    output rst,
    output reg[4:0] key_row,
    output reg[4:0] key_x,
    output reg[4:0] key_y,
    output reg[15:0] sw
    );
    
    initial begin
        key_row <= 5'b0;
        key_x <= 5'b0;
        key_y <= 5'b0;
        sw <= 15'b0;
    end
    
    wire[4:0] key_col_in = ~key_col;
    
    assign rst = ~rstn;
    
    reg[15:0] sw_temp = 16'b0;
    reg[31:0] sw_counter = 32'b0;
    always @(posedge clk) begin
        sw_temp <= sw_in;
        if (sw_in != sw_temp) begin
            sw_counter <= 32'b0;
        end else if (sw_counter < 32'd1000000) begin
            sw_counter <= sw_counter + 1;
        end else begin
            sw <= sw_in;
        end
    end
    
    reg[4:0] key_temp1 = 5'b0;
    reg[4:0] key_temp2 = 5'b0;
    reg[4:0] key_y_temp = 5'b0;
    reg[31:0] key_counter = 32'b0;
    always @(posedge clk) begin
        key_temp1 <= key_col_in;
        if (key_row == 5'b0) begin
            if (key_temp1 != key_col_in) begin
                key_counter <= 32'b0;
                key_y_temp <= 5'b0;
                key_temp2 <= 5'b0;
            end else if (key_counter < 32'd2000000) begin
                key_counter <= key_counter + 1;
            end else begin
                key_temp2 <= key_col_in;
                key_row <= (key_col_in != 5'b00000 ? 5'b11110 : 5'b11111);
            end
        end else if (key_row == 5'b11110) begin
            if (key_col_in == key_temp2) begin
                key_y_temp <= 5'b00001;
                key_row <= 5'b11111;
            end else begin
                key_row <= 5'b11101;
            end
        end else if (key_row == 5'b11101) begin
            if (key_col_in == key_temp2) begin
                key_y_temp <= 5'b00010;
                key_row <= 5'b11111;
            end else begin
                key_row <= 5'b11011;
            end
        end else if (key_row == 5'b11011) begin
            if (key_col_in == key_temp2) begin
                key_y_temp <= 5'b00100;
                key_row <= 5'b11111;
            end else begin
                key_row <= 5'b10111;
            end
        end else if (key_row == 5'b10111) begin
            if (key_col_in == key_temp2) begin
                key_y_temp <= 5'b01000;
                key_row <= 5'b11111;
            end else begin
                key_row <= 5'b01111;
            end
        end else if (key_row == 5'b01111) begin
            if (key_col_in == key_temp2) begin
                key_y_temp <= 5'b10000;
            end else begin
                key_y_temp <= 5'b00000;
            end
            key_row <= 5'b11111;
        end else if (key_row == 5'b11111) begin
            key_x <= key_temp2;
            key_y <= key_y_temp;
            key_row <= 5'b00000;
        end else begin
            key_x <= 5'b0;
            key_y <= 5'b0;
            key_row <= 5'b0;
        end
    end
    
endmodule
