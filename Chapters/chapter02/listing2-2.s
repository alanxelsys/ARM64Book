.global	_start
.text
_start:	movk x3, #1234, lsl #0
		movk x3, #5678, lsl #16
		mov  x8, #93
		svc 0

