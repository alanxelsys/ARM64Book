/ This example illustrates the MNEG instruction which multiplies two operands and then subtracts the product from XZR.

.text

.global _start
_start:
	MOV x4, #0x5a5 		// Load up reg w4
	MOV x5, #0x4		// Now load reg x5
	MOV x6, #0xaa		// Value to be subtracted from	
	MNEG x3, x4, x5		// Multiplies the contents of x4 and x5 together, subtracting the product from 0 (XZR)
	MOV   w8, #0x5d		//Time to go.
	SVC 	#0

