*XPath-Tests
testFollowingAxis
	self
		assert: (self newNode >> 'node()') isEmpty;
		assert: (self newNode >> '*') isEmpty