// -------------------------------------------------
// -> Video timer
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Weeks 4 and 5
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module timer (
    input logic clk,
    output logic [31:0] V_pos,
    output logic [31:0] H_pos,
    output logic valid_video
);

    logic reset_ctr  = 'b0;

    counter u0 ( .clk, .reset_ctr, .V_pos, .H_pos, .valid_video);


endmodule