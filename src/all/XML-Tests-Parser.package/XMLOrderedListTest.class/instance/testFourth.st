tests
testFourth
	self
		assert: self emptyList fourth = self defaultValue;
		assert: self listWithItems fourth = (self listItems at: 4).