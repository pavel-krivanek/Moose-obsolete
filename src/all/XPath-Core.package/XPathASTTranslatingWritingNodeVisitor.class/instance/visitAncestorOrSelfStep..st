visiting - steps
visitAncestorOrSelfStep: anAncestorOrSelfStep
	(self peekStep isNull
		and: [anAncestorOrSelfStep hasPredicates not
			and: [anAncestorOrSelfStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' ancestorOrSelfAxisAnySatisfy:']
		ifFalse: [self emitAll: ' ancestorOrSelfAxis:'].
	^ super visitAncestorOrSelfStep: anAncestorOrSelfStep.