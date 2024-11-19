text
.global _start
_start:
//  AND (Bitwise AND immediate)
mov x4, #0xffff
movk x4, #0x0000, lsl 16
movk x4, #0x0000, lsl 32
movk x4, #0xfff, lsl 48
// Use objdump to see encoding for logical immediates
// Format is N, immr, imms. If N = 1 then pattern is 64 bit
// If N = 0 then pattern is 32 bit repeating n times, where n is specified in the imms field
// imms = 11110X then 2 bit pattern recurring 32 times, one "1",
// imms = 1110xx then 4 bit pattern recurring 16 times, one thru three "1s"
// imms = 110xxx then 8 bit pattern recurring 8 times, one thru seven "1s"
// imms = 10xxxx then 16 bit pattern recurring 4 times, one thru 15 "1s"
// imms - 0xxxxx then 32 bit pattern recurring 2 times, one thru 31 "1s"  
// x field = # of ones, where the # of ones is one less than the x value,00 = 1 "1", 01 = 2 "1s", 10 = 3 ", . . .
// so for imms = 111001 pattern is 4 bits and the # of ones is 2 = 0011 0011 0011 . . .
// for imms = 110110 pattern is 8 bits and # of ones is 7 = 01111111 01111111 01111111 . . .
// immr is the rotate field where 000000 = no rotation and 111111 =sixty-three rotations
// Note for imms = 11110x then 1 rotation is possible
// Note for imms = 110xxx then 1 thru 7 rotations are possible
// Examples follow
and x3, x4, #0x5555555555555555 // r3 = 555000000005555	
// Pattern is 2 bits wide imms, = 111100, one sequential one, immr = 000000, no rotate

and x3, x4, #0xaaaaaaaaaaaaaaaa, // r3 = 0xaaa00000000aaaa  
// Pattern is 2 bits wide imms, = 111100, one sequential one, immr = 000001, one rotate

and x3, x4, #0x1111111111111111 // r3 = 0x1110000000001111
// Pattern is 4 bits wide, imms = 111000, one sequential one, immr = 000000, no rotates
 
and x3, x4, #0x3333333333333333 // r3 = 0x3330000000003333
// Pattern is 4 bits wide, imms = 111001, two sequential ones, immr = 00000, no rotate

and x3, x4, #0x7777777777777777	// r3 = 0x7770000000007777
// Pattern is 4 bits wide, imms = 111010, three sequential ones, immr = 000000, no rotate 

and x3, x4, #0x8888888888888888	// r3 = 0x8880000000008888
// Pattern is 4 bits wide imms = 111000, one sequential one, immr = 000001, one rotate

and x3, x4, #0x9999999999999999	// r3 = 0x9990000000009999
// Pattern is 4 bits wide imms = 111001, two sequential ones, immr = 000001, one rotate

and x3, x4, #0xbbbbbbbbbbbbbbbb // r3 = 0xbbb000000000bbbb 
// Pattern is 4 bits wide,imms = 111010, three sequential ones, immr = 000001, one rotate

orr x3, x4, #0x4444444444444444 // r3 = 0x4fff44444444ffff
// Pattern is 4 bits wide, imms = 111000, one sequential one, immr = 000010, two rotates

orr x3, x4, #0xcccccccccccccccc // r3 = 0xcfffccccccccffff
// Pattern is 4 bits wide, imms = 111001, two sequential ones, immr = 000010, two rotates

orr x3, x4, #0xdddddddddddddddd // r3 = 0xdfffddddddddffff
// Pattern is 4 bits wide, imms = 111010, three sequential ones, immr = 000010, two rotates

orr x3, x4, #0x2222222222222222 // r3 = 0x2fff22222222ffff
// Pattern is 4 bits wide, imms = 111000, one sequential one, immr = 000011, three rotates

orr x3, x4, #0x6666666666666666 // r3 = 0x6fff66666666ffff 
// Pattern is 4 bits wide, imms = 111001, two sequential ones, immr = 000111, three rotates

orr x3, x4, #0xeeeeeeeeeeeeeeee // r3 = 0xefffeeeeeeeeffff
// Pattern is 4 bits wide, imms = 111010, three sequential ones, immr = 000111, three rotates

orr x3, x4, #0x0101010101010101 // r3 = 0xfff01010101ffff
// Pattern is 8 bits wide, imms = 110000, one sequential one, immr = 000000, no rotate

orr x3, x4, #0b01100110011001100110011001100110011001100110011001100110011001100 //r3 = 0xcfffccccccccffff
//Same as orr x3,x4, #0x44444444444444 but expressed in binary (often easier when working with bitmasks)

and x3, x4, #0x0000000000000001 // r3 = 0x1
// N=1, One 64 -bit pattern of one one, imms = 000000, immr = 000000, no rotation

and x3, x4, #0x1000000000000000 // r3 = 0x0
// N=1, One 64-bit pattern of one one, imms = 000000, immr = 000100, four rotations (0001 - 0001 . . .) 

mov w8, #93 //Time to go 
SVC 0

