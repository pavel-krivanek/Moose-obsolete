visiting - steps
visitDescendantOrSelfStep: aDescendantOrSelfStep
	(self peekStep isNull
		and: [aDescendantOrSelfStep hasPredicates not
			and: [aDescendantOrSelfStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' descendantOrSelfAxisAnySatisfy:']
		ifFalse: [self emitAll: ' descendantOrSelfAxis:'].
	^ super visitDescendantOrSelfStep: aDescendantOrSelfStep.