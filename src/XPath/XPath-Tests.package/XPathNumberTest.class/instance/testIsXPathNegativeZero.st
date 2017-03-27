tests
testIsXPathNegativeZero
	self
		deny: 0 isXPathNegativeZero;
		deny: 0.0 isXPathNegativeZero;
		assert: Float xpathNegativeZero isXPathNegativeZero