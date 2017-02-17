testing-literals
testStringLiteral8

	self 
		fail: '"This is a \f
				two lines Java string"'
		rule: #stringLiteral