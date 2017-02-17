tests
testAsXPathBoolean
	self
		assert: 'true' asXPathBoolean;
		assert: 'false' asXPathBoolean;
		assert: '0' asXPathBoolean;
		deny: '' asXPathBoolean