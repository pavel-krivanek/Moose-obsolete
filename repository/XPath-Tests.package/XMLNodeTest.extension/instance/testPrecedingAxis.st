*XPath-Tests
testPrecedingAxis
	self
		assert: (self newNode << 'node()') isEmpty;
		assert: (self newNode << '*') isEmpty