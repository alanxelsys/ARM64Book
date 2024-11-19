1	.global _start
2	_start:
3		MOVN 	x2, #0xfedc	//This is the move negated instruction
4		NOP			//after execution it will change the value above to
5		NOP			//0xffffffffffff0123
6		NOP			//can be useful with bitmask operations
7		MOV	w8, #0x5d	//Time to go.
8		SVC #0

