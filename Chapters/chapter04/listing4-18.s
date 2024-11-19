/* This example shows various multiplication instructions */

.text

.global _start
_start:
	MOV x4, #1024 	//This moves the number 1024 to reg x4
	MOV x5, #60		// This moves the number 60 to reg x5
	MOV x6, #1000		// This number will be added
	MADD x2, x4, x5, x6	/*Multiplies the contents of x4 and x5 together, adding the contents of x6 and placing the result in x2*/
	MOV	w8, #0x5d	//Time to go.
	SVC 	#0

