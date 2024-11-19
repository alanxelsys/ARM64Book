.text
.global _start
_start:
	MOV w4, #0xffff 	// Load up first 16 bits to reg w4
	MOVK w4,#0xffff,lsl #16	//Load up next set of 16 bits
	MOV w5, #0xffff		// Now load reg w5
	MOVK 5,#0xffff,lsl #16
	UMULL x2, w4, w5 		/*Multiplies the contents of w4 and w5 together, placing the unsigned result in reg x2*/
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0

