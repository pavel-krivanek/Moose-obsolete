decoding
characterFromCodePoint: aCodePoint
	| character |

	"nil understands isXMLChar so it does not need to be tested for"
	(character := super characterFromCodePoint: aCodePoint) isXMLChar
		ifTrue: [^ character]
		ifFalse: [^ nil].