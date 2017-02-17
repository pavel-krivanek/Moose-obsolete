copying
postCopy
	super postCopy.

	parserLimits := parserLimits copy.
	entityConfiguration
		ifNotNil: [entityConfiguration := entityConfiguration copy].