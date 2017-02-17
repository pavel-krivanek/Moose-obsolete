tests
testIsXMLWhitespace
	| whitespace |

	whitespace := Character xmlWhitespace.
	0 to: 255 do: [:each | | char |
		char := each asCharacter.
		(whitespace includes: char)
			ifTrue: [self assert: char isXMLWhitespace]
			ifFalse: [self deny: char isXMLWhitespace]].
	self
		assert: (nil respondsTo: #isXMLWhitespace);
		deny: nil isXMLWhitespace.