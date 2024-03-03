`timescale 1ns / 1ps

module BranchPredictUnit(
    input clk, rst,

    input [7:0] PC_IF,
    output reg [7:0] PC_pre_IF,
    output reg taken_IF,

    input Branch_ctrl_ID,
    input [7:0] PC_ID,
    input [7:0] jump_PC_ID,
    output reg refetch
);


    reg [11:0] BranchPredictor[6:0];

    wire [5:0] index_IF = PC_IF[5:0];
    wire [1:0] tag_IF = PC_IF[7:6];
    wire [5:0] index_ID = PC_ID[5:0];
    wire [1:0] tag_ID = PC_ID[7:6];

    reg taken_ID;

    // 初始化置0
    integer i;
    always@(posedge clk or posedge rst ) begin
        if(rst) begin
            for(i=0; i < 64; i = i+1) begin
                BranchPredictor[i] = 12'h000;
            end
            taken_IF = 0;
            PC_pre_IF = 8'h00;

            taken_ID = 0;
            // PC_to_refetch = 8'h00;
            refetch = 0;
        end
        else begin
            taken_ID = taken_IF;
        end
    end

    //IF阶段逻辑
    always @(*) begin
        if(BranchPredictor[index_IF][11:10] == tag_IF[1:0]) begin
            PC_pre_IF[7:0] <= BranchPredictor[index_ID][7:0];
            taken_IF  <= BranchPredictor[index_IF][9];
        end
        else begin
            PC_pre_IF[7:0] <= 8'h00;
            taken_IF       <=0;
        end

        refetch = taken_ID^Branch_ctrl_ID;
    end
    //ID阶段,BHT,BTB更新
    always @(*) begin
        if(Branch_ctrl_ID) begin //确实跳转
            if(BranchPredictor[index_ID][11:10] == tag_ID) begin //存在记录
                BranchPredictor[index_ID][9:8] = {BranchPredictor[index_ID][8], 1'b1};
            end
            else begin //记录不存在
                BranchPredictor[index_ID][11:10] <= tag_ID;
                BranchPredictor[index_ID][9:8]   <= 2'b01;
                BranchPredictor[index_ID][7:0]   <=jump_PC_ID;
            end
        end
        else begin
            if(BranchPredictor[index_ID][11:10] == tag_ID) begin //记录存在
                BranchPredictor[index_ID][9:8] ={{BranchPredictor[index_ID][9] & BranchPredictor[index_ID][8]}, 1'b0};
            end 
            else begin //记录不存在
                BranchPredictor[index_ID][11:10] <= tag_ID;
                BranchPredictor[index_ID][9:8]   <= 2'b00;
                BranchPredictor[index_ID][7:0]   <=jump_PC_ID;
            end
        end
    end
endmodule