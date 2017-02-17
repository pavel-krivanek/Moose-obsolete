private
incrementTotalResolvedExternalEntities
	totalResolvedExternalEntities :=
		totalResolvedExternalEntities
			ifNil: [1]
			ifNotNil: [totalResolvedExternalEntities + 1]