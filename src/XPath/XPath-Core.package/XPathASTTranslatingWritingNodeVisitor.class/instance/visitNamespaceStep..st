visiting - steps
visitNamespaceStep: aNamespaceStep
	(self peekStep isNull
		and: [aNamespaceStep hasPredicates not
			and: [aNamespaceStep isPredicateLocationPathStep]])
		ifTrue: [self emitAll: ' namespaceAxisAnySatisfy:']
		ifFalse: [self emitAll: ' namespaceAxis:'].
	^ super visitNamespaceStep: aNamespaceStep.