// This file is not part of www.nand2tetris.org
// Product by Roni & Elor.

// Computes if n is prime or not.
// n prime -> R1 = 1
// n not prime -> R1 = 0

// ---------- find if x is prime (R0 = x) ---------- 
@R0
D=M             // D = RAM[0] = x

D=D-1           // D = D - 1  (but still RAM[0]=x) --> for checking if x>1
@IF_X_GREAT_THAN_ONE  // condition line
D;JGT           // if x > 0 jump to IF_X_POSITIVE line
    // else:
(NOT_PRIME)
@R1     
M=0             // RAM[1] = 0;  
@END_CODE            
0;JMP           // unconditional jump to END line

    // if condition happened:
(IF_X_GREAT_THAN_ONE) // here is the checking of x
@index_temp
M=1
D=M
@index              // index refers to some RAM location
M=D+1             // index = 2

// check if i<x
// if 0<x-index than its ok, if (0>=x-index) its wrong than jump to end LOOP_MAIN
(IF_index_LESS_THAN_X)
@R0
D=M             // D=x
@index
D=D-M           // D=x-index
@LOOP_MAIN
D;JGT           // if 0<x-index jump to LOOP_MAIN line
@END_MAIN
0;JMP           // else jump to END_MAIN line


(LOOP_MAIN)     // here is the while(index<x) keep going

    // create reminder = x temporary variable
@R0
D=M             // D = RAM[0] = x
@reminder
M=D             // RAM[reminder] = x

(WHILE_REMINDER)
@reminder
D=M             // D=RAM[reminder]
@index
D=D-M           // D=D-RAM[index]
@reminder
M=D             // RAM[reminder]=RAM[reminder]-RAM[index]
@reminder
D=M             // D=RAM[reminder]
@WHILE_REMINDER
D;JGT           // if (reminder-i > 0) jump to WHILE_REMINDER line 
        // else:
@reminder
D=M             // D=RAM[reminder]
@NOT_PRIME
D;JEQ           // if (reminder==0) jump to NOT_PRIME line
        // else:
@index              
M=M+1           // index = index + 1
@IF_index_LESS_THAN_X   
0;JMP           // go to IF_index_LESS_THAN_X line to check if jump to LOOP_MAIN or END_MAIN

(END_MAIN)
@R1     
M=1             // RAM[1] = 1;  

(END_CODE)      // the end of the whole code
@END_CODE
0;JMP           // end the code with infinite loop --> always jump to line END_CODE and return to this line


