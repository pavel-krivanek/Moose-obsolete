tokenizing - dtd
nextContentModel
	| pushedBackParameterEntity |

	self expectSeparatorsInDeclaration.
	streamReader peek == $A
		ifTrue: [^ self expectNextAll: 'ANY'].
	streamReader peek == $E
		ifTrue: [^ self expectNextAll: 'EMPTY'].
	
	characterStream
		reset;
		nextPut: (self expectNext: $().
	pushedBackParameterEntity := self topPushedBackEntity.
	self skipSeparatorsInDeclaration.
	streamReader peek == $#
		ifTrue: [
			self nextMixedContentListOnCharacterStreamFromEntity:
				pushedBackParameterEntity]
		ifFalse: [
			self nextContentModelChoiceOrSequenceOnCharacterStreamFromEntity:
				pushedBackParameterEntity].

	^ characterStream contents.