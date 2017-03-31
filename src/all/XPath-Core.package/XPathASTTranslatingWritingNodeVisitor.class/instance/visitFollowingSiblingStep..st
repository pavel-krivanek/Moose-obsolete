visiting - steps
visitFollowingSiblingStep: aFollowingSiblingStep
	(self peekStep isNull
		and: [aFollowingSiblingStep hasPredicates not
			and: [aFollowingSiblingStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' followingSiblingAxisAnySatisfy:']
		ifFalse: [self emitAll: ' followingSiblingAxis:'].
	^ super visitFollowingSiblingStep: aFollowingSiblingStep.