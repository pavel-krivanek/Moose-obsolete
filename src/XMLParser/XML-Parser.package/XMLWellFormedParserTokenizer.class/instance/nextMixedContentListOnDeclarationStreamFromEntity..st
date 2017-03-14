tokenizing - dtd
nextMixedContentListOnDeclarationStreamFromEntity: aPushedBackParameterEntity
	| hasElements |

	declarationStream nextPutAll: (self expectNextAll: '#PCDATA').

	self skipSeparatorsInDeclaration.
	hasElements := streamReader peek == $|.

	self nextNameListOnDeclarationStream.
	self topPushedBackEntity == aPushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].

	streamReader peek == $*
		ifTrue: [declarationStream nextPut: streamReader next]
		ifFalse: [
			hasElements
				ifTrue: [self errorExpectedLiteral: $*]].