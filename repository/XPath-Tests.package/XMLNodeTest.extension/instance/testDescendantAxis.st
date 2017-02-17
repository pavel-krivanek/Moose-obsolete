*XPath-Tests
testDescendantAxis
	self
		assert: (self newNode // 'node()') isEmpty;
		assert: (self newNode // '*') isEmpty