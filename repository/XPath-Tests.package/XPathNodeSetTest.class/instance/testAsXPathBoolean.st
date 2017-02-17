tests
testAsXPathBoolean
	self
		deny: self emptyList asXPathBoolean;
		assert: self listWithSingleItem asXPathBoolean