accessing-query
allComplexAttributesNotDerived
	^ self allAttributes reject: [ :attr | attr type isPrimitive or: [ attr isDerived ] ]