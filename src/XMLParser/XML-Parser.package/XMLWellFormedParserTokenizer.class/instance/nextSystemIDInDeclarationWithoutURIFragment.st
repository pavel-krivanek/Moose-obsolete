tokenizing - dtd
nextSystemIDInDeclarationWithoutURIFragment
	^ self
		expectNextAll: 'SYSTEM';
		expectSeparatorsInDeclaration;
		nextSystemIDLiteralWithoutURIFragment