`timescale 1ns/1ns
module ASM_tb;
parameter N = 8;
reg clk, stop;
  reg [N-1:0] A;
  reg [N-1:0] B;
  wire [2*N-1:0] AQ;

  ASM dut(clk, stop, A, B, AQ);

initial 
begin
    clk = 0;
    forever #10 clk = !clk;
end
initial
begin
    
    stop = 1;
    #20;
    stop = 0;
    A = 8'b00001001;
    B = 8'b00000010;
    #20;
    stop = 1;
    #20;
    
endmodule
