/* This example shows various addition instructions  */
.text
.global _start
_start:
	MOV x, #0 		//Clear reg x4
	MOV x5, #0xaaaa	// Move into reg x5
	MOVK x5,#0xaaaa, LSL 16
	ADD x6, x4, x5, SXTW #4 /* Sign extend the word in reg x5 (0xaaaaaaaa), 
shifting it four places, adding it to reg 4 placing the result in reg x6*/
	MOV	w8, #0x5d	//Time to go.
	SVC 	#0

