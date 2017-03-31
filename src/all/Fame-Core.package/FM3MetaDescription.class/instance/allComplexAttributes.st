accessing-query
allComplexAttributes

	^ self allAttributes reject: [:attr | attr type isPrimitive ]