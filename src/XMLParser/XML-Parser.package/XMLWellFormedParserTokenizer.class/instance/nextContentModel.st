tokenizing - dtd
nextContentModel
	| pushedBackParameterEntity |

	self expectSeparatorsInDeclaration.
	streamReader peek == $A
		ifTrue: [^ self expectNextAll: 'ANY'].
	streamReader peek == $E
		ifTrue: [^ self expectNextAll: 'EMPTY'].
	
	declarationStream
		reset;
		nextPut: (self expectNext: $().
	pushedBackParameterEntity := self topPushedBackEntity.
	self skipSeparatorsInDeclaration.
	streamReader peek == $#
		ifTrue: [
			self nextMixedContentListOnDeclarationStreamFromEntity:
				pushedBackParameterEntity]
		ifFalse: [
			self nextContentModelChoiceOrSequenceOnDeclarationStreamFromEntity:
				pushedBackParameterEntity].

	^ declarationStream contents.