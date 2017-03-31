accessing
encodedUTF32LEString
	^ self stringFrom:
		#(16rFE 16r00 16r00 16r00
			16rFE 16rD7 16r00 16r00
			16rFF 16rFF 16r10 16r00)