// `define _720p_resolution

`ifdef _720p_resolution
    parameter IMAGE_WIDTH = 'd1280;
    parameter HFP_WIDTH = 'd110;
    parameter HSYNCH_WIDTH = 'd40;
    parameter HBP_WIDTH = 'd220;

    parameter IMAGE_HEIGHT = 'd720;
    parameter VFP_HEIGHT = 'd5;
    parameter VSYNCH_HEIGHT = 'd5;
    parameter VBP_HEIGHT = 'd20;
    
    parameter BAR_WIDTH = IMAGE_WIDTH/8;
    parameter BAR_HEIGHT = IMAGE_HEIGHT/8;

`else // for 1080p
    parameter IMAGE_WIDTH = 'd1920;
    parameter HFP_WIDTH = 'd88;
    parameter HBP_WIDTH = 'd148;
    parameter HSYNCH_WIDTH = 'd44;

    parameter IMAGE_HEIGHT = 'd1080;
    parameter VFP_HEIGHT = 'd4;
    parameter VBP_HEIGHT = 'd36;
    parameter VSYNCH_HEIGHT = 'd5;
    
    parameter BAR_WIDTH = IMAGE_WIDTH/8;
    parameter BAR_HEIGHT = IMAGE_HEIGHT/8;
`endif 
