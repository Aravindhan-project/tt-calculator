// TinyTapeout user module
// This becomes a real chip layout

module tt_um_calculator (
    input  [7:0] ui_in,   // 8 input switches
    output [7:0] uo_out   // 8 output LEDs
);

    // Split inputs into numbers and operation
    wire [3:0] A;
    wire [3:0] B;
    wire [1:0] op;

    assign A  = ui_in[3:0];   // switches 0-3 → number A
    assign B  = ui_in[7:4];   // switches 4-7 → number B
    assign op = ui_in[5:4];   // operation select (uses part of B bits)

    reg [7:0] Result;

    always @(*) begin
        case(op)

            2'b00: Result = A + B;   // ADD
            2'b01: Result = A - B;   // SUB
            2'b10: Result = A * B;   // MUL
            2'b11: Result = A & B;   // AND

        endcase
    end

    // Send result to LEDs
    assign uo_out = Result;

endmodule
