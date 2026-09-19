module data_sampling (
    input wire RX_IN ,
    input wire [5:0] prescale ,
    input wire [5:0] edge_cnt ,
    input wire CLK ,
    input wire RST ,
    input wire dat_samp_en ,
    output reg sampled_bit
);
//sampled_bits
reg bit_1 ;
reg bit_2 ;
reg bit_3 ;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            bit_1 <= 1'b0 ;
            bit_2 <= 1'b0 ;
            bit_3 <= 1'b0 ;
        end
        else if (dat_samp_en) begin
                if (edge_cnt == ((prescale >> 1) - 1)) begin
                    bit_1 <= RX_IN ;
                end
                else if (edge_cnt == (prescale >> 1)) begin
                    bit_2 <= RX_IN ;
                end
                else if (edge_cnt == ((prescale >> 1) + 1)) begin
                    bit_3 <= RX_IN ;
                end        
        end
        else begin
            bit_1 <= 1'b0 ;
            bit_2 <= 1'b0 ;
            bit_3 <= 1'b0 ;
        end
    end

    // sampled_bit logic 
    always @(*) begin
        sampled_bit = (bit_1 & bit_2) | (bit_1 & bit_3) | (bit_2 & bit_3) ;
    end
endmodule