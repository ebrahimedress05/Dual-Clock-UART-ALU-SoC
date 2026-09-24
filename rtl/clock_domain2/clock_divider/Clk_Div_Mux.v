module Clk_Div_Mux (
    input wire [5:0] prescale ,
    output reg [7:0] Div_Ratio 
);
    always @(*) begin
        case (prescale)
            6'd32    : Div_Ratio =  'd1 ;
            6'd16    : Div_Ratio =  'd2 ;  
            6'd8     : Div_Ratio =  'd4 ;  
            6'd4     : Div_Ratio =  'd8 ;                                
            default  : Div_Ratio =  'd1 ;
        endcase
    end
endmodule