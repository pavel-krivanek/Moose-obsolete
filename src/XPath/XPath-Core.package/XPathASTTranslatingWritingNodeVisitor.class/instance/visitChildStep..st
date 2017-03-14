visiting - steps
visitChildStep: aChildStep
	(self peekStep isNull
		and: [aChildStep hasPredicates not
			and: [aChildStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' childAxisAnySatisfy:']
		ifFalse: [self emitAll: ' childAxis:'].
	^ super visitChildStep: aChildStep.