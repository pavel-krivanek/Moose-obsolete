copying
postCopy
	super postCopy.

	externalEntities
		ifNotNil: [externalEntities := externalEntities copy].