visiting - steps
visitDescendantStep: aDescendantStep
	(self peekStep isNull
		and: [aDescendantStep hasPredicates not
			and: [aDescendantStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' descendantAxisAnySatisfy:']
		ifFalse: [self emitAll: ' descendantAxis:'].
	^ super visitDescendantStep: aDescendantStep.