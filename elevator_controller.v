module elevator_controller(
    input clk,
    input rst,
    input [1:0] request_floor,

    output reg [1:0] current_floor,
    output reg moving_up,
    output reg moving_down
);

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        current_floor <= 0;
        moving_up <= 0;
        moving_down <= 0;
    end
    else
    begin
        if(request_floor > current_floor)
        begin
            current_floor <= current_floor + 1;
            moving_up <= 1;
            moving_down <= 0;
        end
        else if(request_floor < current_floor)
        begin
            current_floor <= current_floor - 1;
            moving_up <= 0;
            moving_down <= 1;
        end
        else
        begin
            moving_up <= 0;
            moving_down <= 0;
        end
    end
end

endmodule
