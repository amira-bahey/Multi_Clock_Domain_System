module Register_File #(parameter addr=4,parameter width=8)(
input wire [width-1:0] WrData,
input wire [addr-1:0] Address,
input wire WrEn,RdEn,
input wire CLK,RST,
output reg [width-1:0]RdData,
output reg RdData_Valid,
output wire [width-1:0] REG0,REG1,REG2,REG3
); 
  
reg [width-1:0] Reg_File [7:0];
integer i;

always@(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    RdData_Valid<='b0; 
    RdData<='b0;
    for(i=0;i<8;i=i+1)
     begin
      if (i==2)
       begin
        Reg_File[i]<='b10000001;
       end 
      else if(i==3)
       begin
        Reg_File[i]<='b00100000;
       end  
      else
       begin
        Reg_File[i]<='b0;
       end   
     end  
   end 
  else if(WrEn && !RdEn)
   begin
    Reg_File[Address]<=WrData;
   end  
  else if(RdEn && !WrEn)
   begin
    RdData<=Reg_File[Address];
    RdData_Valid<=1;
   end   
  else
   begin
    RdData_Valid<=0;
   end    
 end
 assign REG0=Reg_File[0];
 assign REG1=Reg_File[1];
 assign REG2=Reg_File[2];
 assign REG3=Reg_File[3];
endmodule 