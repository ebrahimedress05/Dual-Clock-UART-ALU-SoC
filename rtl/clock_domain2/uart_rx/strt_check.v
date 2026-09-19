module strt_check (
    input wire strt_chk_en ,
    input wire sampled_bit ,
    input wire CLK ,
    input wire RST ,     
    output reg strt_glitch
);
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            strt_glitch <= 0 ;
        end
        else if (strt_chk_en) begin
            if (sampled_bit == 0) begin
                strt_glitch <= 0 ;
            end
            else begin
                strt_glitch <= 1 ;
            end
        end
        else begin
            strt_glitch <= 0 ;
        end
    end
endmodule