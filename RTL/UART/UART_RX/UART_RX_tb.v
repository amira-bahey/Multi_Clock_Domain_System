`timescale 1ns/1ps

module UART_RX_tb();
  
parameter clock_period=5.00; //(freq 200MHZ)
parameter width=8;
  
reg CLK_tb,RST_tb;  
reg RX_IN_tb;
reg [5:0] PRESCALE_tb;
reg PAR_TYP_tb;
reg PAR_EN_tb;
wire DATA_VALID_tb;
wire [7:0] P_DATA_tb;
wire PAR_ERR_tb;
wire STP_ERR_tb;

initial 
 begin
  $dumpfile("UART_RX.vcd");
  $dumpvars;
   
  inizialize();
  
  reset();
  
  // checkout even parity with prescale = 8
  get_in('b01010101001,0,1,8);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  // checkout even parity with prescale = 16
  get_in('b01010101001,0,1,16);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  
  // checkout even parity with prescale = 32
  get_in('b01010101001,0,1,32);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  
   // checkout odd parity with prescale = 8
  get_in('b01010101011,1,1,8);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  // checkout odd parity with prescale = 16
  get_in('b01010101011,1,1,16);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  
  // checkout odd parity with prescale = 32
  get_in('b01010101011,1,1,32);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  
  // checkout no parity with prescale = 8
  get_in_no_parity('b0101010101,0,0,8);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  // checkout no parity with prescale = 16
  get_in_no_parity('b0101010101,0,0,16);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  
  // checkout no parity with prescale = 32
  get_in_no_parity('b0101010101,0,0,32);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b10101010);
  
  #(clock_period)
  reset();
  
  //sending 2 consequent frames
  get_in('b01010101001,0,1,8);
  check_out('b10101010);
  
  get_in('b01110101011,0,1,8);
  
  #(11*clock_period*PRESCALE_tb); 
   
  check_out('b11101010);
  
 end     

task inizialize;
 begin
  CLK_tb=1'b0;
  RST_tb=1'b1;
  RX_IN_tb=1'b1;
  PRESCALE_tb=8;
  PAR_TYP_tb=1'b0;
  PAR_EN_tb=1'b0;
 end
endtask  

task reset;
 begin
 @(posedge CLK_tb)
  RST_tb=1'b0;
  #(clock_period)
  RST_tb=1'b1;
 end
endtask  

task get_in;
input [10:0] in;
input parity_type;
input parity_enable; 
input [5:0]prescale;
integer i; 
 begin
  PAR_TYP_tb=parity_type;
  PAR_EN_tb=parity_enable;
  PRESCALE_tb=prescale;
  for(i=10;i>=0;i=i-1)
   begin 
    RX_IN_tb=in[i];
    #(clock_period*(PRESCALE_tb));
   end 
 end
endtask  

task get_in_no_parity;
input [9:0] in;
input parity_type;
input parity_enable; 
input [5:0]prescale;
integer i; 
 begin
  PAR_TYP_tb=parity_type;
  PAR_EN_tb=parity_enable;
  PRESCALE_tb=prescale;
  for(i=9;i>=0;i=i-1)
   begin 
    RX_IN_tb=in[i];
    #(clock_period*(PRESCALE_tb));
   end 
 end
endtask  

task check_out;
input [7:0] out;   
 begin
  if (out==P_DATA_tb && PAR_ERR_tb==0 && STP_ERR_tb==0)
   begin
    $display("testcase is succeded");
   end 
  else
   begin
    $display("testcase is failed");
   end 
 end
endtask  


always #(clock_period/2) CLK_tb=~CLK_tb;

UART_RX #(.width(width)) dut(
.CLK(CLK_tb),
.RST(RST_tb),
.RX_IN(RX_IN_tb),
.PRESCALE(PRESCALE_tb),
.PAR_TYP(PAR_TYP_tb),
.PAR_EN(PAR_EN_tb),
.DATA_VALID(DATA_VALID_tb),
.P_DATA(P_DATA_tb),
.PAR_ERR(PAR_ERR_tb),
.STP_ERR(STP_ERR_tb)
);

endmodule
