copying
postCopy
	super postCopy.

	externalEntityResolver
		ifNotNil: [externalEntityResolver := externalEntityResolver copy].