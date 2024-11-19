.text
.global _start
_start:
	MOV x4, #0xffff 	// Load up first 16 bits to reg x4
	MOVK x4,#0xffff,lsl #16	//Load up next set of 16 bits
	MOV x5, #0xffff		// Now load reg x5
	MOVK x5,#0xffff,lsl #16
	MUL x2, x4, x5 	/*Multiplies the contents of x4 and x5 together, placing the result in reg x2*/
	MOV	w8, #0x5d	//Time to go.
		SVC 	#0

