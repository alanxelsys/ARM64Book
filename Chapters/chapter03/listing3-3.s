// listing3-3
// This example shows ARM64 addressing modes-
.text
.global _start
_start:		
	LDR	x0, =baselocation //This loads the address baselocation (0x4100d8) into x0
// Simple Addressing Mode
	LDR	x1, [x0] //This loads the actual data (0x1817161514131211) from baselocation into x1
//Offset addressing with a constant as an offset
	LDRH     w2, [x0, #8]	// Loads contents (0x1a19) of location 4100d8+8) into w2
		
//Offset addressing with a register as an offset
	MOV x10, #4	// Move offset value into register x10
	LDRB w2, [x0, x10]	// Loads contents (0x15) of location 4100d8+4) into w2

//Pre-Index Addressing Mode
	LDRH	w2, [x0, #8]!	// Similar to offset except that x0 is updated with the new calculated address. x0 now contains the address 0x4100e0 and w2 with the data 0x1a19

//Post-index Addressing mode
	LDRH	w2, [x0], #7	// Picks up the data at location 0x4100e0 and only then updates x0 to 0x4100ef

		MOV	w8, #0x5d	//Time to go.
		SVC 	#0
.data
	baselocation:			.byte 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18
	baselocationwithoffset: 	.byte 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20 

