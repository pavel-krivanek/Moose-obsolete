accessing
encodedUTF16LEString
	^ self stringFrom:
		#(16rFF 16r00
			16r00 16r01
			16rFF 16rD7
			16r00 16rE0
			16rFF 16rFF
			16r00 16rD8 16r00 16rDC "first surrogate pair"
			16r01 16rD8 16r37 16rDC
			16r52 16rD8 16r62 16rDF
			16rFF 16rDB 16rFF 16rDF) "last surrogate pair"