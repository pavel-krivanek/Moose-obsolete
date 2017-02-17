accessing
isValidating: aBoolean
	(isValidating := aBoolean)
		ifTrue: [self preservesUndeclaredEntityReferences: false]
		ifFalse: [self requiresDocumentConstraints: false]