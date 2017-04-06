visiting - node tests
visitNamespaceNodeTestForPrefix: aNamespaceNodeTestForPrefix
	^ self
		emitNodeTest: aNamespaceNodeTestForPrefix
		withNameTest: ('*' qualifyWithXMLPrefix: aNamespaceNodeTestForPrefix prefix)