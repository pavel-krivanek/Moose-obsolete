tokenizing - dtd
nextContentModelChoiceOrSequenceOnDeclarationStreamFromEntity: aPushedBackParameterEntity
	self
		nextContentModelParticleOnDeclarationStream;
		skipSeparatorsInDeclaration.
	streamReader peek == $|
		ifTrue: [self nextContentModelChoiceValuesOnDeclarationStream]
		ifFalse: [self nextContentModelSequenceOnDeclarationStream].
	self topPushedBackEntity == aPushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].
	self nextContentModelUnaryOperatorOnDeclarationStream.