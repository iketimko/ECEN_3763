module ADC_controller (ADC_clk, SDO, SDI, CONVST, binval, switch, ADC_clk_en);
    input ADC_clk;
    input SDO;
    output logic SDI;
    output logic CONVST;
    output logic [11:0] binval;
    input [2:0] switch;
    output logic ADC_clk_en;

    // Set up counter 
    logic [3:0] COUNTER_VAL;

	always_ff @(posedge ADC_clk) begin
        COUNTER_VAL <= COUNTER_VAL + 'b1;
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


    // QUESTION: Is it okay to allow SDI to float during delay bits (state 3 and 15) and during start_conv bits (state 0 and 1)
    // QUESTION: Do I send the LSB (CTRL[0]) first or the MSB (CTRL[5])

    // Handle State Machine with Case statement
    logic [11:0] DOUT = 'b0;

    always @(COUNTER_VAL)
    begin
        case (COUNTER_VAL)
            0 : begin 
                    CONVST = 'b0;   // Convert start pulse
                    ADC_clk_en = 'b0; // Disable the SCK
                end
            1 : CONVST = 'b0;   // Convert start pulse
            2 : CONVST = 'b1;   // delay 1 clk cycle
            3 : begin
                    SDI = CTRL[5]; // Load first control bit
                    DOUT[11] = SDO; // Read eleventh Data Bit
                    ADC_clk_en = 'b1; // Enable the SCK to begin the transmission
                end
            4 : begin
                    SDI = CTRL[4]; // Load second control bit
                    DOUT[10] = SDO; // Read tenth Data Bit
                end 
            5 : begin
                    SDI = CTRL[3]; // Load third control bit
                    DOUT[9] = SDO; // Read nineth Data Bit
                end
            6 : begin
                    SDI = CTRL[2]; // Load fourth control bit
                    DOUT[8] = SDO; // Read eighth Data Bit
                end
            7 : begin
                    SDI = CTRL[1]; // Load fifth control bit
                    DOUT[7] = SDO; // Read seventh Data Bit
                end
            8 : begin
                    SDI = CTRL[0]; // Load last control bit
                    DOUT[6] = SDO; // Read sixth Data Bit
                end
            9 : DOUT[5] = SDO; // Read fifth Data Bit;
            10 : DOUT[4] = SDO; // Read fourth Data Bit;
            11 : DOUT[3] = SDO; // Read third Data Bit;
            12 : DOUT[2] = SDO; // Read second Data Bit;
            13 : DOUT[1] = SDO; // Read first Data Bit;
            14 : begin
                    DOUT[0] = SDO; // Read last Data Bit;
                    ADC_clk_en = 'b0; // disable the SCK to end the transmission
                end
            15 : CONVST = 'b1;   // delay 1 clk cycle
            default : CONVST = 'b1; 
        endcase
    end

    assign binval = DOUT;

endmodule
