module led7 (
    input wire [3:0] sw,
    output wire [6:0] Do
);
wire bcd; 
assign Do = (sw==0) ? 7'b0000001: //0
        sw==1 ? 7'b1001111: //1
        sw==2 ? 7'b0000110: //2
        sw==3 ? 7'b0000001: //3
        sw==4 ? 7'b1001100: //4
        sw==5 ? 7'b0100100: //5
        sw==6 ? 7'b0100000: //6
        sw==7 ? 7'b0001111: //7
        sw==8 ? 7'b0000100: //8
        sw==9 ? 7'b0000100:
        7'b0000001; //default

endmodule
