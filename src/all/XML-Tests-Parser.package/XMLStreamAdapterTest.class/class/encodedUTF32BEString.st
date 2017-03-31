accessing
encodedUTF32BEString
	^ self stringFrom:
		#(16r00 16r00 16r00 16rFE
			16r00 16r00 16rD7 16rFE
			16r00 16r10 16rFF 16rFF)