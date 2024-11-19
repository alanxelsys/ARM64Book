.text

.global _start

_start:
//  AND (Bitwise AND immediate)
mov w4, #0xcccccccc
mov w5, #0x55555555
// Examples follow
and w3, w4, w5 // w3 = 0x44444444 	
orr w3, w4, w5 // w3 = 0xdddddddd
and w3, w4, w5, lsl 4 // w3 = 0x44444440
orr w3, w4, w5, lsr 2 // w3 = 0xdddddddd
orn w3, w4, w5, asr 1 // w3 = dddddddddd
eor w3, w4, w5, ror 6 // w3 = 0x99999999
mov w8, #93 //Time to go 
SVC 0

