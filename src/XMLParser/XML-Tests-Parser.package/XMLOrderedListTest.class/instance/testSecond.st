tests
testSecond
	self
		assert: self emptyList second = self defaultValue;
		assert: self listWithItems second = (self listItems at: 2).