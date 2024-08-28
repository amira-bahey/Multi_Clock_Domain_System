module Pulse_Gen(
 input wire CLK,RST,
 input wire LVL_SIG,
 output wire Pulse_SIG  
  
);

reg [1:0] Q;


always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    Q<='b0;
   end 
  else
   begin
    Q[0]<=LVL_SIG;
    Q[1]<=Q[0];
   end 
 end
assign Pulse_SIG = (~Q[1] && Q[0]); 
endmodule   