/* This example shows various multiplication instructions */
.text
.global _start
	_start:
		MOV x4, #1024 	//This moves the number 1024 to reg x4
		MOV x5, #60		// This moves the number 60 to reg x5
		MUL x2, x4, x5 	/*Multiplies the contents of x4 and x5 together, placing the result in reg x2*/
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0

