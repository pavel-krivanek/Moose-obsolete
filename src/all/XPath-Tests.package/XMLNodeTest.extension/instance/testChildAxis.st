*XPath-Tests
testChildAxis
	self
		assert: (self newNode / 'node()') isEmpty;
		assert: (self newNode / '*') isEmpty