accessing
encodedUTF16BEString
	^ self stringFrom:
		#(16r00 16rFF
			16r01 16r00
			16rD7 16rFF
			16rE0 16r00
			16rFF 16rFF
			16rD8 16r00 16rDC 16r00 "first surrogate pair"
			16rD8 16r01 16rDC 16r37
			16rD8 16r52 16rDF 16r62
			16rDB 16rFF 16rDF 16rFF) "last surrogate pair"