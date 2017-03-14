tests
testFifth
	self
		assert: self emptyList fifth = self defaultValue;
		assert: self listWithItems fifth = (self listItems at: 5).