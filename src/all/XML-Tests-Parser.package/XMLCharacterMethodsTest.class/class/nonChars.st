accessing
nonChars
	"These values are a limited selection from #allNonChars, including the
	start and end of each char range (used for performance)"
	^ #(16r1 16r2 16r3 16r4 16r5 16r6 16r7 16r8
			16rB 16rC 16rE 16rF
			16r10 16r11 16r12 16r13 16r14 16r15 16r16 16r17 16r18 16r19
			16r1A 16r1B 16r1C 16r1D 16r1E 16r1F
			16rD800 16rDFFF
			16rFFFE 16rFFFF)
			collect: [:each | each asCharacter]