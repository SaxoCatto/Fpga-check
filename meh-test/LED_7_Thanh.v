module led(
    input wire [4:0] in,
    output reg [6:0] Do
);

always @(out)
begin case (out)
        4'b0000: Do=7'b1000000;
        4'b0001: Do=7'b1111001;
        4'b0010: Do=7'b0100100;
        4'b0011: Do=7'b0110000;
        4'b0100: Do=7'b0010010;
        4'b0101: Do=7'b0000010;
        4'b0110: Do=7'b1111000;
        4'b0111: Do=7'b0000000;
        4'b1000: Do=7'b0010000;
        default: Do=7'b0000000
    endcase
end

endmodule
