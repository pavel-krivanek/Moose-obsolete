tokenizing - dtd
nextEntityDeclaration
	| isParameterEntity name |

	self
		expectNextAll: 'ENTITY'
		startingAt: 2. "the 'E' was already read"

	self isInExternalSubsetOrExternalEntity
		ifTrue: [
			"this is to distinguish a parameter reference from declaration"
			[isParameterEntity isNil]
				whileTrue: [
					streamReader skipSeparators.
					streamReader peek == $%
						ifTrue: [
							streamReader next.
							"nil understands isXMLSeparator so no nil test is needed"
							streamReader peek isXMLSeparator
								ifTrue: [
									isParameterEntity := true.
									self expectSeparatorsInDeclaration]
								ifFalse: [self nextParameterEntityReference]]
						ifFalse: [isParameterEntity := false]]]
		ifFalse: [
			self expectSeparators.
			(isParameterEntity := (streamReader peek == $%))
				ifTrue: [
					streamReader next.
					self expectSeparators]].

	name := self nextEntityName.
	self expectSeparatorsInDeclaration.
	streamReader atQuote
		ifTrue: [
			self
				nextInternalEntityDeclaration: name
				isParameterEntity: isParameterEntity]
		ifFalse: [
			self
				nextExternalEntityDeclaration: name
				isParameterEntity: isParameterEntity].