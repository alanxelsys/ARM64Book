#include <stdio.h>
int cubenumbers(int counter, int index)
{
	int res;
	asm(
	"mul %[outputresult], %[inputcounter], %[inputcounter]\n\t"
	"mul %[outputresult], %[inputcounter], %[inputindex]\n\t"
	: [outputresult] "=r" (res)   // Output Operand(s) list r = general registers
	: [inputcounter] "r" (counter), [inputindex] "r" (index)  // Input Operand(s) list
	);
	return res;
}

int main (void)
{
	int counter = 1;
	int index = 1;
	int result = cubenumbers(counter,index);
	
	while (counter <11)
	{
		result=cubenumbers(counter,index);
		printf ("Cubing %d = %d\n", counter,result);
		counter++;
		index++;
	}  
}


