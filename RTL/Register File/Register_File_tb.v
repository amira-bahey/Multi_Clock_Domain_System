`timescale 1ns/1ps
module Register_File_tb();

parameter addr=4;
parameter width=8;
 
reg [width-1:0] WrData_tb;
reg [addr-1:0] Address_tb;
reg WrEn_tb,RdEn_tb;
reg CLK_tb,RST_tb;
wire [width-1:0] RdData_tb;
wire RdData_Valid_tb;
wire [width-1:0] REG0_tb,REG1_tb,REG2_tb,REG3_tb;
 
initial
 begin
  $dumpfile("RF.vcd");
  $dumpvars ;
  CLK_tb=0;
  RST_tb=0;
  WrEn_tb=0;
  RdEn_tb=0;
  WrData_tb='d10;
  
  $display("testcase1");
  #10
  RST_tb=1;
  WrEn_tb=1;
  Address_tb='d5;
  #10
  if(dut.Reg_File[Address_tb]=='d10)
    begin
     $display("Testcase1 is passed");  
    end 
  else  
   begin
     $display("Testcase1 is failed");  
    end  
  
  $display("testcase2");
  WrEn_tb=0;
  RdEn_tb=1;
  Address_tb='d5;
  #10
  if(RdData_tb=='d10)
    begin
     $display("Testcase2 is passed");  
    end 
  else  
   begin
     $display("Testcase2 is failed");  
    end 
    
  $display("testcase3");
  WrEn_tb=1;
  RdEn_tb=0;
  Address_tb='d2;
  WrData_tb='d3;
  #10
  if(dut.Reg_File[Address_tb]=='d3)
    begin
     $display("Testcase3 is passed");  
    end 
  else  
   begin
     $display("Testcase3 is failed");  
    end   
    
  $display("testcase4");
  WrEn_tb=0;
  RdEn_tb=1;
  Address_tb='d2;
  #10
  if(RdData_tb=='d3)
    begin
     $display("Testcase4 is passed");  
    end 
  else  
   begin
     $display("Testcase4 is failed");  
    end     
 end
 
always #5 CLK_tb=~CLK_tb;

 Register_File #(.addr(addr),.width(width)) dut (
.WrData(WrData_tb),
.Address(Address_tb),
.WrEn(WrEn_tb),
.RdEn(RdEn_tb),
.CLK(CLK_tb),
.RST(RST_tb),
.RdData(RdData_tb),
.RdData_Valid(RdData_Valid_tb),
.REG0(REG0_tb), 
.REG1(REG1_tb),
.REG2(REG2_tb),  
.REG3(REG3_tb)
);

endmodule  
