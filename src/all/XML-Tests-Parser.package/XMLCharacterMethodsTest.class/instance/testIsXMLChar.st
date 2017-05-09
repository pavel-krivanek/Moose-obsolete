tests
testIsXMLChar
	self allChars do: [:each |
		self assert: each isXMLChar].
	self allNonChars do: [:each |
		self deny: each isXMLChar].
	self deny: nil isXMLChar.