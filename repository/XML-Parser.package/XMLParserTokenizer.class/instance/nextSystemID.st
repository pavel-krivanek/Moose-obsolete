tokenizing - dtd
nextSystemID
	^ self
		expectNextAll: 'SYSTEM';
		expectSeparators;
		nextSystemIDLiteral