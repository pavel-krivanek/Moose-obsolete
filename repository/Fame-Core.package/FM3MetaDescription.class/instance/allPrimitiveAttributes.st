accessing-query
allPrimitiveAttributes

	^ self allAttributes select: [:attr | 
		attr type notNil and: [attr type isPrimitive ]]