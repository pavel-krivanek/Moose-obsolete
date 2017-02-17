testing-literals
testStringLiteral10

	self 
		fail: '"This is a \\
				two lines Java string"'
		rule: #stringLiteral