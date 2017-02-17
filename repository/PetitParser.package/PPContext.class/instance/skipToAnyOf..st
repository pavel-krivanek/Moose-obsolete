stream mimicry
skipToAnyOf: aCharacterSet 
	"Set the access position of the receiver to be past the next occurrence of
	a character in the character set. Answer whether a fitting character is found."

	[stream atEnd]
		whileFalse: [ (aCharacterSet includes: stream next) ifTrue: [^true]].
	^false