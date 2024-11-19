// This example illustrates the MSUB instruction which multiplies two operands and then subtracts the product from a third operand.
.text
.global _start
_start:
	MOV x4, #0x5a5 	// Load up first 16 bits to reg w4
	MOV x5, #0x4		// Now load reg x5
	MOV x6, #0xaa		// Value to be subtracted from	

	MSUB x3, x4, x5, x6     // Multiplies the contents of x4 and x5 together, subtracting the product from x6
	MOV   w8, #0x5d	//Time to go.
	SVC 	#0

