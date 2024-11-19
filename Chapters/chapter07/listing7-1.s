.global cubeandadd
//.type cubeandadd, "function"

cubeandadd:
mov w2, w0
mul w0, w0, w0 // Args are in r0 and r1
mul w0, w2, w0
add w0, w0, w1
ret
