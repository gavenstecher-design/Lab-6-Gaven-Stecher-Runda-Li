module light(
    input wire downstairs,
    input wire upstairs,
    output wire stair_light
);
    assign stair_light = downstairs ^ upstairs;
endmodule
