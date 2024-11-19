.text
.global _start
_start:
ldr x0, =string1
mov x1,#5
mov x2, #15
add x3, x1, x2
ldr x0, =string1
bl printf	// Use -nostartfiles when linking with gcc
mov w8, #93
svc #0
string1: .asciz "The first number is %d, the second number is %d, the addition of the two numbers is: %d\n"

