tests
testXMLLocalNameAfterPrefix
	self
		assert: 'name' xmlLocalNameAfterPrefix = 'name';
		assert: ':name' xmlLocalNameAfterPrefix = ':name';
		assert: 'prefix:name' xmlLocalNameAfterPrefix = 'name';
		assert: '::name' xmlLocalNameAfterPrefix = 'name';
		assert: 'invalid:prefix:name' xmlLocalNameAfterPrefix = 'name';
		assert: ':::name' xmlLocalNameAfterPrefix = 'name';
		assert: ':invalid:prefix:name' xmlLocalNameAfterPrefix = 'name'.