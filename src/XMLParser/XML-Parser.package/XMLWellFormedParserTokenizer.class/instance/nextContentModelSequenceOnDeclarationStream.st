tokenizing - dtd
nextContentModelSequenceOnDeclarationStream
	[streamReader peek == $)]
		whileFalse: [
			declarationStream nextPut: (self expectNext: $,).
			self
				nextContentModelParticleOnDeclarationStream;
				skipSeparatorsInDeclaration].
	declarationStream nextPut: streamReader next.