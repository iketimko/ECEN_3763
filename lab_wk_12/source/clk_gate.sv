
module clk_gate (clk_in, state, clk_out, shift_rst);

input [3:0] state;
input clk_in;
output logic clk_out;
output logic shift_rst;

logic clkg_en, gated_clk, reset_shift_reg;

always_ff @(negedge clk_in) begin
    if (state == 0) begin
        reset_shift_reg = 1'b1;
    end else begin
        reset_shift_reg = 1'b0;
    end
end

always_ff @(negedge clk_in) begin
    if((state > 1) & (state < 14)) begin
        clkg_en = 1'b1;
    end else begin
        clkg_en = 1'b0;
    end
end

assign clk_out = clk_in & clkg_en;
assign shift_rst = reset_shift_reg;

endmodule