module led_display#(
    parameter MAX__VALUE = 60
)(
    input wire sw,

    output [$clog2(MAX_SECONDS_VALUE) - 1 : 0] seconds,
    output [$clog2(MAX_MINUTES_VALUE) - 1 : 0] minutes,
    output [$clog2(MAX_HOURS_VALUE) - 1 : 0] hours
    output reg [7:0] D7, D6. D5, D4, D3, D2,D1, D0
);


led D_second_1(
    out([$clog2[3:0]]seconds),
    Do(D)
);

led D_second_0(
    out([$clog2(MAX_MINUTES_VALUE) - 1:4]seconds),
    Do(D)
);

led D_minute_0(
    out([$clog2(MAX_MINUTES_VALUE) - 1 : 0] minutes,)
    Do(D)
);

led D_minute_1(
    out(out)
    Do(D)
);

led D_second_0(
    out(out)
    Do(D)
);



always @(sw) begin
    if (sw == 0) begin
        D0 = D_second_0;
        D1 = D_second_1;
        D2 = D_minute_0;
        D3 = D_minute_1;
        D4 = D_hour_0;
        D5 = D_hour_1;
    end else begin 
        D0 = D_dasy_0;
        D1 = D_day_1;
        D2 = D_month_0;
        D3 = D_month_1;
        D4 = D_year_0;
        D5 = D_year_1;
        D6 = D_year_2;
        D7 = D_year_3;
    end
    
end

endmodule