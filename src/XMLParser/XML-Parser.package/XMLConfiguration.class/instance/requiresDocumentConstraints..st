accessing
requiresDocumentConstraints: aBoolean
	(requiresDocumentConstraints := aBoolean)
		ifTrue: [self isValidating: true]