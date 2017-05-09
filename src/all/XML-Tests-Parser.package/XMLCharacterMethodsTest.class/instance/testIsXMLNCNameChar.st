tests
testIsXMLNCNameChar
	self allNameChars do: [:each |
		each == $:
			ifTrue: [self deny: each isXMLNCNameChar]
			ifFalse: [self assert: each isXMLNCNameChar]].
	self allNonNameChars do: [:each |
		self deny: each isXMLNCNameChar].
	self deny: nil isXMLNCNameChar.