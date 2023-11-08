// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//// Replace this comment with your code.

// setup variables
@R0
D = M
@a
M = D

@R1
D = M
@b
M = D

@acc
M = 0

(LOOP)
    // check condition
    @a
    D=M
    @DONE
    D;JEQ

    @a
    M=M-1

    @b
    D=M
    @acc
    M=M+D

    @LOOP
    0;JMP

(DONE)
    // store the result
    @acc
    D=M
    @R2
    M=D

(END)
    @END
    0;JMP
