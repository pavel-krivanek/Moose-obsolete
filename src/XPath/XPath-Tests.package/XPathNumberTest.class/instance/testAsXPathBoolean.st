tests
testAsXPathBoolean
	self
		assert: 1 asXPathBoolean;
		assert: -1 asXPathBoolean;
		assert: Float infinity asXPathBoolean;
		assert: Float xPathNegativeInfinity asXPathBoolean;
		deny: 0.0 asXPathBoolean;
		deny: Float xPathNegativeZero asXPathBoolean;
		deny: Float nan asXPathBoolean