testing
includes: aCharacter
	| asciiValue |

	"optimized for speed with inlining; do not refactor"
	(asciiValue := aCharacter asciiValue) < 256
		ifTrue: [^ byteCharacters at: asciiValue + 1]
		ifFalse: [| byteIndex |
			wideCharacters
				ifNil: [^ false].

			"256 // 8 - 31 = 1 (first index), (256 + 8) // 8 - 31 = 2 (second), etc
			(with 'bitShift: -3' used over '// 8' for speed)"
			(byteIndex := (asciiValue bitShift: -3) - 31) > wideCharacters size
				ifTrue: [^ false].

			"for the byte bitmask, left shift 1 by 7 - (asciiValue \\ 8)
			(with 'bitAnd: 7' used over '\\ 8' for speed)"
			^ ((wideCharacters at: byteIndex) bitAnd:
				(1 bitShift: 7 - (asciiValue bitAnd: 7))) > 0]