module ECEN3763_HW13 (input clock, 
                      input [15:0] datain, 
                      output logic [15:0] dataout);

logic [15:0] my_data, your_data;

// Register inputs
always_ff @ (posedge clock)
    my_data <= datain;

// Do something with dat
assign your_data [15:8] = my_data [ 7:0];
assign your_data [ 7:0] = my_data [15:8];

// Register outputs
always_ff @ (posedge clock)
    dataout <= your_data;

endmodule