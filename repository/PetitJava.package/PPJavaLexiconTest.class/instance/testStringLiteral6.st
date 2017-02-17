testing-literals
testStringLiteral6

	self 
		fail: '"This is a \t
				two lines Java string"'
		rule: #stringLiteral