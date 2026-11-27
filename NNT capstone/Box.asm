// Akshay Kumar | Roll No. 2501010033 | K = 33
// Start at row 33, width 32 pixels, height 20 rows.

(START)
    @color
    M=0             // default colour = white (no key)
    @KBD
    D=M
    @DRAW
    D;JEQ           // KBD = 0 -> no key, keep white
    @color
    M=-1            // key pressed -> black (all 16 bits set)

(DRAW)
    @SCREEN
    D=A
    @1056           // row 33 × 32 words per row
    D=D+A
    @addr
    M=D             // addr = first word of row 33
    @20
    D=A
    @count
    M=D             // 20 rows to paint

(ROW)
    @color
    D=M
    @addr
    A=M
    M=D             // first 16 pixels of this row
    A=A+1
    M=D             // next 16 pixels of this row
    @32
    D=A
    @addr
    M=D+M           // move to the next row (+32 words)
    @count
    MD=M-1
    @ROW
    D;JGT           // more rows left?
    @START
    0;JMP           // check the keyboard again
