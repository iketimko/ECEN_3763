module segment7(bcd, seg);
     //Declare inputs,outputs and internal variables.
     input [3:0] bcd;
     output [6:0] seg;
     logic [6:0] seg;

    //always block for converting bcd digit into 7 segment format
    always @(bcd)
    begin
        case (bcd) //case statement
            0 : seg = 7'b0000001; // WRONG NEEDS TO BE FLIPPED
            1 : seg = 7'b1001111; // WRONG NEEDS TO BE FLIPPED
            2 : seg = 7'b0010010; // WRONG NEEDS TO BE FLIPPED
            3 : seg = 7'b0000110; // WRONG NEEDS TO BE FLIPPED
            4 : seg = 7'b0011001; 
            5 : seg = 7'b0100100; // WRONG NEEDS TO BE FLIPPED
            6 : seg = 7'b0100000; // WRONG NEEDS TO BE FLIPPED
            7 : seg = 7'b0001111; // WRONG NEEDS TO BE FLIPPED
            8 : seg = 7'b0000000; // WRONG NEEDS TO BE FLIPPED
            9 : seg = 7'b0000100; // WRONG NEEDS TO BE FLIPPED
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 7'b1111111; 
        endcase
    end
    
endmodule