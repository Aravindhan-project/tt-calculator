`timescale 1ns/1ps

module calculator_tb;

reg  [3:0] A, B;
reg  [2:0] op;        // 3-bit because we added * and /
wire [7:0] result;

calculator uut(
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

initial begin
    $dumpfile("calculator.vcd");
    $dumpvars(0, calculator_tb);

    // ADD
    A = 10; B = 4; op = 3'b000; #10;
    $display("ADD  : %d", result);

    // SUB
    A = 10; B = 4; op = 3'b001; #10;
    $display("SUB  : %d", result);

    // AND
    A = 10; B = 4; op = 3'b010; #10;
    $display("AND  : %d", result);

    // OR
    A = 10; B = 4; op = 3'b011; #10;
    $display("OR   : %d", result);

    // MUL
    A = 6; B = 3; op = 3'b100; #10;
    $display("MUL  : %d", result);

    // DIV
    A = 8; B = 2; op = 3'b101; #10;
    $display("DIV  : %d", result);

    // DIV by zero
    A = 8; B = 0; op = 3'b101; #10;
    $display("DIV0 : %d (Error case)", result);

    $finish;
end

endmodule
