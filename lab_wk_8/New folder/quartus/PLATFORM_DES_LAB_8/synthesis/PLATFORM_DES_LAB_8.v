// PLATFORM_DES_LAB_8.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module PLATFORM_DES_LAB_8 (
		input  wire        clk_clk,           //        clk.clk
		output wire        clk_143_ps_clk,    // clk_143_ps.clk
		output wire [9:0]  pio_export,        //        pio.export
		output wire        pll_locked_export, // pll_locked.export
		input  wire        reset_reset_n,     //      reset.reset_n
		output wire [12:0] sdram_if_addr,     //   sdram_if.addr
		output wire [1:0]  sdram_if_ba,       //           .ba
		output wire        sdram_if_cas_n,    //           .cas_n
		output wire        sdram_if_cke,      //           .cke
		output wire        sdram_if_cs_n,     //           .cs_n
		inout  wire [15:0] sdram_if_dq,       //           .dq
		output wire [1:0]  sdram_if_dqm,      //           .dqm
		output wire        sdram_if_ras_n,    //           .ras_n
		output wire        sdram_if_we_n      //           .we_n
	);

	wire         pll_0_outclk1_clk;                                         // pll_0:outclk_1 -> [master_0:clk_clk, mm_interconnect_0:pll_0_outclk1_clk, new_sdram_controller_0:clk, pio_0:clk, rst_controller:clk, rst_controller_001:clk]
	wire  [31:0] master_0_master_readdata;                                  // mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	wire         master_0_master_waitrequest;                               // mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_address;                                   // master_0:master_address -> mm_interconnect_0:master_0_master_address
	wire         master_0_master_read;                                      // master_0:master_read -> mm_interconnect_0:master_0_master_read
	wire   [3:0] master_0_master_byteenable;                                // master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	wire         master_0_master_readdatavalid;                             // mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_write;                                     // master_0:master_write -> mm_interconnect_0:master_0_master_write
	wire  [31:0] master_0_master_writedata;                                 // master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	wire         mm_interconnect_0_pio_0_s1_chipselect;                     // mm_interconnect_0:pio_0_s1_chipselect -> pio_0:chipselect
	wire  [31:0] mm_interconnect_0_pio_0_s1_readdata;                       // pio_0:readdata -> mm_interconnect_0:pio_0_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_0_s1_address;                        // mm_interconnect_0:pio_0_s1_address -> pio_0:address
	wire         mm_interconnect_0_pio_0_s1_write;                          // mm_interconnect_0:pio_0_s1_write -> pio_0:write_n
	wire  [31:0] mm_interconnect_0_pio_0_s1_writedata;                      // mm_interconnect_0:pio_0_s1_writedata -> pio_0:writedata
	wire         mm_interconnect_0_new_sdram_controller_0_s1_chipselect;    // mm_interconnect_0:new_sdram_controller_0_s1_chipselect -> new_sdram_controller_0:az_cs
	wire  [15:0] mm_interconnect_0_new_sdram_controller_0_s1_readdata;      // new_sdram_controller_0:za_data -> mm_interconnect_0:new_sdram_controller_0_s1_readdata
	wire         mm_interconnect_0_new_sdram_controller_0_s1_waitrequest;   // new_sdram_controller_0:za_waitrequest -> mm_interconnect_0:new_sdram_controller_0_s1_waitrequest
	wire  [24:0] mm_interconnect_0_new_sdram_controller_0_s1_address;       // mm_interconnect_0:new_sdram_controller_0_s1_address -> new_sdram_controller_0:az_addr
	wire         mm_interconnect_0_new_sdram_controller_0_s1_read;          // mm_interconnect_0:new_sdram_controller_0_s1_read -> new_sdram_controller_0:az_rd_n
	wire   [1:0] mm_interconnect_0_new_sdram_controller_0_s1_byteenable;    // mm_interconnect_0:new_sdram_controller_0_s1_byteenable -> new_sdram_controller_0:az_be_n
	wire         mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid; // new_sdram_controller_0:za_valid -> mm_interconnect_0:new_sdram_controller_0_s1_readdatavalid
	wire         mm_interconnect_0_new_sdram_controller_0_s1_write;         // mm_interconnect_0:new_sdram_controller_0_s1_write -> new_sdram_controller_0:az_wr_n
	wire  [15:0] mm_interconnect_0_new_sdram_controller_0_s1_writedata;     // mm_interconnect_0:new_sdram_controller_0_s1_writedata -> new_sdram_controller_0:az_data
	wire         rst_controller_reset_out_reset;                            // rst_controller:reset_out -> [mm_interconnect_0:new_sdram_controller_0_reset_reset_bridge_in_reset_reset, new_sdram_controller_0:reset_n]
	wire         master_0_master_reset_reset;                               // master_0:master_reset_reset -> rst_controller:reset_in1
	wire         rst_controller_001_reset_out_reset;                        // rst_controller_001:reset_out -> [mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:pio_0_reset_reset_bridge_in_reset_reset, pio_0:reset_n]

	PLATFORM_DES_LAB_8_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (pll_0_outclk1_clk),             //          clk.clk
		.clk_reset_reset      (~reset_reset_n),                //    clk_reset.reset
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

	PLATFORM_DES_LAB_8_new_sdram_controller_0 new_sdram_controller_0 (
		.clk            (pll_0_outclk1_clk),                                         //   clk.clk
		.reset_n        (~rst_controller_reset_out_reset),                           // reset.reset_n
		.az_addr        (mm_interconnect_0_new_sdram_controller_0_s1_address),       //    s1.address
		.az_be_n        (~mm_interconnect_0_new_sdram_controller_0_s1_byteenable),   //      .byteenable_n
		.az_cs          (mm_interconnect_0_new_sdram_controller_0_s1_chipselect),    //      .chipselect
		.az_data        (mm_interconnect_0_new_sdram_controller_0_s1_writedata),     //      .writedata
		.az_rd_n        (~mm_interconnect_0_new_sdram_controller_0_s1_read),         //      .read_n
		.az_wr_n        (~mm_interconnect_0_new_sdram_controller_0_s1_write),        //      .write_n
		.za_data        (mm_interconnect_0_new_sdram_controller_0_s1_readdata),      //      .readdata
		.za_valid       (mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid), //      .readdatavalid
		.za_waitrequest (mm_interconnect_0_new_sdram_controller_0_s1_waitrequest),   //      .waitrequest
		.zs_addr        (sdram_if_addr),                                             //  wire.export
		.zs_ba          (sdram_if_ba),                                               //      .export
		.zs_cas_n       (sdram_if_cas_n),                                            //      .export
		.zs_cke         (sdram_if_cke),                                              //      .export
		.zs_cs_n        (sdram_if_cs_n),                                             //      .export
		.zs_dq          (sdram_if_dq),                                               //      .export
		.zs_dqm         (sdram_if_dqm),                                              //      .export
		.zs_ras_n       (sdram_if_ras_n),                                            //      .export
		.zs_we_n        (sdram_if_we_n)                                              //      .export
	);

	PLATFORM_DES_LAB_8_pio_0 pio_0 (
		.clk        (pll_0_outclk1_clk),                     //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),   //               reset.reset_n
		.address    (mm_interconnect_0_pio_0_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_0_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_0_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_0_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_0_s1_readdata),   //                    .readdata
		.out_port   (pio_export)                             // external_connection.export
	);

	PLATFORM_DES_LAB_8_pll_0 pll_0 (
		.refclk   (clk_clk),           //  refclk.clk
		.rst      (~reset_reset_n),    //   reset.reset
		.outclk_0 (clk_143_ps_clk),    // outclk0.clk
		.outclk_1 (pll_0_outclk1_clk), // outclk1.clk
		.locked   (pll_locked_export)  //  locked.export
	);

	PLATFORM_DES_LAB_8_mm_interconnect_0 mm_interconnect_0 (
		.pll_0_outclk1_clk                                        (pll_0_outclk1_clk),                                         //                                      pll_0_outclk1.clk
		.master_0_clk_reset_reset_bridge_in_reset_reset           (rst_controller_001_reset_out_reset),                        //           master_0_clk_reset_reset_bridge_in_reset.reset
		.new_sdram_controller_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                            // new_sdram_controller_0_reset_reset_bridge_in_reset.reset
		.pio_0_reset_reset_bridge_in_reset_reset                  (rst_controller_001_reset_out_reset),                        //                  pio_0_reset_reset_bridge_in_reset.reset
		.master_0_master_address                                  (master_0_master_address),                                   //                                    master_0_master.address
		.master_0_master_waitrequest                              (master_0_master_waitrequest),                               //                                                   .waitrequest
		.master_0_master_byteenable                               (master_0_master_byteenable),                                //                                                   .byteenable
		.master_0_master_read                                     (master_0_master_read),                                      //                                                   .read
		.master_0_master_readdata                                 (master_0_master_readdata),                                  //                                                   .readdata
		.master_0_master_readdatavalid                            (master_0_master_readdatavalid),                             //                                                   .readdatavalid
		.master_0_master_write                                    (master_0_master_write),                                     //                                                   .write
		.master_0_master_writedata                                (master_0_master_writedata),                                 //                                                   .writedata
		.new_sdram_controller_0_s1_address                        (mm_interconnect_0_new_sdram_controller_0_s1_address),       //                          new_sdram_controller_0_s1.address
		.new_sdram_controller_0_s1_write                          (mm_interconnect_0_new_sdram_controller_0_s1_write),         //                                                   .write
		.new_sdram_controller_0_s1_read                           (mm_interconnect_0_new_sdram_controller_0_s1_read),          //                                                   .read
		.new_sdram_controller_0_s1_readdata                       (mm_interconnect_0_new_sdram_controller_0_s1_readdata),      //                                                   .readdata
		.new_sdram_controller_0_s1_writedata                      (mm_interconnect_0_new_sdram_controller_0_s1_writedata),     //                                                   .writedata
		.new_sdram_controller_0_s1_byteenable                     (mm_interconnect_0_new_sdram_controller_0_s1_byteenable),    //                                                   .byteenable
		.new_sdram_controller_0_s1_readdatavalid                  (mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid), //                                                   .readdatavalid
		.new_sdram_controller_0_s1_waitrequest                    (mm_interconnect_0_new_sdram_controller_0_s1_waitrequest),   //                                                   .waitrequest
		.new_sdram_controller_0_s1_chipselect                     (mm_interconnect_0_new_sdram_controller_0_s1_chipselect),    //                                                   .chipselect
		.pio_0_s1_address                                         (mm_interconnect_0_pio_0_s1_address),                        //                                           pio_0_s1.address
		.pio_0_s1_write                                           (mm_interconnect_0_pio_0_s1_write),                          //                                                   .write
		.pio_0_s1_readdata                                        (mm_interconnect_0_pio_0_s1_readdata),                       //                                                   .readdata
		.pio_0_s1_writedata                                       (mm_interconnect_0_pio_0_s1_writedata),                      //                                                   .writedata
		.pio_0_s1_chipselect                                      (mm_interconnect_0_pio_0_s1_chipselect)                      //                                                   .chipselect
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
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
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.reset_in1      (master_0_master_reset_reset),    // reset_in1.reset
		.clk            (pll_0_outclk1_clk),              //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
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
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (pll_0_outclk1_clk),                  //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule