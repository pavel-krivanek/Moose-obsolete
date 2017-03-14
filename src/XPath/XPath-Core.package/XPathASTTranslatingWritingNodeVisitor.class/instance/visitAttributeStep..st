visiting - steps
visitAttributeStep: anAttributeStep
	(self peekStep isNull
		and: [anAttributeStep hasPredicates not
			and: [anAttributeStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' attributeAxisAnySatisfy:']
		ifFalse: [self emitAll: ' attributeAxis:'].
	^ super visitAttributeStep: anAttributeStep.