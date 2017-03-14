tests
testFirst
	self
		assert: self emptyList first = self defaultValue;
		assert: self listWithItems first = (self listItems at: 1).