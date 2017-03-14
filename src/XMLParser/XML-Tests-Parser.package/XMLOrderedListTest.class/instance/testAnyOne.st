tests
testAnyOne
	self
		assert: self emptyList anyOne = self defaultValue;
		assert: self listWithItems anyOne = self listItems first.