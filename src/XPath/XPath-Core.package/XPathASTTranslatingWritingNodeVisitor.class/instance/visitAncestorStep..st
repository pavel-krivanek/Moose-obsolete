visiting - steps
visitAncestorStep: anAncestorStep
	(self peekStep isNull
		and: [anAncestorStep hasPredicates not
			and: [anAncestorStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' ancestorAxisAnySatisfy:']
		ifFalse: [self emitAll: ' ancestorAxis:'].
	^ super visitAncestorStep: anAncestorStep.