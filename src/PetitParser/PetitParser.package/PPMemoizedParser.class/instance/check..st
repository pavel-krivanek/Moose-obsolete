parsing
check: aPPContext
	(identifier == aPPContext identifier)
		ifFalse: [ self reset: aPPContext ].