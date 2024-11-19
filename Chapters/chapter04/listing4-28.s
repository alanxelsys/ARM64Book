.text

.global _start

_start:
mov w0, #0xaaaa
mov w1, #0x33333333
mov w2, #0x44444444
mov w3, #0x55555555
mov w4, #0x66666666

lsl w5, w1, #3 	// w5 = 0x99999998 	
lsl w6, w1, w0 	// w6 = 0xcccccc00
asr w7, w2, #3  	// w7 = 0x88888888
ror w3, w3, #5  	// w3 = 0xaaaaaaaa 
mov w8, #93 //Time to go 
SVC 0

