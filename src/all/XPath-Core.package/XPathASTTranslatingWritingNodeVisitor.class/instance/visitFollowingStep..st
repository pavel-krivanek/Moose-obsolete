visiting - steps
visitFollowingStep: aFollowingStep
	(self peekStep isNull
		and: [aFollowingStep hasPredicates not
			and: [aFollowingStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' followingAxisAnySatisfy:']
		ifFalse: [self emitAll: ' followingAxis:'].
	^ super visitFollowingStep: aFollowingStep.