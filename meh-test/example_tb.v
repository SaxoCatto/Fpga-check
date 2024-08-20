module testbench ();

// A, phần khai báo tín hiệu điều khiển và monitor.

reg A_tb;

reg B_tb;

wire C_tb;

// B, phần gọi module

example example_01 (

    .A ( A_tb),

    .B ( B_tb),

    .C ( C_tb)

);

// C, phần khởi tạo các giá trị ban đầu

initial begin

    A_tb  = 1'b0;

    B_tb  = 1'b0;

end

// D, phần thực thi chính của simulation

initial begin

    #10; // đợi 10 đơn vị thời gian

    A_tb = 1'b1;

    B_tb = 1'b0;

    #10; // đợi 10 đơn vị thời gian

    A_tb = 1'b0;

    B_tb = 1'b1;

    #10; // đợi 10 đơn vị thời gian

    A_tb = 1'b1;

    B_tb = 1'b1;

    #10; // đợi 10 đơn vị thời gian

    A_tb = 1'b0;

    B_tb = 1'b0;

    $finish(); // kết thúc simulation

end

endmodule