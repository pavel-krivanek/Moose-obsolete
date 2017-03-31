tokenizing - dtd
nextContentModelParticleOnDeclarationStream
	self skipSeparatorsInDeclaration.
	streamReader peek == $(
		ifTrue: [
			declarationStream nextPut: streamReader next.
			self nextContentModelChoiceOrSequenceOnDeclarationStreamFromEntity:
				self topPushedBackEntity]
		ifFalse: [
			self
				nextNameOnDeclarationStream;
				nextContentModelUnaryOperatorOnDeclarationStream]