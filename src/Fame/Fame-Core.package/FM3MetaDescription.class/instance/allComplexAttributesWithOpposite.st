accessing-query
allComplexAttributesWithOpposite
	^ self allAttributes reject: [ :attr | attr type isPrimitive or: [ attr hasOpposite not ] ]