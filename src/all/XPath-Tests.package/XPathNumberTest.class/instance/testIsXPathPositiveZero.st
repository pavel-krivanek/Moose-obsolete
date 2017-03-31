tests
testIsXPathPositiveZero
	self
		assert: 0 isXPathPositiveZero;
		assert: 0.0 isXPathPositiveZero;
		deny: Float xpathNegativeZero isXPathPositiveZero