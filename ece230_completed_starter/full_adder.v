module full_adder(
    input wire A,
    input wire B,
    input wire Cin,
    output wire Y,
    output wire Cout
);
    assign Y = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);
endmodule
