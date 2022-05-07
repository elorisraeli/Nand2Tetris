// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/max/MaxL.asm

// Symbol-less version of the Max.asm program.

            // 1 1 1 - a c1 c2 c3 c4 c5 c6 - d1 d2 d3 - j1 j2 j3        -----> C instruction (dest = comp ; jump)

@0          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
D=M         // 1 1 1 - 1 1 1 0 0 0 0 - 0 1 0 - 0 0 0
@1          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
D=D-M       // 1 1 1 - 1 0 1 0 0 1 1 - 0 1 0 - 0 0 0     -----> this D-M is in the comp table
@10         // 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0
D;JGT       // 1 1 1 - 0 0 0 1 1 0 0 - 0 0 0 - 0 0 1     -----> this D is in the comp table
@1          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
D=M         // 1 1 1 - 1 1 1 0 0 0 0 - 0 1 0 - 0 0 0     -----> this D is in the dest table
@12         // 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0
0;JMP       // 1 1 1 - 0 1 0 1 0 1 0 - 0 0 0 - 1 1 1
@0          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
D=M         // 1 1 1 - 1 1 1 0 0 0 0 - 0 1 0 - 0 0 0
@2          // 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
M=D         // 1 1 1 - 0 0 0 1 1 0 0 - 0 0 1 - 0 0 0
@14         // 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0           -----> just the number 14 with zeros before
0;JMP       // 1 1 1 - 0 1 0 1 0 1 0 - 0 0 0 - 1 1 1
