tokenizing - dtd
nextAttributeEnumerationType
	declarationStream
		reset;
		nextPut: (self expectNext: $().
	self
		skipSeparatorsInDeclaration;
		nextNmtokenOnDeclarationStream;
		skipSeparatorsInDeclaration.
	[streamReader peek == $)]
		whileFalse: [
			declarationStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsInDeclaration;
				nextNmtokenOnDeclarationStream;
				skipSeparatorsInDeclaration].
	declarationStream nextPut: streamReader next.

	^ declarationStream contents.