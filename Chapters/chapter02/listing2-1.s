.global	_start
_start:
.text
	mov x3, 0XFFFF
	mov x4, x3	
	mov w8, 93	//ARM64 Syscall to exit
	svc #0

