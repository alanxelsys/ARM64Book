#include <stdio.h>
//int assemblyadd(int a,int b)
int cubeandadd(int a, int b, int c)
{
	int res = 0;

	/* Template is as follows:
	Code (Assembly language instruction such as ADD x0, X0, X3)
	Code template ( ADD %result, %[input1], [input2], . . .)
	Output Operands ([result] "=r" (res); r is a constraint string which is a general purpose 64-bit X register
	= is a constraint modifier for writing, + is for read and write
	Input Operands ([inputa] "r" (a) [inputb] "r" (b); two input operands a and b*/

	asm(
	"mov %[inputc], %[inputa]\n"
	"mul %[inputa], %[inputa], %[inputa]\n\t"
	"mul %[inputa], %[inputa], %[inputc]\n\t"
	"add %[result], %[inputa], %[inputb]\n\t"
	: [result] "=r" (res)   // Output Operand(s) list r = general registers
	: [inputa] "r" (a), [inputb] "r" (b), [inputc] "r" (c) // Input Operand(s) list
	: "w5", "w6" // Not needed here, added in for illustration
	);
	return res;
}
int main (void)
{
	int a = 5;
	int b = 10;
	int c = 0;
	int result = cubeandadd(a,b,c);
	printf ("Cubing %d and adding %d = %d\n", a,b,result);  
}


