// -------------------------------------------------
// -> Pixel Generator Module
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Weeks 4 and 5
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module pixelgen (
    input logic valid_video,
    input logic [31:0] H_pos, V_pos,
    output logic VGA_HS, VGA_VS,
    output logic [7:0] VGA_R, VGA_G, VGA_B
);
    `define _720p_resolution
    `include "params.svh"

    logic [31:0] bar_width = IMAGE_WIDTH/8; //should be 160 for 720p
    logic [23:0] VGA_RGB;

    logic [7:0][23:0] colorvals;
    assign colorvals[0] = 24'h00F166; // green/blue
    assign colorvals[1] = 24'hFF2394; // Pink
    assign colorvals[2] = 24'hC1FF00; // citrus
    assign colorvals[3] = 24'h00FF83; // aquamarine
    assign colorvals[4] = 24'hFF0027; //cherry
    assign colorvals[5] = 24'h00F3FF; // blue
    assign colorvals[6] = 24'h8000FF; //purple
    assign colorvals[7] = 24'hFF8700; // orange

    // Handle the off screen RGB values with a conditional assignment
    assign {VGA_R, VGA_G, VGA_B} = valid_video ? VGA_RGB[23:0] : 24'b0;
    // Manage VGA HSYNC pulse with an assign statement
    assign VGA_HS = (H_pos >= (IMAGE_WIDTH + HFP_WIDTH)) && (H_pos < (IMAGE_WIDTH + HFP_WIDTH + HSYNCH_WIDTH));
    // Manage VGA VSYNS Pulse with an assign statement
    assign VGA_VS = (V_pos >= (IMAGE_HEIGHT + VFP_HEIGHT)) && (V_pos < (IMAGE_HEIGHT + VFP_HEIGHT + VSYNCH_HEIGHT));

    always_comb begin
        // if we are within valid video, display something
        if (H_pos < bar_width * 1) VGA_RGB = colorvals[0][23:0];
        else if (H_pos < bar_width * 2) VGA_RGB = colorvals[1][23:0];
        else if (H_pos < bar_width * 3) VGA_RGB = colorvals[2][23:0];
        else if (H_pos < bar_width * 4) VGA_RGB = colorvals[3][23:0];
        else if (H_pos < bar_width * 5) VGA_RGB = colorvals[4][23:0];
        else if (H_pos < bar_width * 6) VGA_RGB = colorvals[5][23:0];
        else if (H_pos < bar_width * 7) VGA_RGB = colorvals[6][23:0];
        else VGA_RGB = colorvals[7][23:0];
    end

endmodule