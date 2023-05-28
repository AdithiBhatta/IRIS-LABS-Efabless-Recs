 module fsm_tb();
  reg     clk;
  reg     reset;
  reg     i_x;
  wire    o_z;

  fsm dut(clk, reset, i_x, o_z);
  
  initial 
  begin
  clk = 0;
  forever #10 clk = !clk;
  end
        
   initial
     begin
       reset = 0;
       //i_x = 1'b0;
       #20;
       //i_x = 1'b0;
       //#10;
       
       reset = 1;
        i_x = 1'b0;
       #20;
        i_x = 1'b0;
       #20;
        i_x = 1'b0;
       //#20;
        //i_x = 1'b1;
       //#20;
        //i_x = 1'b1;
       //#20;
        //i_x = 1'b0;
       //#20;
        //i_x = 1'b0;
       //#20;
        //i_x = 1'b1;
       //#20;
        //i_x = 1'b0;
       #20;
       
     end
      endmodule