accessing
nonNameChars
	"These are a limited selection of values from #allNonNameChars, including
	the start and end of each char range (used for performance)"
	^ #(16r01 16r0F 16r10
			16r2C 16r2F 16r3B
			16r40 16r5B 16r5E
			16r60 16r7B 16r80
			16rB6 16rB8 16rBF
			16rD7 16rF7 16r37E
			16r2000 16r200B 16r200E 16r206F
			16r2190 16r2BFF 16r2FFF 16r3000
			16rD800 16rF8FF 16rFDD0 16rFDEF
			16rFFFE 16r0FFFF 16rF0000 16r10FFFF)
			collect: [:each | each asCharacter]