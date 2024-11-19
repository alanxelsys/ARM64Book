// This example illustrates the UDIV instruction which uses two operands as the numerator and denominator.

.text

.global _start
_start:
	MOV x4, #2000 		// Load up reg x4 (number to be divided)
	MOV x5, #0x4		// Now load reg x5 (number that will divide)

	UDIV x3, x4, x5		// Divides x4 by x5 together, result goes into x3

	MOV x4, #1999		// x4 no longer evenly divisble by contents of x5
	UDIV x3, x4, x5		// No remainder recorded
	MOV x5, #0		// Dividing by zero does not error, but returns zero
	UDIV x3, x4, x5
	MOV   w8, #0x5d		//Time to go.
	SVC 	#0

