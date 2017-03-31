visiting - steps
visitParentStep: aParentStep
	(self peekStep isNull
		and: [aParentStep hasPredicates not
			and: [aParentStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' parentAxisAnySatisfy:']
		ifFalse: [self emitAll: ' parentAxis:'].
	^ super visitParentStep: aParentStep.