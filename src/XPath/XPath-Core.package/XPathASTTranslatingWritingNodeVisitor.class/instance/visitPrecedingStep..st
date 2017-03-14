visiting - steps
visitPrecedingStep: aPrecedingStep
	(self peekStep isNull
		and: [aPrecedingStep hasPredicates not
			and: [aPrecedingStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' precedingAxisAnySatisfy:']
		ifFalse: [self emitAll: ' precedingAxis:'].
	^ super visitPrecedingStep: aPrecedingStep.