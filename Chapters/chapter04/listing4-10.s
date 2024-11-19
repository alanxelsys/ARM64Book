/* This example shows various addition instructions  */
.text

.global _start
	_start:
		MOV x4, #0x400 		//This moves the number 1024 to reg x4
		MOV x5, #0x7aaa	// Move 0X7aaa into reg x5 giving a signed positive number
		ADD x6, x4, x5, SXTH    /* Sign extend the halfword in reg x5 (0x7aaa), placing the result in reg x6*/
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0

