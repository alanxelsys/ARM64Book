.text
.global _start
_start:
// ORR (Bitwise OR immediate)
mov w0, #0xaaaaaaaa
ORR w1, w0, #0x55555555	// w1=0xffffffff
ORR w1, w0, #0xaaaaaaaa	// w1=0xaaaaaaaa
ORR w1, w0, #0x0000ffff	// w1=0xaaaaffff
ORR w1, w0, #0xffff0000	// w1=0xffffaaaa

//ORR (Bitwise OR shifted register)
mov w0,#3
ORR w1, w0, w0, lsl #6	// w1 = 0xc3 = 0b11000011
MOV w0, #9
ORR w1, w0, w0, lsl #8	// w1 = 0x909 = 0b100100001001

//ORN (Bitwise OR NOT shifted register)
MOV x0, #0x1122
ORN x1, x0, x0, lsl #8	//x1 = 0xffffffffffeeddff, note 0x1122 gets inverted

mov w8, #93
SVC 0

