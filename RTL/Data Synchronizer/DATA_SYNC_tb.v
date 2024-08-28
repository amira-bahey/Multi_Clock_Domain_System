`timescale 1ns/1ps

module DATA_SYNC_tb();
 
 parameter clock_period=10;
 parameter BUS_WIDTH_tb=8;
 
reg [BUS_WIDTH_tb-1:0] unsync_bus_tb;
reg bus_enable_tb;
reg CLK_tb,RST_tb;
wire[BUS_WIDTH_tb-1:0] sync_bus_tb; 
wire enable_pulse_tb;

initial 
 begin
  $dumpfile("data_sync.vcd");
  $dumpvars;  
  
  initialize();
  
  reset();
  
  source_enable();
  
  check_out();
  
  unsync_bus_tb=8'b11110000;
  
  source_enable();
  
  check_out();
  
  #(10*clock_period)
  $stop;
 end  
 
 task initialize;
  begin
   unsync_bus_tb=8'b10101010;
   bus_enable_tb='b0;
   CLK_tb='b0;
   RST_tb='b1;
  end
 endtask  
 
 task reset;
  begin
   RST_tb='b1;
   #(clock_period)
   RST_tb='b0;
   #(clock_period)
   RST_tb='b1;
  end
 endtask
 
 task source_enable;
  begin
   bus_enable_tb='b1;
   #(4)*clock_period)
   bus_enable_tb='b0;
  end
 endtask   
  
 task check_out;
  begin  
   #(clock_period)
   if ( unsync_bus_tb == sync_bus_tb)
    begin
     $display("testcase is succedded with value = %0b",sync_bus_tb);
    end 
   else
    begin
     $display("testcase is failed with value = %0b",sync_bus_tb);
    end 
  end  
  endtask
always #(clock_period/2) CLK_tb=~CLK_tb;

data_synchronizer #(.BUS_WIDTH(BUS_WIDTH_tb)) dut(
.unsync_bus(unsync_bus_tb),
.bus_enable(bus_enable_tb),
.CLK(CLK_tb),
.RST(RST_tb),
.sync_bus(sync_bus_tb),
.enable_pulse(enable_pulse_tb)
);
endmodule    
