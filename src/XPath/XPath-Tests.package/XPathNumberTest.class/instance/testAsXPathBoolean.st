tests
testAsXPathBoolean
	self
		assert: 1 asXPathBoolean;
		assert: -1 asXPathBoolean;
		assert: Float infinity asXPathBoolean;
		assert: Float xpathNegativeInfinity asXPathBoolean;
		deny: 0.0 asXPathBoolean;
		deny: Float xpathNegativeZero asXPathBoolean;
		deny: Float nan asXPathBoolean