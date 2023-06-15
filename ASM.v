`timescale 1ns/1ns
module ASM( clk,stop,A, B, AQ);
parameter N=8;
integer i;
input clk,stop;
  input [N-1:0] A;
  input [N-1:0] B;
  
  output reg [2*N-1:0]AQ;
	reg [2*N-1:0]A1;
  reg [N-1:0]B1;
	always@(posedge clk or posedge stop )
begin
  if (stop==1)
		begin
		AQ=0;
		end
		else 
		begin
		AQ=0;
          A1[N-1:0]=A;
          A1[2*N-1:N]=0;
		B1=B;
          for (i=0;i<N;i=i+1)
        begin
			if(B1[i]==1'b0)
			begin
				AQ=AQ+0;
			end
			else if (B1[i]==1'b1)
			begin
				AQ=AQ+(A1<<i);
			end
		end
		end
end
endmodule
