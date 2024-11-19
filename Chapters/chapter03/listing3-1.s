/* This example shows how to write a string to the screen. It uses the write system call
for this. The call expects three arguments -
	
	- x0 holds the file descriptor (1=stdout), 
	- x1 holds the starting address in memory of the string to be written
	- x2 holds the length of the string  */
	
	.text
	
	.global _start
	
	_start:
		MOV	x0, #1	//stdout
		LDR	x1, =string1
		MOV	x2, #13	//Print 13 characters	
		MOV	w8, #64	//This is the write system call
		SVC	#0		//Put it out to screen
		MOV 	x0, #0	//Return code of 0
		MOV	w8, #0x5d	//Time to go.
		SVC 	#0
	
	.data
	string1: .ascii "Hello ARM64!\n"
	.align 4

