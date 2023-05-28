[2:31 pm, 28/05/2023] Yanvitha : module Vending(
input clk,reset,i_x,
output reg o_z);
parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
reg [2:0]state;
always@(posedge clk)
begin
case(state)
A: state<= ((i_x==1'b1)? A:B);
B: state<= ((i_x==1'b1)? B:C);
C: state<= ((i_x==1'b1)? A:D);
D: state<= ((i_x==1'b1)? A:B);
default: state<=A;
endcase
end

always@(state)
begin
case(state)
A:o_z=1'b0;
B:o_z=1'b0;
C:o_z=1'b1;
D:o_z=1'b1;
endcase
end
endmodule