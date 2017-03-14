testing-unicode
testWhiteSpace1
"Testing whiteSpace parser"
	self
		parse: (Character value: 12) asString
		rule: #whiteSpace