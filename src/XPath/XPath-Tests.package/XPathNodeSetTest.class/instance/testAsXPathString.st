tests
testAsXPathString
	self
		assert: self emptyList asXPathString = '';
		assert: self listWithItems asXPathString = self singleListItem stringValue;
		assert: self listWithItems reversed asXPathString = self singleListItem stringValue