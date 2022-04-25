module ADC_controller (ADC_clk, SDO, SDI, CONVST, binval, switch, reset, state, gated_clk, shift_rst);
    input ADC_clk;
    input SDO;
    output logic SDI;
    output logic CONVST;
    output logic [11:0] binval;
    input [2:0] switch;
    input reset;
    output logic [3:0] state;
    input logic gated_clk;
    input shift_rst;

    logic [11:0] DOUT;

    shift u0 (
        .clk    (gated_clk),       //clock signal
        .enable (1'b1),       //enable signal
        .rst    (shift_rst),       //reset signal
        .data_in(SDO),   //input bit
        .data_out(DOUT)  //output bit
    );

    // Set up counter 
	always_ff @(posedge ADC_clk) begin
        if (reset) begin
            state <= 'b0;
        end
        else begin
            state <= state + 'b1;
        end
	end

    // Set the Control bits
    logic [5:0] CTRL;
    always @(*) // THIS MEANS RE-EVALUATE WHENEVER ANYTHING CHANGES RIGHT???
    begin
        case (switch) //case statement
            0 : CTRL = 6'b100000; 
            1 : CTRL = 6'b110000;
            2 : CTRL = 6'b100100;
            3 : CTRL = 6'b110100;
            4 : CTRL = 6'b101000; 
            5 : CTRL = 6'b111000;
            6 : CTRL = 6'b101100;
            7 : CTRL = 6'b111100;
            default : CTRL = 6'b000000; 
        endcase
    end

    // Handle State Machine with Case statement
    always_comb begin
        case (state)
            0 : begin 
                    SDI = 'b0;
                    CONVST = 'b1;   // Convert start pulse
                end
            1 : begin
                    SDI = 'b0;
                    CONVST = 'b1;   // Convert start pulse
                end
            2 : begin 
                    SDI = 'b0;
                    CONVST = 'b0;   // Delay 1 clock cycle
                end
            3 : begin
                    SDI = CTRL[5]; // Load first control bit
                    CONVST = 'b0;
                end
            4 : begin
                    SDI = CTRL[4]; // Load second control bit
                    CONVST = 'b0;
                end 
            5 : begin
                    SDI = CTRL[3]; // Load third control bit
                    CONVST = 'b0;
                end
            6 : begin
                    SDI = CTRL[2]; // Load fourth control bit
                    CONVST = 'b0;
                end
            7 : begin
                    SDI = CTRL[1]; // Load fifth control bit
                    CONVST = 'b0;
                end
            8 : begin
                    SDI = CTRL[0]; // Load last control bit
                    CONVST = 'b0;
                end
            9 : begin 
                    SDI = 'b0;
                    CONVST = 'b0; 
                end
            10 : begin 
                    SDI = 'b0;
                    CONVST = 'b0; 
                end
            11 : begin 
                    SDI = 'b0;
                    CONVST = 'b0;
                end
            12 : begin 
                    SDI = 'b0;
                    CONVST = 'b0;
                end
            13 : begin 
                    SDI = 'b0;
                    CONVST = 'b0;
                end
            14 : begin
                    SDI = 'b0;
                    CONVST = 'b0;
                end
            15 : begin 
                    SDI = 'b0;
                    CONVST = 'b0;   // Delay 1 clock cycle
                end
            default : begin 
                        SDI = 'b0;
                        CONVST = 'b0;   // Delay 1 clock cycle
                    end
        endcase
    end

    // update outputs every cycle
    always_ff @(posedge CONVST) begin
        binval = DOUT;
    end


endmodule
