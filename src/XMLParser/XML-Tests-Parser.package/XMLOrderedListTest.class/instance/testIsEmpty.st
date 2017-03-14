tests
testIsEmpty
	self
		assert: self emptyList isEmpty;
		deny: self listWithSingleItem isEmpty;
		deny: self listWithItems isEmpty