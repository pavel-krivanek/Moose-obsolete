accessing
encodedUTF8String
	^ self stringFrom:
		#(16r7F
			16rC2 16r80
			16rDF 16rBF
			16rE0 16rA0 16r80
			16rEF 16rBF 16rBF
			16rF0 16r90 16r80 16r80
			16rF4 16r8F 16rBF 16rBF)