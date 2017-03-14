accessing
decodedUTF8String
	^ self stringFrom:
		#(16r7F 16r80 16r7FF 16r800 16rFFFF 16r10000 16r10FFFF)