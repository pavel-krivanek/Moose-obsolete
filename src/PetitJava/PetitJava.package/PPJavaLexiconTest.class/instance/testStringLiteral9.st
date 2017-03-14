testing-literals
testStringLiteral9

	self 
		fail: '"This is a \r
				two lines Java string"'
		rule: #stringLiteral