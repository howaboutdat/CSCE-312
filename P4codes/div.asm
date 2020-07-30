//NAME AND UIN
// Author: Quy Dao
// Date: 07/27/2020
// Email: quydao1462@tamu.edu
// CSCE 312
//
// File name: div.asm

// The program calculates the quotient from a division operation. 
// The values of dividend a and divisor b are stored in RAM[0] (R0) and RAM[1] (R1), respectively. 
// The dividend a is a non-negative integer, and the divisor b is a positive integer. 
// Store the quotient in RAM[2] (R2). Ignore the remainder.


// Put your code below this line
@R0 // Dividend a
D=M
@R2 //quotient
M = 0

//check if  dividend a = 0
@END
D,JLT

(LOOP)
@R1 // divisor b
D = D-M // keep substracting R0-R1 until it reaches 0
@END // case where R0 < R1, jumps to end
D,JLT 
@R2
M = M+1
@LOOP
0;JMP

(END)
@END
0;JMP