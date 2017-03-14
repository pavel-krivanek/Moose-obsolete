visiting - steps
visitSelfStep: aSelfStep
	(self peekStep isNull
		and: [aSelfStep hasPredicates not
			and: [aSelfStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' selfAxisAnySatisfy:']
		ifFalse: [self emitAll: ' selfAxis:'].
	^ super visitSelfStep: aSelfStep.