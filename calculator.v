`timescale 1ns/1ps

module calculator(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] op,          // 3 bits now (6 operations)
    output reg [7:0] result
);

always @(*) begin
    case(op)
        3'b000: result = A + B;        // ADD
        3'b001: result = A - B;        // SUB
        3'b010: result = A & B;        // AND
        3'b011: result = A | B;        // OR
        3'b100: result = A * B;        // MUL
        3'b101: begin                  // DIV
                    if (B != 0)
                        result = A / B;
                    else
                        result = 8'hFF; // error value
                end
        default: result = 8'h00;
    endcase
end

endmodule
