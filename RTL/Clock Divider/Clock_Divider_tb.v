`timescale 1ns/1ps

module Clock_Divider_tb();

 
 parameter clock_period=10; 
 
 reg i_ref_clk_tb;
 reg i_rst_n_tb;
 reg i_clk_en_tb;
 reg[7:0] i_div_ratio_tb;
 wire o_div_clk_tb;
 
initial 
 begin
  $dumpfile("clock_divider.vcd");
  $dumpvars;
  
  inizialize();
  
  reset();
  
  @(posedge i_ref_clk_tb)
  in(1,2);
  
  #(10*clock_period)
  
  reset();
  
  in(1,3);
  
  #(10*clock_period)
  
  reset();
  
  in(1,4);
  
  #(10*clock_period)
  
  reset();
  
  in(1,5);
  
  #(10*clock_period);
  
  
  reset();
  
  in(0,2);
  
  #(10*clock_period);
  
  
  reset();
  
  in(1,1);
  
  #(10*clock_period);
  
  $stop;
 end
 
task inizialize;
 begin
  i_ref_clk_tb=1'b0;
  i_rst_n_tb=1'b1;
  i_clk_en_tb=1'b0;
  i_div_ratio_tb=0;
 end 
endtask 

task reset;
 begin
  #(clock_period)
  i_rst_n_tb=1'b0;
  #(clock_period)
  i_rst_n_tb=1'b1;
 end 
endtask

task in;
input enable;
input [7:0] div_ratio;
 begin
  i_clk_en_tb=enable;
  i_div_ratio_tb= div_ratio;
 end
endtask  

 
always #(clock_period/2) i_ref_clk_tb=~i_ref_clk_tb;

Clock_Divider dut( 
 .i_ref_clk(i_ref_clk_tb),
 .i_rst_n(i_rst_n_tb),
 .i_clk_en(i_clk_en_tb),
 .i_div_ratio(i_div_ratio_tb),
 .o_div_clk(o_div_clk_tb)
 );
 endmodule   
