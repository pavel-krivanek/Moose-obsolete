enumerating
wideCharactersDo: aBlock
	"optimized for speed with to:do: and inlining; do not refactor"
	| baseValue |

	wideCharacters
		ifNil: [^ self].

	baseValue := 248. "256 - 8"
	1 to: wideCharacters size do: [:byteIndex | | byte |
		baseValue := baseValue + 8. "248 + 8 = 256, 256 + 8 = 264, etc"
		(byte := wideCharacters at: byteIndex) == 0
			ifFalse: [
				0 to: 7 do: [:shiftIndex |
					(byte bitAnd: (1 bitShift: 7 - shiftIndex)) == 0
						ifFalse: [
							aBlock value:
								(Character value: baseValue + shiftIndex)]]]].