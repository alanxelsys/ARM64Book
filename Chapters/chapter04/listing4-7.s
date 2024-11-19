/* This example shows various addition instructions  */

.text

.global _start
_start:
	MOV x4, #0x400 	
//This moves the number 1024 to reg x4
	MOV x5, #0xaaaa	
// Move 0Xaaaa into reg x5
	ADD x6, x4, x5, UXTB    
/* Unsign extend the byte in reg x5 (0xaaaa), placing the result in reg x6*/
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0

