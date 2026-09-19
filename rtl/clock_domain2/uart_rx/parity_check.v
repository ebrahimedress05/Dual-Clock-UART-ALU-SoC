module parity_check (
    input wire par_chk_en ,
    input wire sampled_bit ,
    input wire PAR_TYP ,
    input wire [7:0] P_DATA ,
    input wire CLK ,
    input wire RST ,     
    output reg par_err
);
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            par_err <= 0 ;
        end
        else if (par_chk_en) begin
            if (PAR_TYP) begin
                if (sampled_bit == ~^P_DATA) begin
                    par_err <= 0 ;
                end
                else begin
                    par_err <= 1 ;
                end
            end
            else begin
                if (sampled_bit == ^P_DATA) begin
                    par_err <= 0 ;
                end
                else begin
                    par_err <= 1 ;
                end
            end
        end
    end    
endmodule