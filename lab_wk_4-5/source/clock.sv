// -------------------------------------------------
// -> Clock Module 
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Weeks 4 and 5
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module clock (
    input  logic refclk,
    input  logic rst,
    output logic outclk_0,
    output logic locked
);
    PLL u1 (.*);
    
endmodule