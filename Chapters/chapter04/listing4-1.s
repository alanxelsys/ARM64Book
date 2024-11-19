
* This example shows various addition instructions */
.text
.global _start
_start:
	MOV x4, #1024 	
//This moves the number 1024 to reg x4
	MOV x5, #60		
// This moves the number 60 to reg x5
	ADD x6, x4, x5	
//Adds the contents of x4 and x5 placing the result in x6
	MOV	w8, #0x5d
SVC #0	
//Time to go.

