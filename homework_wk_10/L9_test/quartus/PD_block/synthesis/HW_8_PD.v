// HW_8_PD.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module HW_8_PD (
		input  wire       clk_clk,           //        clk.clk
		input  wire [9:0] pio_10_bit_export, // pio_10_bit.export
		output wire       pio_1_bit_export,  //  pio_1_bit.export
		output wire [7:0] pio_8_bit_export,  //  pio_8_bit.export
		input  wire       reset_reset_n      //      reset.reset_n
	);

	wire         master_0_master_reset_reset;           // master_0:master_reset_reset -> [master_0:clk_reset_reset, rst_controller:reset_in0]
	wire  [31:0] master_0_master_readdata;              // mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	wire         master_0_master_waitrequest;           // mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_address;               // master_0:master_address -> mm_interconnect_0:master_0_master_address
	wire         master_0_master_read;                  // master_0:master_read -> mm_interconnect_0:master_0_master_read
	wire   [3:0] master_0_master_byteenable;            // master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	wire         master_0_master_readdatavalid;         // mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_write;                 // master_0:master_write -> mm_interconnect_0:master_0_master_write
	wire  [31:0] master_0_master_writedata;             // master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	wire         mm_interconnect_0_pio_0_s1_chipselect; // mm_interconnect_0:pio_0_s1_chipselect -> pio_0:chipselect
	wire  [31:0] mm_interconnect_0_pio_0_s1_readdata;   // pio_0:readdata -> mm_interconnect_0:pio_0_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_0_s1_address;    // mm_interconnect_0:pio_0_s1_address -> pio_0:address
	wire         mm_interconnect_0_pio_0_s1_write;      // mm_interconnect_0:pio_0_s1_write -> pio_0:write_n
	wire  [31:0] mm_interconnect_0_pio_0_s1_writedata;  // mm_interconnect_0:pio_0_s1_writedata -> pio_0:writedata
	wire         mm_interconnect_0_pio_1_s1_chipselect; // mm_interconnect_0:pio_1_s1_chipselect -> pio_1:chipselect
	wire  [31:0] mm_interconnect_0_pio_1_s1_readdata;   // pio_1:readdata -> mm_interconnect_0:pio_1_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_1_s1_address;    // mm_interconnect_0:pio_1_s1_address -> pio_1:address
	wire         mm_interconnect_0_pio_1_s1_write;      // mm_interconnect_0:pio_1_s1_write -> pio_1:write_n
	wire  [31:0] mm_interconnect_0_pio_1_s1_writedata;  // mm_interconnect_0:pio_1_s1_writedata -> pio_1:writedata
	wire  [31:0] mm_interconnect_0_pio_2_s1_readdata;   // pio_2:readdata -> mm_interconnect_0:pio_2_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_2_s1_address;    // mm_interconnect_0:pio_2_s1_address -> pio_2:address
	wire         rst_controller_reset_out_reset;        // rst_controller:reset_out -> [mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:pio_0_reset_reset_bridge_in_reset_reset, pio_0:reset_n, pio_1:reset_n, pio_2:reset_n]

	HW_8_PD_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (clk_clk),                       //          clk.clk
		.clk_reset_reset      (master_0_master_reset_reset),   //    clk_reset.reset
		.master_address       (master_0_master_address),       //       master.address
		.master_readdata      (master_0_master_readdata),      //             .readdata
		.master_read          (master_0_master_read),          //             .read
		.master_write         (master_0_master_write),         //             .write
		.master_writedata     (master_0_master_writedata),     //             .writedata
		.master_waitrequest   (master_0_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (master_0_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (master_0_master_byteenable),    //             .byteenable
		.master_reset_reset   (master_0_master_reset_reset)    // master_reset.reset
	);

	HW_8_PD_pio_0 pio_0 (
		.clk        (clk_clk),                               //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),       //               reset.reset_n
		.address    (mm_interconnect_0_pio_0_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_0_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_0_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_0_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_0_s1_readdata),   //                    .readdata
		.out_port   (pio_8_bit_export)                       // external_connection.export
	);

	HW_8_PD_pio_1 pio_1 (
		.clk        (clk_clk),                               //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),       //               reset.reset_n
		.address    (mm_interconnect_0_pio_1_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_1_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_1_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_1_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_1_s1_readdata),   //                    .readdata
		.out_port   (pio_1_bit_export)                       // external_connection.export
	);

	HW_8_PD_pio_2 pio_2 (
		.clk      (clk_clk),                             //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address  (mm_interconnect_0_pio_2_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_pio_2_s1_readdata), //                    .readdata
		.in_port  (pio_10_bit_export)                    // external_connection.export
	);

	HW_8_PD_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                  (clk_clk),                               //                                clk_0_clk.clk
		.master_0_clk_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),        // master_0_clk_reset_reset_bridge_in_reset.reset
		.pio_0_reset_reset_bridge_in_reset_reset        (rst_controller_reset_out_reset),        //        pio_0_reset_reset_bridge_in_reset.reset
		.master_0_master_address                        (master_0_master_address),               //                          master_0_master.address
		.master_0_master_waitrequest                    (master_0_master_waitrequest),           //                                         .waitrequest
		.master_0_master_byteenable                     (master_0_master_byteenable),            //                                         .byteenable
		.master_0_master_read                           (master_0_master_read),                  //                                         .read
		.master_0_master_readdata                       (master_0_master_readdata),              //                                         .readdata
		.master_0_master_readdatavalid                  (master_0_master_readdatavalid),         //                                         .readdatavalid
		.master_0_master_write                          (master_0_master_write),                 //                                         .write
		.master_0_master_writedata                      (master_0_master_writedata),             //                                         .writedata
		.pio_0_s1_address                               (mm_interconnect_0_pio_0_s1_address),    //                                 pio_0_s1.address
		.pio_0_s1_write                                 (mm_interconnect_0_pio_0_s1_write),      //                                         .write
		.pio_0_s1_readdata                              (mm_interconnect_0_pio_0_s1_readdata),   //                                         .readdata
		.pio_0_s1_writedata                             (mm_interconnect_0_pio_0_s1_writedata),  //                                         .writedata
		.pio_0_s1_chipselect                            (mm_interconnect_0_pio_0_s1_chipselect), //                                         .chipselect
		.pio_1_s1_address                               (mm_interconnect_0_pio_1_s1_address),    //                                 pio_1_s1.address
		.pio_1_s1_write                                 (mm_interconnect_0_pio_1_s1_write),      //                                         .write
		.pio_1_s1_readdata                              (mm_interconnect_0_pio_1_s1_readdata),   //                                         .readdata
		.pio_1_s1_writedata                             (mm_interconnect_0_pio_1_s1_writedata),  //                                         .writedata
		.pio_1_s1_chipselect                            (mm_interconnect_0_pio_1_s1_chipselect), //                                         .chipselect
		.pio_2_s1_address                               (mm_interconnect_0_pio_2_s1_address),    //                                 pio_2_s1.address
		.pio_2_s1_readdata                              (mm_interconnect_0_pio_2_s1_readdata)    //                                         .readdata
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (master_0_master_reset_reset),    // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
