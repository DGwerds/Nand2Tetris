// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

@R0
D=M
@x
M=D

@R1
D=M
@y
M=D

@0
D=A
@R2
M=D

(WHILE)
    @x
    D=M
    @END
    D;JLE

    @y
    D=M
    @R2
    M=D+M

    @1
    D=A
    @x
    M=M-D

    @WHILE
    0;JMP

(END)
    @END
    0;JMP