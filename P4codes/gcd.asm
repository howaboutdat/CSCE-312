//NAME AND UIN
// Author: Quy Dao
// Date: 07/27/2020
// Email: quydao1462@tamu.edu
// CSCE 312
// File name: gcd.asm

// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in RAM[0] (R0) and RAM[1] (R1). 
// The gcd is stored in RAM[2] (R2).



// Put your code below this line
//temporarily copy r0 and r1 to tempR0 and tempR1
@R0
D = M
@tempR0
M = D
@R1
D = M
@tempR1
M = D


(GCD)
@tempR0
D = M
// case where R0 = 0
@R1toR2
D;JEQ
@tempR1
D = M
// case where R1 = 0
@R0toR2
D;JEQ

@tempR0
D = M
@rem
M = D

//Remainder(rem) of r0/r1
	(R0_rem)
	@tempR1
	D = M
	@rem
	M = M-D
	D = M
	@R1_rem
	D;JLT
	@R0_rem
	0;JMP
// let B = R, find GCD(B,R) till we ffind the largest common divisor
	(R1_rem)
	@tempR1
	D = M
	@tempR0
	M = D
	@rem
	M = D + M
	D = M
	@tempR1
	M = D
	@GCD
	0;JMP
// set R2 = R0
(R0toR2)
@tempR0
D =  M
@R2
M = D
@END
0;JMP
// set R2 = R1
(R1toR2)
@tempR1
D = M
@R2
M = D

(END)
@END
0;JMP
	
