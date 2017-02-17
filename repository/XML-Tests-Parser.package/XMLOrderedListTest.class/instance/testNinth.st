tests
testNinth
	self
		assert: self emptyList ninth = self defaultValue;
		assert: self listWithItems ninth = (self listItems at: 9).