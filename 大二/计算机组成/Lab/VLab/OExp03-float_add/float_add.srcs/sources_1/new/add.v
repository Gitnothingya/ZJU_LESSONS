`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 17:03:13
// Design Name: 
// Module Name: float_add
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

module float_add(
	input clk, 
	input rst,
    input en,			// en = 1, begin
	input [31:0] A,
	input [31:0] B,
	input [1:0] c,
	output reg [31:0] result,
	output reg fin		// fin = 1 when finish
    );

    reg sign;
    reg [7:0] exponent;
    reg [26:0] man;
    reg [26:0] man1; //A的尾数
    reg [26:0] man2; //B的尾数
    reg [8:0] delta_Exp;
    reg calculate;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            calculate <= 0;
            result <= 0;
            fin <= 0;
        end
        else begin
            if( en ) begin //en拔高就可以算，如果前一次已经算完了，再去算下一次
                if( fin || !calculate ) begin //开始对阶
                    man1 = {1'b0, 1'b1, A[22:0], 2'b0};
                    man2 = {1'b0, 1'b1, B[22:0], 2'b0};
                    delta_Exp = 0;
                    delta_Exp = {1'b0, A[30:23]} - {1'b0, B[30:23]};
                    if( delta_Exp[8] == 1 ) begin //expA < expB,A尾数右移
                        delta_Exp ={1'b0, B[30:23]} - {1'b0, A[30:23]};
                        man1 = man1 >> delta_Exp;
                        exponent = B[30:23];
                    end
                    else if( delta_Exp > 0 ) begin //B尾数右移
                        man2 = man2 >> delta_Exp;
                        exponent = A[30:23];
                    end
                    else begin
                        exponent = A[30:23];
                    end
                    //尾数求和
                    //先判断符号位
                    if( A[31] == B[31] ) begin
                        sign = A[31];
                        man = man1 + man2;
                    end
                    else if( man1 > man2 ) begin
                        sign = A[31];
                        man = man1 - man2;
                    end
                    else begin
                        sign = B[31];
                        man = man2 - man1;
                    end
                    fin = 0;
                    calculate = 1;
					if(A[31]!=B[31]&&man1==man2) begin
						fin=1;
						calculate=0;
						result = 0;
					end
                end
            end
            if( calculate ) begin //规格化检查，每个时钟周期移动一位
                if( man[26] ) begin //右移，指数+1
                    man = man >> 1;
                    exponent = exponent + 1;
                end
                else if( man[25] == 0 ) begin //左移，指数-1
                    man = man << 1;
                    exponent = exponent - 1;
                end
                else begin //已经规格化，开始舍入
                    if( man[1:0] > 2'b10 || ( man[1:0] == 2'b10 && man[2] ) ) begin //舍入
                        man[1:0] = 0;
                        man[26:2] = man[26:2] + 1;
                    end
                    else begin //截断，不舍入，结束
                        result = {sign, exponent, man[24:2]};
                        calculate = 0;
                        fin = 1;
                    end
                end
            end
        end
    end
    
endmodule