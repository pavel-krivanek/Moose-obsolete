visiting - node tests
visitNamespaceNodeTestForPrefix: aNamespaceNodeTestForPrefix
	self
		emit: $(;
		emitAll: self contextVariable;
		emitAll: ' namespaceTestForPrefix:''';
		emitAll: aNamespaceNodeTestForPrefix prefix;
		emitAll: ''')'.
	^ super visitNamespaceNodeTestForPrefix: aNamespaceNodeTestForPrefix.