module data_synchronizer #(parameter data_width=8)(
input wire [data_width-1:0] unsync_bus,
input wire bus_enable,
input wire CLK,RST,
output reg [data_width-1:0] sync_bus, 
output reg enable_pulse
);

reg [1:0] Q;
reg pulse_ff;
wire pulse_gen_out;
wire [data_width-1:0] mux_out;
integer i;
always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    Q<='b0;
    pulse_ff<='b0;
   end 
  else 
   begin
    Q[0]<=bus_enable;
    Q[1]<=Q[0]; 
    pulse_ff<=Q[1]; 
   end 
 end  
 
 always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    sync_bus<='b0;
    enable_pulse<='b0;
   end 
  else 
   begin
    sync_bus<=mux_out;
    enable_pulse<=pulse_gen_out;
   end 
 end 
 
assign pulse_gen_out=(~pulse_ff & Q[1]);
assign mux_out=(pulse_gen_out)?unsync_bus:sync_bus;

endmodule  
