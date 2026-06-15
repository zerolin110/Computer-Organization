`timescale 1ns / 1ps

module ALU_TOP(
    input         clk_100M,
    input         rst,
    input         clk_A,
    input         clk_B,
    input         clk_F,
    input  [35:0] SW,
    output reg [35:0] LED
);

// ===================== 异步按键同步 + 上升沿检测 =====================
reg clk_A_sync1, clk_A_sync2;
reg clk_B_sync1, clk_B_sync2;
reg clk_F_sync1, clk_F_sync2;

always @(posedge clk_100M or posedge rst) begin
    if(rst) begin
        clk_A_sync1 <= 0; clk_A_sync2 <= 0;
        clk_B_sync1 <= 0; clk_B_sync2 <= 0;
        clk_F_sync1 <= 0; clk_F_sync2 <= 0;
    end else begin
        clk_A_sync1 <= clk_A; clk_A_sync2 <= clk_A_sync1;
        clk_B_sync1 <= clk_B; clk_B_sync2 <= clk_B_sync1;
        clk_F_sync1 <= clk_F; clk_F_sync2 <= clk_F_sync1;
    end
end

wire en_A = clk_A_sync1 & ~clk_A_sync2;
wire en_B = clk_B_sync1 & ~clk_B_sync2;
wire en_F = clk_F_sync1 & ~clk_F_sync2;

// ===================== 锁存器 =====================
reg [31:0] Data_A;
reg [31:0] Data_B;
reg [3:0]  ALU_OP;

always @(posedge clk_100M or posedge rst) begin
    if(rst)
        Data_A <= 32'd0;
    else if(en_A)
        Data_A <= SW[31:0];
end

always @(posedge clk_100M or posedge rst) begin
    if(rst)
        Data_B <= 32'd0;
    else if(en_B)
        Data_B <= SW[31:0];
end

always @(posedge clk_100M or posedge rst) begin
    if(rst)
        ALU_OP <= 4'd0;
    else if(en_F)
        ALU_OP <= SW[35:32];
end

// ===================== ALU =====================
reg [32:0] temp;
always @(*) begin
    temp = 33'd0;
    case(ALU_OP)
        4'b0000: temp = {1'b0, Data_A} + {1'b0, Data_B};
        4'b1000: temp = {1'b0, Data_A} - {1'b0, Data_B};
        4'b0001: temp = {1'b0, Data_A} << Data_B[4:0];
        4'b0101: temp = {1'b0, Data_A} >> Data_B[4:0];
        4'b1101: temp = $signed(Data_A) >>> Data_B[4:0];
        4'b0100: temp = {1'b0, Data_A ^ Data_B};
        4'b0110: temp = {1'b0, Data_A | Data_B};
        4'b0111: temp = {1'b0, Data_A & Data_B};
        4'b0010: temp = ($signed(Data_A) < $signed(Data_B)) ? 33'd1 : 33'd0;
        4'b0011: temp = (Data_A < Data_B) ? 33'd1 : 33'd0;
        default: temp = 33'd0;
    endcase
end

// ===================== 标志位 =====================
reg [31:0] F;
reg ZF, SF, CF, OF;
reg [3:0] FR;

always @(*) begin
    F = temp[31:0];
    ZF = (F == 32'd0);
    SF = F[31];
    CF = temp[32];
    case(ALU_OP)
        4'b0000: OF = (Data_A[31] == Data_B[31]) && (Data_A[31] != F[31]);
        4'b1000: OF = (Data_A[31] != Data_B[31]) && (Data_A[31] != F[31]);
        default: OF = 1'b0;
    endcase
    FR = {ZF, SF, CF, OF};
end

// ===================== F 按下后，保持显示结果 =====================
reg show_result;

always @(posedge clk_100M or posedge rst) begin
    if(rst)
        show_result <= 1'b0;
    else if(en_A || en_B)
        show_result <= 1'b0;
    else if(en_F)
        show_result <= 1'b1;  // 按F后，一直显示结果
end

// ===================== 最终显示逻辑=====================
always @(posedge clk_100M or posedge rst) begin
    if(rst) begin
        LED <= 36'd0;
    end
    else if(en_A || en_B) begin
        LED <= 36'd0;
    end
    else if(show_result) begin 
        LED[31:0]  <= F;
        LED[35:32] <= FR;
    end
    else begin
        LED <= SW;
    end
end

endmodule