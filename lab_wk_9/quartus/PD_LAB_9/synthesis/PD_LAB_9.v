// PD_LAB_9.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module PD_LAB_9 (
		input  wire        clk_clk,                  //              clk.clk
		output wire        dma_irq_irq,              //          dma_irq.irq
		output wire        dram_clk_clk,             //         dram_clk.clk
		output wire        fifo_0_out_valid,         //       fifo_0_out.valid
		output wire [31:0] fifo_0_out_data,          //                 .data
		input  wire        fifo_0_out_ready,         //                 .ready
		input  wire        fifo_0_reset_out_reset_n, // fifo_0_reset_out.reset_n
		input  wire        fifo_pixel_clk_clk,       //   fifo_pixel_clk.clk
		output wire        pio_export,               //              pio.export
		output wire        pll_locked_export,        //       pll_locked.export
		input  wire        reset_reset_n,            //            reset.reset_n
		output wire [12:0] sdram_if_addr,            //         sdram_if.addr
		output wire [1:0]  sdram_if_ba,              //                 .ba
		output wire        sdram_if_cas_n,           //                 .cas_n
		output wire        sdram_if_cke,             //                 .cke
		output wire        sdram_if_cs_n,            //                 .cs_n
		inout  wire [15:0] sdram_if_dq,              //                 .dq
		output wire [1:0]  sdram_if_dqm,             //                 .dqm
		output wire        sdram_if_ras_n,           //                 .ras_n
		output wire        sdram_if_we_n             //                 .we_n
	);

	wire         pll_0_outclk1_clk;                                         // pll_0:outclk_1 -> [dma_0:clk, fifo_0:wrclock, master_0:clk_clk, mm_interconnect_0:pll_0_outclk1_clk, mm_interconnect_1:pll_0_outclk1_clk, new_sdram_controller_0:clk, pio_0:clk, rst_controller:clk]
	wire         master_0_master_reset_reset;                               // master_0:master_reset_reset -> [master_0:clk_reset_reset, pll_0:rst, rst_controller:reset_in0]
	wire  [31:0] master_0_master_readdata;                                  // mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	wire         master_0_master_waitrequest;                               // mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_address;                                   // master_0:master_address -> mm_interconnect_0:master_0_master_address
	wire         master_0_master_read;                                      // master_0:master_read -> mm_interconnect_0:master_0_master_read
	wire   [3:0] master_0_master_byteenable;                                // master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	wire         master_0_master_readdatavalid;                             // mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_write;                                     // master_0:master_write -> mm_interconnect_0:master_0_master_write
	wire  [31:0] master_0_master_writedata;                                 // master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	wire         dma_0_read_master_chipselect;                              // dma_0:read_chipselect -> mm_interconnect_0:dma_0_read_master_chipselect
	wire  [31:0] dma_0_read_master_readdata;                                // mm_interconnect_0:dma_0_read_master_readdata -> dma_0:read_readdata
	wire         dma_0_read_master_waitrequest;                             // mm_interconnect_0:dma_0_read_master_waitrequest -> dma_0:read_waitrequest
	wire  [25:0] dma_0_read_master_address;                                 // dma_0:read_address -> mm_interconnect_0:dma_0_read_master_address
	wire         dma_0_read_master_read;                                    // dma_0:read_read_n -> mm_interconnect_0:dma_0_read_master_read
	wire         dma_0_read_master_readdatavalid;                           // mm_interconnect_0:dma_0_read_master_readdatavalid -> dma_0:read_readdatavalid
	wire         mm_interconnect_0_dma_0_control_port_slave_chipselect;     // mm_interconnect_0:dma_0_control_port_slave_chipselect -> dma_0:dma_ctl_chipselect
	wire  [31:0] mm_interconnect_0_dma_0_control_port_slave_readdata;       // dma_0:dma_ctl_readdata -> mm_interconnect_0:dma_0_control_port_slave_readdata
	wire   [2:0] mm_interconnect_0_dma_0_control_port_slave_address;        // mm_interconnect_0:dma_0_control_port_slave_address -> dma_0:dma_ctl_address
	wire         mm_interconnect_0_dma_0_control_port_slave_write;          // mm_interconnect_0:dma_0_control_port_slave_write -> dma_0:dma_ctl_write_n
	wire  [31:0] mm_interconnect_0_dma_0_control_port_slave_writedata;      // mm_interconnect_0:dma_0_control_port_slave_writedata -> dma_0:dma_ctl_writedata
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
	wire         dma_0_write_master_chipselect;                             // dma_0:write_chipselect -> mm_interconnect_1:dma_0_write_master_chipselect
	wire         dma_0_write_master_waitrequest;                            // mm_interconnect_1:dma_0_write_master_waitrequest -> dma_0:write_waitrequest
	wire   [4:0] dma_0_write_master_address;                                // dma_0:write_address -> mm_interconnect_1:dma_0_write_master_address
	wire   [3:0] dma_0_write_master_byteenable;                             // dma_0:write_byteenable -> mm_interconnect_1:dma_0_write_master_byteenable
	wire         dma_0_write_master_write;                                  // dma_0:write_write_n -> mm_interconnect_1:dma_0_write_master_write
	wire  [31:0] dma_0_write_master_writedata;                              // dma_0:write_writedata -> mm_interconnect_1:dma_0_write_master_writedata
	wire         mm_interconnect_1_fifo_0_in_waitrequest;                   // fifo_0:avalonmm_write_slave_waitrequest -> mm_interconnect_1:fifo_0_in_waitrequest
	wire   [0:0] mm_interconnect_1_fifo_0_in_address;                       // mm_interconnect_1:fifo_0_in_address -> fifo_0:avalonmm_write_slave_address
	wire         mm_interconnect_1_fifo_0_in_write;                         // mm_interconnect_1:fifo_0_in_write -> fifo_0:avalonmm_write_slave_write
	wire  [31:0] mm_interconnect_1_fifo_0_in_writedata;                     // mm_interconnect_1:fifo_0_in_writedata -> fifo_0:avalonmm_write_slave_writedata
	wire         rst_controller_reset_out_reset;                            // rst_controller:reset_out -> [dma_0:system_reset_n, fifo_0:wrreset_n, mm_interconnect_0:dma_0_reset_reset_bridge_in_reset_reset, mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_1:dma_0_reset_reset_bridge_in_reset_reset, new_sdram_controller_0:reset_n, pio_0:reset_n]

	PD_LAB_9_dma_0 dma_0 (
		.clk                (pll_0_outclk1_clk),                                     //                clk.clk
		.system_reset_n     (~rst_controller_reset_out_reset),                       //              reset.reset_n
		.dma_ctl_address    (mm_interconnect_0_dma_0_control_port_slave_address),    // control_port_slave.address
		.dma_ctl_chipselect (mm_interconnect_0_dma_0_control_port_slave_chipselect), //                   .chipselect
		.dma_ctl_readdata   (mm_interconnect_0_dma_0_control_port_slave_readdata),   //                   .readdata
		.dma_ctl_write_n    (~mm_interconnect_0_dma_0_control_port_slave_write),     //                   .write_n
		.dma_ctl_writedata  (mm_interconnect_0_dma_0_control_port_slave_writedata),  //                   .writedata
		.dma_ctl_irq        (dma_irq_irq),                                           //                irq.irq
		.read_address       (dma_0_read_master_address),                             //        read_master.address
		.read_chipselect    (dma_0_read_master_chipselect),                          //                   .chipselect
		.read_read_n        (dma_0_read_master_read),                                //                   .read_n
		.read_readdata      (dma_0_read_master_readdata),                            //                   .readdata
		.read_readdatavalid (dma_0_read_master_readdatavalid),                       //                   .readdatavalid
		.read_waitrequest   (dma_0_read_master_waitrequest),                         //                   .waitrequest
		.write_address      (dma_0_write_master_address),                            //       write_master.address
		.write_chipselect   (dma_0_write_master_chipselect),                         //                   .chipselect
		.write_waitrequest  (dma_0_write_master_waitrequest),                        //                   .waitrequest
		.write_write_n      (dma_0_write_master_write),                              //                   .write_n
		.write_writedata    (dma_0_write_master_writedata),                          //                   .writedata
		.write_byteenable   (dma_0_write_master_byteenable)                          //                   .byteenable
	);

	PD_LAB_9_fifo_0 fifo_0 (
		.wrclock                          (pll_0_outclk1_clk),                       //    clk_in.clk
		.wrreset_n                        (~rst_controller_reset_out_reset),         //  reset_in.reset_n
		.rdclock                          (fifo_pixel_clk_clk),                      //   clk_out.clk
		.rdreset_n                        (fifo_0_reset_out_reset_n),                // reset_out.reset_n
		.avalonmm_write_slave_writedata   (mm_interconnect_1_fifo_0_in_writedata),   //        in.writedata
		.avalonmm_write_slave_write       (mm_interconnect_1_fifo_0_in_write),       //          .write
		.avalonmm_write_slave_address     (mm_interconnect_1_fifo_0_in_address),     //          .address
		.avalonmm_write_slave_waitrequest (mm_interconnect_1_fifo_0_in_waitrequest), //          .waitrequest
		.avalonst_source_valid            (fifo_0_out_valid),                        //       out.valid
		.avalonst_source_data             (fifo_0_out_data),                         //          .data
		.avalonst_source_ready            (fifo_0_out_ready)                         //          .ready
	);

	PD_LAB_9_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (pll_0_outclk1_clk),             //          clk.clk
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

	PD_LAB_9_new_sdram_controller_0 new_sdram_controller_0 (
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

	PD_LAB_9_pio_0 pio_0 (
		.clk        (pll_0_outclk1_clk),                     //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),       //               reset.reset_n
		.address    (mm_interconnect_0_pio_0_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_0_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_0_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_0_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_0_s1_readdata),   //                    .readdata
		.out_port   (pio_export)                             // external_connection.export
	);

	PD_LAB_9_pll_0 pll_0 (
		.refclk   (clk_clk),                     //  refclk.clk
		.rst      (master_0_master_reset_reset), //   reset.reset
		.outclk_0 (dram_clk_clk),                // outclk0.clk
		.outclk_1 (pll_0_outclk1_clk),           // outclk1.clk
		.locked   (pll_locked_export)            //  locked.export
	);

	PD_LAB_9_mm_interconnect_0 mm_interconnect_0 (
		.pll_0_outclk1_clk                              (pll_0_outclk1_clk),                                         //                            pll_0_outclk1.clk
		.dma_0_reset_reset_bridge_in_reset_reset        (rst_controller_reset_out_reset),                            //        dma_0_reset_reset_bridge_in_reset.reset
		.master_0_clk_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                            // master_0_clk_reset_reset_bridge_in_reset.reset
		.dma_0_read_master_address                      (dma_0_read_master_address),                                 //                        dma_0_read_master.address
		.dma_0_read_master_waitrequest                  (dma_0_read_master_waitrequest),                             //                                         .waitrequest
		.dma_0_read_master_chipselect                   (dma_0_read_master_chipselect),                              //                                         .chipselect
		.dma_0_read_master_read                         (~dma_0_read_master_read),                                   //                                         .read
		.dma_0_read_master_readdata                     (dma_0_read_master_readdata),                                //                                         .readdata
		.dma_0_read_master_readdatavalid                (dma_0_read_master_readdatavalid),                           //                                         .readdatavalid
		.master_0_master_address                        (master_0_master_address),                                   //                          master_0_master.address
		.master_0_master_waitrequest                    (master_0_master_waitrequest),                               //                                         .waitrequest
		.master_0_master_byteenable                     (master_0_master_byteenable),                                //                                         .byteenable
		.master_0_master_read                           (master_0_master_read),                                      //                                         .read
		.master_0_master_readdata                       (master_0_master_readdata),                                  //                                         .readdata
		.master_0_master_readdatavalid                  (master_0_master_readdatavalid),                             //                                         .readdatavalid
		.master_0_master_write                          (master_0_master_write),                                     //                                         .write
		.master_0_master_writedata                      (master_0_master_writedata),                                 //                                         .writedata
		.dma_0_control_port_slave_address               (mm_interconnect_0_dma_0_control_port_slave_address),        //                 dma_0_control_port_slave.address
		.dma_0_control_port_slave_write                 (mm_interconnect_0_dma_0_control_port_slave_write),          //                                         .write
		.dma_0_control_port_slave_readdata              (mm_interconnect_0_dma_0_control_port_slave_readdata),       //                                         .readdata
		.dma_0_control_port_slave_writedata             (mm_interconnect_0_dma_0_control_port_slave_writedata),      //                                         .writedata
		.dma_0_control_port_slave_chipselect            (mm_interconnect_0_dma_0_control_port_slave_chipselect),     //                                         .chipselect
		.new_sdram_controller_0_s1_address              (mm_interconnect_0_new_sdram_controller_0_s1_address),       //                new_sdram_controller_0_s1.address
		.new_sdram_controller_0_s1_write                (mm_interconnect_0_new_sdram_controller_0_s1_write),         //                                         .write
		.new_sdram_controller_0_s1_read                 (mm_interconnect_0_new_sdram_controller_0_s1_read),          //                                         .read
		.new_sdram_controller_0_s1_readdata             (mm_interconnect_0_new_sdram_controller_0_s1_readdata),      //                                         .readdata
		.new_sdram_controller_0_s1_writedata            (mm_interconnect_0_new_sdram_controller_0_s1_writedata),     //                                         .writedata
		.new_sdram_controller_0_s1_byteenable           (mm_interconnect_0_new_sdram_controller_0_s1_byteenable),    //                                         .byteenable
		.new_sdram_controller_0_s1_readdatavalid        (mm_interconnect_0_new_sdram_controller_0_s1_readdatavalid), //                                         .readdatavalid
		.new_sdram_controller_0_s1_waitrequest          (mm_interconnect_0_new_sdram_controller_0_s1_waitrequest),   //                                         .waitrequest
		.new_sdram_controller_0_s1_chipselect           (mm_interconnect_0_new_sdram_controller_0_s1_chipselect),    //                                         .chipselect
		.pio_0_s1_address                               (mm_interconnect_0_pio_0_s1_address),                        //                                 pio_0_s1.address
		.pio_0_s1_write                                 (mm_interconnect_0_pio_0_s1_write),                          //                                         .write
		.pio_0_s1_readdata                              (mm_interconnect_0_pio_0_s1_readdata),                       //                                         .readdata
		.pio_0_s1_writedata                             (mm_interconnect_0_pio_0_s1_writedata),                      //                                         .writedata
		.pio_0_s1_chipselect                            (mm_interconnect_0_pio_0_s1_chipselect)                      //                                         .chipselect
	);

	PD_LAB_9_mm_interconnect_1 mm_interconnect_1 (
		.pll_0_outclk1_clk                       (pll_0_outclk1_clk),                       //                     pll_0_outclk1.clk
		.dma_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),          // dma_0_reset_reset_bridge_in_reset.reset
		.dma_0_write_master_address              (dma_0_write_master_address),              //                dma_0_write_master.address
		.dma_0_write_master_waitrequest          (dma_0_write_master_waitrequest),          //                                  .waitrequest
		.dma_0_write_master_byteenable           (dma_0_write_master_byteenable),           //                                  .byteenable
		.dma_0_write_master_chipselect           (dma_0_write_master_chipselect),           //                                  .chipselect
		.dma_0_write_master_write                (~dma_0_write_master_write),               //                                  .write
		.dma_0_write_master_writedata            (dma_0_write_master_writedata),            //                                  .writedata
		.fifo_0_in_address                       (mm_interconnect_1_fifo_0_in_address),     //                         fifo_0_in.address
		.fifo_0_in_write                         (mm_interconnect_1_fifo_0_in_write),       //                                  .write
		.fifo_0_in_writedata                     (mm_interconnect_1_fifo_0_in_writedata),   //                                  .writedata
		.fifo_0_in_waitrequest                   (mm_interconnect_1_fifo_0_in_waitrequest)  //                                  .waitrequest
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
		.clk            (pll_0_outclk1_clk),              //       clk.clk
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
