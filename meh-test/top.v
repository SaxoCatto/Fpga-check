module top(
    input   [15:0] sw,
    output  [27:0] Do
)
 led7 led1(
    .sw(sw[3:0]),
    .Do(Do[6:0])
);

 led7 led2(
    .sw(sw[7:4]),
    .Do(Do[13:7])
);

led7 led3(
    .sw(sw[11:8]),
    .Do(Do[20:14])
);

led7 led4(
    .sw(sw[15:12]),
    .Do(Do[27:20])
);

endmodule