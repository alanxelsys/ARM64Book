.text
.global _start
_start:
	MOV x4, #1024 //This moves the number 1024 to reg x4
	MOV x5,#64	// Move 64 into reg x5
	ADD x6, x4, x5, LSL #6	

/*Adds the contents of reg x4 and reg x5 left shifted by 6 places placing the result in reg x6*/
	MOV	w8, #0x5d	//Time to go.
	SVC 	#0

