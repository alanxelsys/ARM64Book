#include <stdio.h>
extern int cubeandadd(int a, int b);
int main()
{
    	int a = 5;
	int b = 10;
    	printf ("\n The cube and add function, calls assembly code to cube the first number %d and then add the second number %d, the result is %d\n", a, b, cubeandadd(a,b));
    return (0);
}
