module FSM (
input wire RX_IN,
input wire CLK,RST,
input wire PAR_EN,
input wire [3:0] BIT_CNT,
input wire [4:0] EDGE_CNT,
input wire [5:0] PRESCALE,
input wire PAR_ERR,
input wire STRT_GLITCH,
input wire STP_ERR,
output reg ENABLE,
output reg DATA_SAMP_EN,
output reg DESER_EN,
output reg DATA_VALID,
output reg PAR_CHK_EN,
output reg STRT_CHK_EN,
output reg STP_CHK_EN
);  

/*localparam [2:0] idle = 3'b000 ,
                 start=3'b001 ,
                 data=3'b010 ,
                 parity=3'b011 ,
                 stop=3'b100;
                  
reg [2:0] current_state , next_state;
*/

typedef enum {
        idle,
        start,
        data,
        parity,
        stop
} state_;

state_ current_state , next_state;

//currentstate logic

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    current_state <= idle;
   end  
  else 
   begin
   current_state <= next_state; 
   end  
 end  
 
 //nextstate logic 
 
always @(*)
 begin
  case (current_state)
   idle: begin
          if (!RX_IN)
           begin
            next_state=start;
           end
          else   
           begin
            next_state=idle;
           end 
         end
         
   start: begin
          if (!STRT_GLITCH && (BIT_CNT==1))
           begin
            next_state=data;
           end
          else   
           begin
            next_state=start;
           end 
         end     
         
   data: begin
          if (PAR_EN && (BIT_CNT==9))
           begin
            next_state=parity;
           end
          else if (!PAR_EN && (BIT_CNT==9))   
           begin
            next_state=stop;
           end 
          else   
           begin
            next_state=data;
           end  
         end  
         
   parity: begin
          if (!PAR_ERR && (BIT_CNT==10))
           begin
            next_state=stop;
           end
          else   
           begin
            next_state=parity;
           end  
         end        
  
   stop: begin
          if (!STP_ERR && !RX_IN && (BIT_CNT==0))
           begin
            next_state=start;
           end
          else if (!STP_ERR && RX_IN && (BIT_CNT==0))
           begin
            next_state=idle;
           end 
          else    
           begin
            next_state=stop;
           end 
         end 
           
   default: begin
             next_state=idle;
            end                                                       
  
  endcase     
 end
 
 //output logic
 
always @(*)
 begin
    case (current_state)
   idle: begin
          if (!RX_IN)
           begin
            ENABLE=1'b1;
           end
          else   
           begin
            ENABLE=1'b0;
           end 
          DATA_SAMP_EN=1'b1;
          DESER_EN=1'b0;
          PAR_CHK_EN=1'b0;
          STRT_CHK_EN=1'b0;
          STP_CHK_EN=1'b0;
          DATA_VALID=1'b0; 
         end
         
   start: begin
           ENABLE=1'b1 ;
           DATA_SAMP_EN=1'b1;
           DESER_EN=1'b0;
           PAR_CHK_EN=1'b0;
           STRT_CHK_EN=1'b1;
           STP_CHK_EN=1'b0; 
           DATA_VALID=1'b0;
          end     
         
   data: begin
          ENABLE=1'b1 ;
          DATA_SAMP_EN=1'b1;
          PAR_CHK_EN=1'b0;
          STRT_CHK_EN=1'b0;
          STP_CHK_EN=1'b0;  
          DATA_VALID=1'b0;
          if (EDGE_CNT== PRESCALE-1)
           begin
            DESER_EN=1'b1;
           end  
          else
           begin
            DESER_EN=1'b0;
           end 
         end  
         
   parity: begin
            ENABLE=1'b1 ;
            DATA_SAMP_EN=1'b1;
            DESER_EN=1'b0;
            STRT_CHK_EN=1'b0;
            STP_CHK_EN=1'b0; 
            DATA_VALID=1'b0; 
            if (EDGE_CNT== PRESCALE-1)
             begin
              PAR_CHK_EN=1'b1;
             end  
            else
             begin
              PAR_CHK_EN=1'b0;
             end 
           end        
  
   stop: begin
          ENABLE=1'b1 ;
          DATA_SAMP_EN=1'b1;
          DESER_EN=1'b0;
          PAR_CHK_EN=1'b0;
          STRT_CHK_EN=1'b0;  
          if (!PAR_ERR && !STP_ERR && (EDGE_CNT==PRESCALE-1) )  
           begin
            DATA_VALID=1'b1;
           end  
          else
           begin
            DATA_VALID=1'b0;
           end   
          if (EDGE_CNT== PRESCALE-1)
             begin
              STP_CHK_EN=1'b1;
             end  
            else
             begin
              STP_CHK_EN=1'b0;
             end  
         end 
           
   default: begin
             ENABLE=1'b1 ;
             DATA_SAMP_EN=1'b1;
             DESER_EN=1'b0;
             PAR_CHK_EN=1'b0;
             STRT_CHK_EN=1'b0;
             STP_CHK_EN=1'b0;  
             DATA_VALID=1'b0;
            end                                                       
  endcase 
 end 
endmodule 

