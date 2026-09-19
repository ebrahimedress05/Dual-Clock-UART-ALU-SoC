module PULSE_GEN (
    input wire LVL_SIG ,
    input wire RST ,
    input wire CLK ,
    output reg PULSE_SIG
);
    reg DATA_VALID_DELAY ;

    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            DATA_VALID_DELAY <= 1'b0 ;
            PULSE_SIG <= 1'b0 ;
        end
        else begin
            DATA_VALID_DELAY <= LVL_SIG ;
            PULSE_SIG <= LVL_SIG & (~DATA_VALID_DELAY) ;
        end
    end

endmodule