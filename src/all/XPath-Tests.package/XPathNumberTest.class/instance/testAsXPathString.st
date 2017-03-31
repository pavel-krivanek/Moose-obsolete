tests
testAsXPathString
	self
		assert: 1 asXPathString = '1';
		assert: 1.0 asXPathString = '1';
		assert: Float infinity asXPathString = 'Infinity';
		assert: Float xpathNegativeInfinity asXPathString = '-Infinity';
		assert: Float nan asXPathString = 'NaN';
		assert: 0.0 asXPathString = '0';
		assert: Float xpathNegativeZero asXPathString = '0'