`timescale 1ns / 1ps

module tb_ALU_TOP;

reg clk_100M;
reg rst;
reg clk_A;
reg clk_B;
reg clk_F;
reg [35:0] SW;
wire [35:0] LED;

ALU_TOP uut (
    .clk_100M(clk_100M),
    .rst(rst),
    .clk_A(clk_A),
    .clk_B(clk_B),
    .clk_F(clk_F),
    .SW(SW),
    .LED(LED)
);

initial begin
    clk_100M = 0;
    forever #5 clk_100M = ~clk_100M;
end

task press(inout reg sig);
begin
    #10;
    sig = 1;
    #10;
    sig = 0;
    #10;
end
endtask

initial begin
    rst = 1;
    clk_A = 0; clk_B = 0; clk_F = 0;
    SW = 0;
    #50;
    rst = 0;
    #50;

    // 1 ADD
    SW[31:0] = 32'd5; press(clk_A);
    SW[31:0] = 32'd3; press(clk_B);
    SW[35:32] = 4'b0000; press(clk_F); #30;
    
    // 2 SUB
    SW[31:0] = 32'd5; press(clk_A);
    SW[31:0] = 32'd3; press(clk_B);
    SW[35:32] = 4'b1000; press(clk_F); #30;
    
    // 3 SLL
    SW[31:0] = 32'd1; press(clk_A);
    SW[31:0] = 5'd3; press(clk_B);
    SW[35:32] = 4'b0001; press(clk_F); #30;
    
    // 4 SRL
    SW[31:0] = 32'h80000000; press(clk_A);
    SW[31:0] = 5'd1; press(clk_B);
    SW[35:32] = 4'b0101; press(clk_F); #30;
    
    // 5 SRA
    SW[31:0] = 32'h80000000; press(clk_A);
    SW[31:0] = 5'd1; press(clk_B);
    SW[35:32] = 4'b1101; press(clk_F); #30;
    
    // 6 XOR
    SW[31:0] = 32'b1010; press(clk_A);
    SW[31:0] = 32'b1100; press(clk_B);
    SW[35:32] = 4'b0100; press(clk_F); #30;
    
    // 7 OR
    SW[31:0] = 32'b1010; press(clk_A);
    SW[31:0] = 32'b1100; press(clk_B);
    SW[35:32] = 4'b0110; press(clk_F); #30;
    
    // 8 AND
    SW[31:0] = 32'b1010; press(clk_A);
    SW[31:0] = 32'b1100; press(clk_B);
    SW[35:32] = 4'b0111; press(clk_F); #30;
    
    // 9 SLT
    SW[31:0] = 32'hFFFFFFFF; press(clk_A);
    SW[31:0] = 32'd0; press(clk_B);
    SW[35:32] = 4'b0010; press(clk_F); #30;
    
    // 10 SLTU
    SW[31:0] = 32'hFFFFFFFF; press(clk_A);
    SW[31:0] = 32'd0; press(clk_B);
    SW[35:32] = 4'b0011; press(clk_F); #30;

    #100;
    $stop;
end

endmodule