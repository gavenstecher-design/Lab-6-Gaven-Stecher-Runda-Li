module adder(
    input wire A,
    input wire B,
    output wire Y,
    output wire carry
);
    assign Y = A ^ B;
    assign carry = A & B;
endmodule
