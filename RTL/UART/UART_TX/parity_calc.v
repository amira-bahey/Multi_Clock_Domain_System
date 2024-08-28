module parity_calc #(parameter data_width=8)
(input wire [data_width-1:0] P_DATA,
 input wire DATA_VALID,
 input wire PAR_TYP,
 input wire CLK,RST,
 output reg PAR_BIT
);

always@(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    PAR_BIT<=1'b0;
   end 
  else if (PAR_TYP && DATA_VALID)
   begin
     if(^P_DATA)
      begin 
       PAR_BIT<=1'b0;
      end
     else
      begin
       PAR_BIT<=1'b1;
      end  
   end   
  else if (!PAR_TYP && DATA_VALID)
   begin
     if(^P_DATA)
      begin 
       PAR_BIT<=1'b1;
      end
     else
      begin
       PAR_BIT<=1'b0;
      end      
   end 
  end
endmodule    