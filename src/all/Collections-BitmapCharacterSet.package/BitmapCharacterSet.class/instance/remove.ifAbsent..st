removing
remove: aCharacter ifAbsent: aBlock
	| asciiValue |

	"optimized for speed with inlining; do not refactor"
	(asciiValue := aCharacter asciiValue) < 256
		ifTrue: [
			(byteCharacters at: asciiValue + 1)
				ifFalse: [^ aBlock value].
			byteCharacters
				at: asciiValue + 1
				put: false]
		ifFalse: [| byteIndex byte bitmask |
			wideCharacters
				ifNil: [^ aBlock value].
	
			"256 // 8 - 31 = 1 (first index), (256 + 8) // 8 - 31 = 2 (second), etc
			(with 'bitShift: -3' used over '// 8' for speed)"
			(byteIndex := (asciiValue bitShift: -3) - 31) > wideCharacters size
				ifTrue: [^ aBlock value].

			"for the byte bitmask, left shift 1 by 7 - (asciiValue \\ 8)
			(with 'bitAnd: 7' used over '\\ 8' for speed)"
			bitmask := 1 bitShift: 7 - (asciiValue bitAnd: 7).
			((byte := wideCharacters at: byteIndex) bitAnd: bitmask) > 0
				ifFalse: [^ aBlock value].

			wideCharacters
				at: byteIndex
				put: (byte bitAnd: bitmask bitInvert)].
	tally := tally - 1.
	^ aCharacter.