module shift #(
  parameter REG_DEPTH = 12
)(
  input clk,       //clock signal
  input enable,       //enable signal
  input rst,       //reset signal
  input data_in,   //input bit
  output [REG_DEPTH-1:0] data_out  //output bit
);

  reg [REG_DEPTH-1:0] data_reg;

  always @(posedge clk or posedge rst) begin
    if (rst) begin //asynchronous reset
      data_reg <= {REG_DEPTH{1'b0}}; //load REG_DEPTH zeros
    end else if (enable) begin
      data_reg <= {data_reg[REG_DEPTH-2:0], data_in}; //load input data as LSB and shift (left) all other bits 
    end
  end

  assign data_out = data_reg[REG_DEPTH-1:0];

endmodule