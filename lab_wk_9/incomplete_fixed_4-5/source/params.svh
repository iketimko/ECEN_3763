`define _480p_resolution

`ifdef _480p_resolution
    parameter IMAGE_WIDTH = 'd640;
    parameter HFP_WIDTH = 'd16;
    parameter HSYNCH_WIDTH = 'd96;
    parameter HBP_WIDTH = 'd48;

    parameter IMAGE_HEIGHT = 'd480;
    parameter VFP_HEIGHT = 'd10;
    parameter VSYNCH_HEIGHT = 'd2;
    parameter VBP_HEIGHT = 'd33;
    
    parameter BAR_WIDTH = IMAGE_WIDTH/8;
    parameter BAR_HEIGHT = IMAGE_HEIGHT/8;
`endif 

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
`endif 

`ifdef _1080p_resolution
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
