// -------------------------------------------------
// -> Pixel Generator Module
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Week 6
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module pixelgen (
    input logic valid_video, clk,
    input logic [31:0] H_pos, V_pos,
    output logic VGA_HS, VGA_VS,
    output logic [7:0] VGA_R, VGA_G, VGA_B
);
    `include "params.svh"

    logic [23:0] VGA_RGB;

    // Handle the off screen RGB values with a conditional assignment
    assign {VGA_R, VGA_G, VGA_B} = valid_video ? VGA_RGB[23:0] : 24'b0;
    // Manage VGA HSYNC pulse with an assign statement
    assign VGA_HS = (H_pos >= (IMAGE_WIDTH + HFP_WIDTH)) && (H_pos < (IMAGE_WIDTH + HFP_WIDTH + HSYNCH_WIDTH));
    // Manage VGA VSYNS Pulse with an assign statement
    assign VGA_VS = (V_pos >= (IMAGE_HEIGHT + VFP_HEIGHT)) && (V_pos < (IMAGE_HEIGHT + VFP_HEIGHT + VSYNCH_HEIGHT));

    logic [5:0] reg_add;
    logic [2:0] reg_add_1, reg_add_0;
    assign reg_add_1 = V_pos/BAR_HEIGHT;
    assign reg_add_0 = H_pos/BAR_WIDTH;

    assign reg_add = {reg_add_1, reg_add_0};

    ROM_pixels u0 (.address(reg_add), .clock(clk), .q(VGA_RGB));

endmodule