tests
testAsXPathNumber
	self
		assert: self emptyList asXPathNumber isNaN;
		assert: self listWithItems asXPathNumber isNaN;
		assert: (self listClass with: ' 1.0 ' asXMLStringNode) asXPathNumber = 1.0;
		assert: (self listClass with: ' 1.0 .' asXMLStringNode) asXPathNumber isNaN