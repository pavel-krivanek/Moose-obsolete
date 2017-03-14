tokenizing - dtd
nextContentModelChoiceValuesOnDeclarationStream
	[streamReader peek == $)]
		whileFalse: [
			declarationStream nextPut: (self expectNext: $|).
			self
				nextContentModelParticleOnDeclarationStream;
				skipSeparatorsInDeclaration].
	declarationStream nextPut: streamReader next.