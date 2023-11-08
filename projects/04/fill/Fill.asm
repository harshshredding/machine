// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.

// setup variables
@8192
D=A
@numScreenByte
M=D

@currScreenByte
M=0

@drawValue
M=0

(LOOP)
    // initialize variables
    @currScreenByte
    M=0

    // select draw value
    

    (DRAWSCREEN)
        // check if we are out of screen
        @currScreenByte
        D=M
        @numScreenByte
        D=M-D
        @DONEDRAWING
        D;JMP

        @currScreenByte
        D=M

         
        // update state 
        @currScreenByte
        M=M+1

        @DRAWSCREEN
        0;JMP
    (DONEDRAWING)

    @LOOP
    0;JMP
