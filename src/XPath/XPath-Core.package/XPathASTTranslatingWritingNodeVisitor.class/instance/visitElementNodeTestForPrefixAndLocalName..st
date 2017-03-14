visiting - node tests
visitElementNodeTestForPrefixAndLocalName: anElementNodeTestForPrefixAndLocalName
	self
		emit: $(;
		emitAll: self contextVariable;
		emitAll: ' elementTestForPrefix:''';
		emitAll: anElementNodeTestForPrefixAndLocalName prefix;
		emitAll: '''localName:''';
		emitAll: anElementNodeTestForPrefixAndLocalName localName;
		emitAll: ''')'.
	^ super visitElementNodeTestForPrefixAndLocalName:
		anElementNodeTestForPrefixAndLocalName.