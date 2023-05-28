`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 11:25:27
// Design Name: 
// Module Name: adithi
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


module dff (
  input      clk,
  input      reset,
  input      i_d,
  output     o_q,
  output     o_qb
);
  reg        o_q;
  wire       o_qb;

  assign o_qb = ~o_q;

  always @(posedge clk or negedge reset)
  begin
    if (reset == 0)
    begin
      // asynchronous active low reset
      o_q <= 1'b0;
    end
    else
    begin
      o_q <= i_d;
    end
  end
endmodule