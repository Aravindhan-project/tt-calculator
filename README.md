# 🔢 Verilog Calculator (6-Operation ALU)

A simple RTL-based calculator designed in Verilog and simulated using 
Icarus Verilog and GTKWave.

This project implements a 4-bit input Arithmetic Logic Unit (ALU) 
supporting 6 operations.

---

## 🚀 Features

- 4-bit inputs (A and B)
- 3-bit operation selector
- 8-bit result output
- Supports:

| Operation | Opcode | Description |
|-----------|--------|------------|
| ADD       | 000    | A + B |
| SUB       | 001    | A - B |
| AND       | 010    | A & B |
| OR        | 011    | A \| B |
| MUL       | 100    | A × B |
| DIV       | 101    | A ÷ B |
| DIV by 0  | 101    | Returns 255 (error case) |

---

## 📂 Project Structure
calculator_rtl/
│
├── calculator.v # RTL design (ALU)
├── calculator_tb.v # Testbench
├── calculator.vcd # Waveform file (generated after simulation)
---

## 🧠 Design Overview

- Inputs:
  - `A` : 4-bit operand
  - `B` : 4-bit operand
  - `op` : 3-bit operation selector

- Output:
  - `result` : 8-bit output

Multiplication may produce values up to 225 (15 × 15), 
so output width is 8 bits.

Division by zero is handled by returning `8'hFF`.

---

## 🛠 Tools Used

- Icarus Verilog (iverilog)
- GTKWave
- Verilog HDL

---

## ▶️ How to Run

### 1️⃣ Compile

```bash
iverilog -o calc calculator.v calculator_tb.v
2️⃣ Run Simulation
vvp calc
3️⃣ Open Waveform
gtkwave calculator.vcd
📊 Example Output
ADD  : 14
SUB  : 6
AND  : 0
OR   : 14
MUL  : 18
DIV  : 4
DIV0 : 255 (Error case)
🎯 Learning Outcomes

Understanding combinational ALU design
Writing structured Verilog RTL
Creating testbenches
Simulating with Icarus Verilog
Viewing waveforms using GTKWave
Handling division-by-zero conditions

📌 Future Improvements

Clock-based synchronous version
8-bit ALU extension
Remainder output for division
FPGA implementation
GUI-based calculator interface

👨‍💻 Author
Aravindhan A
Electronics and Communication Engineering (ECE)
