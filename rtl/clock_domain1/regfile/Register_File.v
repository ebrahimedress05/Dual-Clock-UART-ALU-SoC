module regfile #(parameter Address_width = 4 , Data_width = 8 , depth = 16)(
    input [Data_width-1:0] WrData ,
    input [Address_width-1:0] Address ,
    input WrEn , RdEN ,
    input CLK ,
    input RST ,
    output reg [Data_width-1:0] RdData ,
    output reg RdData_Valid ,
    output wire [Data_width-1:0] REG0 ,
    output wire [Data_width-1:0] REG1 ,
    output wire [Data_width-1:0] REG2 ,
    output wire [Data_width-1:0] REG3 

);

// memory declaration
reg [Data_width-1:0] Reg_file [0:depth-1] ;

integer i;
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        RdData_Valid <= 'b0 ;
        RdData <= 'b0 ;

        for (i =0 ; i<depth ; i=i+1) begin
            if(i==2) begin
                Reg_file[i] <= 'b10000001 ; // UART Config 
            end
            else if(i==3) begin
                Reg_file[i] <= 'b00100000 ; // Div Ratio
            end
            else begin
                Reg_file[i] <= 'b0 ;
            end
        end

    end

    else if (RdEN && !WrEn) begin
        RdData <= Reg_file [Address] ;
        RdData_Valid <= 1'b1 ;
    end

    else if (!RdEN && WrEn) begin
        Reg_file [Address] <= WrData ;
        RdData_Valid <= 1'b0 ;
    end
    
    else begin
        RdData_Valid <= 1'b0 ;
    end

end

assign REG0 = Reg_file[0] ;
assign REG1 = Reg_file[1] ;
assign REG2 = Reg_file[2] ;
assign REG3 = Reg_file[3] ;
    
endmodule