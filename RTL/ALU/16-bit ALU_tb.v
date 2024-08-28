`timescale 1us/1ns

module ALU_tb();
  
parameter data_width=8;
parameter out_width=16 ;
  
 reg [data_width-1:0] A_tb,B_tb;
 reg [3:0] ALU_FUN_tb;
 reg CLK_tb, RST_tb, En_tb;
 wire [out_width-1:0] ALU_OUT_tb;
 wire ALU_Valid_tb; 
 wire Arith_Flag_tb,Logic_Flag_tb,CMP_Flag_tb,Shift_Flag_tb;
 
 initial
  begin
   $dumpfile("ALU.vcd");
   $dumpvars;
   
   CLK_tb=1'b0;
   A_tb=16'd15;
   B_tb=16'd3;
   RST_tb=1;
    
   $display("testcase1");
   #10
   ALU_FUN_tb=4'b0000;
   #10
   if(ALU_OUT_tb == 16'd18 && Arith_Flag_tb==1'b1 )
    begin
     $display("testcase1 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase1 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end 
    
   $display("testcase2");
   ALU_FUN_tb=4'b0001;
   #10
   if(ALU_OUT_tb == 16'd12 && Arith_Flag_tb==1'b1 )
    begin
     $display("testcase2 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase2 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end  
   
   $display("testcase3");
   ALU_FUN_tb=4'b0010;
   #10
   if(ALU_OUT_tb == 16'd45 && Arith_Flag_tb==1'b1 )
    begin
     $display("testcase3 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase3 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end   
   
   $display("testcase4");
   ALU_FUN_tb=4'b0011;
   #10
   if(ALU_OUT_tb == 16'd5 && Arith_Flag_tb==1'b1)
    begin
     $display("testcase4 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase4 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end  
   
   $display("testcase5");
   ALU_FUN_tb=4'b0100;
   #10
   if(ALU_OUT_tb == 16'd3 && Logic_Flag_tb==1'b1)
    begin
     $display("testcase5 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase5 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end    
   
   $display("testcase6");
   ALU_FUN_tb=4'b0101;
   #10
   if(ALU_OUT_tb == 16'd15 && Logic_Flag_tb==1'b1 )
    begin
     $display("testcase6 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase6 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end  
   
   $display("testcase7");
   ALU_FUN_tb=4'b0110;
   #10
   if(ALU_OUT_tb == 16'b1111111111111100 && Logic_Flag_tb==1'b1 )
    begin
     $display("testcase7 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase7 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end  
    
   $display("testcase8");
   ALU_FUN_tb=4'b0111;
   #10
   if(ALU_OUT_tb == 16'b1111111111110000 && Logic_Flag_tb==1'b1 )
    begin
     $display("testcase8 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase8 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end  
   
   $display("testcase9");
   ALU_FUN_tb=4'b1000;
   #10
   if(ALU_OUT_tb == 16'd12 && Logic_Flag_tb==1'b1 )
    begin
     $display("testcase9 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase9 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end   
 
   $display("testcase10");
   ALU_FUN_tb=4'b1001;
   #10
   if(ALU_OUT_tb == 16'b1111111111110011 && Logic_Flag_tb==1'b1 )
    begin
     $display("testcase10 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase10 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
    
   $display("testcase11");
   ALU_FUN_tb=4'b1010;
   #10
   if(ALU_OUT_tb == 16'd0 && CMP_Flag_tb==1'b1 )
    begin
     $display("testcase11 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase11 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end 
    
   $display("testcase12");
   ALU_FUN_tb=4'b1011;
   #10
   if(ALU_OUT_tb == 16'd2 && CMP_Flag_tb==1'b1 )
    begin
     $display("testcase12 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase12 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end 
    
   $display("testcase13");
   ALU_FUN_tb=4'b1100;
   #10
   if(ALU_OUT_tb == 16'd0 && CMP_Flag_tb==1'b1 )
    begin
     $display("testcase13 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase13 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end 
    
   $display("testcase14");
   A_tb=16'd4;
   ALU_FUN_tb=4'b1101;
   #10
   if(ALU_OUT_tb == 16'd2 && Shift_Flag_tb==1'b1 )
    begin
     $display("testcase14 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase14 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end 
    
   $display("testcase15");
   A_tb=16'd4;
   ALU_FUN_tb=4'b1110;
   #10
   if(ALU_OUT_tb == 16'd8 && Shift_Flag_tb==1'b1)
    begin
     $display("testcase15 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase15 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end  
    
   $display("testcase16");
   ALU_FUN_tb=4'b1111;
   #10
   if(ALU_OUT_tb == 16'd0 )
    begin
     $display("testcase16 is passed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   else
    begin
     $display("testcase16 is failed with result =%0b at simulation time",ALU_OUT_tb,$time);
    end
   #50 
   $stop; 
  end  
  
 always #5 CLK_tb =~ CLK_tb;
 
  ALU #(.data_width(data_width) ,.out_width(out_width)) DUT(
 .A(A_tb),
 .B(B_tb),
 .ALU_FUN(ALU_FUN_tb),
 .CLK(CLK_tb),
 .RST(RST_tb),  
 .En(En_tb),
 .ALU_OUT(ALU_OUT_tb),
 .Arith_Flag(Arith_Flag_tb),
 .Logic_Flag(Logic_Flag_tb),
 .CMP_Flag(CMP_Flag_tb),
 .Shift_Flag(Shift_Flag_tb),
 .ALU_Valid(ALU_Valid_tb)   
 );
  
endmodule
