# 2-bit 4:1 Multiplexer using Verilog HDL

## Description
This project implements a 2-bit wide 4:1 Multiplexer using Verilog HDL. The output selects one among four 2-bit inputs based on the select lines.

## Inputs
- a [1:0]
- b [1:0]
- c [1:0]
- d [1:0]
- sel [1:0]

## Output
- y [1:0]

## Functionality

| Select Line (sel) | Output |
|-------------------|---------|
| 00 | a |
| 01 | b |
| 10 | c |
| 11 | d |

## Files
- mux.v → Verilog module
- mux_tb.v → Testbench
- waveform.png → Simulation waveform

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code

## Author
Bharath
