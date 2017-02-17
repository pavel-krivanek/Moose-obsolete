private
checkExternalEntityLimit
	(self maxExternalEntities notNil
		and: [self totalResolvedExternalEntities >= self maxExternalEntities])
		ifTrue: [self erorrExternalEntityLimitExceeded]