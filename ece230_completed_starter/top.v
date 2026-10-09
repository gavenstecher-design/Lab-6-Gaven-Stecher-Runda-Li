module top(
    input wire [7:0] sw,
    output wire [5:0] led
);
    wire carry_low;

    light stairway (
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );

    adder one_bit (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );

    full_adder low_bit (
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(carry_low)
    );

    full_adder high_bit (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(carry_low),
        .Y(led[4]),
        .Cout(led[5])
    );
endmodule
