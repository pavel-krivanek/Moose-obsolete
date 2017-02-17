tests
testEighth
	self
		assert: self emptyList eighth = self defaultValue;
		assert: self listWithItems eighth = (self listItems at: 8).