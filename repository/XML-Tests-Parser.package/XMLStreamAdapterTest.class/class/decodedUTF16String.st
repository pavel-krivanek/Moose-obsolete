accessing
decodedUTF16String
	^ self stringFrom:
		#(16rFF 16r0100 16rD7FF 16rE000 16rFFFF 16r10000 16r10437 16r24B62 16r10FFFF)