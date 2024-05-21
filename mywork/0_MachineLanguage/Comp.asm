// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// This takes R0 and subtracts R1 from it.
// It will return once R0 is negative and R2 will reflect the number of loops run
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
(START)
	//Set the starting memory
	//Set R0 = 3
	@7
	D = A
	@R0
	M = D
	//Set R1 = 4
	@4
	D = A
	@R1
	M = D
	//Set R2 = -1
	@1
	D = A
	@R2
	M = -D
	//Set R3 = 0
	@R3
	M = 0
(LOOP)
	//Retrieve R0 to operate on in the D register
	//Jump to (END) if R0 <= 0
	@R0
	D = M
	@END
	D; JLE
	//Set R3 to the remainder
	@R3
	M = D
	//Retrieve R1 to operate on and subtract the memory value from D
	@R1
	D = D - M
	//Set R0 to the new result of the operation
	@R0
	M = D
	//Increment R2 by 1
	@R2
	M = M + 1
	//Repeat the while loop
	@LOOP
	0; JMP
(END)
	@END
	0; JMP

//This is a basic dividing program that will have the quotient in R2 and the remainder in R3
