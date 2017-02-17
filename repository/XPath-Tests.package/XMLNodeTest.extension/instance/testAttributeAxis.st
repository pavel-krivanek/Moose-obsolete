*XPath-Tests
testAttributeAxis
	self
		assert: (self newNode @ 'node()') isEmpty;
		assert: (self newNode @ '*') isEmpty