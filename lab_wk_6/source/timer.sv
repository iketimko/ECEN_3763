// -------------------------------------------------
// -> Video timer
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Week 6
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module timer (
    input logic clk,
    input logic reset_ctr,
    output logic [31:0] V_pos,
    output logic [31:0] H_pos,
    output logic valid_video
);

    counter u0 ( .clk, .reset_ctr, .V_pos, .H_pos, .valid_video);

endmodule