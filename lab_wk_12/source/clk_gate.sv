
module clk_gate (clk_in, enable, reset, clk_out);

input enable;
input clk_in;
input reset;
output logic clk_out;

logic clkg_en, gated_clk;

always_latch  begin
 if(~clk_in) 
    clkg_en = enable;
end

assign clk_out = clk_in & clkg_en;
 
// assign gated_clk = clk_in & clkg_en;

// always_ff @(posedge gated_clk, negedge reset) begin
//   if(reset)
//      Q <= 1'b0;
//   else 
//      Q <= D;
// end

endmodule