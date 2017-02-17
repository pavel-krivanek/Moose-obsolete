tokenizing - dtd
nextPublicID
	^ self
		expectNextAll: 'PUBLIC';
		expectSeparators;
		nextPublicIDLiteral