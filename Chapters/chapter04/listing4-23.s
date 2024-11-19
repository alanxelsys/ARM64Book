/* This example shows how to multiply two 64-bit numbers, placing the 128-bit result in two 64-bit registers.
MUL is used for the lower 64 bits and UMULH is used for the higher 64 bits */

.text

.global _start
_start:
	MOV x4, #0xffff 	// Load up first 16 bits to reg x4
	MOVK x4,#0x00ff,lsl #16	// Load up next set of 16 bits
	MOVK x4,#0xffff,lsl #32 // Next 16 bits
	MOVK x4,#0x1234,lsl #48 // Last 16 bits
 
	MOV x5, #0xffff		// Now load reg x5
	MOVK x5, #0x00ff,lsl #16
	MOVK x5, #0xffff,lsl #32
	MOVK x5, #0x5678,lsl #48

	MUL x2, x4, x5 	/*Multiplies the contents of x4 and x5 together, placing the lower 64-bit result
			 in reg x2*/
	UMULH x3, x4, x5 /*Multiplies the contents of x4 and x5 together, placing the higher unsigned 
			64-bit result (64:127) result in reg x3, discarding lower 64 bits (0:63)*/
	MOV	w8, #0x5d	//Time to go.

