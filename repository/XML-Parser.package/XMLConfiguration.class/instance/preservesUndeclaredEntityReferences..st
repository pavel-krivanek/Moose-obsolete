accessing
preservesUndeclaredEntityReferences: aBoolean
	self entityConfiguration preservesUndeclaredEntityReferences: aBoolean.
	aBoolean
		ifTrue: [self isValidating: false].