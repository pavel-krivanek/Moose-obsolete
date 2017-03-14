*XPath-Tests
testFollowingSiblingAxis
	self
		assert: (self newNode >>> 'node()') isEmpty;
		assert: (self newNode >>> '*') isEmpty