tokenizing - dtd
nextPublicIDInDeclaration
	^ self
		expectNextAll: 'PUBLIC';
		expectSeparatorsInDeclaration;
		nextPublicIDLiteral