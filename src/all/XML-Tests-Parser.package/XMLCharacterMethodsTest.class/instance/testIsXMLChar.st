tests
testIsXMLChar
	self nonChars do: [:each |
		self deny: each isXMLChar]