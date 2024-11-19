text
.global _start
_start:
	MOV x4, #1024 
//This moves the number 1024 to reg x4
	ADD x6, x4, #6, LSL #12	
//Adds the contents of reg x4 and an immediate value of 60
left shifted by 12, placing the result in reg x6*/
	MOV	w8, #0x5d	//Time to go.
	SVC 	#0

