visiting - steps
visitPrecedingSiblingStep: aPrecedingSiblingStep
	(self peekStep isNull
		and: [aPrecedingSiblingStep hasPredicates not
			and: [aPrecedingSiblingStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' precedingSiblingAxisAnySatisfy:']
		ifFalse: [self emitAll: ' precedingSiblingAxis:'].
	^ super visitPrecedingSiblingStep: aPrecedingSiblingStep.