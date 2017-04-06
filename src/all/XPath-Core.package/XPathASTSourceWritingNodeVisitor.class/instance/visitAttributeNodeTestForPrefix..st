visiting - node tests
visitAttributeNodeTestForPrefix: anAttributeNodeTestForPrefix
	^ self
		emitNodeTest: anAttributeNodeTestForPrefix
		withNameTest: ('*' qualifyWithXMLPrefix: anAttributeNodeTestForPrefix prefix)