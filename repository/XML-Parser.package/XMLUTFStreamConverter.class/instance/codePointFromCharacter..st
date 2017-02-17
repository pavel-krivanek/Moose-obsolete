converting
codePointFromCharacter: aCharacter
	| codePoint |

	"Converters are liberal for performance, just doing a basic range check
	which is needed for GS where chars must be <= the max code point."
	(codePoint := aCharacter asciiValue) > 16r10FFFF "max code point"
		ifTrue: [self errorBadCharacterValue: codePoint].
	^ codePoint.