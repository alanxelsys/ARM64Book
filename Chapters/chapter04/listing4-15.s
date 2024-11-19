	_start:
		MOV x4, #0xffff	// Load up x4
		MOVK x4, #0xffff
		MOVK x4, #0xffff, LSL16
		MOVK x4, #0xffff, LSL 32
		MOVK x4, #0x8fff, LSL 48

		MOV x5, # 0xffff // Load up  x5
		MOVK x5,# 0xffff, LSL 16
		MOVK x5, #0xffff, LSL 32
		MOVK x5, #0x7fff, LSL 48
		ADCS x6, x4, x5 // 
		ADC x6, x4, x5
		ADD x6, x4, x5
		MOV  w8, #0x5d	//Time to go.
		SVC  #0

