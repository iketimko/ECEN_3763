// -------------------------------------------------
// -> Pixel Generator Module
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Week 7
// VGA Video Controller for 720p
// Created: 2/25/22
// -------------------------------------------------

module pixelgen (
    input logic valid_video, clk,
    input logic [31:0] H_pos, V_pos, in_data,
    output logic VGA_HS, VGA_VS,
    output logic [7:0] VGA_R, VGA_G, VGA_B
);
    `include "params.svh"

    logic [23:0] VGA_RGB;
    assign VGA_RGB = in_data[23:0];

    // logic [31:0] H_pos_short, V_pos_short;
    // assign H_pos_short = H_pos[31:1];
    // assign V_pos_short = V_pos[31:1];

    // logic [31:0] reg_add;
    // assign reg_add = H_pos_short + ((IMAGE_WIDTH/2)*V_pos_short);

    //ROM_640p u1 (.address(reg_add), .clock(clk), .q(VGA_RGB));
    
    // Handle the off screen RGB values with a conditional assignment
    assign {VGA_R[7:0], VGA_G[7:0], VGA_B[7:0]} = valid_video ? VGA_RGB : 24'b0; 
    // // assign the remaining undefined bits to 0
    // assign VGA_R[3:0] = 'b0;
    // assign VGA_G[3:0] = 'b0;
    // assign VGA_B[3:0] = 'b0;
    // Manage VGA HSYNC pulse with an assign statement
    assign VGA_HS = (H_pos >= (IMAGE_WIDTH + HFP_WIDTH)) && (H_pos < (IMAGE_WIDTH + HFP_WIDTH + HSYNCH_WIDTH));
    // Manage VGA VSYNS Pulse with an assign statement
    assign VGA_VS = (V_pos >= (IMAGE_HEIGHT + VFP_HEIGHT)) && (V_pos < (IMAGE_HEIGHT + VFP_HEIGHT + VSYNCH_HEIGHT));

endmodule