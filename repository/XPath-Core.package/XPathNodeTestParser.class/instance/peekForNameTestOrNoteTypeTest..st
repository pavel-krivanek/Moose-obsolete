parsing - peeking
peekForNameTestOrNoteTypeTest: aLocalName
	readStream skipSeparators.
	(readStream peekFor: $:)
		ifTrue: [^ false]. ": after spaces; axis specifier"

	(isParsingNodeTypeTest not
		and: [self peekForStartArgumentList])
		ifTrue: [^ self peekForNodeTypeTest: aLocalName]
		ifFalse: [
			context
				handleNodeTestForName: aLocalName
				with: handler.
			^ true].