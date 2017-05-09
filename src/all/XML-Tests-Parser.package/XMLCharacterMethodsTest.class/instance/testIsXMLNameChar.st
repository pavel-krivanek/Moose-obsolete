tests
testIsXMLNameChar
	self allNameChars do: [:each |
		self assert: each isXMLNameChar].
	self allNonNameChars do: [:each |
		self deny: each isXMLNameChar].
	self deny: nil isXMLNameChar.