module DATA_SYNC (
input wire CLK,RST,
input wire [3:0] IN,
output reg [3:0]OUT  
);  

reg [3:0] Q;

always @(posedge CLK or negedge RST)
 begin
  if (!RST)
   begin
    OUT<='b0;
    Q<='b0;
   end 
  else 
   begin
    Q<=IN;
    OUT<=Q;
   end  
   
 end
 
endmodule   
