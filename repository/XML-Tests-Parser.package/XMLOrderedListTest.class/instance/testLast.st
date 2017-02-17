tests
testLast
	self
		assert: self emptyList last = self defaultValue;
		assert: self listWithItems last = self listItems last.