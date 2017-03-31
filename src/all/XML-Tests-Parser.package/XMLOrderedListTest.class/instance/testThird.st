tests
testThird
	self
		assert: self emptyList third = self defaultValue;
		assert: self listWithItems third = (self listItems at: 3).