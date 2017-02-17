visiting - node tests
visitElementNodeTestForPrefix: anElementNodeTestForPrefix
	self
		emit: $(;
		emitAll: self contextVariable;
		emitAll: ' elementTestForPrefix:''';
		emitAll: anElementNodeTestForPrefix prefix;
		emitAll: ''')'.
	^ super visitElementNodeTestForPrefix: anElementNodeTestForPrefix.