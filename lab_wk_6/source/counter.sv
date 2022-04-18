// -------------------------------------------------
// -> Counter Module
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Week 6
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module counter (
    input  logic        clk,
    input  logic        reset_ctr,
    output logic [31:0] V_pos, H_pos,
    output logic valid_video
);

    `include "params.svh"

    logic [31:0] count_to_H = IMAGE_WIDTH + HFP_WIDTH + HSYNCH_WIDTH + HBP_WIDTH;
    logic [31:0] count_to_V = IMAGE_HEIGHT + VFP_HEIGHT + VSYNCH_HEIGHT + VBP_HEIGHT;

    always_ff @(posedge clk) begin

        // If reset is pressed
        if (reset_ctr == 1) begin
            H_pos <= 'b0;
            V_pos <= 'b0;
        end
        
        // outside the valid video region but not to the line end
        else if (H_pos < count_to_H - 'b1) begin
            H_pos <= H_pos + 'b1;
        end

        // Otherwise reset counter value, and increment the V count
        else begin
            H_pos <= 'b0;
            // if the vertical count hasnt reached the bottom
            if (V_pos < count_to_V - 1) begin
                V_pos <= V_pos + 'b1;
            end
            // else reset the V position 
            else begin
                V_pos <= 'b0;
            end
        end
    end

    assign valid_video = ((H_pos < IMAGE_WIDTH) && (V_pos < IMAGE_HEIGHT));

endmodule