*XPath-Tests
testParentAxis
	self
		assert: (self newNode % 'node()') isEmpty;
		assert: (self newNode % '*') isEmpty