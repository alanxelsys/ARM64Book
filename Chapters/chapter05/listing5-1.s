//listing5-1
// This example shows how basic comparison and branch instructions work

.text

.global _start
_start:
        MOV x4, #0X8000 // Load up reg x4
        MOV X5, #0x4000 // Now load reg x5
        CMP x4, x5
	MRS x9,NZCV

        BGT printlower

        LDR x1, =lower  // Point x1 to lower string location
        MOV x2, #22     // Length of lower string
        B printit

printlower:
        LDR x1, =upper  // Point x1 to upper string location
        MOV x2, #23     // Length of upper string

printit:
        mov x0, #1
        MOV w8, #64     // Invoke the Write system call
        SVC #0
        MOV w8, #0x5d   // Time to go.
        SVC #0

.data
        lower: .ascii "First number is lower\n"
.align
        upper: .ascii "First number is higher\n"

