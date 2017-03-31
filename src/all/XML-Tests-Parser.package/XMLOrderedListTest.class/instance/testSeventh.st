tests
testSeventh
	self
		assert: self emptyList seventh = self defaultValue;
		assert: self listWithItems seventh = (self listItems at: 7).