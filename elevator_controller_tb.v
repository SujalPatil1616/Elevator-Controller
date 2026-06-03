`timescale 1ns/1ps

module elevator_controller_tb;

reg clk;
reg rst;
reg [1:0] request_floor;

wire [1:0] current_floor;
wire moving_up;
wire moving_down;

elevator_controller uut(
    .clk(clk),
    .rst(rst),
    .request_floor(request_floor),
    .current_floor(current_floor),
    .moving_up(moving_up),
    .moving_down(moving_down)
);

always #10 clk = ~clk;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, elevator_controller_tb);

    clk = 0;
    rst = 1;
    request_floor = 0;

    #20 rst = 0;

    // Go to Floor 3

    #20 request_floor = 3;

    #120;

    // Go to Floor 1

    request_floor = 1;

    #120;

    // Go to Floor 2

    request_floor = 2;

    #80;

    $finish;
end

endmodule
