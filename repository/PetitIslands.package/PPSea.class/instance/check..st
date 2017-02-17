parsing
check: aPPContext
	(contextIdentifier == aPPContext identifier) ifFalse: [ self reset: aPPContext ].