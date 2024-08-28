
`timescale 1ns/1ps

module FIFO_tb();

parameter writing_clock_period=10; //(freq 100 MHZ)
parameter reading_clock_period=25.0; //(freq 40 MHZ)
parameter DATA_WIDTH_tb=8;

//burst length=10
// min depth of fifo=6

reg [DATA_WIDTH_tb-1 : 0] WR_DATA_tb;
reg W_INC_tb;
reg W_CLK_tb,W_RST_tb;
reg R_CLK_tb,R_RST_tb;
reg R_INC_tb;
wire [DATA_WIDTH_tb-1 : 0] RD_DATA_tb;
wire FULL_tb,EMPTY_tb;
 

initial 
 begin
  $dumpfile("fifo.vcd");
  $dumpvars;  
  initialize();
  
  reset_writing();
  reset_reading();
  
  //testcase writing 4 times reading 4 times
   
   WR_DATA_tb = 8'b1000_0011;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   WR_DATA_tb = 8'b1000_0110;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   WR_DATA_tb = 8'b1000_0000;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   WR_DATA_tb = 8'b1000_0100;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
    
   @(negedge R_CLK_tb)
   R_INC_tb = 1'b1;
   repeat(3) @(negedge R_CLK_tb);
   R_INC_tb = 1'b0;
    
   // testcase writing 4 times reading 3 times
   WR_DATA_tb = 8'b0000_0011;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   WR_DATA_tb = 8'b0000_0110;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   WR_DATA_tb = 8'b0000_1001;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   WR_DATA_tb = 8'b1000_0101;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b1;
    @(negedge W_CLK_tb)
   W_INC_tb = 1'b0;
   
   @(negedge R_CLK_tb)
    R_INC_tb = 1'b1;
    repeat(3) @(negedge R_CLK_tb);
    R_INC_tb = 1'b0;
     
   #20;
  $stop();
   
 end  
 
    
task initialize;
 begin
  WR_DATA_tb='b0;
  W_INC_tb='b0;
  W_CLK_tb='b0;
  W_RST_tb='b1;
  R_CLK_tb='b0;
  R_RST_tb='b1;
  R_INC_tb='b0;
 end 
endtask

task reset_writing;
 begin
  W_RST_tb='b1;
  #(writing_clock_period)
  W_RST_tb='b0;
  #(writing_clock_period)
  W_RST_tb='b1;
 end
endtask   

task reset_reading;
 begin
  R_RST_tb='b1;
  #(reading_clock_period)
  R_RST_tb='b0;
  #(reading_clock_period)
  R_RST_tb='b1;
 end
endtask   

task get_in_writing;
 input increment;
 input [DATA_WIDTH_tb-1 : 0] data; 
 begin
  WR_DATA_tb=data;
  W_INC_tb=increment;
 end
endtask   

task get_in_reading;
 input increment1;
 begin
  R_INC_tb=increment1;
 end
endtask  

task check_out;
 input [DATA_WIDTH_tb-1 : 0] read_data; 
 begin
  #(reading_clock_period)
   if (read_data == RD_DATA_tb)
    begin
     $display("testcase is succedded with read_value = %0b",RD_DATA_tb);
    end 
   else
    begin
     $display("testcase is failed with read_value = %0b",RD_DATA_tb);
    end 
 end
endtask  


always #(writing_clock_period/2) W_CLK_tb=~W_CLK_tb;
always #(reading_clock_period/2) R_CLK_tb=~R_CLK_tb;
 
FIFO #(.DATA_WIDTH(DATA_WIDTH_tb)) dut(
.WR_DATA(WR_DATA_tb),
.W_INC(W_INC_tb),
.W_CLK(W_CLK_tb),
.W_RST(W_RST_tb),
.R_CLK(R_CLK_tb),
.R_RST(R_RST_tb),
.R_INC(R_INC_tb),
.RD_DATA(RD_DATA_tb),
.FULL(FULL_tb),
.EMPTY(EMPTY_tb)
);
endmodule
 