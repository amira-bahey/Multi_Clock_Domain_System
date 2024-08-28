`timescale 1us/1ps

module UART_TX_tb();  
 parameter clock_period = 8.68;
 parameter width_tb=8;
 
 reg [width_tb-1:0] P_DATA_tb;
 reg DATA_VALID_tb;
 reg PAR_EN_tb,PAR_TYP_tb;
 reg CLK_tb,RST_tb;
 wire TX_OUT_tb,busy_tb;
 
 
 initial 
  begin
   $dumpfile("UART_TX.vcd");
   $dumpvars;
   
   inizialize();
   
   reset();
   
   in(1,0,1,'b11110000);
   #(clock_period)
   DATA_VALID_tb=1'b0;
   check_out_withparity('b01111000001);
   
   #(clock_period)
   reset();
   
   in(1,1,1,'b10101010);
   #(clock_period)
   DATA_VALID_tb=1'b0;
   check_out_withparity('b01010101011);
   
   #(clock_period)
   reset();
   
   in(0,1,1,'b10101010);
   #(clock_period)
   DATA_VALID_tb=1'b0;
   check_out_noparity('b0101010101);
   
   #(clock_period)
   reset();
     
   in(1,0,1,'b11100111) ;
   #(clock_period)
   DATA_VALID_tb = 1'b0 ;
   check_out_withparity('b01110011101) ;

   in(0,0,1,'b10101010) ;
   #(clock_period)
   DATA_VALID_tb = 1'b0 ;
   check_out_noparity('b0101010101) ;

    
  end   
 
 task inizialize;
  begin
   CLK_tb=1'b0;
   RST_tb=1'b0;
   PAR_EN_tb=1'b0;
   PAR_TYP_tb=1'b0;
   DATA_VALID_tb=1'b0;
   P_DATA_tb='hA5; 
  end
 endtask   
 
 task reset;
  begin
   RST_tb=1'b1;
   #(clock_period)
   RST_tb=1'b0;
   #(clock_period)
   RST_tb=1'b1;
  end
 endtask   
 
 task in;
   input par_en , par_typ,valid;
   input [width_tb-1:0]data;
  begin
   PAR_EN_tb=par_en;
   PAR_TYP_tb=par_typ;
   DATA_VALID_tb=valid;
   P_DATA_tb=data;   
  end 
 endtask  
 
 task check_out_withparity;
   input [width_tb+2:0] expec_out;
   integer i;
   reg [width_tb+2:0] gener_out;
  begin
   for(i=(width_tb+2); i>=0 ; i=i-1)
   begin
   gener_out[i] = TX_OUT_tb ;
   #(clock_period);
    
   end
   if(gener_out == expec_out ) 
    begin
     $display("Test Case is succeeded");
    end
   else
    begin
     $display("Test Case is failed");
    end
  end
 endtask   
 
 task check_out_noparity;
   input [width_tb+1:0] expec_out;
   integer i;
   reg [width_tb+1:0] gener_out;
  begin
   for(i=(width_tb+1); i>=0 ; i=i-1)
   begin
   gener_out[i] = TX_OUT_tb ;
   #(clock_period);
    
   end
   if(gener_out == expec_out ) 
    begin
     $display("Test Case is succeeded");
    end
   else
    begin
     $display("Test Case is failed");
    end
  end
 endtask   
   
  
 always #(clock_period/2) CLK_tb=~CLK_tb ;  
 
 UART_TX #(.width(width_tb)) DUT
 (.P_DATA(P_DATA_tb),
  .DATA_VALID(DATA_VALID_tb),
  .PAR_EN(PAR_EN_tb),
  .PAR_TYP(PAR_TYP_tb),
  .CLK(CLK_tb),
  .RST(RST_tb),
  .TX_OUT(TX_OUT_tb),
  .busy(busy_tb)
 );

 endmodule 