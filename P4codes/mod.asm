// NAME AND UIN
// Author: Quy Dao
// Date: 07/27/2020
// Email: quydao1462@tamu.edu
// CSCE 312
// File name: mod.asm

// This program calculates the modulo of two given numbers a and b, which is a%b in math. 
// The value of a is stored in RAM[0] (R0), and the value of b is stored in RAM[1] (R1). 
// The value a is non-negative integer and b is positive integer. 
// The modulo value is stored in RAM[2] (R2).



// Put your code below this line
@R0
D = M
@R2 // intilize r2 to a incase b > a
M = D
// case where a(R0) = 0
@END
D, JLT

(LOOP)
@R1
D = D-M
@END // go to end if D = 0
D,JLT
@R2
M=D // set value to remainder when a/below
@LOOP
0,JMP

(END)
@END
0,JMP