// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
@R2
M=0   // initialize R2 to zero, to get the real sum of the mult

@R0
D=M    // D=RAM[R0]
@loop  
D;JGT  // if R0 > 0 jump to loop to start calculate

@End  
0;JMP  // if not enter the loop then jump to End line

(loop) // the loop starts here
@R2
D=M   // D=RAM[R2]
@R1
D=D+M // add to R2 the value of R1 // D=RAM[R2]+RAM[R1]
@R2
M=D   // write the sum in R2 // RAM[R2]=RAM[R2]+RAM[R1]
@R0
D=M-1  // D=RAM[R0]-1
M=D    // count down the R0 value
@R0
D=M    // D=RAM[R0]
@loop
D;JGT // if R0 > 0 continue to loop again

(End)
@End
0;JMP // finish the code by infinite loop
