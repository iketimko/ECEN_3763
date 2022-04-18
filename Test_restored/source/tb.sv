`timescale 1 ns / 100 ps

module tb();

logic [0:0] KEY;
logic [0:0] LEDR;

Test U0 (.*);

initial begin
    KEY[0] = 0;
    #100 KEY[0] = 1;
    #100 $stop;
end

endmodule
