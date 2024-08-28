`timescale 1ns/1ps

module System_Top_tb();
  
parameter ref_clock_period=20;
parameter uart_clock_period=271.26736;
parameter data_width_tb=8,out_width_tb=16,addr_tb=4 ;

reg REF_CLK_tb,UART_CLK_tb;
reg RST_tb;
reg RX_IN_tb;
wire TX_OUT_tb;
wire PAR_ERR_tb,STP_ERR_tb;

initial 
 begin
  $dumpfile("system.vcd");
  $dumpvars;
  
  initialize();
  
  reset(); 
  
                               //default configurations even parity with prescale 32
  
  //testcase 1 reg file write
   
   frame ('hAA);
   #(uart_clock_period*32)  
   frame ('b00000100);
   #(uart_clock_period*32)  
   frame ('b10101010);
   #(uart_clock_period*32)
   
  //testcase 2 reg file read
   
   frame ('hBB);
   #(uart_clock_period*32)  
   frame ('b00000100);
   #(uart_clock_period*32*50);
   
    reset(); 
   
   //testcase 3 alu with operands
   
   frame ('hCC);
   #(uart_clock_period*32)  
   frame ('d10);
   #(uart_clock_period*32);
   frame ('d6);
   #(uart_clock_period*32);
   frame ('b0010); //multiplication
   #(uart_clock_period*32);
  
   

  //testcase 4 alu with no operands
   frame ('hDD);
   #(uart_clock_period*32)  
   frame ('b0001); //subtraction
   #(uart_clock_period*32);
   
   #(uart_clock_period*32*100)  
   $stop;
 end  

task initialize;
 begin
  REF_CLK_tb=1'b0;
  UART_CLK_tb=1'b0;
  RST_tb=1'b1;
  RX_IN_tb=1'b1;
 end
endtask   

task reset;
 begin
  RST_tb=1'b1;
  #(ref_clock_period)
  RST_tb=1'b0;
  #(ref_clock_period)
  RST_tb=1'b1;
 end
endtask  

task frame;
 input [data_width_tb-1:0] in;
 integer i;
  begin
   @(posedge dut.U4.RX_CLK) 
   RX_IN_tb=1'b0;
   for(i=data_width_tb-1;i>=0;i=i-1)
    begin
     #(uart_clock_period*32)  
     RX_IN_tb=in[i];
    end
   if(dut.U1.REG2[1]==0 && dut.U1.REG2[0]==1)
    begin
     #(uart_clock_period*32)     
     RX_IN_tb=(^in)?1:0;
     #(uart_clock_period*32)  
     RX_IN_tb=1'b1;
    end 
   else if(dut.U1.REG2[1]==1 && dut.U1.REG2[0]==1)
    begin 
     #(uart_clock_period*32)   
     RX_IN_tb=(^in)?0:1;
     #(uart_clock_period*32)  
      RX_IN_tb=1'b1;
    end  
   else
    begin
     #(uart_clock_period*32)  
     RX_IN_tb=1'b1;
    end 
   
  end 
 endtask 

always #(ref_clock_period/2) REF_CLK_tb=~REF_CLK_tb;
always #(uart_clock_period/2) UART_CLK_tb=~UART_CLK_tb;


system_top #(.data_width(data_width_tb),.out_width(out_width_tb),.addr(addr_tb)) dut(
.REF_CLK(REF_CLK_tb),
.UART_CLK(UART_CLK_tb),
.RST(RST_tb),
.RX_IN(RX_IN_tb),
.TX_OUT(TX_OUT_tb),
.PAR_ERR(PAR_ERR_tb),
.STP_ERR(STP_ERR_tb)  
); 


endmodule
