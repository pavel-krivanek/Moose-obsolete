visiting - node tests
visitNamespaceNodeTestForPrefixAndLocalName: aNamespaceNodeTestForPrefixAndLocalName
	self
		emit: $(;
		emitAll: self contextVariable;
		emitAll: ' namespaceTestForPrefix:''';
		emitAll: aNamespaceNodeTestForPrefixAndLocalName prefix;
		emitAll: '''localName:''';
		emitAll: aNamespaceNodeTestForPrefixAndLocalName localName;
		emitAll: ''')'.
	^ super visitNamespaceNodeTestForPrefixAndLocalName:
		aNamespaceNodeTestForPrefixAndLocalName.