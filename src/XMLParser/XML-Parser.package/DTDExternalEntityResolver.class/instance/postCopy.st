copying
postCopy
	super postCopy.

	totalResolvedExternalEntities := 0.
	externalEntityLimits
		ifNotNil: [externalEntityLimits := externalEntityLimits copy].