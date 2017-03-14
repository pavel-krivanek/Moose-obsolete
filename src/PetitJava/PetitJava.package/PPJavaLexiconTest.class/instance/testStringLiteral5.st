testing-literals
testStringLiteral5

	self 
		fail: '"This is a \b
				two lines Java string"'
		rule: #stringLiteral