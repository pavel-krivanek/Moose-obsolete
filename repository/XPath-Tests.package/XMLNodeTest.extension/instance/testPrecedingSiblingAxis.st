*XPath-Tests
testPrecedingSiblingAxis
	self
		assert: (self newNode <<< 'node()') isEmpty;
		assert: (self newNode <<< '*') isEmpty