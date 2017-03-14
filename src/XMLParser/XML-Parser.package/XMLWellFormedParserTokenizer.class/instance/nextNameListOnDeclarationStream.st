tokenizing - dtd
nextNameListOnDeclarationStream
	[streamReader peek == $)]
		whileFalse: [
			declarationStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsInDeclaration;
				nextNameOnDeclarationStream;
				skipSeparatorsInDeclaration].
	declarationStream nextPut: streamReader next.