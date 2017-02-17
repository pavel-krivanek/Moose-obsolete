*XPath-Tests
testAncestorAxis
	self
		assert: (self newNode %% 'node()') isEmpty;
		assert: (self newNode %% '*') isEmpty