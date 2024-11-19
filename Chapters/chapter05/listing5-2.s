// This example shows how basic comparison and branch instructions work

.text

.global _start
_start:
	MOV x4, #0X8000 // Load up reg x4 
	MOV x5, #0x8000	// Now load reg x5 
	CMP x4, x5	
	MRS X9,NZCV	// Get Flags
	B.MI printlower
	B.EQ printthesame // Position B.EQ before B.PL since zero is considered positive
	B.PL printhigher

printlower:
	LDR x1, =lower	// Point x1 to lower string location
	MOV x2, #22	// Length of lower string
	B printit

printhigher:	
	LDR x1, =higher // Point x1 to higher string location
	MOV x2, #23	// Length of higher string
	B.AL printit

