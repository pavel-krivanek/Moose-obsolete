private
parserForSpecialCharacter: aCharacter
	| asciiValue |

	"avoid at:ifAbsent: for speed"
	((asciiValue := aCharacter asciiValue) > 0
		and: [asciiValue <= SpecialCharacterParsers size])
			ifTrue: [^ SpecialCharacterParsers at: asciiValue]
			ifFalse: [^ nil]