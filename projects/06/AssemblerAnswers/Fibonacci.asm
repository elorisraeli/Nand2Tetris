// This file is not part of www.nand2tetris.org
// Product by Roni & Elor.


@R2
M=0
@R3
M=1


(loop_1)
@R0
D=M-1
@end_Line
D;JEQ
@R0
M=M-1

@R2
D=M
@R3
D=D+M
@sum
M=D
@R3
D=M
@R2
M=D
@sum
D=M
@R3
M=D

@loop_1
0;JMP

(End_Line)
@R2
D=M
@R1
M=D
