converting
characterFromCodePoint: aCodePoint
	"Converters are liberal for performance, just doing a basic range check
	which is needed for GS where chars must be <= the max code point."
	aCodePoint > 16r10FFFF "max code point"
		ifTrue: [self errorBadCharacterValue: aCodePoint].
	^ Character value: aCodePoint.