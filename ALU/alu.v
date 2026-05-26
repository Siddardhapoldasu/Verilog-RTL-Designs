module alu (
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output reg [3:0] out
);

always @(*) begin
    case(sel)

        3'b000: out = a + b; // Addition
        3'b001: out = a - b; // Subtraction
        3'b010: out = a & b; // AND
        3'b011: out = a | b; // OR
        3'b100: out = a ^ b; // XOR
        3'b101: out = ~a;    // NOT
        3'b110: out = a << 1;// Left Shift
        3'b111: out = a >> 1;// Right Shift

    endcase
end

endmodule
