.text

.global _start
	_start:
		MOV x4, #1024 	//This moves the number 1024 to reg x4
		MOV x5, #60		// This moves the number 60 to reg x5
	SUB x5, x4, x5	//Subtracts the contents of reg x4 from x5 placing the result in reg x5
		MOV	w8, #0x5d	//Time to go.
SVC #0

