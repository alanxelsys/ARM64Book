.text
.global _start
_start:
ldr x0, = floating01
ldr x1, = floating02
ldr s0, [x0]	// Load into single precision s0 fp register
ldr s1, [x1]	// Load into single precision s1 fp register
fadd s2, s0,s1	// Perfrom fp addition putting the result into s2
fmul s3, s0,s1	// Perform fp multiplication putting the result into s3:wq


mov x8, #93
svc #0

.data 
	floating01:	.single 1.414
	floating02:	.single 3.14

