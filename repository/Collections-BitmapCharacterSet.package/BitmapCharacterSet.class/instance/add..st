adding
add: aCharacter
	| asciiValue |

	"optimized for speed with inlining; do not refactor"
	(asciiValue := aCharacter asciiValue) < 256
		ifTrue: [
			(byteCharacters at: asciiValue + 1)
				ifFalse: [tally := tally + 1].
			byteCharacters
				at: asciiValue + 1
				put: true]
		ifFalse: [| byteIndex byte bitmask |
			"256 // 8 - 31 = 1 (first index), (256 + 8) // 8 - 31 = 2 (second), etc
			(with 'bitShift: -3' used over '// 8' for speed)"
			byteIndex := (asciiValue bitShift: -3) - 31.
			(wideCharacters isNil
				or: [byteIndex > wideCharacters size])
				ifTrue: [self growWideCharacterBitmapTo: (byteIndex * 1.5) asInteger].

			"raises an error if asciiValue > 16r10FFFF"
			byte := wideCharacters at: byteIndex.

			"for the byte bitmask, left shift 1 by 7 - (asciiValue \\ 8)
			(with 'bitAnd: 7' used over '\\ 8' for speed)"
			bitmask := 1 bitShift: 7 - (asciiValue bitAnd: 7).
			
			"increment the tally if the character is not already present"
			(byte bitAnd: bitmask) > 0
				ifFalse: [tally := tally + 1].

			wideCharacters
				at: byteIndex
				put: (byte bitOr: bitmask)].
	^ aCharacter.