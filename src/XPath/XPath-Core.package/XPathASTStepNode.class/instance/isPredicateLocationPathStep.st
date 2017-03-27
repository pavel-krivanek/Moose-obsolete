testing
isPredicateLocationPathStep
	"returns true if the step is part of a location path that is the
	expression of a predicate node"
	^ self hasParent
		and: [self parent isPredicateLocationPath]