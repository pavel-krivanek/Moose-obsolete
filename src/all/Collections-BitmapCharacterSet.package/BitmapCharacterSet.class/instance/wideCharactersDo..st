enumerating
wideCharactersDo: aBlock
	"optimized for speed with to:do: and inlining; do not refactor"
	| baseValue |

	wideCharacters
		ifNil: [^ self].

	baseValue := 256.
	1 to: wideCharacters size do: [:byteIndex | | byte |
		(byte := wideCharacters at: byteIndex) == 0
			ifFalse: [
				0 to: 7 do: [:shiftIndex |
					(byte bitAnd: (1 bitShift: 7 - shiftIndex)) == 0
						ifFalse: [
							aBlock value:
								(Character value: baseValue + shiftIndex)]]].
		baseValue := baseValue + 8].