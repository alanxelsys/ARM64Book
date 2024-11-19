.text
.global _start
_start:
ldr x0, = floating01
ldr x1, = floating02
ldr d0, [x0]	// Load into double precision d0 fp register
ldr d1, [x1]	// Load into double precision d1 fp register

// Add and Multiply
fadd d2, d0,d1	// Perfrom fp addition putting the result into d2
fmul d3, d0,d1	// Perform fp multiplication putting the result into d3

// Conversion
mov x2, #0x5555
scvtf d4, x2	// Signed integer to register d4, ucvtf for unsigned
fcvtms x3, d2	// Signed, rounding to minus infinity, fcvtps rounding to positive infinity

// Comparison
fcmp d2, d3
fcmp d1, #0.0

// Square root
fsqrt d4, d3
mov x8, #93
svc #0

.data 
	floating01:	.double 1.414
	floating02:	.double 3.14

