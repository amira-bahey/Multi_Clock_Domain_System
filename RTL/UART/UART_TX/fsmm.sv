module fsm(
 input wire DATA_VALID,
 input wire PAR_EN,
 input wire ser_done,
 input wire CLK,RST,
 output reg  ser_en , busy ,
 output reg [1:0] mux_sel
);

reg busy_c;
/*localparam [2:0] IDLE=3'b000,
                 STR=3'b001,
                 DATA=3'b010,
                 P=3'b100,
                 STP=3'b111; 
                 
reg [2:0] current_state , next_state;*/              

typedef enum {
        IDLE,
        STR,
        DATA,
        P,
        STP
} state_;

state_ current_state , next_state;


always@(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    current_state<=IDLE;
   end 
  else 
   begin
    current_state<=next_state;
   end  
 end
      
always@(*) 
 begin
  case(current_state) 
   IDLE : begin
           if(DATA_VALID)
            begin
             next_state=STR; 
            end 
           else
            begin
             next_state=IDLE; 
            end  
          end
   STR :  begin
             next_state=DATA;   
          end
   DATA : begin
           if(ser_done && PAR_EN)
            begin
             next_state=P; 
            end 
           else if(ser_done && !PAR_EN)
            begin
             next_state=STP; 
            end  
           else
            begin
             next_state=DATA; 
            end  
          end            
   P    : begin
             next_state=STP; 
          end                   
   STP  : begin
     
           /*if (DATA_VALID) 
            begin
  	          next_state = STR ;
            end
            else
             begin
 	            next_state = IDLE ;
             end*/
            next_state=IDLE;  
          end
   default : begin
              next_state=IDLE; 
             end        
   endcase
 end             
 
 
always@(*) 
 begin
  case(current_state) 
   IDLE : begin
           mux_sel=2'b00;
           busy_c=1'b0;
           ser_en=1'b0;
          end
   STR :  begin
           mux_sel=2'b00;
           busy_c=1'b1;
           ser_en=1'b1;
          end
   DATA : begin
           mux_sel=2'b10;
           busy_c=1'b1;
           ser_en=1'b1;
          end 
   P    : begin
           mux_sel=2'b11;
           busy_c=1'b1;
           ser_en=1'b0;
          end        
                     
   STP  : begin
           mux_sel=2'b01;
           busy_c=1'b1;
           ser_en=1'b0; 
          end
   default : begin
              mux_sel=2'b00;
              busy_c=1'b0;
              ser_en=1'b0;
             end        
   endcase
 end             
always@(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
     busy<=0;
   end 
  else 
   begin
    busy<=busy_c;
   end  
 end 
 endmodule 
