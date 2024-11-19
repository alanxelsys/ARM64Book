* This example shows a Nested For Loop in action                                              
Both loops start with an index of 1 and count up to 3
- w3 holds the index value for the inner loop 
- w4 holds the index value for the outer loop
- w9 holds the termination loop value

- w5 holds the ASCII equivalent of the current index value 

For writing -
w0 = 1 <stdout>
w1 = Character location in memory
w2 = Character count for output to stdout

*/
.text

.global _start

_start:
	MOV W9, #4		//ending value for loop
	MOV w7, #1		// For loop iteration value
	MOV w0, #1 //stdout
	LDR w1, =printheader
	MOV w2, #14		// Character count of printheader string
	MOV w8, #64		// Write out header text
	SVC #0
LDR w1, =printvalues	// Now that the header has been printed get ready to print values
	MOV w3, #0x1 		// Load up reg w3 with starting inner loop value
	MOV w4, #0x1 		// Load up reg w4 with starting outer loop value
incrementinner:
	ADD w5, w3, #48		// Convert inner index to ascii
	ADD w6, w4, #48		// Convert outer index to ascii
	MOV w0, #1		// stdout, don't assume x0 is preserved after SVC call
	STRB w5, [x1]		// Put character into string space
	MOV w2, #2		// One character at a time
	MOV w8, #64		// Write out inner index
	SVC #0			
	MOV w0, #1
	MOV w2, #1
	MOV w5, #9		// Tab for neatness
	STRB w5, [x1]		//Load up a tab character
	MOV w8, #64		// Write out the Tab
	SVC #0	
	ADD w5, w4, #48		// Convert outer index to ASCII
	MOV w0, #1
	MOV w2, #1
	STRB w5, [x1]		// Put outer index ascii value into string space
	MOV w8, #64
	SVC #0
	MOV w5, #10
	STRB w5, [x1]		// Newline character
	MOV w8, #64
	SVC #0
	ADD w3, w7, w3		// incrementinner loop
	CMP w3, w9		// End of inner loop index reached? 
	B.EQ incrementouter	// Time to increment adjacent for loop
	B incrementinner
incrementouter:
	MOV w3, #1		// Set innerloop index back to starting value
	ADD w4, w7, w4		// Increment adjacent loop index
	CMP w4, w9		// End of outer loop finished?
	B.NE incrementinner
exit: 
	MOV w0, #1
	MOV w10, #10
	MOV w11, #13
	STRB w10, [x1]	
	MOV w2, #1
	MOV w8, #64
	SVC 0
	MOV w0, #1
	STRB w11, [x1]
	MOV w2, #1
	MOV w8, #64		// Invoke the Write system call
	SVC #0
	MOV w8, #0x5d		// Time to go.
	SVC #0
.data
	printheader: .ascii "\nInner Outer\n"
	printvalues: .space 8

