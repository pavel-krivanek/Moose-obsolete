as yet unclassified
postCopy
	super postCopy.

	externalEntities
		ifNotNil: [externalEntities := externalEntities copy].