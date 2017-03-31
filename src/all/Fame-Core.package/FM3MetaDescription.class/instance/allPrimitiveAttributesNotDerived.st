accessing-query
allPrimitiveAttributesNotDerived
	^ self allAttributes select: [ :attr | attr type notNil and: [ attr type isPrimitive and: [ attr isDerived not ] ] ]