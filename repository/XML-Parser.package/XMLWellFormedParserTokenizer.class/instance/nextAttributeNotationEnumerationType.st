tokenizing - dtd
nextAttributeNotationEnumerationType
	declarationStream
		reset;
		nextPutAll:
			(self
				expectNextAll: 'NOTATION'
				startingAt: 2). "the 'N' was already read"
	self
		expectSeparatorsInDeclaration;
		expectNext: $(.
	declarationStream nextPutAll: ' ('.

	self
		skipSeparatorsInDeclaration;
		nextNameOnDeclarationStream;
		skipSeparatorsInDeclaration;
		nextNameListOnDeclarationStream.

	^ declarationStream contents.