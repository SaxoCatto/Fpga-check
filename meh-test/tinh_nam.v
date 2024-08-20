// module check_month(
//     input  [13:0]   year,
//     input [3:0]     month,
//     output          reset_day
// );
// reg leap_year;

// // @always ( or ) begin
// //     if ((year[1:0] == 2b'00 & year % 100 == 1)|year % 400 ==0 ) begin
// //         leap_year = 1;

// //     end
    
// always @(year) begin
//     if ((year % 4) == 0) begin
//         if ((year % 100) == 0 && (year % 400) != 0) begin
//             leap_year = 0; 
//         end else begin
//             leap_year = 1;
//         end
//     end else begin
//             leap_year = 0; 
//     end
// end
// endmodule

// module led (
//     input wire [3:0] sw,
//     output reg [6:0] Do
// );

// always @(cnt)
// begin case (cnt)
//         4'b0000: Do=7'b1000000;
//         4'b0001: Do=7'b1111001;
//         4'b0010: Do=7'b0100100;
//         4'b0011: Do=7'b0110000;
//         4'b0100: Do=7'b0010010;
//         4'b0101: Do=7'b0000010;
//         4'b0110: Do=7'b1111000;
//         4'b0111: Do=7'b0000000;
//         4'b1000: Do=7'b0010000;
//         default: Do=7'b0000000
//     endcase
// end

// endmodule

module FPGA_top(
    input reset,
    input sw,
    input run,
    input but_1,
    input but_2,
    input but_3,
);

top top (
    .rst_n(reset),
    .clk(clk),
    .

)




endmodule