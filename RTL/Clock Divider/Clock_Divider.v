module Clock_Divider(
 input wire i_ref_clk,
 input wire i_rst_n,
 input wire i_clk_en,
 input wire [7:0] i_div_ratio,
 output wire o_div_clk 
);
reg [7:0]counter;
reg div_clk;
wire condition1,condition2;
wire even_odd;
wire is_one;
wire is_zero;
wire clk_en;
reg flag;

always @(posedge i_ref_clk or negedge i_rst_n)
 begin
  if(!i_rst_n)
   begin
    div_clk <=1'b0;
    counter<='b0;
    flag<=1'b0;
   end 
  else if (clk_en)
   begin
    if(counter == ((i_div_ratio>>1)-1) && !even_odd)
     begin 
     div_clk <=~div_clk ;
     counter<='b0;
     end
    else if( (condition1&& even_odd)|| (condition2&& even_odd))
     begin 
     div_clk <=~div_clk ;
     flag<=~flag;
     counter<='b0;
     end
    else 
     begin
      counter<=counter+1;
     end 
   end 
 end

assign is_one= (i_div_ratio=='b1);
assign is_zero= (i_div_ratio=='b0);
assign clk_en= (i_clk_en && !is_one && !is_zero);
assign condition1= (counter == ((i_div_ratio>>1)-1) && flag); 
assign condition2= (counter == (i_div_ratio>>1)) && !flag;
assign even_odd=i_div_ratio[0];
assign o_div_clk=(clk_en)?div_clk:i_ref_clk;

endmodule
  
