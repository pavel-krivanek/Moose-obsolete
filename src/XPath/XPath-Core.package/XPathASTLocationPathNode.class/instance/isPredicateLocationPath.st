testing
isPredicateLocationPath
	^ self hasParent
		and: [self parent isPredicate]