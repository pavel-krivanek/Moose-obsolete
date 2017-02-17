tests
testSixth
	self
		assert: self emptyList sixth = self defaultValue;
		assert: self listWithItems sixth = (self listItems at: 6).