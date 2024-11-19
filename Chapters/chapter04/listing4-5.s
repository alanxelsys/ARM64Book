.text

.global _start
	_start:
		MOV x4, #0x400 	//This moves the number 1024 to reg x4
		MOV x5, #0x55		// Move into reg x5
		ADD x6, x4, x5, UXTB #4 /* Unsign extends the byte in reg x5 (0x55), 
					shifting it four places, adding it to reg 4 placing the result in reg x6*/
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0

