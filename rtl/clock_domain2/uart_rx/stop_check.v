module stop_check (
    input wire stp_chk_en ,
    input wire sampled_bit ,
    input wire CLK ,
    input wire RST ,     
    output reg stp_err
);
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            stp_err <= 0 ;
        end
        else if (stp_chk_en) begin
            if (sampled_bit == 1) begin
                stp_err <= 0 ;
            end
            else begin
                stp_err <= 1 ;
            end
        end     
    end
endmodule