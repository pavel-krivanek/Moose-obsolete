tests
testXMLPrefixBeforeLocalName
	self
		assert: 'name' xmlPrefixBeforeLocalName = '';
		assert: ':name' xmlPrefixBeforeLocalName = '';
		assert: 'prefix:name' xmlPrefixBeforeLocalName = 'prefix';
		assert: '::name' xmlPrefixBeforeLocalName = ':';
		assert: 'invalid:prefix:name' xmlPrefixBeforeLocalName = 'invalid:prefix';
		assert: ':::name' xmlPrefixBeforeLocalName = '::';
		assert: ':invalid:prefix:name' xmlPrefixBeforeLocalName = ':invalid:prefix'.