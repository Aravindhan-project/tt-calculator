`timescale 1ns/1ps

module calculator_tb;

reg  [3:0] A, B;
reg  [2:0] op;
wire [7:0] result;

integer a_in;
integer b_in;
integer op_in;

calculator uut(
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

initial begin
    $dumpfile("calculator.vcd");
    $dumpvars(0, calculator_tb);

    $display("Enter A (0-15): ");
    $scanf("%d", a_in);
    A = a_in;

    $display("Enter B (0-15): ");
    $scanf("%d", b_in);
    B = b_in;

    $display("Enter operation:");
    $display("0=ADD,1=SUB,2=AND,3=OR,4=MUL,5=DIV");
    $scanf("%d", op_in);
    op = op_in;

    #10;

    $display("Result = %d", result);

    #10;
    $finish;
end

endmodule