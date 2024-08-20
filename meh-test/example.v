module led7 (
    input wire [3:0] sw,
    output reg [6:0] Do
);
always @(sw)
begin case (sw)
        4'b0000: Do=7'b0000001; //0   //0123456
        4'b0001: Do=7'b1001111; //1
        4'b0010: Do=7'b0010010; //2
        4'b0011: Do=7'b0000110; //3
        4'b0100: Do=7'b1001100; //4
        4'b0101: Do=7'b0100100; //5
        4'b0110: Do=7'b0100000; //6
        4'b0111: Do=7'b0001111; //7
        4'b1000: Do=7'b0000000; //8
        4'b1001: Do=7'b0000100; //9
        default: Do=7'b1111111; 
    endcase
end
endmodule
