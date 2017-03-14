visiting - node tests
visitAttributeNodeTestForPrefix: anAttributeNodeTestForPrefix
	self
		emit: $(;
		emitAll: self contextVariable;
		emitAll: ' attributeTestForPrefix:''';
		emitAll: anAttributeNodeTestForPrefix prefix;
		emitAll: ''')'.
	^ super visitAttributeNodeTestForPrefix: anAttributeNodeTestForPrefix.