tokenizing - dtd
nextSystemIDInDeclaration
	^ self
		expectNextAll: 'SYSTEM';
		expectSeparatorsInDeclaration;
		nextSystemIDLiteral