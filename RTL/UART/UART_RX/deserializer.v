module deserializer (
input wire CLK,RST,  
input wire SAMPLED_BIT,
input wire DESER_EN,
output reg [7:0] P_DATA 
);  

reg [2:0] counter;

always @(posedge CLK or negedge RST)
 begin 
  if(!RST)
   begin
    P_DATA <='b0;
    counter<='b111;
   end  
  else if(DESER_EN)
   begin 
    P_DATA[counter]<=SAMPLED_BIT;
    counter<=counter-1;
   end
 end

endmodule
