// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/rect/Rect.asm

// Draws a rectangle at the top-left corner of the screen.
// The rectangle is 16 pixels wide and R0 pixels high.

// first lets build a table of variables: 
      // INFINITE_LOOP -> 16
      // counter -> 17
      // SCREEN -> 18
      // address -> 19
      // LOOP -> 4


   @0                // 0000000000000000
   D=M               //
   @INFINITE_LOOP    //
   D;JLE             //
   @counter          //
   M=D               //
   @SCREEN           //
   D=A               //
   @address          //
   M=D               //
(LOOP)
   @address          //
   A=M               //
   M=-1              //
   @address          //
   D=M               //
   @32               //
   D=D+A             //
   @address          //
   M=D               //
   @counter          //
   MD=M-1            //
   @LOOP             //
   D;JGT             //
(INFINITE_LOOP)
   @INFINITE_LOOP    //
   0;JMP             //
