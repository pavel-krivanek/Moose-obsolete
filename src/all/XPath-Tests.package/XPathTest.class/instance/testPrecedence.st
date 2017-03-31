tests
testPrecedence
	self
		assert: (XPath for: '1 + 2 * 3 + 4 div 2' in: nil) rounded = 9;
		assert: (XPath for: '(1 + 2) * (3 + 4) mod 5' in: nil) rounded = 1.