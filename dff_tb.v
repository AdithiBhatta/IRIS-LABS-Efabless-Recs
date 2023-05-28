`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 11:25:46
// Design Name: 
// Module Name: tb
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
module test;
  reg clk;
  reg reset;
  reg i_d;
  wire o_q;
  wire o_qb;

  dff DFF (.clk(clk), .reset(reset),
           .i_d(i_d), .o_q(o_q), .o_qb(o_qb));

  initial begin
    forever begin
      clk = 0;
      #10;
      clk = !clk;
      #10;
    end
  end
          
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
   
    reset = 0;
    i_d = 1'b0;
    #10;
    i_d = 1'b1;
    #10;
    reset = 1;
    i_d = 1'b0;
    #10;
    i_d = 1'b1;
    #10;
    reset=0;
    #10;
    reset=1;
  end

endmodule