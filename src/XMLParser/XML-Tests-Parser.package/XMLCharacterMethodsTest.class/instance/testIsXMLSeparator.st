tests
testIsXMLSeparator
	| separators |

	separators := Character xmlSeparators.
	0 to: 255 do: [:each | | char |
		char := each asCharacter.
		(separators includes: char)
			ifTrue: [self assert: char isXMLSeparator]
			ifFalse: [self deny: char isXMLSeparator]].
	self
		assert: (nil respondsTo: #isXMLSeparator);
		deny: nil isXMLSeparator.