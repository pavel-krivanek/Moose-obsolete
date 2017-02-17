tests
testAsXPathString
	self
		assert: true asXPathString = 'true';
		assert: false asXPathString = 'false'