`timescale 1ns/1ps

module RST_SYNC_tb();
 
 parameter clock_period=10;
 parameter NUM_STAGES_tb=2;
 
reg CLK_tb,RST_tb;
wire SYNC_RST_tb;

initial 
 begin
  $dumpfile("rst_sync.vcd");
  $dumpvars;  
  
  initialize();
  
  reset();
  
  #(10*clock_period)
  $stop;
 end  
 
 task initialize;
  begin
   CLK_tb='b0;
   RST_tb='b1;
  end
 endtask  
 
 task reset;
  begin
   RST_tb='b1;
   #(3*clock_period)
   RST_tb='b0;
   #(clock_period)
   RST_tb='b1;
  end
 endtask
   
always #(clock_period/2) CLK_tb=~CLK_tb;

RST_SYNC #(.NUM_STAGES(NUM_STAGES_tb)) dut(
.CLK(CLK_tb),
.RST(RST_tb),
.SYNC_RST(SYNC_RST_tb)
);
endmodule    
