
/////////////////////////////////////////////////////////////
/////////////////////// Clock Gating ////////////////////////
/////////////////////////////////////////////////////////////

module CLK_GATE_dft (
input      CLK_EN,
input      TE ,
input      CLK,
output     GATED_CLK
);


//internal connections
reg     Latch_Out ;

//latch (Level Sensitive Device)
always @(CLK or CLK_EN or TE)
 begin
  if(!CLK)      // active low
   begin
    Latch_Out <= CLK_EN | TE ;
   end
 end
 
 
// ANDING
assign  GATED_CLK = CLK && Latch_Out ;




/*

TLATNCAX12M U0_TLATNCAX12M (
.E(CLK_EN || TE),
.CK(CLK),
.ECK(GATED_CLK)
);

*/

endmodule
