// listing4-12
.text
.global _start
	_start:
		MOV x4, #0xb000		//Add #0xb000 reg x4
		MOV x5, #0xaaaa	// Move into reg x5
		MOVK x5,#0xaaaa, LSL 16
		MOVK x5, #0xaaaa, LSL 32
		MOVK x5, #0xb000, LSL 48
		ADD x6, x4, x5 // Does not set the N flag
		MOV  w8, #0x5d	//Time to go.
		SVC  #0

