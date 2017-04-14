tokenizing - dtd
nextMixedContentListOnCharacterStreamFromEntity: aPushedBackParameterEntity
	| hasElements |

	hasElements := false.
	characterStream nextPutAll: (self expectNextAll: '#PCDATA').

	[self skipSeparatorsInDeclaration.
		streamReader peek == $)]
		whileFalse: [
			characterStream nextPut: (self expectNext: $|).
			hasElements := true.
			self
				skipSeparatorsInDeclaration;
				nextElementNameOnCharacterStream].
	characterStream nextPut: streamReader next.
	self topPushedBackEntity == aPushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].

	streamReader peek == $*
		ifTrue: [characterStream nextPut: streamReader next]
		ifFalse: [
			hasElements
				ifTrue: [self errorExpectedLiteral: $*]].