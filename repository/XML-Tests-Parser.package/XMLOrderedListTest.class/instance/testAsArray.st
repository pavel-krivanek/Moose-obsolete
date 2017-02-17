tests
testAsArray
	self
		assert: self emptyList asArray = #();
		assert: self listWithItems asArray = self listItems asArray