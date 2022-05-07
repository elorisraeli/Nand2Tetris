// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/add/Add.asm

// Computes R0 = 2 + 3  (R0 refers to RAM[0])
            // 1 1 1 - a c1 c2 c3 c4 c5 c6 - d1 d2 d3 - j1 j2 j3        -----> C instruction

@2          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
D=A         // 1 1 1 - 0 1 1 0 0 0 0 - 0 1 0 - 0 0 0
@3          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1
D=D+A       // 1 1 1 - 0 0 0 0 0 1 0 - 0 1 0 - 0 0 0
@0          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
M=D         // 1 1 1 - 0 0 0 1 1 0 0 - 0 0 1 - 0 0 0
