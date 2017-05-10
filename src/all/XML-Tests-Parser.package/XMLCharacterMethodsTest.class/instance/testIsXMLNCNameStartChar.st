tests
testIsXMLNCNameStartChar
	self allNameStartChars do: [:each |
		each == $:
			ifTrue: [self deny: each isXMLNCNameStartChar]
			ifFalse: [self assert: each isXMLNCNameStartChar]].
	self allNonNameChars do: [:each |
		self deny: each isXMLNCNameStartChar].
	self allNonNameStartCharNameChars do: [:each |
		self deny: each isXMLNCNameStartChar].
	self deny: nil isXMLNCNameStartChar.