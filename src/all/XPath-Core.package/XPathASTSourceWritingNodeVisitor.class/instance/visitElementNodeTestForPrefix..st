visiting - node tests
visitElementNodeTestForPrefix: anElementNodeTestForPrefix
	^ self
		emitNodeTest: anElementNodeTestForPrefix
		withNameTest: ('*' qualifyWithXMLPrefix: anElementNodeTestForPrefix prefix)