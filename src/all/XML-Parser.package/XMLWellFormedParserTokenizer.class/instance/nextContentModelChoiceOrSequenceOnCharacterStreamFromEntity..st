tokenizing - dtd
nextContentModelChoiceOrSequenceOnCharacterStreamFromEntity: aPushedBackParameterEntity
	self
		nextContentModelParticleOnCharacterStream;
		skipSeparatorsInDeclaration.
	streamReader peek == $|
		ifTrue: [
			characterStream nextPut: streamReader next.
			self nextContentModelParticleOnCharacterStream.
			[self skipSeparatorsInDeclaration.
				streamReader peek == $)]
				whileFalse: [
					characterStream nextPut: (self expectNext: $|).
					self nextContentModelParticleOnCharacterStream].
			characterStream nextPut: streamReader next]
		ifFalse: [
			streamReader peek == $,
				ifTrue: [
					characterStream nextPut: streamReader next.
					self nextContentModelParticleOnCharacterStream.
					[self skipSeparatorsInDeclaration.
						streamReader peek == $)]
						whileFalse: [
							characterStream nextPut: (self expectNext: $,).
							self nextContentModelParticleOnCharacterStream].
					characterStream nextPut: streamReader next]
				ifFalse: [characterStream nextPut: (self expectNext: $))]].

	self topPushedBackEntity == aPushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].
	self nextContentModelUnaryOperatorOnCharacterStream.