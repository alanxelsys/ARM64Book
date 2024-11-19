.text
.global _start
_start:
ldr x0, =string1
mov x1,#-140
mov x2, #15
add x3, x1, x2
ldr x0, =string1
str x1, [SP, #-16]!
str x2, [SP, #-16]!
str x3, [SP, #-16]!
bl printf	// Use -nostartfiles when linking with gcc
ldr x0, =string2
ldr x3, [sp], #16
ldr x2, [sp], #16
ldr x1, [sp], #16
bl printf
mov w8, #93
svc #0

.data
	string1: .asciz "The first number represented as signed decimal is %d, the second number represented as lower case hexadecimal is %x, the addition of the two numbers represented as upper case hexadecimal is: %X\n"
	string2: .asciz "\nThe first number represented as unsigned decimal is %u, the second number represented as signed decimal is %d, the addition of the two numbers represented as upper case hexadecimal is: %X\n"

