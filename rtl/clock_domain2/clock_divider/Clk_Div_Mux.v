module Clk_Div_Mux (
    input wire [5:0] prescale ,
    output reg [3:0] Div_Ratio 
);
    always @(*) begin
        case (prescale)
            6'd32    : Div_Ratio =  4'd1 ;
            6'd16    : Div_Ratio =  4'd2 ;  
            6'd8     : Div_Ratio =  4'd4 ;  
            6'd4     : Div_Ratio =  4'd8 ;                                
            default  : Div_Ratio =  4'd1 ;
        endcase
    end
endmodule