//  BIC instruction
mov x3, #0x5555
mov x4, #0x6666666666666666
bic x5, x3, x4, lsl 3  // x5 = 0x4445	
bfi x5, x4, 6,5 	// x5 = 0x4185
mov w8, #93 //Time to go 
SVC 0

