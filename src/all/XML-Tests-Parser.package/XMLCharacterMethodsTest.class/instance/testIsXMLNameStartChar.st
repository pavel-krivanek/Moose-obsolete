tests
testIsXMLNameStartChar
	self allNameStartChars do: [:each |
		self assert: each isXMLNameStartChar].
	self allNonNameChars do: [:each |
		self deny: each isXMLNameStartChar].
	self allNonNameStartCharNameChars do: [:each |
		self deny: each isXMLNameStartChar].
	self deny: nil isXMLNameStartChar.