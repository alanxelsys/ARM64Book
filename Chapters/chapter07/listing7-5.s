.text
.global _start
_start:
ldr x0, =string1
bl printf	// Use -nostartfiles when linking with gcc
mov w8, #93
svc #0
string1: .asciz "This string was printed from assembly using printf\n"

