/* This example shows how to write a string to the screen. It uses the write system call
for this. The call expects three arguments -
	
- x0 holds the file descriptor (1=stdout), 
- x1 holds the starting address in memory of the string to be written
- x2 holds the length of the string 
A block of memory is reserved using the .data directive with the label message1.
It is initialized with 8 bytes of zero value
The string is loaded into register x4 2 bytes at a time via MOVK
and then stored into the memory location pointed to by x1 
*/
.text

.global _start
	_start:
		MOV	x0, #1	//stdout
		LDR	x1, =message1 //This loads the address of the label message1 into x1
		MOV	w4, #0x6548		//Load first two bytes "He" just use w4 for this rather than x4
		MOVK	x4, #0x6C6c, lsl #16	//Load next two bytes "ll"
		MOVK	x4, #0x206f, lsl #32	//Next two bytes "o "
		MOVK	x4, #0x654d, lsl #48	//Next two "Me "
		STR	x4, [x1]		// Put the eight byte string into memory pointed to by register x1
		MOV	x2, #8	//Print 8 characters
		MOV	w8, #64	//This is the write system call
		SVC	#0	//Put it out to screen
		MOV 	x0, #0	//Return code of 0
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0
.data
	message1: .space 8

