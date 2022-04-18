
module clk_gate (clk_in, clk_en, pll_locked, clk_out);

input clk_in;
input clk_en;		
input pll_locked;	
output logic reset_n;

logic q0, q1, asynch_clk_en;
assign asynch_clk_en  = clk_en & pll_locked;

always_ff @ (posedge clk_in, posedge asynch_clk_en)
    if (asynch_clk_en == 1'b0)
        begin
            q0 <= 1'b0;  q1 <= 1'b0;  reset_n <= 1'b0;
        end
    else
        begin
            q0 <= 1'b1;  q1 <= q0;  reset_n <= q1;
        end 

endmodule