tests
testAsXPathNumber
	self
		assert: true asXPathNumber = 1.0;
		assert: true asXPathNumber isFloat;
		assert: false asXPathNumber isXPathPositiveZero;
		assert: false asXPathNumber isFloat