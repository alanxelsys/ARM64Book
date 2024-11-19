//listing 8-2
// Double precision floating-point  
.text
  .global _start
  _start:
  	ldr x0, = floating01
  	ldr x1, = floating02
  	ldr d0, [x0]    // Load into double precision d0 fp register
  	ldr d1, [x1]    // Load into double precision d1 fp register
	ldr x0, =string1 // Free to use x0 again 
  	// Add and Multiply
 	fadd d2, d0,d1  // Perform fp addition putting the result into d2
	fmul d3, d0,d1  // Perform fp multiplication putting the result into d3
	stp d0,d1,[sp, #-16]!	// Save d0 and d1
	stp d2,d3,[sp, #-16]!	// save d2 and d3
	bl printf
	ldp d2,d3, [sp],16	// Bring back the registers, observing LIFO
	ldp d0,d1, [sp],16
	
 	// Square root
	ldr x0, =string2
	fsqrt d1, d0
	stp d0,d1,[sp, #-16]!   // Save d0 and d1
        stp d2,d3,[sp, #-16]!   // save d2 and d3
	bl printf
  	ldp d2,d3, [sp],16      // Bring back the registers, observing LIFO	
   	ldp d0,d1, [sp],16

	mov x8, #0x5d
  	svc #0
  .data
        floating01:     .double 1.414
        floating02:     .double 3.14
	string1: .asciz "The floating point number %.3f, added to the floating point number %.3f, is %.2f,when multiplied the result is %.2f\n"
	string2: .asciz "The square root of register d0 containing %.8f, is %.8f\n"  
