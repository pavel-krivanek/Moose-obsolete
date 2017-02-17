tests
testSize
	self
		assert: self emptyList size isZero;
		assert: self listWithSingleItem size = 1;
		assert: self listWithItems size = self listItems size