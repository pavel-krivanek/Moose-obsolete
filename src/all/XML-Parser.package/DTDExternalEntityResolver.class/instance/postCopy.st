copying
postCopy
	super postCopy.

	externalEntityLimits
		ifNotNil: [externalEntityLimits := externalEntityLimits copy].