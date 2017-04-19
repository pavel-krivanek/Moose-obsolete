tokenizing - dtd
nextContentModelParticleOnCharacterStream
	self skipSeparatorsInDeclaration.
	streamReader peek == $(
		ifTrue: [
			characterStream nextPut: streamReader next.
			self nextContentModelChoiceOrSequenceOnCharacterStreamFromEntity:
				self topPushedBackEntity]
		ifFalse: [
			self
				nextElementNameOnCharacterStream;
				nextContentModelUnaryOperatorOnCharacterStream]