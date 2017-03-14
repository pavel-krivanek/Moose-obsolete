testing-unicode
testUnicodeEscape3

	self
		fail: '\u00000'
		rule: #unicodeEscape